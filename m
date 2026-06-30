Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KbWUCoP1Q2qXmAoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 18:57:39 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C53E16E6AD6
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 18:57:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=igalia.com header.s=20170329 header.b=e4brlJz0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=igalia.com (policy=none)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B8B010ECD8;
	Tue, 30 Jun 2026 16:57:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fanzine2.igalia.com (fanzine2.igalia.com [213.97.179.56])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C040510E23B;
 Tue, 30 Jun 2026 16:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=igalia.com; 
 s=20170329;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
 References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Qrq29s1UmcG3ZbaxpiVVbSt+a5Mn05Ll4PFR7ojZOso=; b=e4brlJz0fiay1/iAA2Rhi9OPP6
 bG1+8VfWCnz87sz/T3sHuxkBBAvZTYVhPfUSomlqxkdTb1ClIs2bYzESk3aCB0MzEn3ATF+MT6J1S
 kWOG8t6zQAH0fcG/cEVfNm+FApVGSBv9R8Dhq/RX8hfxZTrMxiwBkmnVlW9TzRkisJ8g/A5x8lWkx
 /wPzHsZUJ0Cg/MYxa/2XhUCtds4mL5VJ5oDscP5DWiHTnlLL1AcW55JtlbSmWOVPvD3E+9mYWI+O5
 0zCN6nt6qgioPyGVxuaQH7lfxwrsQz4BrOORt6KFrKnOSjbjH2eIFPsDbVpkH/TK1YRk0r0MIObGN
 U0Ca56SQ==;
Received: from 100.red-79-144-92.dynamicip.rima-tde.net ([79.144.92.100]
 helo=[192.168.1.128]) by fanzine2.igalia.com with esmtpsa 
 (Cipher TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128) (Exim)
 id 1webm3-007Bke-Tz; Tue, 30 Jun 2026 18:57:27 +0200
Message-ID: <0570d22d-bf3c-4c17-b50e-58f522f25ffb@igalia.com>
Date: Tue, 30 Jun 2026 18:57:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/4] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
 behind driver feature
To: Robert Mader <robert.mader@collabora.com>, dri-devel@lists.freedesktop.org
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 Daniel Stone <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260630084229.529682-1-robert.mader@collabora.com>
 <20260630084229.529682-2-robert.mader@collabora.com>
Content-Language: en-US
From: Melissa Wen <mwen@igalia.com>
In-Reply-To: <20260630084229.529682-2-robert.mader@collabora.com>
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
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	FREEMAIL_CC(0.00)[linux.intel.com,kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,emersion.fr];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mwen@igalia.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[igalia.com:-];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C53E16E6AD6



On 30/06/2026 10:42, Robert Mader wrote:
> The client cap is currently advertised unconditionally, even for drivers that do
> not support plane color pipelines. If clients supporting the later, like Wayland
> compositors and drm_info, enable the client cap on sich drivers they will be
> left without both color pipeline and the legacy properties COLOR_ENCODING and
> COLOR_RANGE, effectively breaking YUV->RGB conversion support.
>
> Add a new driver feature and guard the client cap behind it, allowing
> plane color pipeline and legacy YUV->RGB support to co-exist.

Ouch, that's indeed a problem. Nice catch!

I'm not sure if this is the right way to go because plane color pipeline 
can be supported per plane and per hw family.
My suggestion would be to only deprecate COLOR_ENCODING and COLOR_RANGE 
in drm_mode_object_get_properties() if a plane COLOR_PIPELINE property 
is attached.
WDYT?

Melissa

>
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> ---
>   drivers/gpu/drm/drm_ioctl.c | 2 ++
>   include/drm/drm_drv.h       | 6 ++++++
>   2 files changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index ff193155129e..96fda92e31b9 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -374,6 +374,8 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
>   		file_priv->supports_virtualized_cursor_plane = req->value;
>   		break;
>   	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
> +		if (!drm_core_check_feature(dev, DRIVER_PLANE_COLOR_PIPELINE))
> +			return -EOPNOTSUPP;
>   		if (!file_priv->atomic)
>   			return -EINVAL;
>   		if (req->value > 1)
> diff --git a/include/drm/drm_drv.h b/include/drm/drm_drv.h
> index e09559495c5b..108ddd2c8d30 100644
> --- a/include/drm/drm_drv.h
> +++ b/include/drm/drm_drv.h
> @@ -116,6 +116,12 @@ enum drm_driver_feature {
>   	 * the cursor planes to work correctly).
>   	 */
>   	DRIVER_CURSOR_HOTSPOT           = BIT(9),
> +	/**
> +	 * @DRIVER_PLANE_COLOR_PIPELINE:
> +	 *
> +	 * Driver supports PLANE_COLOR_PIPELINE.
> +	 */
> +	DRIVER_PLANE_COLOR_PIPELINE	= BIT(10),
>   
>   	/* IMPORTANT: Below are all the legacy flags, add new ones above. */
>   

