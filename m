Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KJZxJezm82lC8gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 01 May 2026 01:34:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 447C04A8DE9
	for <lists+intel-gfx@lfdr.de>; Fri, 01 May 2026 01:34:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BE1F10E4B1;
	Thu, 30 Apr 2026 23:34:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="OZ/R+em6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6974210E044;
 Thu, 30 Apr 2026 23:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DYJRysh5k027P7olTbzgSY7VkB4cwpPvop6wmUrzHu0=; b=OZ/R+em6zsc5vM2sbZtm2Qvoc1
 WMOcEAT5oCgAlhJ2N3JrLVdDwlMAGsuQxxnfXfPkdQvII5o7W822fBL1kGVWiKbNxPQnCelVE7MEa
 tNYSGfqmMn659TvwJLdniUzTS7b9Yv4QOcCLGSNXQB68iBeOZ/MpSG/YjMEHf1sG5fEWuW+yOPg1c
 GgowLqXUUEy8n5RJXZrfo7b3HR40+BatEHN2k6EhwfvqPEzucGBIxIrYbZrubX9TkvZRUyYUKh8D7
 +FUwYFl4kVX/F9avVAudnShm9WvTOefevZZXBdiT6PSdfrA32YStRI3TnA/N3BJpZ+94N3J0cYjsM
 SXLJQTPQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wIatA-004deU-Mz; Fri, 01 May 2026 01:33:48 +0200
Message-ID: <1d90cafb-524e-45f7-93c7-b37821935a37@Igalia.com>
Date: Thu, 30 Apr 2026 16:33:34 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3,1/7] drm: writeback: Refactor drm_writeback_connector
 structure
To: Suraj Kandpal <suraj.kandpal@intel.com>, freedreno@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, kernel-list@raspberrypi.com,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, uma.shankar@intel.com,
 dmitry.baryshkov@oss.qualcomm.com, arun.r.murthy@intel.com,
 jani.nikula@intel.com, harry.wentland@amd.com, siqueira@igalia.com,
 alexander.deucher@amd.com, christian.koenig@amd.com, airlied@gmail.com,
 simona@ffwll.ch, liviu.dudau@arm.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, robin.clark@oss.qualcomm.com, abhinav.kumar@linux.dev,
 tzimmermann@suse.de, sean@poorly.ru, marijn.suijten@somainline.org,
 laurent.pinchart+renesas@ideasonboard.com, dave.stevenson@raspberrypi.com,
 tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Louis Chauvet <louis.chauvet@bootlin.com>, kernel-dev@igalia.com
