Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1727EA70
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 15:58:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BD9F6E0EC;
	Wed, 30 Sep 2020 13:58:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C5CF6E0EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 30 Sep 2020 13:58:15 +0000 (UTC)
IronPort-SDR: GX8JYiZkFr8u1CYGwoenAxCd9TH7zD+F6xrVIFTtd4ewKNfQl5NW5+2+Trrf7JDpR8NYqsVy99
 9/39HtlCmraQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159834784"
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="159834784"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 06:58:15 -0700
IronPort-SDR: vSY7WxbruSBh7vXdGTG18uQcqfYlESuNDx2bjQrvTlNYrynoZQfX4w9JSP9NJHfJ4C57lHjGOh
 k4vgGQPD/3yA==
X-IronPort-AV: E=Sophos;i="5.77,322,1596524400"; d="scan'208";a="294614412"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2020 06:58:14 -0700
Date: Wed, 30 Sep 2020 16:58:10 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200930135810.GC867650@ideak-desk.fi.intel.com>
References: <20200929233449.32323-1-ville.syrjala@linux.intel.com>
 <20200929233449.32323-4-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929233449.32323-4-ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 03/11] drm/i915: Make
 intel_dp_process_phy_request() static
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 02:34:41AM +0300, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> intel_dp_process_phy_request() has no business being externally
> visible. Make it static.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.h | 1 -
>  2 files changed, 1 insertion(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 3586d79f5599..5c673080ecb1 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -5562,7 +5562,7 @@ intel_dp_autotest_phy_ddi_enable(struct intel_dp *i=
ntel_dp, uint8_t lane_cnt)
>  		       trans_ddi_func_ctl_value);
>  }
>  =

> -void intel_dp_process_phy_request(struct intel_dp *intel_dp)
> +static void intel_dp_process_phy_request(struct intel_dp *intel_dp)
>  {
>  	struct drm_dp_phy_test_params *data =3D
>  		&intel_dp->compliance.test_data.phytest;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i9=
15/display/intel_dp.h
> index a9580d1df35b..60f44f41fd08 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -123,7 +123,6 @@ void intel_read_dp_sdp(struct intel_encoder *encoder,
>  		       struct intel_crtc_state *crtc_state,
>  		       unsigned int type);
>  bool intel_digital_port_connected(struct intel_encoder *encoder);
> -void intel_dp_process_phy_request(struct intel_dp *intel_dp);
>  =

>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  {
> -- =

> 2.26.2
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
