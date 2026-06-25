Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FXQCEtirPWra5QgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:29:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4B2C6C8F91
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Jun 2026 00:29:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=JFG0xNPI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E52D10F3A9;
	Thu, 25 Jun 2026 22:29:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D300E10E2C0;
 Thu, 25 Jun 2026 22:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+xpz/3mR0vc8MZUDX2dWK/x9YYE2W9Z6zuZ1hivI4Fc=; b=JFG0xNPILkwiYY54VdZjej0/2a
 1BMr8ZXZRKZm9affvQYSmBPwPFO8tXABfgq3zhwGCeQuwjQzrGq+T5hE2t2h98lQTZktpHkIstRJA
 zDDb/2I5WmbLIBxP07TG1H4z+JLGVJftpQ/eCTTq1h7G9m3tVek3jgQfhCK6DnXZBgKrQAUL7nB2X
 ML6Y3gGiUzto0asaKS04xyIWx6ayC+BUIBc9LvQmB3qLCMINJOitdiO4W9gHoM/qW9dD8OcXNyLp8
 EgbiFbDVNGdVMZlPifMTeM6KyVm2u62mSxvqwIVHiW6yiL06YOSLUSMy5bqeieGuFmEkfXeuA3qew
 PaE/YFUQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wcsZ4-005FfL-9L; Fri, 26 Jun 2026 00:28:54 +0200
Message-ID: <140cad50-d1fc-416e-ba84-453e1a2000c4@Igalia.com>
Date: Thu, 25 Jun 2026 15:28:43 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/7] drm/atomic: only add states of active or transient
 active colorops
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
 <20260609121230.1358786-2-mwen@igalia.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260609121230.1358786-2-mwen@igalia.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E4B2C6C8F91

