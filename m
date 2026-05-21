Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id F9xOLO2VD2q9NgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 01:31:57 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C515ACC45
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 01:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D407910F451;
	Thu, 21 May 2026 23:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="Aci42pj/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FFA010F43C;
 Thu, 21 May 2026 23:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=EkV1Mms1rY8hQj+82eh/W/rpdTSKaubp2j9PG9oIO2Q=; b=Aci42pj/nbWp6NXf8z4113VsDw
 utykcBG+GyK3c5PyxZnFsTQInlhz9aIxfDWdSUh9Vel5nYtXefzm/G4BSV/TVnPp7RqvAZjsbm+69
 iNktuumjocAGtjmbcdm/Uh6SZ/uuHMTw/iRT5Z8+NejZ42B/HuZ2KnaAI5THXvWuMvcrVLok19UAO
 dRS//HL501euWL+FkY9tUZBNlesZ8lUus8r8fNDBYUfx5ncKIRVeu0Rsr6zs83wsZPQR6pIp/sGuD
 KCHDFJaw4/AwbJjbNW3lddCiEwYWUL+R8BjZLcDaO1eU0KEgtKekrD173AZsP9z2e4/fbg9+edO1f
 xUhyNwoA==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wQCrn-004b2R-RW; Fri, 22 May 2026 01:31:52 +0200
Message-ID: <9923eec8-24c8-49d7-8405-ceeb65739b2c@Igalia.com>
Date: Thu, 21 May 2026 16:31:44 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/7] drm: writeback: Modify
 drm_writeback_signal_completion helper
