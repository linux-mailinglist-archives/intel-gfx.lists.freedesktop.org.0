Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 292C1682569
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 08:12:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F11410E336;
	Tue, 31 Jan 2023 07:12:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6CDD10E336
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 Jan 2023 07:12:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675149175; x=1706685175;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xb8PpgSg5EYMXVeXhPb5kTwA8rxH2WyDN40J6fqaNJ8=;
 b=KROmnaoPvQjcyjtQ840nFn+JfH3ThwRu7gXY7IWy7My4fFLKZO6mid+i
 C4bDzfiQ13MnlhaqQrkWmIuC4IqJuzxxHdf7WUGtM9DYYa/mDL7OEzFAo
 q8xxpSjQpmfyOGLlL4FNP8Ud4/wZ8m1TdlJo72qBggRh6Dfj1+LO63KMD
 Eh7ajVbkK/6oxihFz8yFM6EFU26BjrVXG3yh7xrrt3LMttAWFmFYYJ7ix
 hZD+X87+bNWbWoAcMyBiofmsmGLiK6wKWyjAAkp5IBKBk9ITLeNNvXXid
 hu76Ffcx258QZNjr5zbtEz+LDZuE1KFKPqskmNYWBtQgYBGVihMrJWLZt g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="390133051"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="390133051"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:12:55 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="909801906"
X-IronPort-AV: E=Sophos;i="5.97,259,1669104000"; d="scan'208";a="909801906"
Received: from akryuko1-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.34.35])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 23:12:53 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230130181701.29977-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
 <20230130181701.29977-2-ville.syrjala@linux.intel.com>
Date: Tue, 31 Jan 2023 09:12:51 +0200
Message-ID: <87tu072n4c.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Prefix hex numbers with 0x
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 30 Jan 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> It's hard to figure out whether the number is hex
> or decimal if doesn't have the 0x to indicate hex.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_device_info.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i=
915/intel_device_info.c
> index 599c6d399de4..524f93768c41 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -125,8 +125,8 @@ void intel_device_info_print(const struct intel_devic=
e_info *info,
>  	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.=
basedie_step));
>=20=20
>  	drm_printf(p, "gt: %d\n", info->gt);
> -	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
> -	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
> +	drm_printf(p, "memory-regions: 0x%x\n", runtime->memory_regions);
> +	drm_printf(p, "page-sizes: 0x%x\n", runtime->page_sizes);
>  	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
>  	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
>  	drm_printf(p, "ppgtt-type: %d\n", runtime->ppgtt_type);
> @@ -540,5 +540,5 @@ void intel_driver_caps_print(const struct intel_drive=
r_caps *caps,
>  {
>  	drm_printf(p, "Has logical contexts? %s\n",
>  		   str_yes_no(caps->has_logical_contexts));
> -	drm_printf(p, "scheduler: %x\n", caps->scheduler);
> +	drm_printf(p, "scheduler: 0x%x\n", caps->scheduler);
>  }

--=20
Jani Nikula, Intel Open Source Graphics Center
