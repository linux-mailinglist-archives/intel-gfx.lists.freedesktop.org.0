Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EFBA14E9AA
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jan 2020 09:43:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F9C16FAB5;
	Fri, 31 Jan 2020 08:43:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 570056FAB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jan 2020 08:43:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jan 2020 00:43:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,385,1574150400"; d="scan'208";a="430301029"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga006.fm.intel.com with ESMTP; 31 Jan 2020 00:43:30 -0800
Received: from fmsmsx156.amr.corp.intel.com (10.18.116.74) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jan 2020 00:43:30 -0800
Received: from bgsmsx152.gar.corp.intel.com (10.224.48.50) by
 fmsmsx156.amr.corp.intel.com (10.18.116.74) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 31 Jan 2020 00:43:29 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.20]) by
 BGSMSX152.gar.corp.intel.com ([169.254.6.224]) with mapi id 14.03.0439.000;
 Fri, 31 Jan 2020 14:13:26 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/3] drm/i915: move intel_dp_set_m_n() to
 encoder for DDI platforms
Thread-Index: AQHV1fxph46Cgrm24UqqVI+j/7KeVagEeG9w
Date: Fri, 31 Jan 2020 08:43:26 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B80A1ECF3@BGSMSX108.gar.corp.intel.com>
References: <20200128162850.8660-1-jani.nikula@intel.com>
 <20200128162850.8660-3-jani.nikula@intel.com>
In-Reply-To: <20200128162850.8660-3-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWRiNTM5NGMtNzBkOS00ZjU2LTk0YjItNDg3NjY1MjJmOGYwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiTDdTdmg4Q3ljMFdJME5QTStaTlZiZFRuTjd6UVlmcEZJcjRLbUFhMSt2Wm1JZzhHZjVJMWlFRzhrWGp1UzUrbyJ9
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move intel_dp_set_m_n() to
 encoder for DDI platforms
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
> Nikula
> Sent: Tuesday, January 28, 2020 9:59 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>
> Subject: [Intel-gfx] [PATCH 3/3] drm/i915: move intel_dp_set_m_n() to encoder
> for DDI platforms
> 
> intel_dp_set_m_n() has a clear place in the DDI DP specific pre-enable hook.
> 
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Looks good to me.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

-Regards,
  Vandita

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c     | 2 ++
>  drivers/gpu/drm/i915/display/intel_display.c | 3 ---
>  2 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 5febd3a911fe..2a773ab7ace9 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3573,6 +3573,8 @@ static void intel_ddi_pre_enable_dp(struct
> intel_encoder *encoder,
>  	 */
>  	if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
>  		intel_ddi_set_dp_msa(crtc_state, conn_state);
> +
> +	intel_dp_set_m_n(crtc_state, M1_N1);
>  }
> 
>  static void intel_ddi_pre_enable_hdmi(struct intel_encoder *encoder, diff --git
> a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index 0b7112a29966..a5f6d501c133 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -6957,9 +6957,6 @@ static void hsw_crtc_enable(struct
> intel_atomic_state *state,
> 
>  	intel_encoders_pre_enable(state, crtc);
> 
> -	if (intel_crtc_has_dp_encoder(new_crtc_state))
> -		intel_dp_set_m_n(new_crtc_state, M1_N1);
> -
>  	if (!transcoder_is_dsi(cpu_transcoder))
>  		intel_set_pipe_timings(new_crtc_state);
> 
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