To: Suraj Kandpal <suraj.kandpal@intel.com>, freedreno@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, kernel-list@raspberrypi.com,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: abhinav.kumar@linux.dev, tzimmermann@suse.de,
 marijn.suijten@somainline.org, laurent.pinchart+renesas@ideasonboard.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Louis Chauvet <louis.chauvet@bootlin.com>, kernel-dev@igalia.com,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260521053708.1475129-1-suraj.kandpal@intel.com>
 <20260521053708.1475129-5-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260521053708.1475129-5-suraj.kandpal@intel.com>
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
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,igalia.com:email,intel.com:email,Igalia.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 58C515ACC45
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/20/26 22:37, Suraj Kandpal wrote:
> drm_writeback_signal_completion() needs access to the parent
> drm_connector object as well as the drm_writeback_connector object
> itself. So, pass in the top level drm_connector and traverse down
> to drm_writeback_connector rather than passing in the lower level
> object and traversing back up. Update to use the top level object
> for consistency across the writeback interface.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
> v3 -> v4:
> - Update subject line for consitency (John)
> - Update commit message across commits for consitency (John)
>
>   drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c   | 2 +-
>   drivers/gpu/drm/arm/display/komeda/komeda_crtc.c    | 2 +-
>   drivers/gpu/drm/arm/malidp_hw.c                     | 6 +++---
>   drivers/gpu/drm/drm_writeback.c                     | 6 ++++--
>   drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c | 4 ++--
>   drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c | 2 +-
>   drivers/gpu/drm/vc4/vc4_txp.c                       | 2 +-
>   drivers/gpu/drm/vkms/vkms_composer.c                | 2 +-
>   include/drm/drm_writeback.h                         | 2 +-
>   9 files changed, 15 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index f5154b10e50f..730c44c53287 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -681,7 +681,7 @@ static void dm_crtc_high_irq(void *interrupt_params)
>   					     100LL, (v_total * stream->timing.h_total));
>   				mdelay(1000 / refresh_hz);
>   
> -				drm_writeback_signal_completion(acrtc->wb_conn, 0);
> +				drm_writeback_signal_completion(acrtc->connector, 0);
>   				dc_stream_fc_disable_writeback(adev->dm.dc,
>   							       acrtc->dm_irq_params.stream, 0);
>   			}
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> index c64cf5d97e62..da6bfe2797aa 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_crtc.c
> @@ -213,7 +213,7 @@ void komeda_crtc_handle_event(struct komeda_crtc   *kcrtc,
>   		struct komeda_wb_connector *wb_conn = kcrtc->wb_conn;
>   
>   		if (wb_conn)
> -			drm_writeback_signal_completion(&wb_conn->base.writeback, 0);
> +			drm_writeback_signal_completion(&wb_conn->base, 0);
>   		else
>   			drm_warn(drm, "CRTC[%d]: EOW happen but no wb_connector.\n",
>   				 drm_crtc_index(&kcrtc->base));
> diff --git a/drivers/gpu/drm/arm/malidp_hw.c b/drivers/gpu/drm/arm/malidp_hw.c
> index 5a7bd27d3718..9b845d3f34e1 100644
> --- a/drivers/gpu/drm/arm/malidp_hw.c
> +++ b/drivers/gpu/drm/arm/malidp_hw.c
> @@ -1315,15 +1315,15 @@ static irqreturn_t malidp_se_irq(int irq, void *arg)
>   	if (status & se->vsync_irq) {
>   		switch (hwdev->mw_state) {
>   		case MW_ONESHOT:
> -			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector, 0);
>   			break;
>   		case MW_STOP:
> -			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector, 0);
>   			/* disable writeback after stop */
>   			hwdev->mw_state = MW_NOT_ENABLED;
>   			break;
>   		case MW_RESTART:
> -			drm_writeback_signal_completion(&malidp->mw_connector.writeback, 0);
> +			drm_writeback_signal_completion(&malidp->mw_connector, 0);
>   			fallthrough;	/* to a new start */
>   		case MW_START:
>   			/* writeback started, need to emulate one-shot mode */
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index 1c1802d87f13..f3b4371d4201 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -477,7 +477,8 @@ static void cleanup_work(struct work_struct *work)
>   
>   /**
>    * drm_writeback_signal_completion - Signal the completion of a writeback job
> - * @wb_connector: The writeback connector whose job is complete
> + * @connector: The drm connector whicha has the drm_writeback_connector whose
whicha -> which

With that fixed (and consistent wording across the patches):
Reviewed-by: John Harrison <John.Harrison@Igalia.com>

> + * job is complete
>    * @status: Status code to set in the writeback out_fence (0 for success)
>    *
>    * Drivers should call this to signal the completion of a previously queued
> @@ -492,10 +493,11 @@ static void cleanup_work(struct work_struct *work)
>    * See also: drm_writeback_queue_job()
>    */
>   void
> -drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
> +drm_writeback_signal_completion(struct drm_connector *connector,
>   				int status)
>   {
>   	unsigned long flags;
> +	struct drm_writeback_connector *wb_connector = &connector->writeback;
>   	struct drm_writeback_job *job;
>   	struct dma_fence *out_fence;
>   
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> index 0a4026f22274..977fc0337fbd 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_encoder_phys_wb.c
> @@ -370,7 +370,7 @@ static void dpu_encoder_phys_wb_done_irq(void *arg)
>   	spin_unlock_irqrestore(phys_enc->enc_spinlock, lock_flags);
>   
>   	if (wb_enc->wb_conn)
> -		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
> +		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
>   
>   	/* Signal any waiting atomic commit thread */
>   	wake_up_all(&phys_enc->pending_kickoff_wq);
> @@ -431,7 +431,7 @@ static void _dpu_encoder_phys_wb_handle_wbdone_timeout(
>   	phys_enc->enable_state = DPU_ENC_ERR_NEEDS_HW_RESET;
>   
>   	if (wb_enc->wb_conn)
> -		drm_writeback_signal_completion(wb_enc->wb_conn, 0);
> +		drm_writeback_signal_completion(drm_writeback_to_connector(wb_enc->wb_conn), 0);
>   
>   	dpu_encoder_frame_done_callback(phys_enc->parent, phys_enc, frame_event);
>   }
> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> index 5cd6c81a9710..4b0f6cd46acb 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> @@ -251,5 +251,5 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
>   
>   void rcar_du_writeback_complete(struct rcar_du_crtc *rcrtc)
>   {
> -	drm_writeback_signal_completion(&rcrtc->wb_connector.writeback, 0);
> +	drm_writeback_signal_completion(&rcrtc->wb_connector, 0);
>   }
> diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
> index 46330b6f9a12..0d8579683c57 100644
> --- a/drivers/gpu/drm/vc4/vc4_txp.c
> +++ b/drivers/gpu/drm/vc4/vc4_txp.c
> @@ -505,7 +505,7 @@ static irqreturn_t vc4_txp_interrupt(int irq, void *data)
>   	 */
>   	TXP_WRITE(TXP_DST_CTRL, TXP_READ(TXP_DST_CTRL) & ~TXP_EI);
>   	vc4_crtc_handle_vblank(vc4_crtc);
> -	drm_writeback_signal_completion(&txp->connector.writeback, 0);
> +	drm_writeback_signal_completion(&txp->connector, 0);
>   
>   	return IRQ_HANDLED;
>   }
> diff --git a/drivers/gpu/drm/vkms/vkms_composer.c b/drivers/gpu/drm/vkms/vkms_composer.c
> index 27fb6a7b55bb..83d217085ad0 100644
> --- a/drivers/gpu/drm/vkms/vkms_composer.c
> +++ b/drivers/gpu/drm/vkms/vkms_composer.c
> @@ -652,7 +652,7 @@ void vkms_composer_worker(struct work_struct *work)
>   		return;
>   
>   	if (wb_pending) {
> -		drm_writeback_signal_completion(&out->wb_connector.writeback, 0);
> +		drm_writeback_signal_completion(&out->wb_connector, 0);
>   		spin_lock_irq(&out->composer_lock);
>   		crtc_state->wb_pending = false;
>   		spin_unlock_irq(&out->composer_lock);
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index b4c11d380df0..5e8ab51c2da4 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -100,7 +100,7 @@ void drm_writeback_queue_job(struct drm_connector *wb_connector,
>   void drm_writeback_cleanup_job(struct drm_writeback_job *job);
>   
>   void
> -drm_writeback_signal_completion(struct drm_writeback_connector *wb_connector,
> +drm_writeback_signal_completion(struct drm_connector *connector,
>   				int status);
>   
>   struct dma_fence *

