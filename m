Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 948675AB3C6
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:36:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3F9D10E86A;
	Fri,  2 Sep 2022 14:36:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9929310E86A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662129393; x=1693665393;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=G0tO3KOws07GNsPhjJ7YWCBR7nrDkZQdIAaqPesFuoo=;
 b=eKs6TmGVYJXWjCFRV5KXMsBn4MLRq+6mqg7lOFf+8jlGlno2pQoU5er5
 VtOf2UawNYtCbCgkl7waBTmonSjRH9DIPzeQpkiz+UzfOnCYlrTfhILDT
 HdyWmesNHA92R8t1mvd0dy3Y3+ZVQVSwkHGXQSjlrQTDp9GGkDL1Eg2jg
 +YXa2omNWNQAU5OG4xQCedTMOfP8EYQfcNu4OrYHA/WOqUMrJMzWe4HfQ
 FpXVnZqM+qZ/pDFO73sPzj4DcySxcLo3YIayonlDW7dokFi5ELZ7U9HyW
 tE30o/SGxvH/Pb6mnnUb+cXgRqmvqNPCQ6hPUINTXn6c1IAZNPxPhBiKn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="322153178"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="322153178"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:36:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674373951"
Received: from svandene-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.245])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:36:31 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220715202044.11153-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220715202044.11153-1-ville.syrjala@linux.intel.com>
 <20220715202044.11153-5-ville.syrjala@linux.intel.com>
Date: Fri, 02 Sep 2022 17:36:20 +0300
Message-ID: <87sfl9desb.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 04/12] drm/i915: Define VBT eDP/DP max lane
 count bits
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

On Fri, 15 Jul 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Since version 244 the VBT can llimt the eDP/DP max lane count.
> Add the bits.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/=
drm/i915/display/intel_vbt_defs.h
> index a88c5ef51cd8..d583bb085913 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -438,7 +438,7 @@ struct child_device_config {
>  			u8 iboost:1;				/* 196+ */
>  			u8 hpd_invert:1;			/* 196+ */
>  			u8 use_vbt_vswing:1;			/* 218+ */
> -			u8 flag_reserved:2;
> +			u8 dp_max_lane_count:2;			/* 244+ */
>  			u8 hdmi_support:1;			/* 158+ */
>  			u8 dp_support:1;			/* 158+ */
>  			u8 tmds_support:1;			/* 158+ */

--=20
Jani Nikula, Intel Open Source Graphics Center
