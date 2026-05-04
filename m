Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cJZkEijb+GnG2QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:45:12 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E91104C2177
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:45:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31E110E7D3;
	Mon,  4 May 2026 17:45:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="PLSjUWvN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F44010E7CD;
 Mon,  4 May 2026 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XGVwr66Vi9lVU36BmLv82cEF6EQDWUaC7N6GArXjDQU=; b=PLSjUWvNabNJhBy8qSp0YMi5Mf
 eqrTKaPZ84K1eRdjCLnMtblIU5HvQ0hFQK6TBccztkfdmxDwQkVh/5TB9bXEKk0/ojeeRliEMYEYc
 SSel9IQiFV+OnVtPlB+uFcoIhD8+getFR/e4s/3BxSjUIw3CYgoxkXjK8X3mAXC0pO7YY8dJFP4lI
 4G8LT2vEJobc6ylEAtuEtsXYwrk+0W1+gMqYPw1p+rYECsZwP9AeWUNlZFU4l0wD9ADI1+3rssk0e
 G6cScgwE80EA9RlvrrM5QHy2dwOHFP1R5Wwakda5MPAKalhqi6L/BfGohUw5DZJegWNAHZ9KgObUp
 7rkwoGsw==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wJxLo-0064To-75; Mon, 04 May 2026 19:44:59 +0200
Message-ID: <9628ae91-a725-469b-976b-e66546d82214@Igalia.com>
Date: Mon, 4 May 2026 10:44:42 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3,2/7] drm: writeback: Modify writeback init helpers
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
References: <20260316083008.87466-3-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260316083008.87466-3-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: E91104C2177
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
	NEURAL_HAM(-0.00)[-0.916];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

On 3/16/26 01:30, Suraj Kandpal wrote:
> Now with drm_writeback_connector moved to drm_connector it makes
> more sense use drm_connector as an argument rather than
> drm_writeback_connector. The writeback connector can easily be derived
> from drm_connector.
So this patch and all five subsequent patches are basically the same 
search and replace of base_conn->wb_conn to base_conn in the DRM level 
helper functions, yes? I would add a little more explanation of why "it 
makes more sense". Something like: "Some of the writeback helper 
functions require access to the parent drm_connector object as well as 
the drm_writeback_connector object itself. So, pass in the top level 
object and traverse down rather than passing in the lower level object 
and traversing back up. Even where such is not the case, update to use 
the top level object for consistency across the interface."

Also, there could be better consistency across these 'modify' patches. 
First, the subject of patches 1-5 should be 'drm/writeback: ...' not 
'drm: writeback: ...'. Then you have 'modify XXX helpers', 'modify XXX 
params' and 'modify params for XXX'. It would be cleaner to pick a 
single variant and use that for all the patches. Lastly, are the final 
two patches really 'drm/connector:'? The header file with the function 
declarations being updated is drm_modeset_helper_vtables.h. Which would 
make the prefix 'drm/modeset'? Although, given that the declarations are 
specific to writeback support, I would just stick with 'drm/writeback' 
for all seven patches.

