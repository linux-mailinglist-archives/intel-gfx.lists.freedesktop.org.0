Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YF2TCiOuPWpZ5ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:39:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C69616C907B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:39:30 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=We7ym64l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A965410F3BB;
	Thu, 25 Jun 2026 22:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CBE910E295;
 Thu, 25 Jun 2026 22:39:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iSqoogcXxBiMpfVVgDCHCqL3LKy3w6cdDOiA0buc+Zo=; b=We7ym64l/dRYkiui+djH3QX0R3
 bkYhE9iaIItaLxg9oyq9Dzvd/WZ/KjNpsbhKzGmfaPykILr/daCO9NQ44OJUZe79d98l1qZxORXKv
 wFfUEi+fz0GnVmoWYhKpkIsMu/IGYQve8B50fhry8EzWbo8GoBsF+5CMFU7jwrdi5Y/ZKPz43aaGa
 yVw0dRLYe2nKk+0NG2A1HJrtXOc5S+OFfQkvGXM8pOoqM0BRKGH/YFvGcWb+6v5SLwBVpB1dm9v2Z
 RI8NK2TW5ohC9UL3/tIk/bPlLmVMRrgUbKhtVhcC5fAS98TULK9KOVyIi3XIWrbtG2xlnYGZWuz5V
 Is4TDDYQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wcsip-005FpT-Or; Fri, 26 Jun 2026 00:38:59 +0200
Message-ID: <2a1ea63b-646e-4064-bb60-982b6b027c75@Igalia.com>
Date: Thu, 25 Jun 2026 15:38:50 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/7] drm/atomic: reject colorop update from inactive
 color pipeline
To: Melissa Wen <mwen@igalia.com>, airlied@gmail.com,
 alexander.deucher@amd.com, alex.hung@amd.com, aurabindo.pillai@amd.com,
 christian.koenig@amd.com, contact@emersion.fr, daniels@collabora.com,
 harry.wentland@amd.com, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, simona@ffwll.ch, siqueira@igalia.com,
 sunpeng.li@amd.com, tzimmermann@suse.de
Cc: Uma Shankar <uma.shankar@intel.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Xaver Hugl <xaver.hugl@kde.org>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 amd-gfx@lists.freedesktop.org, kernel-dev@igalia.com,
 Rob Clark <robin.clark@oss.qualcomm.com>, Dmitry Baryshkov
 <lumag@kernel.org>, Sean Paul <sean@poorly.run>,
 Marijn Suijten <marijn.suijten@somainline.org>,
 linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20260609121230.1358786-1-mwen@igalia.com>
 <20260609121230.1358786-3-mwen@igalia.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260609121230.1358786-3-mwen@igalia.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.49 / 15.00];
	R_DKIM_REJECT(1.00)[igalia.com:s=20170329];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,amd.com,emersion.fr,collabora.com,linux.intel.com,kernel.org,ffwll.ch,suse.de];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[32];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C69616C907B

On 6/9/26 13:51, Melissa Wen wrote:
> Only allow updates on colorops that are part of an active pipeline, i.e.
> check if a colorop belongs to the color pipeline of a plane in its
> current, new or old state. If not, reject the state change of this
> inactive colorop. Performing this check later in drm_atomic_check_only()
> to remove the ordering dependency that would exist if done at the time
> of colorop property setting. Userspace is allowed to change colorops of
> an active color pipeline, or when activating or deactivating its
> pipeline in the same commit. However, changes in inactive color pipeline
> is not allowed.
The last two sentences here seem to be a duplicate of the first two 
sentences. Maybe drop them as redundant?

