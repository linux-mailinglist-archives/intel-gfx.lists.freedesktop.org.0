Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5419651EFC
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 11:39:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2271B10E37D;
	Tue, 20 Dec 2022 10:39:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8919F10E37D
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671532762; x=1703068762;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Ex4KfL40DDQt8ToruSYOCDUrycRlkaYofCsKb+NQjUw=;
 b=EnHsDPG0t/Vv3z61lClxm6EvkkrdJvWNI5agyc626qv7c48OGAxC2dTX
 TBDkkqTglgveuo0t/JLh86mK2CRDyOinh8J0tJ72z0e20BIzkYjKoSbpx
 LDPiiTZNeSCmMf/YqEvtoxphSAEwwMFxadM1eAqh4s3zNDRVNDFxQVaN3
 /uqqnC9lLliPlRv8ztKiqS41NmHRq7Hi8/GK6XAqZdmHffxXk5VtgrKf/
 ZDXB4loLNz1iLwOqLL3OyOyM0B+jHOZHi6R0TEuiJPTUvT/EttxoqwCb7
 wUkqz8MmSX1Hteemiz0QO/qBnuGodFg1z1i26+lJ7nzcHB4i0VXvlA3Fg A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307264251"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307264251"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 02:39:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="714376720"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="714376720"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 20 Dec 2022 02:39:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 20 Dec 2022 12:39:17 +0200
Date: Tue, 20 Dec 2022 12:39:17 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Simon Ser <contact@emersion.fr>
Message-ID: <Y6GQ1XvL7wU0kLbO@intel.com>
References: <20221215155138.246676-1-contact@emersion.fr>
 <20221215155138.246676-2-contact@emersion.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221215155138.246676-2-contact@emersion.fr>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp_mst: don't pull
 unregistered connectors into state
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 15, 2022 at 03:51:50PM +0000, Simon Ser wrote:
> In intel_dp_mst_atomic_master_trans_check(), we pull connectors
> sharing the same DP-MST stream into the atomic state. However,
> if the connector is unregistered, this later fails with:
> 
>     [  559.425658] i915 0000:00:02.0: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:378:DP-7] is not registered
> 
> Skip these unregistered connectors to allow user-space to turn them
> off.
> 
> Fixes part of this wlroots issue:
> https://gitlab.freedesktop.org/wlroots/wlroots/-/issues/3407
> 
> Signed-off-by: Simon Ser <contact@emersion.fr>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f773e117ebc4..70859a927a9d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -280,7 +280,8 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
>  		struct intel_crtc *crtc;
>  
>  		if (connector_iter->mst_port != connector->mst_port ||
> -		    connector_iter == connector)
> +		    connector_iter == connector ||
> +		    connector_iter->base.registration_state == DRM_CONNECTOR_UNREGISTERED)
>  			continue;

We can't really do that. It would risk leaving slave transcoders
enabled while the master is undergoing a full modeset.

I think a couple of ways we could go about this:
- kill the registration check entirely/partially
  I think Imre already has some plans for the partial killing
  due to some type-c vs. pm firmware issues that also need force
  a full modeset
- relocate this stuff to happen after drm_atomic_helper_check_modeset()
  like we already do for eg. bigjoiner. IIRC this was discussed as an
  option when we added intel_dp_mst_atomic_master_trans_check() but
  I don't recall anymore why we specifically chose to do this from
  connector.atomic_check().

>  
>  		conn_iter_state = intel_atomic_get_digital_connector_state(state,
> -- 
> 2.39.0
> 

-- 
Ville Syrjälä
Intel
