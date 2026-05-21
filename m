Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4mK9LtuWD2rVNgYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 01:35:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64E1C5ACD16
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 01:35:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C55D10F447;
	Thu, 21 May 2026 23:35:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=igalia.com header.i=@igalia.com header.b="UlWJF3P5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3580310F445;
 Thu, 21 May 2026 23:35:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=kpeNCLRh+LZ1vf1oRVfGSdJI3eE0dg9QtkEXxSMU1IQ=; b=UlWJF3P5HF7dmTZGatj8DyUnBm
 lmAAL1KGmzm+qRyj1dUUaVYVELwuefXcDK7/3eNpGUJal/xgNp4VIeyccnipyN60kBMvfTSksR9kq
 +5eVyy1yxSW6axHH3BPn5msEVqVfHZsPGy9chNhoe3gqYr6oI173h2MirN87Qh+t4kdhupX2ib9q7
 segmWhnOV54c3ZUr5phmy82/v8ZCQjaE9edOSIzRMrI7YmP8yNR8IIo4W00T+jjPnEZlgg0SpcwjC
 rMu8YJSSvY9kODtjxBoj2vE5lUU49fspAztrsPTiisnORI0bUtofbNryGvMUGPNKidPzRXXtboGaR
 /haad2TQ==;
Received: from c-73-157-168-91.hsd1.or.comcast.net ([73.157.168.91]
 helo=[192.168.1.133]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1wQCvd-004b7X-D0; Fri, 22 May 2026 01:35:49 +0200
Message-ID: <fef3245f-8234-4799-ad9a-9e97fa77b826@Igalia.com>
Date: Thu, 21 May 2026 16:35:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] drm: writeback: Modify drm_writeback_get_out_fence
 helper
To: Suraj Kandpal <suraj.kandpal@intel.com>, freedreno@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, kernel-list@raspberrypi.com,
 amd-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: abhinav.kumar@linux.dev, tzimmermann@suse.de,
 marijn.suijten@somainline.org, laurent.pinchart+renesas@ideasonboard.com,
 dave.stevenson@raspberrypi.com, tomi.valkeinen+renesas@ideasonboard.com,
 kieran.bingham+renesas@ideasonboard.com,
 Louis Chauvet <louis.chauvet@bootlin.com>, kernel-dev@igalia.com
References: <20260521053708.1475129-1-suraj.kandpal@intel.com>
 <20260521053708.1475129-6-suraj.kandpal@intel.com>
Content-Language: en-GB
From: John Harrison <John.Harrison@Igalia.com>
In-Reply-To: <20260521053708.1475129-6-suraj.kandpal@intel.com>
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
	RCPT_COUNT_TWELVE(0.00)[17];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,Igalia.com:mid,igalia.com:email]
X-Rspamd-Queue-Id: 64E1C5ACD16
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 5/20/26 22:37, Suraj Kandpal wrote:
> drm_writeback_get_out_fence() does not itself need the parent
> drm_connector object, but update it to take drm_connector for
> consistency across the writeback interface, which is being moved
> to use the top level drm_connector and traverse down to
> drm_writeback_connector rather than passing in the lower level
> object and traversing back up.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: John Harrison <John.Harrison@Igalia.com>

> ---
> v3 -> v4:
> - Update subject line for consitency (John)
> - Update commit message across commits for consitency (John)
>
>   drivers/gpu/drm/drm_atomic_uapi.c | 4 +---
>   drivers/gpu/drm/drm_writeback.c   | 5 ++---
>   include/drm/drm_writeback.h       | 2 +-
>   3 files changed, 4 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
> index 7add982e3a3f..65845b096b0c 100644
> --- a/drivers/gpu/drm/drm_atomic_uapi.c
> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
> @@ -1450,7 +1450,6 @@ static int prepare_signaling(struct drm_device *dev,
>   	}
>   
>   	for_each_new_connector_in_state(state, conn, conn_state, i) {
> -		struct drm_writeback_connector *wb_conn;
>   		struct drm_out_fence_state *f;
>   		struct dma_fence *fence;
>   		s32 __user *fence_ptr;
> @@ -1472,8 +1471,7 @@ static int prepare_signaling(struct drm_device *dev,
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
> index f3b4371d4201..72e437f4394b 100644
> --- a/drivers/gpu/drm/drm_writeback.c
> +++ b/drivers/gpu/drm/drm_writeback.c
> @@ -528,11 +528,10 @@ drm_writeback_signal_completion(struct drm_connector *connector,
>   EXPORT_SYMBOL(drm_writeback_signal_completion);
>   
>   struct dma_fence *
> -drm_writeback_get_out_fence(struct drm_writeback_connector *wb_connector)
> +drm_writeback_get_out_fence(struct drm_connector *connector)
>   {
>   	struct dma_fence *fence;
> -	struct drm_connector *connector =
> -		drm_writeback_to_connector(wb_connector);
> +	struct drm_writeback_connector *wb_connector = &connector->writeback;
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

