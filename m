Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AF786960F2
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Feb 2023 11:38:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B147B10E86D;
	Tue, 14 Feb 2023 10:38:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69A6C10E86D
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Feb 2023 10:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676371123; x=1707907123;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=xORdJu2IdZwqDWSNEpStiumLT8HDhQvVlbbUuJboRlo=;
 b=VxKBm947cqyVZ1oS6UixdxjjCwq+eu+1JR+7Hf8sKrzOJYG4sxzs0IlE
 COA0qUtj9Lv/R9ttHltrZIK03fUqQLwfbKbZ0eQFmr30Wqlof9ZOOn5Uq
 I0nFrr4gDOjTYSPFRYUXTVHY/Ki68ob+wycenaEj7ZK7DBGBwjmWtbpVW
 /svHlHn61/PtXaPnJM+P+BDWXSA9JlYbUYXBWIW1T7ek//S2HEawPOA6z
 FM5+yJFzWbw09IOdslfiaA5UMT+ZBrIh9Pc9uM3EhjkjIoqERxKKLRHZB
 eXnvgkclBIEpeBFpRxnqC6HanXaF/Z2BUkfEeQWOifclRtKz1Y8CjtnGY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="314774607"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="314774607"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:38:42 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10620"; a="671181950"
X-IronPort-AV: E=Sophos;i="5.97,296,1669104000"; d="scan'208";a="671181950"
Received: from skalyan-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.52.13])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2023 02:38:40 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230213225258.2127-13-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230213225258.2127-1-ville.syrjala@linux.intel.com>
 <20230213225258.2127-13-ville.syrjala@linux.intel.com>
Date: Tue, 14 Feb 2023 12:38:38 +0200
Message-ID: <87wn4ksf9t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 12/12] drm/i915: Remove pointless register
 read
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

On Tue, 14 Feb 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We just wrote the EDP transcoder's VTOTAL register a few lines
> earlier, so instead of reading it back out again let's just
> generate the same value for the transocder B/C register.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 4210ede5e52e..894f3098d9be 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2891,8 +2891,8 @@ static void intel_set_transcoder_timings(const stru=
ct intel_crtc_state *crtc_sta
>  	if (IS_HASWELL(dev_priv) && cpu_transcoder =3D=3D TRANSCODER_EDP &&
>  	    (pipe =3D=3D PIPE_B || pipe =3D=3D PIPE_C))
>  		intel_de_write(dev_priv, TRANS_VTOTAL(pipe),
> -			       intel_de_read(dev_priv, TRANS_VTOTAL(cpu_transcoder)));
> -
> +			       VACTIVE(crtc_vdisplay - 1) |
> +			       VTOTAL(crtc_vtotal - 1));
>  }
>=20=20
>  static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_=
state)

--=20
Jani Nikula, Intel Open Source Graphics Center
