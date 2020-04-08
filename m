Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 452D01A1D9D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:51:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7B76E9D9;
	Wed,  8 Apr 2020 08:51:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 877256E9D8
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:51:24 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id v8so31752wma.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=g1cZ7za0dDfUeENxySVtC95WeHayhZ3U5yzNoVhKm+o=;
 b=HafdRIjI6G8IAhv8YOvERMEP+oJfEtRD7uE6Kr/aa0P9RakAXXc0OtnsTTpIs6Ns2t
 WpjdOMUi4TFkJkKnMyUZSWB5QcUaQh7rz3AZ4lmByoLVzORFEcappoZ+nlWGUD9qJR7r
 HckiUykvshXmaK35WtOZmT+ClsB9qkX7j4FXIosWqThgPJsgQLd9/A0tpA9n49ene381
 4fVBo57kb/zRLmjLTJ7AgJOVhfh0geD7AO/P7a4+YdYHTKP7soJC0bh50eU7j5lCPr4v
 DZKtSqDtFHUn2f2c74gMGvMHCUUwnZry3RjF2Y0lQ1fXh8t+elSmHnxCWj4Y3TKZNI08
 IoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=g1cZ7za0dDfUeENxySVtC95WeHayhZ3U5yzNoVhKm+o=;
 b=UztNKrE/rhoLRSXLw0EcYqBXjn74+9X8ONcMiXu3pLHSY1+6ocwqWEhe9ucAaXPDNl
 oxutwap9T6i+yNk36emTfnQuiIpWMUR0c7LPhyO1eiDX36FZJuEFZpUDGUyNL7N6LJTt
 /pEWUpMON1zkxeCXMOTXdYUq2VwOkSd8aBC11EKyN/KKW/ZufKps2cfqZwwZKKmMIcmY
 rR5W/4CV73cGrDrlz1pkMo6yoHHiExz1rQx3PxCjcHJI3GBmZla26PSNbPp54/sZksva
 I2Al3Zeelb6kuR1/FPkR8CfwFw1wV+Shsy3M2v8FYLOWTbS5ILNaIf64yumiLqmvAd+P
 234w==
X-Gm-Message-State: AGi0PuZCC0lqgbp96RfnsNvDx3iv1DnFpTKIrnqXAkmpq4DMO4KqidDT
 kQl7kYpFjmYWuazYH3mYQQbGiWAO
X-Google-Smtp-Source: APiQypK7ASGJQy9dp/z2AV3OvXnrjWInOpg14nxKkfhbWPAYCMZozfEjZy2mUwL/AZv88q+a6tOm5w==
X-Received: by 2002:a1c:2002:: with SMTP id g2mr3381306wmg.109.1586335883106; 
 Wed, 08 Apr 2020 01:51:23 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id 106sm25241062wrc.46.2020.04.08.01.51.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:51:22 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:51:17 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-17-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081150500.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-17-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 17/17] drm/i915/uc: prefer struct drm_device
 based logging
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
Cc: intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On Thu, 2 Apr 2020, Jani Nikula wrote:

> Prefer struct drm_device based logging over struct device based logging.
>
> No functional changes.
>
> Cc: Wambui Karuga <wambui.karugax@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Wambui Karuga <wambui.karugax@gmail.com>