References: <20260316083008.87466-2-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260316083008.87466-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: 447C04A8DE9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.944];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[intel.com,oss.qualcomm.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com,raspberrypi.com,bootlin.com];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[encoder.base:url,bootlin.com:email,arm.com:email,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On 3/16/26 01:30, Suraj Kandpal wrote:
> Some drivers cannot work with the current design where the connector
> is embedded within the drm_writeback_connector such as Intel and
> some drivers that can get it working end up adding a lot of checks
> all around the code to check if it's a writeback conenctor or not,
> this is due to the limitation of inheritance in C.
> To solve this move the drm_writeback_connector within the
> drm_connector and remove the drm_connector base which was in
> drm_writeback_connector. Make this drm_writeback_connector
> a union with hdmi connector to save memory and since a connector can
> never be both writeback and hdmi it should serve us well.
> Do all other required modifications that come with these changes
> along with addition of new function which returns the drm_connector
> when drm_writeback_connector is present.
> Modify drivers using the drm_writeback_connector to
> allow them to use this connector without breaking them.
> The drivers modified here are amd, komeda, mali, vc4, vkms,
> rcar_du, msm
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Liviu Dudau <liviu.dudau@arm.com>
> Reviewed-by: Louis Chauvet <louis.chauvet@bootlin.com>
> ---
>   .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c |  6 +-
>   .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h |  2 +-
>   .../drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c  |  8 +--
>   .../gpu/drm/arm/display/komeda/komeda_crtc.c  |  6 +-
>   .../gpu/drm/arm/display/komeda/komeda_kms.h   |  6 +-
>   .../arm/display/komeda/komeda_wb_connector.c  |  8 +--
>   drivers/gpu/drm/arm/malidp_crtc.c             |  2 +-
>   drivers/gpu/drm/arm/malidp_drv.h              |  2 +-
>   drivers/gpu/drm/arm/malidp_hw.c               |  6 +-
>   drivers/gpu/drm/arm/malidp_mw.c               |  8 +--
>   drivers/gpu/drm/drm_atomic_uapi.c             |  2 +-
>   drivers/gpu/drm/drm_writeback.c               | 35 ++++++----
>   .../drm/msm/disp/dpu1/dpu_encoder_phys_wb.c   |  3 +-
>   drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c | 16 +++--
>   drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h |  4 +-
>   .../gpu/drm/renesas/rcar-du/rcar_du_crtc.h    |  4 +-
>   .../drm/renesas/rcar-du/rcar_du_writeback.c   | 19 ++---
>   drivers/gpu/drm/vc4/vc4_txp.c                 | 14 ++--
>   drivers/gpu/drm/vkms/vkms_composer.c          |  2 +-
>   drivers/gpu/drm/vkms/vkms_drv.h               |  2 +-
>   drivers/gpu/drm/vkms/vkms_writeback.c         | 13 ++--
>   include/drm/drm_connector.h                   | 69 +++++++++++++++++--
>   include/drm/drm_writeback.h                   | 66 +-----------------
>   23 files changed, 161 insertions(+), 142 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 2f2b1b115bf2..5fe3eb6fc6e1 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -7219,11 +7219,9 @@ create_stream_for_sink(struct drm_connector *connector,
>   		aconnector = to_amdgpu_dm_connector(connector);
>   		link = aconnector->dc_link;
>   	} else {
> -		struct drm_writeback_connector *wbcon = NULL;
>   		struct amdgpu_dm_wb_connector *dm_wbcon = NULL;
>   
> -		wbcon = drm_connector_to_writeback(connector);
> -		dm_wbcon = to_amdgpu_dm_wb_connector(wbcon);
> +		dm_wbcon = to_amdgpu_dm_wb_connector(connector);
>   		link = dm_wbcon->link;
>   	}
>   
> @@ -10556,7 +10554,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
>   			      struct drm_connector *connector,
>   			      struct drm_connector_state *new_con_state)
>   {
> -	struct drm_writeback_connector *wb_conn = drm_connector_to_writeback(connector);
> +	struct drm_writeback_connector *wb_conn = &connector->writeback;
>   	struct amdgpu_device *adev = dm->adev;
>   	struct amdgpu_crtc *acrtc;
>   	struct dc_writeback_info *wb_info;
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> index 800813671748..705d19f85231 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.h
> @@ -861,7 +861,7 @@ static inline void amdgpu_dm_set_mst_status(uint8_t *status,
>   #define to_amdgpu_dm_connector(x) container_of(x, struct amdgpu_dm_connector, base)
>   
>   struct amdgpu_dm_wb_connector {
> -	struct drm_writeback_connector base;
> +	struct drm_connector base;
>   	struct dc_link *link;
>   };
>   
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> index 80c37487ca77..8fea29720989 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> @@ -202,9 +202,9 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
>   
>   	wbcon->link = link;
>   
> -	drm_connector_helper_add(&wbcon->base.base, &amdgpu_dm_wb_conn_helper_funcs);
> +	drm_connector_helper_add(&wbcon->base, &amdgpu_dm_wb_conn_helper_funcs);
>   
> -	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
> +	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base.writeback,
>   					    &amdgpu_dm_wb_connector_funcs,
>   					    encoder,
>   					    amdgpu_dm_wb_formats,
> @@ -216,8 +216,8 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
>   	 * Some of the properties below require access to state, like bpc.
>   	 * Allocate some default initial connector state with our reset helper.
>   	 */
> -	if (wbcon->base.base.funcs->reset)
> -		wbcon->base.base.funcs->reset(&wbcon->base.base);
> +	if (wbcon->base.funcs->reset)
> +		wbcon->base.funcs->reset(&wbcon->base);
>   
>   	return 0;
>   }
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index 9c8b8da531a7..ab7dcc7fd8f3 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -213,7 +213,7 @@ void komeda_crtc_handle_event(struct komeda_crtc   *kcrtc,
>   		struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;
>   
>   		if (wb_conn)
> -			drm_writeback_signal_completion(&wb_conn->base, 0);
> +			drm_writeback_signal_completion(&wb_conn->base.writeback, 0);
>   		else
>   			drm_warn(drm, "CRTC[%d]: EOW happen but no wb_connector.\n",
>   				 drm_crtc_index(&kcrtc->base));
> @@ -269,9 +269,9 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
>   	if (slave && has_bit(slave->id, kcrtc_st->affected_pipes))
>   		komeda_pipeline_update(slave, old->state);
>   
> -	conn_st = wb_conn ? wb_conn->base.base.state : NULL;
> +	conn_st = wb_conn ? wb_conn->base.state : NULL;
>   	if (conn_st && conn_st->writeback_job)
> -		drm_writeback_queue_job(&wb_conn->base, conn_st);
> +		drm_writeback_queue_job(&wb_conn->base.writeback, conn_st);
>   
>   	/* step 2: notify the HW to kickoff the update */
>   	mdev->funcs->flush(mdev, master->id, kcrtc_st->active_pipes);
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> index 83e61c4080c2..9c34302782c0 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_kms.h
> @@ -53,8 +53,8 @@ struct komeda_plane_state {
>    * struct komeda_wb_connector
>    */
>   struct komeda_wb_connector {
> -	/** @base: &drm_writeback_connector */
> -	struct drm_writeback_connector base;
> +	/** @base: &drm_connector */
> +	struct drm_connector base;
>   
>   	/** @wb_layer: represents associated writeback pipeline of komeda */
>   	struct komeda_layer *wb_layer;
> @@ -139,7 +139,7 @@ struct komeda_kms_dev {
>   static inline bool is_writeback_only(struct drm_crtc_state *st)
>   {
>   	struct komeda_wb_connector *wb_conn = to_kcrtc(st->crtc)->wb_conn;
> -	struct drm_connector *conn = wb_conn ? &wb_conn->base.base : NULL;
> +	struct drm_connector *conn = wb_conn ? &wb_conn->base : NULL;
>   
>   	return conn && (st->connector_mask == BIT(drm_connector_index(conn)));
>   }
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> index bcc53d4015f1..fa2f63c142cd 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> @@ -53,7 +53,7 @@ komeda_wb_encoder_atomic_check(struct drm_encoder *encoder,
>   		return -EINVAL;
>   	}
>   
> -	wb_layer = to_kconn(to_wb_conn(conn_st->connector))->wb_layer;
> +	wb_layer = to_kconn(conn_st->connector)->wb_layer;
>   
>   	/*
>   	 * No need for a full modested when the only connector changed is the
> @@ -151,7 +151,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>   
>   	kwb_conn->wb_layer = kcrtc->master->wb_layer;
>   
> -	wb_conn = &kwb_conn->base;
> +	wb_conn = &kwb_conn->base.writeback;
>   
>   	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
>   					       kwb_conn->wb_layer->layer_type,
> @@ -180,9 +180,9 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>   		return err;
>   	}
>   
> -	drm_connector_helper_add(&wb_conn->base, &komeda_wb_conn_helper_funcs);
> +	drm_connector_helper_add(&kwb_conn->base, &komeda_wb_conn_helper_funcs);
>   
> -	info = &kwb_conn->base.base.display_info;
> +	info = &kwb_conn->base.display_info;
>   	info->bpc = __fls(kcrtc->master->improc->supported_color_depths);
>   	info->color_formats = kcrtc->master->improc->supported_color_formats;
>   
> diff --git a/drivers/gpu/drm/arm/malidp_crtc.c b/drivers/gpu/drm/arm/malidp_crtc.c
> index 18e6157b1047..68fa6024be9b 100644
> --- a/drivers/gpu/drm/arm/malidp_crtc.c
> +++ b/drivers/gpu/drm/arm/malidp_crtc.c
> @@ -421,7 +421,7 @@ static int malidp_crtc_atomic_check(struct drm_crtc *crtc,
>   		u32 new_mask = crtc_state->connector_mask;
>   
>   		if ((old_mask ^ new_mask) ==
> -		    (1 << drm_connector_index(&malidp->mw_connector.base)))
> +		    (1 << drm_connector_index(&malidp->mw_connector)))
>   			crtc_state->connectors_changed = false;
>   	}
>   
> diff --git a/drivers/gpu/drm/arm/malidp_drv.h b/drivers/gpu/drm/arm/malidp_drv.h
> index bc0387876dea..aa5599467d27 100644
> --- a/drivers/gpu/drm/arm/malidp_drv.h
> +++ b/drivers/gpu/drm/arm/malidp_drv.h
> @@ -32,7 +32,7 @@ struct malidp_drm {
>   	struct drm_device base;
>   	struct malidp_hw_device *dev;
>   	struct drm_crtc crtc;
> -	struct drm_writeback_connector mw_connector;
> +	struct drm_connector mw_connector;
>   	wait_queue_head_t wq;
>   	struct drm_pending_vblank_event *event;
>   	atomic_t config_valid;
> diff --git a/drivers/gpu/drm/arm/malidp_hw.c b/drivers/gpu/drm/arm/malidp_hw.c
> index 9b845d3f34e1..5a7bd27d3718 100644
> --- a/drivers/gpu/drm/arm/malidp_hw.c
> +++ b/drivers/gpu/drm/arm/malidp_hw.c
> @@ -1315,15 +1315,15 @@ static irqreturn_t malidp_se_irq(int irq, void *arg)
>   	if (status & se->vsync_irq) {
>   		switch (hwdev->mw_state) {
>   		case MW_ONESHOT:
> -			drm_writeback_signal_completion(&malidp->mw_connector, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
>   			break;
>   		case MW_STOP:
> -			drm_writeback_signal_completion(&malidp->mw_connector, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
>   			/* disable writeback after stop */
>   			hwdev->mw_state = MW_NOT_ENABLED;
>   			break;
>   		case MW_RESTART:
> -			drm_writeback_signal_completion(&malidp->mw_connector, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
>   			fallthrough;	/* to a new start */
>   		case MW_START:
>   			/* writeback started, need to emulate one-shot mode */
> diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
> index 6e0c78e998aa..472598b3e007 100644
> --- a/drivers/gpu/drm/arm/malidp_mw.c
> +++ b/drivers/gpu/drm/arm/malidp_mw.c
> @@ -212,7 +212,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
>   	if (!malidp->dev->hw->enable_memwrite)
>   		return 0;
>   
> -	drm_connector_helper_add(&malidp->mw_connector.base,
> +	drm_connector_helper_add(&malidp->mw_connector,
>   				 &malidp_mw_connector_helper_funcs);
>   
>   	formats = get_writeback_formats(malidp, &n_formats);
> @@ -228,7 +228,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
>   
>   	encoder->possible_crtcs = drm_crtc_mask(&malidp->crtc);
>   
> -	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector,
> +	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector.writeback,
>   					    &malidp_mw_connector_funcs,
>   					    encoder,
>   					    formats, n_formats);
> @@ -243,8 +243,8 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
>   			     struct drm_atomic_state *old_state)
>   {
>   	struct malidp_drm *malidp = drm_to_malidp(drm);
> -	struct drm_writeback_connector *mw_conn = &malidp->mw_connector;
> -	struct drm_connector_state *conn_state = mw_conn->base.state;
> +	struct drm_writeback_connector *mw_conn = &malidp->mw_connector.writeback;
> +	struct drm_connector_state *conn_state = malidp->mw_connector.state;
>   	struct malidp_hw_device *hwdev = malidp->dev;
>   	struct malidp_mw_connector_state *mw_state;
>   
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 87de41fb4459..13576a6c25d7 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -1468,7 +1468,7 @@ static int prepare_signaling(struct drm_device *dev,
>   		f[*num_fences].out_fence_ptr = fence_ptr;
>   		*fence_state = f;
>   
> -		wb_conn = drm_connector_to_writeback(conn);
> +		wb_conn = &conn->writeback;
>   		fence = drm_writeback_get_out_fence(wb_conn);
>   		if (!fence)
>   			return -ENOMEM;
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index 68fdac745f42..7bf9f6374712 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -89,8 +89,10 @@ static const char *drm_writeback_fence_get_driver_name(struct dma_fence *fence)
>   {
>   	struct drm_writeback_connector *wb_connector =
>   		fence_to_wb_connector(fence);
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   
> -	return wb_connector->base.dev->driver->name;
> +	return connector->dev->driver->name;
>   }
>   
>   static const char *
> @@ -187,7 +189,8 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
>   					  struct drm_encoder *enc, const u32 *formats,
>   					  int n_formats)
>   {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   	struct drm_mode_config *config = &dev->mode_config;
>   	struct drm_property_blob *blob;
>   	int ret = create_writeback_properties(dev);
> @@ -269,7 +272,8 @@ int drm_writeback_connector_init(struct drm_device *dev,
>   				 struct drm_encoder *enc,
>   				 const u32 *formats, int n_formats)
>   {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   	int ret;
>   
>   	ret = drm_connector_init(dev, connector, con_funcs,
> @@ -339,7 +343,8 @@ int drmm_writeback_connector_init(struct drm_device *dev,
>   				  struct drm_encoder *enc,
>   				  const u32 *formats, int n_formats)
>   {
> -	struct drm_connector *connector = &wb_connector->base;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   	int ret;
>   
>   	ret = drmm_connector_init(dev, connector, con_funcs,
> @@ -372,7 +377,7 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>   			return -ENOMEM;
>   
>   		conn_state->writeback_job->connector =
> -			drm_connector_to_writeback(conn_state->connector);
> +			&conn_state->connector->writeback;
>   	}
>   
>   	drm_framebuffer_assign(&conn_state->writeback_job->fb, fb);
> @@ -381,13 +386,15 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>   
>   int drm_writeback_prepare_job(struct drm_writeback_job *job)
>   {
> -	struct drm_writeback_connector *connector = job->connector;
> +	struct drm_writeback_connector *wb_connector = job->connector;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   	const struct drm_connector_helper_funcs *funcs =
> -		connector->base.helper_private;
> +		connector->helper_private;
>   	int ret;
>   
>   	if (funcs->prepare_writeback_job) {
> -		ret = funcs->prepare_writeback_job(connector, job);
> +		ret = funcs->prepare_writeback_job(wb_connector, job);
>   		if (ret < 0)
>   			return ret;
>   	}
> @@ -433,12 +440,14 @@ EXPORT_SYMBOL(drm_writeback_queue_job);
>   
>   void drm_writeback_cleanup_job(struct drm_writeback_job *job)
>   {
> -	struct drm_writeback_connector *connector = job->connector;
> +	struct drm_writeback_connector *wb_connector = job->connector;
> +	struct drm_connector *connector	=
> +		drm_writeback_to_connector(wb_connector);
>   	const struct drm_connector_helper_funcs *funcs =
> -		connector->base.helper_private;
> +		connector->helper_private;
>   
>   	if (job->prepared && funcs->cleanup_writeback_job)
> -		funcs->cleanup_writeback_job(connector, job);
> +		funcs->cleanup_writeback_job(wb_connector, job);
>   
>   	if (job->fb)
>   		drm_framebuffer_put(job->fb);
> @@ -520,8 +529,10 @@ struct dma_fence *
>   drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
>   {
>   	struct dma_fence *fence;
> +	struct drm_connector *connector =
> +		drm_writeback_to_connector(wb_connector);
>   
> -	if (WARN_ON(wb_connector->base.connector_type !=
> +	if (WARN_ON(connector->connector_type !=
>   		    DRM_MODE_CONNECTOR_WRITEBACK))
>   		return NULL;
>   
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> index 6d28f2281c76..0375faf7f50c 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> @@ -482,7 +482,8 @@ static void dpu_encoder_phys_wb_prepare_for_kickoff(
>   		return;
>   	}
>   
> -	drm_conn = &wb_enc->wb_conn->base;
> +	drm_conn =
> +		container_of(wb_enc->wb_conn, struct drm_connector, writeback);
Why not 'drm_conn = drm_writeback_to_connector(wb_enc->wb_conn);'?

>   	state = drm_conn->state;
>   
>   	if (wb_enc->wb_conn && wb_enc->wb_job)
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> index 6f2370c9dd98..930ba1ad777b 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> @@ -29,8 +29,7 @@ static int dpu_wb_conn_get_modes(struct drm_connector *connector)
>   static int dpu_wb_conn_atomic_check(struct drm_connector *connector,
>   				    struct drm_atomic_state *state)
>   {
> -	struct drm_writeback_connector *wb_conn = drm_connector_to_writeback(connector);
> -	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(wb_conn);
> +	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
>   	struct drm_connector_state *conn_state =
>   		drm_atomic_get_new_connector_state(state, connector);
>   	struct drm_crtc *crtc;
> @@ -88,10 +87,11 @@ static const struct drm_connector_funcs dpu_wb_conn_funcs = {
>   	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
>   };
>   
> -static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *connector,
> +static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *wb_conn,
>   		struct drm_writeback_job *job)
>   {
> -
> +	struct drm_connector *connector =
> +		container_of(wb_conn, struct drm_connector, writeback);
As above.

>   	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
>   
>   	if (!job->fb)
> @@ -102,9 +102,11 @@ static int dpu_wb_conn_prepare_job(struct drm_writeback_connector *connector,
>   	return 0;
>   }
>   
> -static void dpu_wb_conn_cleanup_job(struct drm_writeback_connector *connector,
> +static void dpu_wb_conn_cleanup_job(struct drm_writeback_connector *wb_connector,
>   		struct drm_writeback_job *job)
>   {
> +	struct drm_connector *connector =
> +		container_of(wb_connector, struct drm_connector, writeback);
And again.

>   	struct dpu_wb_connector *dpu_wb_conn = to_dpu_wb_conn(connector);
>   
>   	if (!job->fb)
> @@ -132,9 +134,9 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
>   
>   	dpu_wb_conn->maxlinewidth = maxlinewidth;
>   
> -	drm_connector_helper_add(&dpu_wb_conn->base.base, &dpu_wb_conn_helper_funcs);
> +	drm_connector_helper_add(&dpu_wb_conn->base, &dpu_wb_conn_helper_funcs);
>   
> -	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base,
> +	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base.writeback,
>   					   &dpu_wb_conn_funcs, enc,
>   					   format_list, num_formats);
>   
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
> index 4b11cca8014c..9ebf15392b20 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.h
> @@ -16,12 +16,12 @@
>   #include "dpu_encoder_phys.h"
>   
>   struct dpu_wb_connector {
> -	struct drm_writeback_connector base;
> +	struct drm_connector base;
>   	struct drm_encoder *wb_enc;
>   	u32 maxlinewidth;
>   };
>   
> -static inline struct dpu_wb_connector *to_dpu_wb_conn(struct drm_writeback_connector *conn)
> +static inline struct dpu_wb_connector *to_dpu_wb_conn(struct drm_connector *conn)
>   {
>   	return container_of(conn, struct dpu_wb_connector, base);
>   }
> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h b/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
> index d0f38a8b3561..11937e70e308 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_crtc.h
> @@ -42,7 +42,7 @@ struct rcar_du_vsp;
>    * @cmm: CMM associated with this CRTC
>    * @vsp: VSP feeding video to this CRTC
>    * @vsp_pipe: index of the VSP pipeline feeding video to this CRTC
> - * @writeback: the writeback connector
> + * @writeback: the drm connector which contains the writeback connector
>    */
>   struct rcar_du_crtc {
>   	struct drm_crtc crtc;
> @@ -72,7 +72,7 @@ struct rcar_du_crtc {
>   	const char *const *sources;
>   	unsigned int sources_count;
>   
> -	struct drm_writeback_connector writeback;
> +	struct drm_connector writeback;
Maybe rename this wb_connector to avoid things like 
'rcrtc->writeback.writeback'?

>   };
>   
>   #define to_rcar_crtc(c)		container_of(c, struct rcar_du_crtc, crtc)
> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> index aa37cf99754c..cd09e0fbb030 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> @@ -50,7 +50,9 @@ static int rcar_du_wb_conn_get_modes(struct drm_connector *connector)
>   static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
>   				  struct drm_writeback_job *job)
>   {
> -	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
> +	struct drm_connector *conn =
> +		drm_writeback_to_connector(connector);
Why line wrap this? It is less than 80 characters as a single line.

> +	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(conn);
>   	struct rcar_du_wb_job *rjob;
>   	int ret;
>   
> @@ -75,7 +77,9 @@ static int rcar_du_wb_prepare_job(struct drm_writeback_connector *connector,
>   static void rcar_du_wb_cleanup_job(struct drm_writeback_connector *connector,
>   				   struct drm_writeback_job *job)
>   {
> -	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(connector);
> +	struct drm_connector *conn =
> +		drm_writeback_to_connector(connector);
As above.

John.

> +	struct rcar_du_crtc *rcrtc = wb_to_rcar_crtc(conn);
>   	struct rcar_du_wb_job *rjob = job->priv;
>   
>   	if (!job->fb)
> @@ -199,8 +203,7 @@ static const u32 writeback_formats[] = {
>   int rcar_du_writeback_init(struct rcar_du_device *rcdu,
>   			   struct rcar_du_crtc *rcrtc)
>   {
> -	struct drm_writeback_connector *wb_conn = &rcrtc->writeback;
> -
> +	struct drm_writeback_connector *wb_conn = &rcrtc->writeback.writeback;
>   	struct drm_encoder *encoder;
>   
>   	encoder = drmm_plain_encoder_alloc(&rcdu->ddev, NULL,
> @@ -212,7 +215,7 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
>   
>   	encoder->possible_crtcs = drm_crtc_mask(&rcrtc->crtc);
>   
> -	drm_connector_helper_add(&wb_conn->base,
> +	drm_connector_helper_add(&rcrtc->writeback,
>   				 &rcar_du_wb_conn_helper_funcs);
>   
>   	return drmm_writeback_connector_init(&rcdu->ddev, wb_conn,
> @@ -231,7 +234,7 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
>   	struct drm_framebuffer *fb;
>   	unsigned int i;
>   
> -	state = rcrtc->writeback.base.state;
> +	state = rcrtc->writeback.state;
>   	if (!state || !state->writeback_job)
>   		return;
>   
> @@ -246,10 +249,10 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
>   		cfg->mem[i] = sg_dma_address(rjob->sg_tables[i].sgl)
>   			    + fb->offsets[i];
>   
> -	drm_writeback_queue_job(&rcrtc->writeback, state);
> +	drm_writeback_queue_job(&rcrtc->writeback.writeback, state);
>   }
>   
>   void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
>   {
> -	drm_writeback_signal_completion(&rcrtc->writeback, 0);
> +	drm_writeback_signal_completion(&rcrtc->writeback.writeback, 0);
>   }
> diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
> index befdb094c173..de3db0834011 100644
> --- a/drivers/gpu/drm/vc4/vc4_txp.c
> +++ b/drivers/gpu/drm/vc4/vc4_txp.c
> @@ -168,7 +168,7 @@ struct vc4_txp {
>   	struct platform_device *pdev;
>   
>   	struct vc4_encoder encoder;
> -	struct drm_writeback_connector connector;
> +	struct drm_connector connector;
>   
>   	void __iomem *regs;
>   };
> @@ -177,7 +177,7 @@ struct vc4_txp {
>   	container_of_const(_encoder, struct vc4_txp, encoder.base)
>   
>   #define connector_to_vc4_txp(_connector)				\
> -	container_of_const(_connector, struct vc4_txp, connector.base)
> +	container_of_const(_connector, struct vc4_txp, connector)
>   
>   static const struct debugfs_reg32 txp_regs[] = {
>   	VC4_REG32(TXP_DST_PTR),
> @@ -357,7 +357,7 @@ static void vc4_txp_connector_atomic_commit(struct drm_connector *conn,
>   
>   	TXP_WRITE(TXP_DST_CTRL, ctrl);
>   
> -	drm_writeback_queue_job(&txp->connector, conn_state);
> +	drm_writeback_queue_job(&txp->connector.writeback, conn_state);
>   
>   	drm_dev_exit(idx);
>   }
> @@ -505,7 +505,7 @@ static irqreturn_t vc4_txp_interrupt(int irq, void *data)
>   	 */
>   	TXP_WRITE(TXP_DST_CTRL, TXP_READ(TXP_DST_CTRL) & ~TXP_EI);
>   	vc4_crtc_handle_vblank(vc4_crtc);
> -	drm_writeback_signal_completion(&txp->connector, 0);
> +	drm_writeback_signal_completion(&txp->connector.writeback, 0);
>   
>   	return IRQ_HANDLED;
>   }
> @@ -599,9 +599,9 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
>   	if (ret)
>   		return ret;
>   
> -	drm_connector_helper_add(&txp->connector.base,
> +	drm_connector_helper_add(&txp->connector,
>   				 &vc4_txp_connector_helper_funcs);
> -	ret = drmm_writeback_connector_init(drm, &txp->connector,
> +	ret = drmm_writeback_connector_init(drm, &txp->connector.writeback,
>   					    &vc4_txp_connector_funcs,
>   					    encoder,
>   					    drm_fmts, ARRAY_SIZE(drm_fmts));
> @@ -623,7 +623,7 @@ static void vc4_txp_unbind(struct device *dev, struct device *master,
>   {
>   	struct vc4_txp *txp = dev_get_drvdata(dev);
>   
> -	drm_connector_cleanup(&txp->connector.base);
> +	drm_connector_cleanup(&txp->connector);
>   }
>   
>   static const struct component_ops vc4_txp_ops = {
> diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
> index cd85de4ffd03..d15623be85fa 100644
> --- a/drivers/gpu/drm/vkms/vkms_composer.c
> +++ b/drivers/gpu/drm/vkms/vkms_composer.c
> @@ -646,7 +646,7 @@ void vkms_composer_worker(struct work_struct *work)
>   		return;
>   
>   	if (wb_pending) {
> -		drm_writeback_signal_completion(&out->wb_connector, 0);
> +		drm_writeback_signal_completion(&out->wb_connector.writeback, 0);
>   		spin_lock_irq(&out->composer_lock);
>   		crtc_state->wb_pending = false;
>   		spin_unlock_irq(&out->composer_lock);
> diff --git a/drivers/gpu/drm/vkms/vkms_drv.h b/drivers/gpu/drm/vkms/vkms_drv.h
> index 0933e4ce0ff0..145a7909388b 100644
> --- a/drivers/gpu/drm/vkms/vkms_drv.h
> +++ b/drivers/gpu/drm/vkms/vkms_drv.h
> @@ -217,7 +217,7 @@ struct vkms_crtc_state {
>    */
>   struct vkms_output {
>   	struct drm_crtc crtc;
> -	struct drm_writeback_connector wb_connector;
> +	struct drm_connector wb_connector;
>   	struct drm_encoder wb_encoder;
>   	struct workqueue_struct *composer_workq;
>   	spinlock_t lock;
> diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
> index 908b7e602ffb..cadb4cb372c5 100644
> --- a/drivers/gpu/drm/vkms/vkms_writeback.c
> +++ b/drivers/gpu/drm/vkms/vkms_writeback.c
> @@ -103,10 +103,13 @@ static int vkms_wb_prepare_job(struct drm_writeback_connector *wb_connector,
>   	return ret;
>   }
>   
> -static void vkms_wb_cleanup_job(struct drm_writeback_connector *connector,
> +static void vkms_wb_cleanup_job(struct drm_writeback_connector *wb_conn,
>   				struct drm_writeback_job *job)
>   {
>   	struct vkms_writeback_job *vkmsjob = job->priv;
> +	struct drm_connector *connector = container_of(wb_conn,
> +						       struct drm_connector,
> +						       writeback);
>   	struct vkms_output *vkms_output = container_of(connector,
>   						       struct vkms_output,
>   						       wb_connector);
> @@ -128,8 +131,8 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
>   	struct drm_connector_state *connector_state = drm_atomic_get_new_connector_state(state,
>   											 conn);
>   	struct vkms_output *output = drm_crtc_to_vkms_output(connector_state->crtc);
> -	struct drm_writeback_connector *wb_conn = &output->wb_connector;
> -	struct drm_connector_state *conn_state = wb_conn->base.state;
> +	struct drm_writeback_connector *wb_conn = &output->wb_connector.writeback;
> +	struct drm_connector_state *conn_state = output->wb_connector.state;
>   	struct vkms_crtc_state *crtc_state = output->composer_state;
>   	struct drm_framebuffer *fb = connector_state->writeback_job->fb;
>   	u16 crtc_height = crtc_state->base.mode.vdisplay;
> @@ -167,7 +170,7 @@ static const struct drm_connector_helper_funcs vkms_wb_conn_helper_funcs = {
>   int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
>   				    struct vkms_output *vkms_output)
>   {
> -	struct drm_writeback_connector *wb = &vkms_output->wb_connector;
> +	struct drm_writeback_connector *wb = &vkms_output->wb_connector.writeback;
>   	int ret;
>   
>   	ret = drmm_encoder_init(&vkmsdev->drm, &vkms_output->wb_encoder,
> @@ -178,7 +181,7 @@ int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
>   	vkms_output->wb_encoder.possible_clones |=
>   		drm_encoder_mask(&vkms_output->wb_encoder);
>   
> -	drm_connector_helper_add(&wb->base, &vkms_wb_conn_helper_funcs);
> +	drm_connector_helper_add(&vkms_output->wb_connector, &vkms_wb_conn_helper_funcs);
>   
>   	return drmm_writeback_connector_init(&vkmsdev->drm, wb,
>   					     &vkms_wb_connector_funcs,
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index c18be8c19de0..7032bb42d06f 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -1927,6 +1927,61 @@ struct drm_connector_cec {
>   	void *data;
>   };
>   
> +/**
> + * struct drm_writeback_connector - DRM writeback connector
> + */
> +struct drm_writeback_connector {
> +	/**
> +	 * @pixel_formats_blob_ptr:
> +	 *
> +	 * DRM blob property data for the pixel formats list on writeback
> +	 * connectors
> +	 * See also drm_writeback_connector_init()
> +	 */
> +	struct drm_property_blob *pixel_formats_blob_ptr;
> +
> +	/** @job_lock: Protects job_queue */
> +	spinlock_t job_lock;
> +
> +	/**
> +	 * @job_queue:
> +	 *
> +	 * Holds a list of a connector's writeback jobs; the last item is the
> +	 * most recent. The first item may be either waiting for the hardware
> +	 * to begin writing, or currently being written.
> +	 *
> +	 * See also: drm_writeback_queue_job() and
> +	 * drm_writeback_signal_completion()
> +	 */
> +	struct list_head job_queue;
> +
> +	/**
> +	 * @fence_context:
> +	 *
> +	 * timeline context used for fence operations.
> +	 */
> +	unsigned int fence_context;
> +	/**
> +	 * @fence_lock:
> +	 *
> +	 * spinlock to protect the fences in the fence_context.
> +	 */
> +	spinlock_t fence_lock;
> +	/**
> +	 * @fence_seqno:
> +	 *
> +	 * Seqno variable used as monotonic counter for the fences
> +	 * created on the connector's timeline.
> +	 */
> +	unsigned long fence_seqno;
> +	/**
> +	 * @timeline_name:
> +	 *
> +	 * The name of the connector's fence timeline.
> +	 */
> +	char timeline_name[32];
> +};
> +
>   /**
>    * struct drm_connector - central DRM connector control structure
>    *
> @@ -2336,10 +2391,16 @@ struct drm_connector {
>   	 */
>   	struct llist_node free_node;
>   
> -	/**
> -	 * @hdmi: HDMI-related variable and properties.
> -	 */
> -	struct drm_connector_hdmi hdmi;
> +	union {
> +		/**
> +		 * @hdmi: HDMI-related variable and properties.
> +		 */
> +		struct drm_connector_hdmi hdmi;
> +		/**
> +		 * @writeback: Writeback related valriables.
> +		 */
> +		struct drm_writeback_connector writeback;
> +	};
>   
>   	/**
>   	 * @hdmi_audio: HDMI codec properties and non-DRM state.
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index 958466a05e60..702141099520 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -15,66 +15,6 @@
>   #include <drm/drm_encoder.h>
>   #include <linux/workqueue.h>
>   
> -/**
> - * struct drm_writeback_connector - DRM writeback connector
> - */
> -struct drm_writeback_connector {
> -	/**
> -	 * @base: base drm_connector object
> -	 */
> -	struct drm_connector base;
> -
> -	/**
> -	 * @pixel_formats_blob_ptr:
> -	 *
> -	 * DRM blob property data for the pixel formats list on writeback
> -	 * connectors
> -	 * See also drm_writeback_connector_init()
> -	 */
> -	struct drm_property_blob *pixel_formats_blob_ptr;
> -
> -	/** @job_lock: Protects job_queue */
> -	spinlock_t job_lock;
> -
> -	/**
> -	 * @job_queue:
> -	 *
> -	 * Holds a list of a connector's writeback jobs; the last item is the
> -	 * most recent. The first item may be either waiting for the hardware
> -	 * to begin writing, or currently being written.
> -	 *
> -	 * See also: drm_writeback_queue_job() and
> -	 * drm_writeback_signal_completion()
> -	 */
> -	struct list_head job_queue;
> -
> -	/**
> -	 * @fence_context:
> -	 *
> -	 * timeline context used for fence operations.
> -	 */
> -	unsigned int fence_context;
> -	/**
> -	 * @fence_lock:
> -	 *
> -	 * spinlock to protect the fences in the fence_context.
> -	 */
> -	spinlock_t fence_lock;
> -	/**
> -	 * @fence_seqno:
> -	 *
> -	 * Seqno variable used as monotonic counter for the fences
> -	 * created on the connector's timeline.
> -	 */
> -	unsigned long fence_seqno;
> -	/**
> -	 * @timeline_name:
> -	 *
> -	 * The name of the connector's fence timeline.
> -	 */
> -	char timeline_name[32];
> -};
> -
>   /**
>    * struct drm_writeback_job - DRM writeback job
>    */
> @@ -131,10 +71,10 @@ struct drm_writeback_job {
>   	void *priv;
>   };
>   
> -static inline struct drm_writeback_connector *
> -drm_connector_to_writeback(struct drm_connector *connector)
> +static inline struct drm_connector *
> +drm_writeback_to_connector(struct drm_writeback_connector *wb_connector)
>   {
> -	return container_of(connector, struct drm_writeback_connector, base);
> +	return container_of(wb_connector, struct drm_connector, writeback);
>   }
>   
>   int drm_writeback_connector_init(struct drm_device *dev,

