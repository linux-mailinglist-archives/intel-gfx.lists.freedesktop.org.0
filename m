Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iMFUApjc+Gk22gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:51:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43D4C2310
	for <lists+intel-gfx@lfdr.de>; Mon, 04 May 2026 19:51:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A23AE10E7DB;
	Mon,  4 May 2026 17:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="G7n7CoDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A74D10E7D8;
 Mon,  4 May 2026 17:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FXYATTXmu2VwHs+cJsL6/Rb4p5jyp0YUkOSBI6H3beg=; b=G7n7CoDur/aIFLTH3dSBqRuvhS
 ydUUamVGrpMnubaYhkROq9CF3wJj/zIFsVumVfPdsYzhcCDInvubMtPbI3SteT3Lrwvco/9TZTmNs
 uY97dwq/XMtaZw2qwjBl1QApaB+7TXAClKCTAMOXK9OeRJvjxQXWoe0/278kXXMLqeu9RAp0c6VYx
 vyZNduaaN3z1n+TGdbYevfxYRQXRqrXeca+wDmIVwle6pijMXVFBuM/N81Z5wky2iYXnX5Fr5eO+k
 Gpk7rcWtkx1BnQ7guyUZAvlIFTpZBGzdqwrrwMiRbUl0j7ySVossLW0eH+yiv6xTYpWxRPYqJ2r1Y
 gs+cz4lw==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wJxRo-0064eu-7K; Mon, 04 May 2026 19:51:11 +0200
Message-ID: <78bdd3f4-7df1-4b3a-adf9-1ac1806c8b74@Igalia.com>
Date: Mon, 4 May 2026 10:51:00 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [v3,5/7] drm: writeback: Modify params for
 drm_writeback_get_out_fence
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
References: <20260316083008.87466-6-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260316083008.87466-6-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: AC43D4C2310
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
	NEURAL_HAM(-0.00)[-0.926];
	FROM_NEQ_ENVFROM(0.00)[John.Harrison@Igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx,renesas];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,Igalia.com:mid]

On 3/16/26 01:30, Suraj Kandpal wrote:
> Use drm_connector instead of drm_writeback_connector since it now
> resides within drm_connector and also helps make sure
> drm_wrtieback_connector is being modified mostly by drm core
> provided helpers.
And yet another way of saying the same thing. As per other patches, keep 
the description consistent across the entire set.

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/drm_atomic_uapi.c | 4 +---
>   drivers/gpu/drm/drm_writeback.c   | 6 +++---
>   include/drm/drm_writeback.h       | 2 +-
>   3 files changed, 5 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 13576a6c25d7..5e61565c939b 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -1446,7 +1446,6 @@ static int prepare_signaling(struct drm_device *dev,
>   	}
>   
>   	for_each_new_connector_in_state(state, conn, conn_state, i) {
> -		struct drm_writeback_connector *wb_conn;
>   		struct drm_out_fence_state *f;
>   		struct dma_fence *fence;
>   		s32 __user *fence_ptr;
> @@ -1468,8 +1467,7 @@ static int prepare_signaling(struct drm_device *dev,
>   		f[*num_fences].out_fence_ptr = fence_ptr;
>   		*fence_state = f;
>   
> -		wb_conn = &conn->writeback;
> -		fence = drm_writeback_get_out_fence(wb_conn);
> +		fence = drm_writeback_get_out_fence(conn);
>   		if (!fence)
>   			return -ENOMEM;
>   
> diff --git a/drivers/gpu/drm/drm_writeback.c b/drivers/gpu/drm/drm_writeback.c
> index f3b4371d4201..15a680ba98ae 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -528,11 +528,11 @@ drm_writeback_signal_completion(struct drm_connector *connector,
>   EXPORT_SYMBOL(drm_writeback_signal_completion);
>   
>   struct dma_fence *
> -drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
> +drm_writeback_get_out_fence(struct drm_connector *connector)
>   {
>   	struct dma_fence *fence;
> -	struct drm_connector *connector =
> -		drm_writeback_to_connector(wb_connector);
> +	struct drm_writeback_connector *wb_connector =
> +		&connector->writeback;
Does this need to be line wrapped?

John.

>   
>   	if (WARN_ON(connector->connector_type !=
>   		    DRM_MODE_CONNECTOR_WRITEBACK))
> diff --git a/include/drm/drm_writeback.h b/include/drm/drm_writeback.h
> index 5e8ab51c2da4..2afa48ea7c00 100644
> --- a/include/drm/drm_writeback.h
> +++ b/include/drm/drm_writeback.h
> @@ -104,5 +104,5 @@ drm_writeback_signal_completion(struct drm_connector *connector,
>   				int status);
>   
>   struct dma_fence *
> -drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector);
> +drm_writeback_get_out_fence(struct drm_connector *connector);
>   #endif

