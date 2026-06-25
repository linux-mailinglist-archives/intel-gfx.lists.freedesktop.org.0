Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vf6vEVOxPWq+5ggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:53:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AFF626C9101
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:53:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=ewzwAMhZ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3AC4710F3C1;
	Thu, 25 Jun 2026 22:53:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6E7D10F3BD;
 Thu, 25 Jun 2026 22:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SeQUkQiyF5X1qXChmHKlCt3Ean9AaLLtMUxpoOPrDqQ=; b=ewzwAMhZsdUzL05xcHfw2gF0Gs
 FVvpUnxl1S5o5h7Qft0lAkVpDrY+OD3G8E/9XCnQ7T5CFFajBjc7JJ+PKcAQqKwRg9PtYSZDiUpqH
 ODY16qntmkVyBHs1mU9DdHLaXxoiJJHt8drdw2VvuXJnPpVczIMM/jKeNUFjVXFgA54Zu7/ZzKOm5
 ewlHNTU6bLdXzxsutNjlbre3kjIe/gcdXqwB0jZZYXAOWpTnQN7v5snlrzDfsQiERd3HG1xWxT0f0
 3jteVOWk+NxcVci6vigmHUZRVRHPFXnCWx6j/0D5zbLOotm3CM/pn+043YRJgfzYNluU/HfoJnZyZ
 m5peeCOQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wcsvy-005G2R-Ot; Fri, 26 Jun 2026 00:52:34 +0200
Message-ID: <3691d76a-4a9c-41ea-ba3b-de08d6c90260@Igalia.com>
Date: Thu, 25 Jun 2026 15:52:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/7] drm/amd/display: don't check colorop status if its
 in an inactive pipeline
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
 Sashiko <sashiko-bot@kernel.org>, dri-devel@lists.freedesktop.org
References: <20260609121230.1358786-1-mwen@igalia.com>
 <20260609121230.1358786-4-mwen@igalia.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260609121230.1358786-4-mwen@igalia.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	DMARC_POLICY_SOFTFAIL(0.10)[igalia.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[igalia.com,gmail.com,amd.com,emersion.fr,collabora.com,linux.intel.com,kernel.org,ffwll.ch,suse.de];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[33];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AFF626C9101

On 6/9/26 13:51, Melissa Wen wrote:
> If colorop BYPASS property is true, but the colorop isn't part of an
Should this say 'is false'?

John.

> active/transient active color pipeline, this colorop status should not
> be taken into account when checking if a plane color pipeline is
> actually active. For example, if the userspace doesn't explicitly set a
> colorop obj to bypass but deactivates its color pipeline by setting
> plane COLOR_PIPELINE to bypass, it means that colorop is inactive
> regardless of its BYPASS property status.
>
> Reported-by: Sashiko <sashiko-bot@kernel.org>
> Fixes: d3a549f4df78 ("drm/amd/display: Use overlay cursor when color pipeline is active")
> Signed-off-by: Melissa Wen <mwen@igalia.com>
> ---
>   .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c | 31 +++++++++++++------
>   1 file changed, 21 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index ba7f98a87808..2edec3e1b838 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -12590,9 +12590,9 @@ static int add_affected_mst_dsc_crtcs(struct drm_atomic_commit *state, struct dr
>    * @use_old: if true, inspect the old colorop states; otherwise the new ones
>    *
>    * A color pipeline may be selected (color_pipeline != NULL) but still is
> - * inactive if every colorop in the chain is bypassed.  Only return
> - * true when at least one colorop has bypass == false, meaning the cursor
> - * would be subjected to the transformation in native mode.
> + * inactive if every colorop in the chain is bypassed. Only return true when at
> + * least one active colorop has bypass == false, meaning the cursor would be
> + * subjected to the transformation in native mode.
>    *
>    * Return: true if the pipeline modifies pixels, false otherwise.
>    */
> @@ -12600,18 +12600,29 @@ static bool dm_plane_color_pipeline_active(struct drm_atomic_commit *state,
>   					   struct drm_plane *plane,
>   					   bool use_old)
>   {
> -	struct drm_colorop *colorop;
> -	struct drm_colorop_state *old_colorop_state, *new_colorop_state;
> -	int i;
> +	struct drm_plane_state *plane_state = use_old ?
> +					      drm_atomic_get_old_plane_state(state, plane) :
> +					      drm_atomic_get_new_plane_state(state, plane);
> +	struct drm_colorop *colorop, *pipeline;
> +	struct drm_colorop_state *cstate;
>   
> -	for_each_oldnew_colorop_in_state(state, colorop, old_colorop_state, new_colorop_state, i) {
> -		struct drm_colorop_state *cstate = use_old ? old_colorop_state : new_colorop_state;
> +	pipeline = plane_state ? plane_state->color_pipeline :
> +				 plane->state->color_pipeline;
Why would plane_state be null? And if it is, why is it correct to use 
plane->state rather than the old or new state as requested by the 
use_old flag? Seems like there should be a comment to explain this.

>   
> -		if (cstate->colorop->plane != plane)
> -			continue;
> +	if (!pipeline)
> +		return false;
> +
> +	drm_for_each_colorop_in_pipeline(colorop, pipeline) {
> +		cstate = use_old ?
> +			 drm_atomic_get_old_colorop_state(state, colorop) :
> +			 drm_atomic_get_new_colorop_state(state, colorop);
> +
> +		if (!cstate)
> +			cstate = colorop->state;
Same question as above. Why would there not be a old/new state and if 
there isn't, why is it correct to use the current state when a check 
against the old/new state was explicitly requested?

John.

>   		if (!cstate->bypass)
>   			return true;
>   	}
> +
>   	return false;
>   }
>   