>
> Suggested-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> Signed-off-by: Melissa Wen <mwen@igalia.com>
> ---
>   drivers/gpu/drm/drm_atomic.c | 60 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 60 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 464562861408..960b52624deb 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -943,6 +943,55 @@ drm_atomic_add_pipeline_colorops(struct drm_atomic_commit *state,
>   	return 0;
>   }
>   
> +/**
> + * drm_atomic_colorop_check - check new colorop state
> + * @new_colorop_state: new colorop state to check
> + *
> + * Ensure that the colorop in @new_colorop_state belongs to an active color
> + * pipeline, i.e. it's in the chain of colorops set to the color_pipeline
> + * property of current, old or new plane state.
> + *
> + * Returns: 0 on success, -EINVAL otherwise.
> + */
> +static int drm_atomic_colorop_check(const struct drm_colorop_state *new_colorop_state)
> +{
> +	struct drm_atomic_commit *state = new_colorop_state->state;
> +	struct drm_plane *plane = new_colorop_state->colorop->plane;
> +	struct drm_plane_state *new_plane_state, *old_plane_state;
> +	struct drm_colorop *colorop;
> +
> +	new_plane_state = drm_atomic_get_new_plane_state(state, plane);
> +	old_plane_state = drm_atomic_get_old_plane_state(state, plane);
> +
> +	/* No changes in the plane state. Check current-committed plane state */
> +	if (!new_plane_state) {
> +		for (colorop = plane->state->color_pipeline; colorop; colorop = colorop->next)
Doesn't the first patch add a macro for wrapping this for loop?

> +			if (colorop == new_colorop_state->colorop)
> +				return 0;
> +		return -EINVAL;
> +	}
> +
> +	if (WARN_ON(!old_plane_state))
> +		return -EINVAL;
> +
> +	/* Check if the colorop is active in the new plane state */
> +	for (colorop = new_plane_state->color_pipeline; colorop; colorop = colorop->next)
> +		if (colorop == new_colorop_state->colorop)
> +			return 0;
> +
> +	/* Same color pipeline as new; no point walking old. Colorop isn't active */
> +	if (new_plane_state->color_pipeline == old_plane_state->color_pipeline)
> +		return -EINVAL;
> +
> +	/* Check if the colorop was active in the old plane state */
> +	for (colorop = old_plane_state->color_pipeline; colorop; colorop = colorop->next)
> +		if (colorop == new_colorop_state->colorop)
> +			return 0;
Doesn't this situation count as changing the properties of an inactive 
colorop? And should therefore be rejected? The colorop was previously in 
use but once the commit goes through, it will not be. So any changes to 
its state will not actually affect the new post-commit universe. Or am I 
missing something?

John.

> +
> +	/* Colorop is not part of an active color pipeline. */
> +	return -EINVAL;
> +}
> +
>   static void drm_atomic_colorop_print_state(struct drm_printer *p,
>   					   const struct drm_colorop_state *state)
>   {
> @@ -1792,6 +1841,8 @@ int drm_atomic_check_only(struct drm_atomic_commit *state)
>   	struct drm_plane *plane;
>   	struct drm_plane_state *old_plane_state;
>   	struct drm_plane_state *new_plane_state;
> +	struct drm_colorop *colorop;
> +	struct drm_colorop_state *new_colorop_state;
>   	struct drm_crtc *crtc;
>   	struct drm_crtc_state *old_crtc_state;
>   	struct drm_crtc_state *new_crtc_state;
> @@ -1808,6 +1859,15 @@ int drm_atomic_check_only(struct drm_atomic_commit *state)
>   			requested_crtc |= drm_crtc_mask(crtc);
>   	}
>   
> +	for_each_new_colorop_in_state(state, colorop, new_colorop_state, i) {
> +		ret = drm_atomic_colorop_check(new_colorop_state);
> +		if (ret) {
> +			drm_dbg_atomic(dev, "[COLOROP:%d:%d] isn't in an active color pipeline.\n",
> +				       colorop->base.id, colorop->type);
> +			return ret;
> +		}
> +	}
> +
>   	for_each_oldnew_plane_in_state(state, plane, old_plane_state, new_plane_state, i) {
>   		ret = drm_atomic_plane_check(old_plane_state, new_plane_state);
>   		if (ret) {