> ---
> drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 14 +++++++-------
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 18 +++++++++---------
> 2 files changed, 16 insertions(+), 16 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 4681cdd24da4..f518fe05c6f9 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -63,25 +63,25 @@ static void __confirm_options(struct intel_uc *uc)
> 	}
>
> 	if (!intel_uc_supports_guc(uc))
> -		dev_info(i915->drm.dev,
> +		drm_info(&i915->drm,
> 			 "Incompatible option enable_guc=%d - %s\n",
> 			 i915_modparams.enable_guc, "GuC is not supported!");
>
> 	if (i915_modparams.enable_guc & ENABLE_GUC_LOAD_HUC &&
> 	    !intel_uc_supports_huc(uc))
> -		dev_info(i915->drm.dev,
> +		drm_info(&i915->drm,
> 			 "Incompatible option enable_guc=%d - %s\n",
> 			 i915_modparams.enable_guc, "HuC is not supported!");
>
> 	if (i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION &&
> 	    !intel_uc_supports_guc_submission(uc))
> -		dev_info(i915->drm.dev,
> +		drm_info(&i915->drm,
> 			 "Incompatible option enable_guc=%d - %s\n",
> 			 i915_modparams.enable_guc, "GuC submission is N/A");
>
> 	if (i915_modparams.enable_guc & ~(ENABLE_GUC_SUBMISSION |
> 					  ENABLE_GUC_LOAD_HUC))
> -		dev_info(i915->drm.dev,
> +		drm_info(&i915->drm,
> 			 "Incompatible option enable_guc=%d - %s\n",
> 			 i915_modparams.enable_guc, "undocumented flag");
> }
> @@ -480,14 +480,14 @@ static int __uc_init_hw(struct intel_uc *uc)
> 	if (intel_uc_uses_guc_submission(uc))
> 		intel_guc_submission_enable(guc);
>
> -	dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
> +	drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
> 		 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC), guc->fw.path,
> 		 guc->fw.major_ver_found, guc->fw.minor_ver_found,
> 		 "submission",
> 		 enableddisabled(intel_uc_uses_guc_submission(uc)));
>
> 	if (intel_uc_uses_huc(uc)) {
> -		dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\n",
> +		drm_info(&i915->drm, "%s firmware %s version %u.%u %s:%s\n",
> 			 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_HUC),
> 			 huc->fw.path,
> 			 huc->fw.major_ver_found, huc->fw.minor_ver_found,
> @@ -508,7 +508,7 @@ static int __uc_init_hw(struct intel_uc *uc)
> 	__uc_sanitize(uc);
>
> 	if (!ret) {
> -		dev_notice(i915->drm.dev, "GuC is uninitialized\n");
> +		drm_notice(&i915->drm, "GuC is uninitialized\n");
> 		/* We want to run without GuC submission */
> 		return 0;
> 	}
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index 129db476f69e..572e34f28f0e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -299,7 +299,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>
> 	/* Check the size of the blob before examining buffer contents */
> 	if (unlikely(fw->size < sizeof(struct uc_css_header))) {
> -		dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
> +		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
> 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			 fw->size, sizeof(struct uc_css_header));
> 		err = -ENODATA;
> @@ -312,7 +312,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
> 	size = (css->header_size_dw - css->key_size_dw - css->modulus_size_dw -
> 		css->exponent_size_dw) * sizeof(u32);
> 	if (unlikely(size != sizeof(struct uc_css_header))) {
> -		dev_warn(dev,
> +		drm_warn(&i915->drm,
> 			 "%s firmware %s: unexpected header size: %zu != %zu\n",
> 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			 fw->size, sizeof(struct uc_css_header));
> @@ -325,7 +325,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>
> 	/* now RSA */
> 	if (unlikely(css->key_size_dw != UOS_RSA_SCRATCH_COUNT)) {
> -		dev_warn(dev, "%s firmware %s: unexpected key size: %u != %u\n",
> +		drm_warn(&i915->drm, "%s firmware %s: unexpected key size: %u != %u\n",
> 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			 css->key_size_dw, UOS_RSA_SCRATCH_COUNT);
> 		err = -EPROTO;
> @@ -336,7 +336,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
> 	/* At least, it should have header, uCode and RSA. Size of all three. */
> 	size = sizeof(struct uc_css_header) + uc_fw->ucode_size + uc_fw->rsa_size;
> 	if (unlikely(fw->size < size)) {
> -		dev_warn(dev, "%s firmware %s: invalid size: %zu < %zu\n",
> +		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu < %zu\n",
> 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			 fw->size, size);
> 		err = -ENOEXEC;
> @@ -346,7 +346,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
> 	/* Sanity check whether this fw is not larger than whole WOPCM memory */
> 	size = __intel_uc_fw_get_upload_size(uc_fw);
> 	if (unlikely(size >= i915->wopcm.size)) {
> -		dev_warn(dev, "%s firmware %s: invalid size: %zu > %zu\n",
> +		drm_warn(&i915->drm, "%s firmware %s: invalid size: %zu > %zu\n",
> 			 intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			 size, (size_t)i915->wopcm.size);
> 		err = -E2BIG;
> @@ -361,7 +361,7 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
>
> 	if (uc_fw->major_ver_found != uc_fw->major_ver_wanted ||
> 	    uc_fw->minor_ver_found < uc_fw->minor_ver_wanted) {
> -		dev_notice(dev, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
> +		drm_notice(&i915->drm, "%s firmware %s: unexpected version: %u.%u != %u.%u\n",
> 			   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path,
> 			   uc_fw->major_ver_found, uc_fw->minor_ver_found,
> 			   uc_fw->major_ver_wanted, uc_fw->minor_ver_wanted);
> @@ -389,9 +389,9 @@ int intel_uc_fw_fetch(struct intel_uc_fw *uc_fw)
> 				  INTEL_UC_FIRMWARE_MISSING :
> 				  INTEL_UC_FIRMWARE_ERROR);
>
> -	dev_notice(dev, "%s firmware %s: fetch failed with error %d\n",
> +	drm_notice(&i915->drm, "%s firmware %s: fetch failed with error %d\n",
> 		   intel_uc_fw_type_repr(uc_fw->type), uc_fw->path, err);
> -	dev_info(dev, "%s firmware(s) can be downloaded from %s\n",
> +	drm_info(&i915->drm, "%s firmware(s) can be downloaded from %s\n",
> 		 intel_uc_fw_type_repr(uc_fw->type), INTEL_UC_FIRMWARE_URL);
>
> 	release_firmware(fw);		/* OK even if fw is NULL */
> @@ -476,7 +476,7 @@ static int uc_fw_xfer(struct intel_uc_fw *uc_fw, u32 dst_offset, u32 dma_flags)
> 	/* Wait for DMA to finish */
> 	ret = intel_wait_for_register_fw(uncore, DMA_CTRL, START_DMA, 0, 100);
> 	if (ret)
> -		dev_err(gt->i915->drm.dev, "DMA for %s fw failed, DMA_CTRL=%u\n",
> +		drm_err(&gt->i915->drm, "DMA for %s fw failed, DMA_CTRL=%u\n",
> 			intel_uc_fw_type_repr(uc_fw->type),
> 			intel_uncore_read_fw(uncore, DMA_CTRL));
>
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
