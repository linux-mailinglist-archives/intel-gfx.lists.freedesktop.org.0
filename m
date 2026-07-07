Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 26IuBDC4TGqfogEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:26:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7ECF719115
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 10:26:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=B85MVT2a;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C056210EBEE;
	Tue,  7 Jul 2026 08:26:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 67B7B10EBFC;
 Tue,  7 Jul 2026 08:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783412777; x=1814948777;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EHF2oSbGSPPkpOykLgyw6jvocrRYRW4CAx4KAQFdmno=;
 b=B85MVT2a1Mq1c6O5VsXIu3WsOonjZEKfyPloUZFZuoMK2LuVoiR2tVMz
 fRJlzVNMrENhXadLq8qiCXcRTn6tCXicCETnyaZ+m9bDCjcGIIpQL2AxR
 pxAKgb/UbjiITmcgZtJXKrH1pLBwfjlLqtMtgYjO8XcaqBbHBUZhsGquH
 GI5j4kIH3tMwTvPacjgWd3CUFr/iPA3zg2D8KmrdgMQBo1LNanVAmI9a9
 0raxL5ARuDa7nJ7QCYQIgtfPfuDJVkPECUbSWg2XnQRNAka4FXQe0z4ad
 JGZISz4H6KIYwzOKncKMoQQhu8lBhtTXJSI3GgKy+4gNP6CViqfgpSzn9 g==;
X-CSE-ConnectionGUID: ropWseXXSd66mJwT/khr0A==
X-CSE-MsgGUID: qAIRAPPKQ+em93EY4ph8DA==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="94658483"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94658483"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 01:26:17 -0700
X-CSE-ConnectionGUID: 5nBjQhTMS3WwD8M1Xo+umg==
X-CSE-MsgGUID: Bj6oZUU0R36maRYnFp6VVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="253468518"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO [10.245.244.223])
 ([10.245.244.223])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 01:26:12 -0700
Message-ID: <a346493c-047f-4b3b-b344-39b0266348ad@linux.intel.com>
Date: Tue, 7 Jul 2026 10:26:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm: Guard DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE
To: Robert Mader <robert.mader@collabora.com>, dri-devel@lists.freedesktop.org
Cc: Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, linux-kernel@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Harry Wentland <harry.wentland@amd.com>, Daniel Stone
 <daniels@collabora.com>,
 Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 Uma Shankar <uma.shankar@intel.com>,
 Louis Chauvet <louis.chauvet@bootlin.com>, Melissa Wen <mwen@igalia.com>,
 Simon Ser <contact@emersion.fr>,
 Pekka Paalanen <pekka.paalanen@collabora.com>,
 Leandro Ribeiro <leandro.ribeiro@collabora.com>
References: <20260703073230.19982-1-robert.mader@collabora.com>
Content-Language: en-US
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <20260703073230.19982-1-robert.mader@collabora.com>
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[maarten.lankhorst@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[kernel.org,suse.de,gmail.com,ffwll.ch,vger.kernel.org,lists.freedesktop.org,amd.com,collabora.com,intel.com,bootlin.com,igalia.com,emersion.fr];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,linux.intel.com:mid,linux.intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A7ECF719115

Hey,

This probably would be useful to backport to stable, can I add those tags and merge it?

Fixes: 179ab8e7d7b3 ("drm/colorop: Introduce DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE")
Cc: <stable@vger.kernel.org> # v6.19+

Kind regards,
~Maarten Lankhorst

On 7/3/26 09:32, Robert Mader wrote:
> The client cap is currently advertised unconditionally, even for drivers
> that do not support plane color pipelines. If clients supporting the later,
> like Wayland compositors or tools like drm_info, enable the client cap on
> such drivers they will be left without both color pipeline and the legacy
> properties COLOR_ENCODING and COLOR_RANGE, effectively breaking YUV->RGB
> conversion support.
> 
> Prevent that by only marking the cap supported if there are actually planes
> with color pipelines.
> 
> Note: while the color pipeline replacement for the legacy properties is
> still under review (1), we can assume that it will work as a drop-in
> replacement. That means any plane on any hardware currently supporting
> the legacy properties will be able to offer a functionally equal color
> pipeline and there will be no technical reason keep using the legacy
> properties if both the driver and the client support the new API.
> 
> 1: https://lore.kernel.org/dri-devel/20260623164812.81110-1-harry.wentland@amd.com/
> 
> Signed-off-by: Robert Mader <robert.mader@collabora.com>
> 
> ---
> 
> Changes in v3:
>  - Move the new check behind the existing EINVAL ones
>  - Rebase on latest drm-misc-next
> 
> Changes in v2:
>  - Replace the driver feature with a simple check (suggested by Maarten
>    Lankhorst <maarten.lankhorst@linux.intel.com>)
>  - Expand the commit message slightly and change the title
> ---
>  drivers/gpu/drm/drm_ioctl.c | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_ioctl.c b/drivers/gpu/drm/drm_ioctl.c
> index e2df4becce62..9039a39c4324 100644
> --- a/drivers/gpu/drm/drm_ioctl.c
> +++ b/drivers/gpu/drm/drm_ioctl.c
> @@ -373,13 +373,25 @@ drm_setclientcap(struct drm_device *dev, void *data, struct drm_file *file_priv)
>  			return -EINVAL;
>  		file_priv->supports_virtualized_cursor_plane = req->value;
>  		break;
> -	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE:
> +	case DRM_CLIENT_CAP_PLANE_COLOR_PIPELINE: {
> +		struct drm_plane *plane;
> +		bool has_plane_with_color_pipeline = false;
> +
>  		if (!file_priv->atomic)
>  			return -EINVAL;
>  		if (req->value > 1)
>  			return -EINVAL;
> +		drm_for_each_plane(plane, dev) {
> +			if (plane->color_pipeline_property) {
> +				has_plane_with_color_pipeline = true;
> +				break;
> +			}
> +		}
> +		if (!has_plane_with_color_pipeline)
> +			return -EOPNOTSUPP;
>  		file_priv->plane_color_pipeline = req->value;
>  		break;
> +	}
>  	default:
>  		return -EINVAL;
>  	}