On 6/9/26 13:51, Melissa Wen wrote:
> Only consider affected colorop states those that are part of an active
> color pipeline or a pipeline that is about to be activated or
> deactivated in the same atomic commit, i.e., colorop is in the chain of
> old/new plane color pipeline property. To cover color_pipeline
> deactivation, remove the condition for plane_state->color_pipeline.
>
> Signed-off-by: Melissa Wen <mwen@igalia.com>
> ---
>
> v2: define a macro to walk in the color pipeline (Alex H.)
> ---
>   drivers/gpu/drm/drm_atomic.c | 65 +++++++++++++++++++++++++++++++-----
>   include/drm/drm_colorop.h    |  3 ++
>   2 files changed, 59 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
> index 3af1b9cc9a06..464562861408 100644
> --- a/drivers/gpu/drm/drm_atomic.c
> +++ b/drivers/gpu/drm/drm_atomic.c
> @@ -892,6 +892,57 @@ static int drm_atomic_plane_check(const struct drm_plane_state *old_plane_state,
>   	return 0;
>   }
>   
> +/*
> + * This function walks old and new plane state color pipelines and adds all
> + * colorops in use by @plane to the atomic configuration @state. This is useful
> + * when an atomic commit needs to check all currently enabled or about to be
> + * enabled colorop on @plane, e.g. when changing the mode. This also avoids
> + * including colorop states that are not part of the atomic state.
> + *
> + * Returns:
> + * 0 on success or can fail with -EDEADLK or -ENOMEM. When the error is EDEADLK
> + * then the w/w mutex code has detected a deadlock and the entire atomic
> + * sequence must be restarted. All other errors are fatal.
> + */
> +static int
> +drm_atomic_add_pipeline_colorops(struct drm_atomic_commit *state,
> +				 struct drm_plane *plane)
> +{
> +	struct drm_colorop *colorop;
> +	struct drm_colorop_state *colorop_state;
> +	struct drm_plane_state *new_plane_state, *old_plane_state;
> +
> +	new_plane_state = drm_atomic_get_new_plane_state(state, plane);
> +	old_plane_state = drm_atomic_get_old_plane_state(state, plane);
> +
> +	if (WARN_ON(!new_plane_state || !old_plane_state))
> +		return -EINVAL;
> +
> +	drm_dbg_atomic(plane->dev,
> +		       "Adding old+new pipeline colorops for [PLANE:%d:%s]\n",
> +		       plane->base.id, plane->name);
> +
> +	drm_for_each_colorop_in_pipeline(colorop,
> +					 new_plane_state->color_pipeline) {
> +		colorop_state = drm_atomic_get_colorop_state(state, colorop);
> +		if (IS_ERR(colorop_state))
> +			return PTR_ERR(colorop_state);
> +	}
> +
> +	/* Same color pipeline as new; no point walking old. */
> +	if (new_plane_state->color_pipeline == old_plane_state->color_pipeline)
> +		return 0;
> +
> +	drm_for_each_colorop_in_pipeline(colorop,
> +					 old_plane_state->color_pipeline) {
> +		colorop_state = drm_atomic_get_colorop_state(state, colorop);
> +		if (IS_ERR(colorop_state))
> +			return PTR_ERR(colorop_state);
> +	}
> +
> +	return 0;
> +}
> +
>   static void drm_atomic_colorop_print_state(struct drm_printer *p,
>   					   const struct drm_colorop_state *state)
>   {
> @@ -1671,11 +1722,9 @@ drm_atomic_add_affected_planes(struct drm_atomic_commit *state,
>   		if (IS_ERR(plane_state))
>   			return PTR_ERR(plane_state);
>   
> -		if (plane_state->color_pipeline) {
> -			ret = drm_atomic_add_affected_colorops(state, plane);
> -			if (ret)
> -				return ret;
> -		}
> +		ret = drm_atomic_add_pipeline_colorops(state, plane);
> +		if (ret)
> +			return ret;
>   	}
>   	return 0;
>   }
> @@ -1687,10 +1736,8 @@ EXPORT_SYMBOL(drm_atomic_add_affected_planes);
>    * @plane: DRM plane
>    *
>    * This function walks the current configuration and adds all colorops
> - * currently used by @plane to the atomic configuration @state. This is useful
> - * when an atomic commit also needs to check all currently enabled colorop on
> - * @plane, e.g. when changing the mode. It's also useful when re-enabling a plane
> - * to avoid special code to force-enable all colorops.
> + * currently used by @plane to the atomic configuration @state. It's useful
> + * when re-enabling a plane to avoid special code to force-enable all colorops.
>    *
>    * Since acquiring a colorop state will always also acquire the w/w mutex of the
>    * current plane for that colorop (if there is any) adding all the colorop states for
Unfortunately, it is not clear from the context diff but this update is 
for drm_atomic_add_affected_colorops(). That function is now only used 
by drm_atomic_helper_duplicate_state(). So, potentially it could be move to
drm_atomic_helper.c and made a static local helper. Alternatively, 
should the _duplicate_state() function also be updated to only copy the 
states of colorops in active pipelines as well? It already only does the 
state add call if there is a pipeline, it just doesn't filter according 
to the pipeline. Seems like it should? In which case, this blanket add 
code can be removed entirely.

John.

> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
> index b4b9e4f558ab..006278e21d49 100644
> --- a/include/drm/drm_colorop.h
> +++ b/include/drm/drm_colorop.h
> @@ -459,6 +459,9 @@ static inline unsigned int drm_colorop_index(const struct drm_colorop *colorop)
>   #define drm_for_each_colorop(colorop, dev) \
>   	list_for_each_entry(colorop, &(dev)->mode_config.colorop_list, head)
>   
> +#define drm_for_each_colorop_in_pipeline(colorop, pipeline) \
> +	for ((colorop) = (pipeline); (colorop); (colorop) = (colorop)->next)
> +
>   /**
>    * drm_get_colorop_type_name - return a string for colorop type
>    * @type: colorop type to compute name of

