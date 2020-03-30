Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 03056197BD6
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Mar 2020 14:29:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 561976E291;
	Mon, 30 Mar 2020 12:28:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD3336E291
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Mar 2020 12:28:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20739606-1500050 for multiple; Mon, 30 Mar 2020 13:28:54 +0100
MIME-Version: 1.0
In-Reply-To: <20200330113302.1670-1-michal.wajdeczko@intel.com>
References: <20200330113302.1670-1-michal.wajdeczko@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <158557133270.3228.3738598788092230448@build.alporthouse.com>
User-Agent: alot/0.8.1
Date: Mon, 30 Mar 2020 13:28:52 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Add more errors for
 I915_PARAM_HUC_STATUS
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

Quoting Michal Wajdeczko (2020-03-30 12:33:02)
> There might be many reasons why we failed to successfully
> load and authenticate HuC firmware, but today we only use
> single error in case of no HuC hardware. Add some more
> error codes for most common cases (disabled, not installed,
> corrupted or mismatched firmware).
> 
> Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tony Ye <tony.ye@intel.com>
> Cc: Robert M. Fosha <robert.m.fosha@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_huc.c | 22 ++++++++++++++++++----
>  1 file changed, 18 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> index d6097b46600c..1e8073ec343f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
> @@ -200,9 +200,13 @@ int intel_huc_auth(struct intel_huc *huc)
>   * This function reads status register to verify if HuC
>   * firmware was successfully loaded.
>   *
> - * Returns: 1 if HuC firmware is loaded and verified,
> - * 0 if HuC firmware is not loaded and -ENODEV if HuC
> - * is not present on this platform.
> + * Returns:
> + *  * -ENODEV if HuC is not present on this platform,
> + *  * -EOPNOTSUPP if HuC firmware is disabled,
> + *  * -ENOPKG if HuC firmware was not installed,
> + *  * -ENOEXEC if HuC firmware is invalid or mismatched,
> + *  * 0 if HuC firmware is not running,
> + *  * 1 if HuC firmware is authenticated and running.
>   */
>  int intel_huc_check_status(struct intel_huc *huc)
>  {
> @@ -210,8 +214,18 @@ int intel_huc_check_status(struct intel_huc *huc)
>         intel_wakeref_t wakeref;
>         u32 status = 0;
>  
> -       if (!intel_huc_is_supported(huc))
> +       switch (__intel_uc_fw_status(&huc->fw)) {
> +       case INTEL_UC_FIRMWARE_NOT_SUPPORTED:
>                 return -ENODEV;

No HW support.

> +       case INTEL_UC_FIRMWARE_DISABLED:
> +               return -EOPNOTSUPP;

Override by user [sysadmin]

> +       case INTEL_UC_FIRMWARE_MISSING:
> +               return -ENOPKG;

FILENOTFOUND.

> +       case INTEL_UC_FIRMWARE_ERROR:
> +               return -ENOEXEC;

File corruption.

There's nothing else between us loading the fw and the huc rejecting
it?

FIRMWARE_FAIL? That's set as the opposite of FIRMWARE_TRANSFERRED in
that we failed to upload the image to the HW. The firmware itself hasn't
had a chance to run.

case INTEL_UC_FIRMWARE_FAIL:
	return -ENXIO;

Or is that being overridden to FIRMWARE_ERROR?

Other than the question of whether there's one more step before the fw
is being run [and then able to set HUC_STATUS as it determines for
itself],

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
