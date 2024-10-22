Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE109A9B61
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 09:44:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1941910E1A3;
	Tue, 22 Oct 2024 07:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j80Iniya";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAE2110E1A3;
 Tue, 22 Oct 2024 07:44:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729583045; x=1761119045;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=a6GkCFfwObql02caQi5RIcOyP3C8iy7YyFLxvDUFmog=;
 b=j80IniyaW2yMEi4xo4IHx42BcSQNPgEABvbO3pMOgtV4khoCk6NZYCXj
 dB8g2mQiqDSoctVek6x++uu/naOOvIEaRaTbR0KPWdriG7bqQkF2+ugps
 DfDYUtnhuyZbAmS5dtrPGR2636Y3wMCvlWjHirw03m++NZN6S38kM03fW
 FjwR0V2PjHh/RM7XAekufheXq6i5L7mNWxuey1Fm3xKvEPQGcHI1atrsx
 1QULVOqqzXsJ9ETskkBHTSiolG4g1IGbZGatEW8YEiE2oh7czIgMl28Ax
 21Gu+QYRwVu4GJ5hkvP1Tedd9fKzfXdl3wNFeAhWW+yavumLIKd7m8juY A==;
X-CSE-ConnectionGUID: J+7nJ9MXR1yS5b6/uU4Bcg==
X-CSE-MsgGUID: ibTgNaUxSeGetwg5gJx9yw==
X-IronPort-AV: E=McAfee;i="6700,10204,11232"; a="39684446"
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="39684446"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:44:05 -0700
X-CSE-ConnectionGUID: +fuySo1HQfGfxwLbf8IGeQ==
X-CSE-MsgGUID: vyyzi2G0ReONscGJNAwXHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,222,1725346800"; d="scan'208";a="84855591"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.4])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 00:44:02 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>, "Kandpal, Suraj"
 <suraj.kandpal@intel.com>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Cc: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Subject: RE: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
In-Reply-To: <BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241022055655.1902-1-suraj.kandpal@intel.com>
 <BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com>
Date: Tue, 22 Oct 2024 10:44:00 +0300
Message-ID: <87bjzcy43j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 22 Oct 2024, "Nilawar, Badal" <badal.nilawar@intel.com> wrote:
> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Suraj Kandpal
> Sent: 22 October 2024 11:27
> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
> Cc: Kandpal, Suraj <suraj.kandpal@intel.com>
> Subject: [PATCH] drm/xe/hdcp: Add check to remove hdcp2 compatibilty
>
> Add check to remove HDCP2 compatibility from BMG as it does not have GSC which ends up causing warning when we try to get reference of GSC FW.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Could you please add fixes tag in commit message. 
>
> Fixes: 89d030804831 ("drm/xe/hdcp: Fix condition for hdcp gsc cs requirement")
> Fixes: 883631771038 ("drm/i915/mtl: Add HDCP GSC interface")
>
> Regards,
> Badal

Please quote your replies properly [1]. Your mail is really quite hard
to read [2].

BR,
Jani.

[1] https://subspace.kernel.org/etiquette.html#do-not-top-post-when-replying

[2] https://lore.kernel.org/all/BN9PR11MB5530247EFE733E0B4E16870AE54C2@BN9PR11MB5530.namprd11.prod.outlook.com/

> ---
>  drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 3 ++-
>  drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 3 ++-
>  2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> index 55965844d829..2c1d0ee8cec2 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp_gsc.c
> @@ -21,7 +21,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display) diff --git a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> index 231677129a35..e3c57f0b79c4 100644
> --- a/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> +++ b/drivers/gpu/drm/xe/display/xe_hdcp_gsc.c
> @@ -32,7 +32,8 @@ struct intel_hdcp_gsc_message {
>  
>  bool intel_hdcp_gsc_cs_required(struct intel_display *display)  {
> -	return DISPLAY_VER(display) >= 14;
> +	return DISPLAY_VER(display) >= 14 &&
> +		DISPLAY_VER_FULL(display) != IP_VER(14, 1);
>  }
>  
>  bool intel_hdcp_gsc_check_status(struct intel_display *display)
> --
> 2.34.1
>

-- 
Jani Nikula, Intel
