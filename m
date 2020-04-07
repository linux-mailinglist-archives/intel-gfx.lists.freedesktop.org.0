Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8371B1A0DCB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 14:37:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCF36E862;
	Tue,  7 Apr 2020 12:37:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14B56E862
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 12:37:14 +0000 (UTC)
IronPort-SDR: rulWZkoXixOX0WE8eYoT5oCnLWHkJqhgLeFqYkNPbr/apFNNvGCJV7lRQ00R3WQ+p3Ox3LrCj0
 /3MEzZocqhOA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:37:14 -0700
IronPort-SDR: HGK+xPlX3ubeHuFZ36l5JNCdZXgKaz2aKBf+DLPGOH04FJlTL/c5pUDm77elCM2+lULOus/QnR
 +JKn5E/HQGng==
X-IronPort-AV: E=Sophos;i="5.72,354,1580803200"; d="scan'208";a="424733896"
Received: from vogtstef-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.249.40.153])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 05:37:12 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vipin Anand <vipin.anand@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200327052357.22269-5-vipin.anand@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200327052357.22269-1-vipin.anand@intel.com>
 <20200327052357.22269-5-vipin.anand@intel.com>
Date: Tue, 07 Apr 2020 15:37:09 +0300
Message-ID: <87eeszjwui.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/display: Set HDR Infoframe for
 HDR capable LSPCON devices
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 27 Mar 2020, Vipin Anand <vipin.anand@intel.com> wrote:
> From: Uma Shankar <uma.shankar@intel.com>
>
> Send Dynamic Range and Mastering Infoframe (DRM for HDR metadata)
> as SDP packet to LSPCON following the DP spec. LSPCON receives the
> same and sends it to HDMI sink.
>
> v2: Suppressed some warnings. No functional change.
>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/drm_atomic_state_helper.c   | 1 +
>  drivers/gpu/drm/drm_atomic_uapi.c           | 1 +
>  drivers/gpu/drm/i915/display/intel_lspcon.h | 1 +
>  include/drm/drm_connector.h                 | 1 +
>  4 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic_state_helper.c b/drivers/gpu/drm/drm_atomic_state_helper.c
> index 7cf3cf936547..7cf98c06f424 100644
> --- a/drivers/gpu/drm/drm_atomic_state_helper.c
> +++ b/drivers/gpu/drm/drm_atomic_state_helper.c
> @@ -468,6 +468,7 @@ __drm_atomic_helper_connector_duplicate_state(struct drm_connector *connector,
>  
>  	if (state->hdr_output_metadata)
>  		drm_property_blob_get(state->hdr_output_metadata);
> +	state->hdr_metadata_changed = false;
>  
>  	/* Don't copy over a writeback job, they are used only once */
>  	state->writeback_job = NULL;
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index a1e5e262bae2..4c520e0b9872 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -734,6 +734,7 @@ static int drm_atomic_connector_set_property(struct drm_connector *connector,
>  				val,
>  				sizeof(struct hdr_output_metadata), -1,
>  				&replaced);
> +		state->hdr_metadata_changed |= replaced;
>  		return ret;
>  	} else if (property == config->aspect_ratio_property) {
>  		state->picture_aspect_ratio = val;
> diff --git a/drivers/gpu/drm/i915/display/intel_lspcon.h b/drivers/gpu/drm/i915/display/intel_lspcon.h
> index b2051f236223..bc34124f532e 100644
> --- a/drivers/gpu/drm/i915/display/intel_lspcon.h
> +++ b/drivers/gpu/drm/i915/display/intel_lspcon.h
> @@ -38,4 +38,5 @@ void lspcon_drm_write_infoframe(struct intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state,
>  				unsigned int type,
>  				const void *frame, ssize_t len);
> +

Superfluous change.

Patch needs to be posted to dri-devel.

BR,
Jani.

>  #endif /* __INTEL_LSPCON_H__ */
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 221910948b37..28df268aa1a7 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -661,6 +661,7 @@ struct drm_connector_state {
>  	 * DRM blob property for HDR output metadata
>  	 */
>  	struct drm_property_blob *hdr_output_metadata;
> +	u8 hdr_metadata_changed : 1;
>  };
>  
>  /**

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
