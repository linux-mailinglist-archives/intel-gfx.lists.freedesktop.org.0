Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA2C20B7CC
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 20:03:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 631D96ECE9;
	Fri, 26 Jun 2020 18:03:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3366ECE9
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 18:03:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21628222-1500050 for multiple; Fri, 26 Jun 2020 19:03:31 +0100
MIME-Version: 1.0
In-Reply-To: <f6b67b54-cd8d-adde-f260-1a7151e687a0@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-3-daniele.ceraolospurio@intel.com>
 <159318215858.13600.17747631516505792821@build.alporthouse.com>
 <f6b67b54-cd8d-adde-f260-1a7151e687a0@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 19:03:30 +0100
Message-ID: <159319461031.13600.5443621922037104390@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915: Use the gt in HAS_ENGINE
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

Quoting Daniele Ceraolo Spurio (2020-06-26 18:45:56)
> 
> 
> On 6/26/20 7:35 AM, Chris Wilson wrote:
> > Quoting Daniele Ceraolo Spurio (2020-06-26 00:42:07)
> >> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> >> index 26cae4846c82..ddefc52f6e09 100644
> >> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> >> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> >> @@ -1867,7 +1867,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
> >>          MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d, r, w); \
> >>          MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d, r, w); \
> >>          MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d, r, w); \
> >> -       if (HAS_ENGINE(dev_priv, VCS1)) \
> >> +       if (HAS_ENGINE(&dev_priv->gt, VCS1)) \
> > 
> > Implicit param! It can switch to gvt->gt for all callsites, killing the
> > dev_priv locals.
> 
> I've switched this to gvt->gt, but unfortunately the locals will have to 
> stay because some of the display register definitions still use dev_priv 
> implicitly to access the display mmio base and the 
> pipe_offsets/trans_offsets arrays.

Curses. Maybe one day.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
