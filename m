Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGweKhnc+GnG2QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:49:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5834C2274
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F7510E7DA;
	Mon,  4 May 2026 17:49:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="l23qn+XD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD5210E7D1;
 Mon,  4 May 2026 17:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ui9rXeXJqXmxkHF93JpOjlJyc6xx0Ckyy32x+myS7jg=; b=l23qn+XDTz44wWCIDAwFFr8jHQ
 GDZ9N9G6nTBsBIAOR+n2dz1UGO+bk6+WmmWB6OEQhRz9ItxgW/LZcTiucknWJZfEA7Mc2bPG/YY+E
 MuLsI3r+KF9cdskfx1hP2/skVPgXYSSTr6n/HGgDBGw0/+BdYjSNryIX1FG53inYXH+MHuC5aM0Hq
 g7WBffjH8SrqaPL46WE+DwbPHB3QLyfUooFo0fRg4Cf3sOkFNvO9K6mQH29E6sIecHVZ9Vh6mQ4pY
 fnRqY72HyKcRp47Rgj2bf+IumA0sOE2bkkvDkGrb+rZNb7P+obuO1x8K8pn8shMLARwjVRvaM3QRn
 JN4DyUfA==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wJxPk-0064ag-9h; Mon, 04 May 2026 19:49:03 +0200
Message-ID: <e6810e30-7d41-4f33-a8b0-78906be1f0c1@Igalia.com>
Date: Mon, 4 May 2026 10:48:52 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3,3/7] drm: writeback: Modify drm_writeback_queue_job params
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
 kieran.bingham+renesas@ideasonboard.com, kernel-dev@igalia.com
References: <20260316083008.87466-4-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260316083008.87466-4-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 5B5834C2274
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.99 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[32];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[intel.com,oss.qualcomm.com,amd.com,igalia.com,gmail.com,ffwll.ch,arm.com,linux.intel.com,kernel.org,linux.dev,suse.de,poorly.ru,somainline.org,ideasonboard.com,raspberrypi.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.919];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Igalia.com:mid]

On 3/16/26 01:30, Suraj Kandpal wrote:
> Move to using drm_connector structure instead of drm_writeback_connector
> since this now writeback resides within drm_connector.
> This helps make sure drivers change drm_writeback_connector
> using helpers provided by drm core.
I'm not following this last sentence. Was some driver somewhere not 
using the correct helpers? If so, why aren't I seeing a fix for it?

