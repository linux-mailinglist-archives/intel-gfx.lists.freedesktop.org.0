Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4644330B317
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Feb 2021 00:04:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B236E899;
	Mon,  1 Feb 2021 23:04:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B083A6E899
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 23:04:44 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 23766208-1500050 for multiple; Mon, 01 Feb 2021 23:04:40 +0000
MIME-Version: 1.0
In-Reply-To: <20210201230133.19221-1-anusha.srivatsa@intel.com>
References: <20210201230133.19221-1-anusha.srivatsa@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Mon, 01 Feb 2021 23:04:40 +0000
Message-ID: <161222068054.27906.16807754158559226361@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: Add GuC and HuC support
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

Quoting Anusha Srivatsa (2021-02-01 23:01:33)
> Add support to load GuC and HuC firmware for Dg1.

Do you have the corresponding link for the linux-firmware.git? That is
useful for cross referencing that the target version does exist in the
public repository.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
