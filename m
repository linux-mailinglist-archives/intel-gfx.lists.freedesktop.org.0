Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C435F3EFF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 10:59:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F281510E3AA;
	Tue,  4 Oct 2022 08:59:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2BBE10E33B
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 08:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664873962; x=1696409962;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=z9cq2S/vn36r39NGHmsbK7Y2pPSvTuKJ4MbnMAiBZtA=;
 b=A33Kle05zds0AwBWJK3k3BlMkuwsMsr1lZEZCxSxhXsyogQI5DPEfqQ4
 xKltSqOvULVaycdJt79k/hWyMxT4QfbqwTMmNu8SPnUYRKBQTds5MgCpc
 hUAuO18O0fORtxWS8MWJvQEVFhJ6Zy1T8PeR2ihnpnwVHKAjCR083LnKI
 HzHXGXo9R58NMD+os+UsTWkokmsv+LHqSGzbVOxc9eSrIzLjCaC98NZJe
 9Q6HbltttDK9fQzUpDfp4l6DyIWf9gZ5E9NtitZpJ+CWn0IloIf75cPTC
 LHKi3ya8Dq0pN+0I81CySyYh51f5Xk3pQYKKeUjprHaDNBp+NGTa+WAgn w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="304403856"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="304403856"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:59:22 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="686473141"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="686473141"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 01:59:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221003113249.16213-6-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221003113249.16213-1-ville.syrjala@linux.intel.com>
 <20221003113249.16213-6-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 11:59:18 +0300
Message-ID: <875yh0ufq1.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915: Tighten DRRS capability
 reporting
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

On Mon, 03 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Only report DRRS capability for the connector if its fixed_modes
> list contains at least two modes capable of seamless DRRS switch
> between them.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Makes sense,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 19 +++++++++++++++++--
>  1 file changed, 17 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm=
/i915/display/intel_panel.c
> index 41cec9dc4223..d18c56cf957d 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -147,10 +147,25 @@ int intel_panel_get_modes(struct intel_connector *c=
onnector)
>  	return num_modes;
>  }
>=20=20
> +static bool has_drrs_modes(struct intel_connector *connector)
> +{
> +	const struct drm_display_mode *mode1;
> +
> +	list_for_each_entry(mode1, &connector->panel.fixed_modes, head) {
> +		const struct drm_display_mode *mode2 =3D mode1;
> +
> +		list_for_each_entry_continue(mode2, &connector->panel.fixed_modes, hea=
d) {
> +			if (is_alt_drrs_mode(mode1, mode2))
> +				return true;
> +		}
> +	}
> +
> +	return false;
> +}
> +
>  enum drrs_type intel_panel_drrs_type(struct intel_connector *connector)
>  {
> -	if (list_empty(&connector->panel.fixed_modes) ||
> -	    list_is_singular(&connector->panel.fixed_modes))
> +	if (!has_drrs_modes(connector))
>  		return DRRS_TYPE_NONE;
>=20=20
>  	return connector->panel.vbt.drrs_type;

--=20
Jani Nikula, Intel Open Source Graphics Center
