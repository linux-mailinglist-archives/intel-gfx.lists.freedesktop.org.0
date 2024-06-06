Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 570B88FE4C7
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 12:56:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDFFD10E8C3;
	Thu,  6 Jun 2024 10:56:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TTD/57KQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B5AA10E8C3
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 10:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717671384; x=1749207384;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=SqaeeYpv9eTup2dAmTHi5jc814um+9nJb6NL6n44wSY=;
 b=TTD/57KQ8CR/37i4MJJNF7TJuy8zBkGNbuHMBU0PEG0jBhjaNu2Pz9Kt
 1PRBjgGUu3yAad9TwVQPDqJjuVGhzC7xOsD7Tw6l62orjZLANbvMmxwM7
 Dkp2JBlH3SGY85ITLmzJn3Rvm7w4WjFlu0uPFo9zA7bVwuYikV92iQ7R2
 iaOBA4QfGbaLP3B8k8M6h8nV0QAKChSkvHSbPbQdXAwshUjrcPqA+oq+f
 bpH/Zsxd3VR+ZgnemQiuYRnaJE77ySy2+LhfXN1uKUo7qa166W1SYC4Qh
 9zojQp9pU29QEVxS6qdkzEuB7RYyAHZ2wmnQK0pvaMyimBTMdWRcwTNkn Q==;
X-CSE-ConnectionGUID: 2v574vVfTnm7SiVGeFjf1A==
X-CSE-MsgGUID: 90zdX+rpSE63YWDYF9mZ/w==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="31873927"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31873927"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:56:23 -0700
X-CSE-ConnectionGUID: qPXmbD6HQtC8r/Bxq+jsVQ==
X-CSE-MsgGUID: Hv3MqHwNR7i0ULbPwMI76g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37889946"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 03:56:22 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/bios: Define the "luminance and gamma"
 sub-struct of block 46
In-Reply-To: <20240605134756.17099-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605134756.17099-1-ville.syrjala@linux.intel.com>
 <20240605134756.17099-2-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jun 2024 13:56:20 +0300
Message-ID: <875xumbaqz.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since BDB version 211 block 46 has included more luminance and
> gamma related information. Define it fully. The data is semi-based
> on DisplayID v2.0 apparently.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index da8694771f69..1af8407e2081 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1395,8 +1395,20 @@ struct chromaticity {
>  	u8 white_y_hi;
>  } __packed;
>=20=20
> +struct luminance_and_gamma {
> +	u8 luminance_enable:1;						/* 211+ */
> +	u8 gamma_enable:1;						/* 211+ */
> +	u8 rsvd:6;
> +
> +	u16 min_luminance;						/* 211+ */
> +	u16 max_luminance;						/* 211+ */
> +	u16 one_percent_max_luminance;					/* 211+ */
> +	u8 gamma;							/* 211+ */
> +} __packed;
> +
>  struct bdb_chromaticity {
>  	struct chromaticity chromaticity[16];
> +	struct luminance_and_gamma luminance_and_gamma[16];		/* 211+ */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel
