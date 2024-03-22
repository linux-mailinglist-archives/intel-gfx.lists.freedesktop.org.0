Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43ADC886A1B
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:20:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0D6010F313;
	Fri, 22 Mar 2024 10:20:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RPyDslm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46E3010F313
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102852; x=1742638852;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=ZIevq3+H6xnl3nY/E1+OUjNnRDrw17xglk8f8uO3kr0=;
 b=RPyDslm19tGk5tMxor9XSTRJ/Y6LMeAyNBQ9Orwx0gynlRSex/WtsW+d
 LNE+Zzw36D1QkYn5Aypif7HWOMNE1+zYU4iTkb2dplGf2YSUtiQpETiKe
 m4E6WiiBUCNINpKM3piae+VacbCJD5LOGhz+hKH5VDmCCn73m8Pg6QtbD
 nPQAd4Oy98eNPUyY1nxd/LD3McFKbDOfkcnur6vrIkwjBzADt7ZF7DVTe
 Vu9LX6RDz+FlwBfKQNF2J6+SWfzVd4Jt3crbM48UJfEYX2baVF4qy+122
 g5y4nsYWvv7+uNAqR0yiStlupCWXuwBrVXxA6PcUwOn5hBoyleLkJRgkG g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="16871945"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="16871945"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19524207"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:20:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 5/5] drm/i915/bios: Pimp the VBT backlight data BDB
 version comments
In-Reply-To: <20240321161806.31714-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-6-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:20:26 +0200
Message-ID: <87ttkyk1p1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Thu, 21 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Add the missing BDB version number information for some of
> the backlight fields in VBT.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index bcd1b239eb65..3815aa21d19f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -907,8 +907,8 @@ struct lfp_brightness_level {
>  struct bdb_lfp_backlight_data {
>  	u8 entry_size;
>  	struct lfp_backlight_data_entry data[16];
> -	u8 level[16];							/* ???-233 */
> -	struct lfp_backlight_control_method backlight_control[16];
> +	u8 level[16];							/* 162-233 */
> +	struct lfp_backlight_control_method backlight_control[16];	/* 191+ */
>  	struct lfp_brightness_level brightness_level[16];		/* 234+ */
>  	struct lfp_brightness_level brightness_min_level[16];		/* 234+ */
>  	u8 brightness_precision_bits[16];				/* 236+ */

--=20
Jani Nikula, Intel
