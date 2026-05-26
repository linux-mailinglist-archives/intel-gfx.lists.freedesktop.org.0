Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UHrvMUpHGGr2iQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:46:50 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE7C75F2F44
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2026 15:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A27110F1D8;
	Thu, 28 May 2026 13:46:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=leandro.ribeiro@collabora.com header.b="YsEWBvJn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-op-o12.zoho.com (sender4-op-o12.zoho.com
 [136.143.188.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C008910E6BA;
 Tue, 26 May 2026 19:33:07 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1779823986; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=H+03uf04wb1kpMPe0hNp+nB0pL1vGbOxtXFW18nZQLIRHY7BrERuLljnlXNFKvL0NT68xom9Gha24rgpXMZDafmq9v7TrbOypbgMQF6V2jsUXOjmvMkHOnAelcq4H2RlbcUcYwBeqNUf1leDv9eEYA6WQltul7Wsz31aBQtwyGs=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1779823986;
 h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=GtcuprZ94UHAcAaoXrOE+xI/bhw9j8o4Bjc4rnleg1Q=; 
 b=Ugo27+AATavxX1RaKEWHlWrBAnYQXsrEMJ+Dh03NoghcJrg3QeJYLYP8KcEiqQef0teOxpP1YJPKXknw6Vyg2Q70BcLj14wBt2sbzYBLq4JnsDCMVOcpxzWwD0SBmMjBiLzP3qMAX3y1Xa+mJdYCGWWnbkz3/zyhHtmEnaMWAmM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=leandro.ribeiro@collabora.com;
 dmarc=pass header.from=<leandro.ribeiro@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1779823986; 
 s=zohomail; d=collabora.com; i=leandro.ribeiro@collabora.com; 
 h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
 bh=GtcuprZ94UHAcAaoXrOE+xI/bhw9j8o4Bjc4rnleg1Q=;
 b=YsEWBvJnqBqRwkYMZ2aL1E1RRSf/TbpxrXuUtZ0y8immSBoLTXm848mx3y4OwIWP
 3dd3BH68/eDGzmewYBDtX71oOqKbbOyeDcWyIKLBrvrqpORUafc4Y5eT89kkJehs8Rg
 7ewJJ7osDK5zu0qg5L5aDLfNU04UpHX4yS7v8of4=
Received: by mx.zohomail.com with SMTPS id 1779823984185292.3656549840649;
 Tue, 26 May 2026 12:33:04 -0700 (PDT)
Message-ID: <128ff48a-bfb2-4163-a721-3625b2e2af02@collabora.com>
Date: Tue, 26 May 2026 16:33:01 -0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915: Add the blend mode property to all planes that
 support alpha blending
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
References: <20260522194935.27411-1-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: Leandro Ribeiro <leandro.ribeiro@collabora.com>
In-Reply-To: <20260522194935.27411-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ZohoMailClient: External
X-Mailman-Approved-At: Thu, 28 May 2026 13:46:47 +0000
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DATE_IN_PAST(1.00)[42];
	ARC_ALLOW(-1.00)[zohomail.com:s=zohoarc:i=1];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[leandro.ribeiro@collabora.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[collabora.com:+]
X-Rspamd-Queue-Id: DE7C75F2F44
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/22/26 16:49, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently only SKL+ universal planes have the blend mode property.
> Assuming it now becomes mandatory for all planes that support
> alpha blending we need to add it to cursors on all platforms,
> and VLV/CHV primary/sprite planes.
> 
> TODO: For VLV/CHV primary/sprite planes we could fairly easily
> implement DRM_MODE_BLEND_PIXEL_NONE by remapping the A format
> to the corresponding X format, and on CHV pipe B (but not pipes
> A/C) we could probably even implement DRM_MODE_BLEND_COVERAGE.
> 
> Cc: Leandro Ribeiro <leandro.ribeiro@collabora.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Ack, looks good to me (with the caveat I'm not familiar with i915 codebase).

> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c   | 4 ++++
>  drivers/gpu/drm/i915/display/intel_cursor.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_sprite.c | 4 ++++
>  3 files changed, 11 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 70734d32a409..490908f59141 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1108,6 +1108,10 @@ intel_primary_plane_create(struct intel_display *display, enum pipe pipe)
>  						   DRM_MODE_ROTATE_0,
>  						   supported_rotations);
>  
> +	if (display->platform.valleyview || display->platform.cherryview)
> +		drm_plane_create_blend_mode_property(&plane->base,
> +						     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = 0;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index 52347668f27d..344cee13ea97 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -1078,6 +1078,9 @@ intel_cursor_plane_create(struct intel_display *display,
>  
>  	intel_cursor_add_size_hints_property(cursor);
>  
> +	drm_plane_create_blend_mode_property(&cursor->base,
> +					     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = DISPLAY_RUNTIME_INFO(display)->num_sprites[pipe] + 1;
>  	drm_plane_create_zpos_immutable_property(&cursor->base, zpos);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_sprite.c b/drivers/gpu/drm/i915/display/intel_sprite.c
> index 6a65f92e8a03..3e38960bbbd8 100644
> --- a/drivers/gpu/drm/i915/display/intel_sprite.c
> +++ b/drivers/gpu/drm/i915/display/intel_sprite.c
> @@ -1722,6 +1722,10 @@ intel_sprite_plane_create(struct intel_display *display,
>  					  DRM_COLOR_YCBCR_BT709,
>  					  DRM_COLOR_YCBCR_LIMITED_RANGE);
>  
> +	if (display->platform.valleyview || display->platform.cherryview)
> +		drm_plane_create_blend_mode_property(&plane->base,
> +						     BIT(DRM_MODE_BLEND_PREMULTI));
> +
>  	zpos = sprite + 1;
>  	drm_plane_create_zpos_immutable_property(&plane->base, zpos);
>  

