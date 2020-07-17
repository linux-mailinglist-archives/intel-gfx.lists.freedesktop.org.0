Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D017223B56
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jul 2020 14:25:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 988CA6E1EC;
	Fri, 17 Jul 2020 12:25:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD5816E1EC
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jul 2020 12:25:53 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21849545-1500050 for multiple; Fri, 17 Jul 2020 13:25:49 +0100
MIME-Version: 1.0
In-Reply-To: <20200717120425.20947-1-anshuman.gupta@intel.com>
References: <20200717120425.20947-1-anshuman.gupta@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jul 2020 13:25:49 +0100
Message-ID: <159498874988.13677.17593838934739115349@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [RFC] drm/i915: Disable connector polling at
 runtime suspend
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Anshuman Gupta (2020-07-17 13:04:25)
> While i915 device is in runtime suspend, DRM connector polling
> causing device to wakeup from runtime suspend.
> This harm overall cpu idle statistics, therefore
> disabling polling while in runtime suspend.

So what about the devices where there is no hotplug interrupt during
runtime suspend? How should the device wake up when something is plugged
in? As I recall the transition to polling is only meant to occur on
those devices with no automatic wakeup.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