I would basically just keep the commit message an exact copy of the one 
from patch #2. It is really just a single change being split across 
multiple patches for ease of review. So the more consistency and 
repetition there is, the easier it is to see them as being a single 
operation.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
>   drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
>   drivers/gpu/drm/arm/malidp_mw.c                     | 3 +--
>   drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 4 ++--
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
>   drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
>   drivers/gpu/drm/vkms/vkms_writeback.c               | 3 +--
>   include/drm/drm_writeback.h                         | 2 +-
>   9 files changed, 13 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index 5fe3eb6fc6e1..9faf16036531 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -10645,7 +10645,7 @@ static void dm_set_writeback(struct amdgpu_display_manager *dm,
>   
>   	acrtc->wb_pending = true;
>   	acrtc->wb_conn = wb_conn;
> -	drm_writeback_queue_job(wb_conn, new_con_state);
> +	drm_writeback_queue_job(connector, new_con_state);
>   }
>   
>   static void amdgpu_dm_update_hdcp(struct drm_atomic_state *state)
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index ab7dcc7fd8f3..0d22c2e7f722 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -271,7 +271,7 @@ komeda_crtc_do_flush(struct drm_crtc *crtc,
>   
>   	conn_st = wb_conn ? wb_conn->base.state : NULL;
>   	if (conn_st && conn_st->writeback_job)
> -		drm_writeback_queue_job(&wb_conn->base.writeback, conn_st);
> +		drm_writeback_queue_job(&wb_conn->base, conn_st);
>   
>   	/* step 2: notify the HW to kickoff the update */
>   	mdev->funcs->flush(mdev, master->id, kcrtc_st->active_pipes);
> diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
> index 7d42b007ef19..af31d6570231 100644
> --- a/drivers/gpu/drm/arm/malidp_mw.c
> +++ b/drivers/gpu/drm/arm/malidp_mw.c
> @@ -243,7 +243,6 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
>   			     struct drm_atomic_state *old_state)
>   {
>   	struct malidp_drm *malidp = drm_to_malidp(drm);
> -	struct drm_writeback_connector *mw_conn = &malidp->mw_connector.writeback;
>   	struct drm_connector_state *conn_state = malidp->mw_connector.state;
>   	struct malidp_hw_device *hwdev = malidp->dev;
>   	struct malidp_mw_connector_state *mw_state;
> @@ -263,7 +262,7 @@ void malidp_mw_atomic_commit(struct drm_device *drm,
>   				     &mw_state->addrs[0],
>   				     mw_state->format);
>   
> -		drm_writeback_queue_job(mw_conn, conn_state);
> +		drm_writeback_queue_job(&malidp->mw_connector, conn_state);
>   		hwdev->hw->enable_memwrite(hwdev, mw_state->addrs,
>   					   mw_state->pitches, mw_state->n_planes,
>   					   fb->width, fb->height, mw_state->format,
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index 9a3037d11009..1c1802d87f13 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -404,7 +404,8 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
>   
>   /**
>    * drm_writeback_queue_job - Queue a writeback job for later signalling
> - * @wb_connector: The writeback connector to queue a job on
> + * @connector: The drm connector  which contains the writeback connector to
Double space.

John

> + * queue a job on
>    * @conn_state: The connector state containing the job to queue
>    *
>    * This function adds the job contained in @conn_state to the job_queue for a
> @@ -421,9 +422,10 @@ EXPORT_SYMBOL(drm_writeback_prepare_job);
>    *
>    * See also: drm_writeback_signal_completion()
>    */
> -void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
> +void drm_writeback_queue_job(struct drm_connector *connector,
>   			     struct drm_connector_state *conn_state)
>   {
> +	struct drm_writeback_connector *wb_connector = &connector->writeback;
>   	struct drm_writeback_job *job;
>   	unsigned long flags;
>   
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> index 0375faf7f50c..5beffb73fd50 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> @@ -483,11 +483,11 @@ static void dpu_encoder_phys_wb_prepare_for_kickoff(
>   	}
>   
>   	drm_conn =
> -		container_of(wb_enc->wb_conn, struct drm_connector, writeback);
> +		drm_writeback_to_connector(wb_enc->wb_conn);
>   	state = drm_conn->state;
>   
>   	if (wb_enc->wb_conn && wb_enc->wb_job)
> -		drm_writeback_queue_job(wb_enc->wb_conn, state);
> +		drm_writeback_queue_job(drm_conn, state);
>   
>   	dpu_encoder_phys_wb_setup(phys_enc);
>   
> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> index 1de8865fb751..4921d4b9cef5 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> @@ -248,7 +248,7 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
>   		cfg->mem[i] = sg_dma_address(rjob->sg_tables[i].sgl)
>   			    + fb->offsets[i];
>   
> -	drm_writeback_queue_job(&rcrtc->writeback.writeback, state);
> +	drm_writeback_queue_job(&rcrtc->writeback, state);
>   }
>   
>   void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
> diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
> index d08271142116..abd47bea60ed 100644
> --- a/drivers/gpu/drm/vc4/vc4_txp.c
> +++ b/drivers/gpu/drm/vc4/vc4_txp.c
> @@ -357,7 +357,7 @@ static void vc4_txp_connector_atomic_commit(struct drm_connector *conn,
>   
>   	TXP_WRITE(TXP_DST_CTRL, ctrl);
>   
> -	drm_writeback_queue_job(&txp->connector.writeback, conn_state);
> +	drm_writeback_queue_job(&txp->connector, conn_state);
>   
>   	drm_dev_exit(idx);
>   }
> diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
> index b368c569cf0a..59d44c759785 100644
> --- a/drivers/gpu/drm/vkms/vkms_writeback.c
> +++ b/drivers/gpu/drm/vkms/vkms_writeback.c
> @@ -131,7 +131,6 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
>   	struct drm_connector_state *connector_state = drm_atomic_get_new_connector_state(state,
>   											 conn);
>   	struct vkms_output *output = drm_crtc_to_vkms_output(connector_state->crtc);
> -	struct drm_writeback_connector *wb_conn = &output->wb_connector.writeback;
>   	struct drm_connector_state *conn_state = output->wb_connector.state;
>   	struct vkms_crtc_state *crtc_state = output->composer_state;
>   	struct drm_framebuffer *fb = connector_state->writeback_job->fb;
> @@ -153,7 +152,7 @@ static void vkms_wb_atomic_commit(struct drm_connector *conn,
>   	crtc_state->active_writeback = active_wb;
>   	crtc_state->wb_pending = true;
>   	spin_unlock_irq(&output->composer_lock);
> -	drm_writeback_queue_job(wb_conn, connector_state);
> +	drm_writeback_queue_job(&output->wb_connector, connector_state);
>   	active_wb->pixel_write = get_pixel_write_function(wb_format);
>   	drm_rect_init(&wb_frame_info->src, 0, 0, crtc_width, crtc_height);
>   	drm_rect_init(&wb_frame_info->dst, 0, 0, crtc_width, crtc_height);
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index c6960c7e634e..b4c11d380df0 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -94,7 +94,7 @@ int drm_writeback_set_fb(struct drm_connector_state *conn_state,
>   
>   int drm_writeback_prepare_job(struct drm_writeback_job *job);
>   
> -void drm_writeback_queue_job(struct drm_writeback_connector *wb_connector,
> +void drm_writeback_queue_job(struct drm_connector *wb_connector,
>   			     struct drm_connector_state *conn_state);
>   
>   void drm_writeback_cleanup_job(struct drm_writeback_job *job);

