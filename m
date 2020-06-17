Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA4E1FCA8A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 12:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B16496E890;
	Wed, 17 Jun 2020 10:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 179626E890
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 10:12:16 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21522817-1500050 for multiple; Wed, 17 Jun 2020 11:12:13 +0100
MIME-Version: 1.0
In-Reply-To: <20200617095001.19220-1-anshuman.gupta@intel.com>
References: <20200617095001.19220-1-anshuman.gupta@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <159238873248.19488.1166033909635410870@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Wed, 17 Jun 2020 11:12:12 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: POWER_DOMAIN_AUDIO ref-count
 debug logs
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

Quoting Anshuman Gupta (2020-06-17 10:50:01)
> Debug print for power domain audio get/put.
> This will help to deubg the CI s2idle incomplete
> failures.

Do we not already print the mismatching pm, and who we are unable to
find a corresponding release for?
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
