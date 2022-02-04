Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8104AA197
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 22:08:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD2010E747;
	Fri,  4 Feb 2022 21:08:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A2E110E74C
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 21:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644008921; x=1675544921;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=2QKAfG43CesUKIt91NOi5v1FEGn6GqwKkwdLUgtrM8o=;
 b=h6Gts4vsqexU7KLOPIdkj8BGnFGx4mztJYlnrlRHwM0H5JtBQNEnFOhB
 GfkFZmDy9zK3tHpSWTm2IDr8qg2RLVSPzYQMAZp94RZszVe82XL7tiIX8
 1QAOv5cL/hDpc7KiwG6qABsZwWFkQY/C8PKUW8giGd+fgtiEN35SpMdaZ
 0YGpQm2rA4AKQheweO2KeXqrDoUJrj7ivsU79ZK2q58FI34e2TDe5+nOF
 gUjxyIiztPyq1NtxBwgiV7z3tWzWdFUkLqHoDZ97/Nc8gkkEeAjjAk0uI
 cEDWGDO6POB+y/Q/nCTzn6mJRLjAIfh4iK1IMzqDMUC4I90DJEebU/tVy w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="248202665"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="248202665"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 13:08:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="498593443"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 13:08:40 -0800
Date: Fri, 4 Feb 2022 13:08:36 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20220204210830.GB22962@labuser-Z97X-UD5H>
References: <20220203183823.22890-1-ville.syrjala@linux.intel.com>
 <20220203183823.22890-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220203183823.22890-6-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [PATCH 05/10] drm/i915: Nuke some dead code
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 03, 2022 at 08:38:18PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Remove all the dead code from icl_ddi_bigjoiner_pre_enable().
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Yup good catch here and thank you for cleaning up the dead code

Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>

Manasi

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 18 +-----------------
>  1 file changed, 1 insertion(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 48869478efc2..d5dc2c25c1f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1974,23 +1974,7 @@ static void hsw_set_frame_start_delay(const struct intel_crtc_state *crtc_state)
>  static void icl_ddi_bigjoiner_pre_enable(struct intel_atomic_state *state,
>  					 const struct intel_crtc_state *crtc_state)
>  {
> -	struct intel_crtc_state *master_crtc_state;
> -	struct intel_crtc *master_crtc;
> -	struct drm_connector_state *conn_state;
> -	struct drm_connector *conn;
> -	struct intel_encoder *encoder = NULL;
> -	int i;
> -
> -	master_crtc = intel_master_crtc(crtc_state);
> -	master_crtc_state = intel_atomic_get_new_crtc_state(state, master_crtc);
> -
> -	for_each_new_connector_in_state(&state->base, conn, conn_state, i) {
> -		if (conn_state->crtc != &master_crtc->base)
> -			continue;
> -
> -		encoder = to_intel_encoder(conn_state->best_encoder);
> -		break;
> -	}
> +	struct intel_crtc *master_crtc = intel_master_crtc(crtc_state);
>  
>  	/*
>  	 * Enable sequence steps 1-7 on bigjoiner master
> -- 
> 2.34.1
> 
