Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5E8197BB1
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:19:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC96E6E283;
	Mon, 30 Mar 2020 12:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A91A36E283
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:18:57 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20739521-1500050 for multiple; Mon, 30 Mar 2020 13:18:55 +0100
MIME-Version: 1.0
In-Reply-To: <20200330113338.1713-1-michal.wajdeczko@intel.com>
References: <20200330113338.1713-1-michal.wajdeczko@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158557073399.3228.12065257909095659619@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 13:18:53 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Fix HuC register used in
 debugfs
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

Quoting Michal Wajdeczko (2020-03-30 12:33:38)
> We report HuC status in debugfs using register read, but
> we missed that on Gen11+ HuC uses different register.
> Use correct one.
> 
> While here, correct placement of the colon.
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index d6097b46600c..3fee65308474 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -244,6 +244,6 @@ void intel_huc_load_status(struct intel_huc *huc, struct drm_printer *p)
>         intel_uc_fw_dump(&huc->fw, p);
>  
>         with_intel_runtime_pm(gt->uncore->rpm, wakeref)
> -               drm_printf(p, "\nHuC status 0x%08x:\n",
> -                          intel_uncore_read(gt->uncore, HUC_STATUS2));
> +               drm_printf(p, "HuC status: 0x%08x\n",
> +                          intel_uncore_read(gt->uncore, huc->status.reg));

drivers/gpu/drm/i915/gt/uc/intel_huc.c:         huc->status.reg = GEN11_HUC_KERNEL_LOAD_INFO;
drivers/gpu/drm/i915/gt/uc/intel_huc.c:         huc->status.reg = HUC_STATUS2;
drivers/gpu/drm/i915/gt/uc/intel_huc.c:                                 huc->status.reg,
drivers/gpu/drm/i915/gt/uc/intel_huc.c:         status = intel_uncore_read(gt->uncore, huc->status.reg);

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