John.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c   |  2 +-
>   .../drm/arm/display/komeda/komeda_wb_connector.c   |  5 +----
>   drivers/gpu/drm/arm/malidp_mw.c                    |  2 +-
>   drivers/gpu/drm/drm_writeback.c                    | 14 ++++++--------
>   drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c      |  2 +-
>   .../gpu/drm/renesas/rcar-du/rcar_du_writeback.c    |  3 +--
>   drivers/gpu/drm/vc4/vc4_txp.c                      |  2 +-
>   drivers/gpu/drm/vkms/vkms_writeback.c              |  4 ++--
>   include/drm/drm_writeback.h                        |  4 ++--
>   9 files changed, 16 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> index 8fea29720989..84a9c1d2bd8e 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm_wb.c
> @@ -204,7 +204,7 @@ int amdgpu_dm_wb_connector_init(struct amdgpu_display_manager *dm,
>   
>   	drm_connector_helper_add(&wbcon->base, &amdgpu_dm_wb_conn_helper_funcs);
>   
> -	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base.writeback,
> +	res = drmm_writeback_connector_init(&dm->adev->ddev, &wbcon->base,
>   					    &amdgpu_dm_wb_connector_funcs,
>   					    encoder,
>   					    amdgpu_dm_wb_formats,
> diff --git a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> index fa2f63c142cd..85b34375d275 100644
> --- a/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> +++ b/drivers/gpu/drm/arm/display/komeda/komeda_wb_connector.c
> @@ -135,7 +135,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>   {
>   	struct komeda_dev *mdev = kms->base.dev_private;
>   	struct komeda_wb_connector *kwb_conn;
> -	struct drm_writeback_connector *wb_conn;
>   	struct drm_display_info *info;
>   	struct drm_encoder *encoder;
>   
> @@ -151,8 +150,6 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>   
>   	kwb_conn->wb_layer = kcrtc->master->wb_layer;
>   
> -	wb_conn = &kwb_conn->base.writeback;
> -
>   	formats = komeda_get_layer_fourcc_list(&mdev->fmt_tbl,
>   					       kwb_conn->wb_layer->layer_type,
>   					       &n_formats);
> @@ -170,7 +167,7 @@ static int komeda_wb_connector_add(struct komeda_kms_dev *kms,
>   
>   	encoder->possible_crtcs = drm_crtc_mask(&kcrtc->base);
>   
> -	err = drmm_writeback_connector_init(&kms->base, wb_conn,
> +	err = drmm_writeback_connector_init(&kms->base, &kwb_conn->base,
>   					    &komeda_wb_connector_funcs,
>   					    encoder,
>   					    formats, n_formats);
> diff --git a/drivers/gpu/drm/arm/malidp_mw.c b/drivers/gpu/drm/arm/malidp_mw.c
> index 472598b3e007..7d42b007ef19 100644
> --- a/drivers/gpu/drm/arm/malidp_mw.c
> +++ b/drivers/gpu/drm/arm/malidp_mw.c
> @@ -228,7 +228,7 @@ int malidp_mw_connector_init(struct drm_device *drm)
>   
>   	encoder->possible_crtcs = drm_crtc_mask(&malidp->crtc);
>   
> -	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector.writeback,
> +	ret = drmm_writeback_connector_init(drm, &malidp->mw_connector,
>   					    &malidp_mw_connector_funcs,
>   					    encoder,
>   					    formats, n_formats);
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index 7bf9f6374712..9a3037d11009 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -242,7 +242,7 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
>    * a custom encoder
>    *
>    * @dev: DRM device
> - * @wb_connector: Writeback connector to initialize
> + * @connector: Drm connector which contains the writeback connector to initialize
>    * @enc: handle to the already initialized drm encoder
>    * @con_funcs: Connector funcs vtable
>    * @formats: Array of supported pixel formats for the writeback engine
> @@ -267,13 +267,12 @@ static int __drm_writeback_connector_init(struct drm_device *dev,
>    * Returns: 0 on success, or a negative error code
>    */
>   int drm_writeback_connector_init(struct drm_device *dev,
> -				 struct drm_writeback_connector *wb_connector,
> +				 struct drm_connector *connector,
>   				 const struct drm_connector_funcs *con_funcs,
>   				 struct drm_encoder *enc,
>   				 const u32 *formats, int n_formats)
>   {
> -	struct drm_connector *connector =
> -		drm_writeback_to_connector(wb_connector);
> +	struct drm_writeback_connector *wb_connector = &connector->writeback;
>   	int ret;
>   
>   	ret = drm_connector_init(dev, connector, con_funcs,
> @@ -322,7 +321,7 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
>    * a custom encoder
>    *
>    * @dev: DRM device
> - * @wb_connector: Writeback connector to initialize
> + * @connector: Drm connector containing the writeback connector to initialize
>    * @con_funcs: Connector funcs vtable
>    * @enc: Encoder to connect this writeback connector
>    * @formats: Array of supported pixel formats for the writeback engine
> @@ -338,13 +337,12 @@ static void drm_writeback_connector_cleanup(struct drm_device *dev,
>    * Returns: 0 on success, or a negative error code
>    */
>   int drmm_writeback_connector_init(struct drm_device *dev,
> -				  struct drm_writeback_connector *wb_connector,
> +				  struct drm_connector *connector,
>   				  const struct drm_connector_funcs *con_funcs,
>   				  struct drm_encoder *enc,
>   				  const u32 *formats, int n_formats)
>   {
> -	struct drm_connector *connector =
> -		drm_writeback_to_connector(wb_connector);
> +	struct drm_writeback_connector *wb_connector = &connector->writeback;
>   	int ret;
>   
>   	ret = drmm_connector_init(dev, connector, con_funcs,
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> index 930ba1ad777b..d4fc28951085 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_writeback.c
> @@ -136,7 +136,7 @@ int dpu_writeback_init(struct drm_device *dev, struct drm_encoder *enc,
>   
>   	drm_connector_helper_add(&dpu_wb_conn->base, &dpu_wb_conn_helper_funcs);
>   
> -	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base.writeback,
> +	rc = drmm_writeback_connector_init(dev, &dpu_wb_conn->base,
>   					   &dpu_wb_conn_funcs, enc,
>   					   format_list, num_formats);
>   
> diff --git a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> index cd09e0fbb030..1de8865fb751 100644
> --- a/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> +++ b/drivers/gpu/drm/renesas/rcar-du/rcar_du_writeback.c
> @@ -203,7 +203,6 @@ static const u32 writeback_formats[] = {
>   int rcar_du_writeback_init(struct rcar_du_device *rcdu,
>   			   struct rcar_du_crtc *rcrtc)
>   {
> -	struct drm_writeback_connector *wb_conn = &rcrtc->writeback.writeback;
>   	struct drm_encoder *encoder;
>   
>   	encoder = drmm_plain_encoder_alloc(&rcdu->ddev, NULL,
> @@ -218,7 +217,7 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
>   	drm_connector_helper_add(&rcrtc->writeback,
>   				 &rcar_du_wb_conn_helper_funcs);
>   
> -	return drmm_writeback_connector_init(&rcdu->ddev, wb_conn,
> +	return drmm_writeback_connector_init(&rcdu->ddev, &rcrtc->writeback,
>   					     &rcar_du_wb_conn_funcs,
>   					     encoder,
>   					     writeback_formats,
> diff --git a/drivers/gpu/drm/vc4/vc4_txp.c b/drivers/gpu/drm/vc4/vc4_txp.c
> index de3db0834011..d08271142116 100644
> --- a/drivers/gpu/drm/vc4/vc4_txp.c
> +++ b/drivers/gpu/drm/vc4/vc4_txp.c
> @@ -601,7 +601,7 @@ static int vc4_txp_bind(struct device *dev, struct device *master, void *data)
>   
>   	drm_connector_helper_add(&txp->connector,
>   				 &vc4_txp_connector_helper_funcs);
> -	ret = drmm_writeback_connector_init(drm, &txp->connector.writeback,
> +	ret = drmm_writeback_connector_init(drm, &txp->connector,
>   					    &vc4_txp_connector_funcs,
>   					    encoder,
>   					    drm_fmts, ARRAY_SIZE(drm_fmts));
> diff --git a/drivers/gpu/drm/vkms/vkms_writeback.c b/drivers/gpu/drm/vkms/vkms_writeback.c
> index cadb4cb372c5..b368c569cf0a 100644
> --- a/drivers/gpu/drm/vkms/vkms_writeback.c
> +++ b/drivers/gpu/drm/vkms/vkms_writeback.c
> @@ -170,7 +170,6 @@ static const struct drm_connector_helper_funcs vkms_wb_conn_helper_funcs = {
>   int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
>   				    struct vkms_output *vkms_output)
>   {
> -	struct drm_writeback_connector *wb = &vkms_output->wb_connector.writeback;
>   	int ret;
>   
>   	ret = drmm_encoder_init(&vkmsdev->drm, &vkms_output->wb_encoder,
> @@ -183,7 +182,8 @@ int vkms_enable_writeback_connector(struct vkms_device *vkmsdev,
>   
>   	drm_connector_helper_add(&vkms_output->wb_connector, &vkms_wb_conn_helper_funcs);
>   
> -	return drmm_writeback_connector_init(&vkmsdev->drm, wb,
> +	return drmm_writeback_connector_init(&vkmsdev->drm,
> +					     &vkms_output->wb_connector,
>   					     &vkms_wb_connector_funcs,
>   					     &vkms_output->wb_encoder,
>   					     vkms_wb_formats,
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index 702141099520..c6960c7e634e 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -78,13 +78,13 @@ drm_writeback_to_connector(struct drm_writeback_connector *wb_connector)
>   }
>   
>   int drm_writeback_connector_init(struct drm_device *dev,
> -				 struct drm_writeback_connector *wb_connector,
> +				 struct drm_connector *connector,
>   				 const struct drm_connector_funcs *con_funcs,
>   				 struct drm_encoder *enc,
>   				 const u32 *formats, int n_formats);
>   
>   int drmm_writeback_connector_init(struct drm_device *dev,
> -				  struct drm_writeback_connector *wb_connector,
> +				  struct drm_connector *connector,
>   				  const struct drm_connector_funcs *con_funcs,
>   				  struct drm_encoder *enc,
>   				  const u32 *formats, int n_formats);

