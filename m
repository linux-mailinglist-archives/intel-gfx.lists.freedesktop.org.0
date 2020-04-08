Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 556CA1A1D71
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Apr 2020 10:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B44989958;
	Wed,  8 Apr 2020 08:31:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30C4089958
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Apr 2020 08:31:19 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id r26so4492913wmh.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 08 Apr 2020 01:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:date:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JkAH2io5qsSgFRTZvd+03DE1C6THbIxxlhC5L2HQ9oo=;
 b=SE5/X2Kf/1tjopk2VUkpPOIFVrWNOCM50qvP4/n5f7HCWg3UQNikZfgU221flaEf2d
 wor2BpJcJIBs5TbYL+WnGjcIabcKNlFo5Z+pXZOXDjVBjcM+1ABhXHSjUxTtg4+XSLwH
 jcEnQkk/OY/bEHHCnTESXBRUusfC0oU9FIAFOvu9wrV99+zxX1Aa+A8hUW2XRvD3Tns5
 j5we2WR8Gft8ip0EdDX8XH8hKfx78vjF6kRywY1mO9wUuhlkoF1ybUGKzTOBgUTNHkiz
 18qZzhMhGVUY4N8AZZa+JwKw0lgViaWXUWMCroC6d+NjTttIoCJMv7EDSgCKap517+l1
 C9Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JkAH2io5qsSgFRTZvd+03DE1C6THbIxxlhC5L2HQ9oo=;
 b=YRugBVJTRk6ExoG3QyoZHD0JjVwR9HqwUsaDV7/IHFD98TSs0qAJ+iT+zaLZkiavJd
 T+EHKfGN1LJFLt/80zn7Aoj47hEN4GFIZlAfzXQpEj3tudyCjQYJ5qKsEMpezE+2HDYB
 3U1tSPfsP0WZweFwo5ENpCMmnLwtVN8+HRMwTz/mShFjgVvdziM3VZ8xNLOS5gqo9UaW
 abjCvf8aKG+eg5yTYfm/Dg2d9E+qmcItu7n6zo0Dj7W5VTgu4m01fQSRVJO+JJo9YRDY
 sNUcCCMzsuvmXd6TnUrNMldM0cvOZOmhkPoVaBs/G/IHITZ0yY8nZzVIITVWJYxM/Fs0
 95MA==
X-Gm-Message-State: AGi0PuaW0l19Jd5YGuOM89/F8gHY9ygqW7NK0toXMVDXPLkWm0WY4JBT
 VuK8I7IhazMc1L3XX7zOgNQ=
X-Google-Smtp-Source: APiQypJ4GjzO/7tIBRGwIPeSv8A0y6cOhA3iCFpmhcFB1lPP6EZgqCoGrxAAYNgYmd9QJIYYkoU0Sg==
X-Received: by 2002:a1c:1dc3:: with SMTP id d186mr3428851wmd.90.1586334677910; 
 Wed, 08 Apr 2020 01:31:17 -0700 (PDT)
Received: from wambui.local ([197.237.61.225])
 by smtp.googlemail.com with ESMTPSA id x18sm5770108wmi.29.2020.04.08.01.31.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 01:31:17 -0700 (PDT)
From: Wambui Karuga <wambui.karugax@gmail.com>
X-Google-Original-From: Wambui Karuga <wambui@wambui>
Date: Wed, 8 Apr 2020 11:31:02 +0300 (EAT)
To: Jani Nikula <jani.nikula@intel.com>
In-Reply-To: <20200402114819.17232-10-jani.nikula@intel.com>
Message-ID: <alpine.LNX.2.21.99999.375.2004081124230.25609@wambui>
References: <20200402114819.17232-1-jani.nikula@intel.com>
 <20200402114819.17232-10-jani.nikula@intel.com>
User-Agent: Alpine 2.21.99999 (LNX 375 2019-10-29)
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 10/17] drm/i915/uc: prefer struct drm_device
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
> drivers/gpu/drm/i915/gt/uc/intel_uc.c    | 12 ++++++------
> drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 10 +++++-----
> 2 files changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index b11e564ef22e..4681cdd24da4 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -45,12 +45,12 @@ static void __confirm_options(struct intel_uc *uc)
> {
> 	struct drm_i915_private *i915 = uc_to_gt(uc)->i915;
>
> -	DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
> -			     "enable_guc=%d (guc:%s submission:%s huc:%s)\n",
> -			     i915_modparams.enable_guc,
> -			     yesno(intel_uc_wants_guc(uc)),
> -			     yesno(intel_uc_wants_guc_submission(uc)),
> -			     yesno(intel_uc_wants_huc(uc)));
> +	drm_dbg(&i915->drm,
> +		"enable_guc=%d (guc:%s submission:%s huc:%s)\n",
> +		i915_modparams.enable_guc,
> +		yesno(intel_uc_wants_guc(uc)),
> +		yesno(intel_uc_wants_guc_submission(uc)),
> +		yesno(intel_uc_wants_huc(uc)));
>
> 	if (i915_modparams.enable_guc == -1)
> 		return;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> index fa893dd1823c..129db476f69e 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
> @@ -32,11 +32,11 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
> 			       enum intel_uc_fw_status status)
> {
> 	uc_fw->__status =  status;
> -	DRM_DEV_DEBUG_DRIVER(__uc_fw_to_gt(uc_fw)->i915->drm.dev,
> -			     "%s firmware -> %s\n",
> -			     intel_uc_fw_type_repr(uc_fw->type),
> -			     status == INTEL_UC_FIRMWARE_SELECTED ?
> -			     uc_fw->path : intel_uc_fw_status_repr(status));
> +	drm_dbg(&__uc_fw_to_gt(uc_fw)->i915->drm,
> +		"%s firmware -> %s\n",
> +		intel_uc_fw_type_repr(uc_fw->type),
> +		status == INTEL_UC_FIRMWARE_SELECTED ?
> +		uc_fw->path : intel_uc_fw_status_repr(status));
> }
> #endif
>
> -- 
> 2.20.1
>
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
