Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E761876139
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 10:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE576113838;
	Fri,  8 Mar 2024 09:46:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ExwIYvhs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6781F113838
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 09:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709891213; x=1741427213;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=laP17pZT7taIVCBGKviXjgfNk1lbwUYLTqXDpgWbrCY=;
 b=ExwIYvhsevuEITZ0PwMhnYT4FazzuniWQQGdbBi9vVPZ4QLGtK15cVov
 lS/ndLQM2ySaqSs7j5PCIRp4yiWZDRMG907nqVyLGd1RboZVf/zbpcb8I
 vAQN+/+gC5bJkTdC07Cog6Sm9rhiBowrvb4aMNHsStqqArF9obebGPavm
 UTPtWbEo2Q/m9TeLYTKJGzw8xvU2mo8GDkFxncQms7DYqoWNbGGbBjDd4
 ML4KMsjGW7nmzegppuDQgRE12oGODitt7d+xqSNugZl4y1E708NprOi6H
 gZjuXLFxpWx7OA/FycvWHq+p1IqZkwzjwqebxep3dZceUVGhA0cvUVb6C w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="8358787"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="8358787"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:46:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10962321"
Received: from unknown (HELO localhost) ([10.252.34.187])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 01:46:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915: Drop pointless (void*) cast
In-Reply-To: <20240307151810.24208-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240307151810.24208-1-ville.syrjala@linux.intel.com>
 <20240307151810.24208-5-ville.syrjala@linux.intel.com>
Date: Fri, 08 Mar 2024 11:46:47 +0200
Message-ID: <877cidukc8.fsf@intel.com>
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

On Thu, 07 Mar 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the pointless (void*) cast, the incoming pointer is already
> the correct type.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_sdvo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/=
i915/display/intel_sdvo.c
> index 2b00ca44c14c..50f0557d9ca2 100644
> --- a/drivers/gpu/drm/i915/display/intel_sdvo.c
> +++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
> @@ -2378,7 +2378,7 @@ intel_sdvo_connector_atomic_get_property(struct drm=
_connector *connector,
>  					 u64 *val)
>  {
>  	struct intel_sdvo_connector *intel_sdvo_connector =3D to_intel_sdvo_con=
nector(connector);
> -	const struct intel_sdvo_connector_state *sdvo_state =3D to_intel_sdvo_c=
onnector_state((void *)state);
> +	const struct intel_sdvo_connector_state *sdvo_state =3D to_intel_sdvo_c=
onnector_state(state);
>=20=20
>  	if (property =3D=3D intel_sdvo_connector->tv_format) {
>  		int i;

--=20
Jani Nikula, Intel
