Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9029B20B3A8
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2020 16:36:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BC3E6E044;
	Fri, 26 Jun 2020 14:36:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D2A86ECAC
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 Jun 2020 14:36:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21625938-1500050 for multiple; Fri, 26 Jun 2020 15:36:00 +0100
MIME-Version: 1.0
In-Reply-To: <20200625234212.22811-3-daniele.ceraolospurio@intel.com>
References: <20200625234212.22811-1-daniele.ceraolospurio@intel.com>
 <20200625234212.22811-3-daniele.ceraolospurio@intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Fri, 26 Jun 2020 15:35:58 +0100
Message-ID: <159318215858.13600.17747631516505792821@build.alporthouse.com>
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

Quoting Daniele Ceraolo Spurio (2020-06-26 00:42:07)
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index 26cae4846c82..ddefc52f6e09 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -1867,7 +1867,7 @@ static int csfe_chicken1_mmio_write(struct intel_vgpu *vgpu,
>         MMIO_F(prefix(BLT_RING_BASE), s, f, am, rm, d, r, w); \
>         MMIO_F(prefix(GEN6_BSD_RING_BASE), s, f, am, rm, d, r, w); \
>         MMIO_F(prefix(VEBOX_RING_BASE), s, f, am, rm, d, r, w); \
> -       if (HAS_ENGINE(dev_priv, VCS1)) \
> +       if (HAS_ENGINE(&dev_priv->gt, VCS1)) \

Implicit param! It can switch to gvt->gt for all callsites, killing the
dev_priv locals.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
