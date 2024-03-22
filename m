Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 925A4886A15
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 11:19:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9E310E546;
	Fri, 22 Mar 2024 10:19:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IPj3xeg9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D7E810E546
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711102794; x=1742638794;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7qhgMpg0QLyH6kQGfZyvFylaRIqxaEwJ0PI5FlDHrIg=;
 b=IPj3xeg9M3Wx7DfBwXUpTi5+9JORu5/6j/0tWjUbG7egMOADMmHzgiBk
 7c8NJ09wx9fm5cHNcNNN37pbXXfwc4FY7HZbjuTcVLwbonbSd8relxvAn
 k2eXzI02sYCLu4n5V7Zwqw1wlwszyU731Y93Oi8f/DK4kCQMyllycLEE4
 6wxEhOGAh9k0WAYJ8yShM9DnhSmB2Y0xDU7lbACty3CJV7KPhK8Wsgkod
 TVNNpFaXv4W5JbwSzWpyDyC6U9Limd6qlsC3Xh/KaZu4tE+uveq+T0CqI
 kIH9fVEHLqLS46TWsRXQZp45ZzhtzU8/yL9E0fkUByc794Gl2Rw8psv3L w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="17291890"
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="17291890"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:19:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,145,1708416000"; d="scan'208";a="19557464"
Received: from ghoshsu1-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.6])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2024 03:19:51 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/5] drm/i915/bios: Update VBT driver feature block
 version numbers
In-Reply-To: <20240321161806.31714-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240321161806.31714-1-ville.syrjala@linux.intel.com>
 <20240321161806.31714-3-ville.syrjala@linux.intel.com>
Date: Fri, 22 Mar 2024 12:19:46 +0200
Message-ID: <8734silgal.fsf@intel.com>
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
> While the spec does claim that most of the driver feature flags
> start from BDB version 165, reality and some VBIOS code disagrees.
> The VBIOS code says it sart from version 159, and my ILK
> with version 162 definitely has these things already in its
> VBT. Update the version number comments to say 159+ for all
> the bits that seem relevant for pre-hsw hardware.

I didn't bother digging though my old docs and references, but I'll take
your word for it.

Acked-by: Jani Nikula <jani.nikula@intel.com>


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 20 +++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index f2506b0be790..24583b455f2d 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -603,22 +603,22 @@ struct bdb_driver_features {
>  	u8 custom_vbt_version;					/* 155+ */
>=20=20
>  	/* Driver Feature Flags */
> -	u16 rmpm_enabled:1;					/* 165+ */
> -	u16 s2ddt_enabled:1;					/* 165+ */
> -	u16 dpst_enabled:1;					/* 165-227 */
> -	u16 bltclt_enabled:1;					/* 165+ */
> -	u16 adb_enabled:1;					/* 165-227 */
> -	u16 drrs_enabled:1;					/* 165-227 */
> -	u16 grs_enabled:1;					/* 165+ */
> -	u16 gpmt_enabled:1;					/* 165+ */
> -	u16 tbt_enabled:1;					/* 165+ */
> +	u16 rmpm_enabled:1;					/* 159+ */
> +	u16 s2ddt_enabled:1;					/* 159+ */
> +	u16 dpst_enabled:1;					/* 159-227 */
> +	u16 bltclt_enabled:1;					/* 159+ */
> +	u16 adb_enabled:1;					/* 159-227 */
> +	u16 drrs_enabled:1;					/* 159-227 */
> +	u16 grs_enabled:1;					/* 159+ */
> +	u16 gpmt_enabled:1;					/* 159+ */
> +	u16 tbt_enabled:1;					/* 159+ */
>  	u16 psr_enabled:1;					/* 165-227 */
>  	u16 ips_enabled:1;					/* 165+ */
>  	u16 dfps_enabled:1;					/* 165+ */
>  	u16 dmrrs_enabled:1;					/* 174-227 */
>  	u16 adt_enabled:1;					/* ???-228 */
>  	u16 hpd_wake:1;						/* 201-240 */
> -	u16 pc_feature_valid:1;
> +	u16 pc_feature_valid:1;					/* 159+ */
>  } __packed;
>=20=20
>  /*

--=20
Jani Nikula, Intel
