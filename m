Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kjyjAhdwV2oWOAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:33:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7594D75D968
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:33:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=bCqOzIxS;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A27D610E192;
	Wed, 15 Jul 2026 11:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 97A9010E192;
 Wed, 15 Jul 2026 11:33:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1784115218;
 bh=Kgkog5j9NQzrF3hTMSI8TDzAZFXTWscJT5y9vSpc3Vw=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=bCqOzIxSUy/z7ujj++b+GSn988cRQ/NMtVnKjY6xGF1CKNv0q8Z0ir/Hpeknxyq/i
 ZZAXPp8S/aDFPzB+rdPq3cpNy/hVQQpKzLAaLTyVTbpbtMCiVue64jZ3Vcl+ze1LYS
 l0w0MBaSJwmNXPZHgO1mir7RvDBurP+w0Pwye+FDhrBJb2gnRGOEwF+SR1Or7KGhts
 4kw9bzP4fIHaNxCp5VXOIqqs+c3NnJXpzUxBGxuQIOoq3PV5wzCuk/929jZSj54/DL
 pIMOjfLTDlGUYT29fc+FdzAbwzgzB6RwvtxZ0wr6d055c743VPbZdJaTD13nW+Vj+E
 n1eA18n2km1VQ==
Message-ID: <b654aaaa-4290-4aab-be36-c2f3a01eb369@lankhorst.se>
Date: Wed, 15 Jul 2026 13:34:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] drm/xe/display: Remove duplicated code
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org
References: <20260715110557.2172095-1-dev@lankhorst.se>
 <20260715110557.2172095-6-dev@lankhorst.se>
Content-Language: en-US
From: Maarten Lankhorst <dev@lankhorst.se>
In-Reply-To: <20260715110557.2172095-6-dev@lankhorst.se>
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
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7594D75D968



On 7/15/26 13:05, Maarten Lankhorst wrote:
> The order of pte vs checks isn't important, so read the pte
> outside the if block. This makes it slightly more readable.
> 
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
> ---
>  drivers/gpu/drm/xe/display/xe_initial_plane.c | 35 ++++++-------------
>  1 file changed, 11 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> index 5540b0fca392a..e16a6a1e6288a 100644
> --- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
> +++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
> @@ -64,7 +64,7 @@ initial_plane_bo(struct xe_device *xe,
>  	struct xe_bo *bo;
>  	resource_size_t phys_base;
>  	u32 base, size, flags;
> -	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K;
> +	u64 page_size = xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K ? SZ_64K : SZ_4K, pte;
>  	struct xe_ggtt_node *original_ggtt_node;
>  
>  	if (plane_config->size == 0)
> @@ -77,16 +77,14 @@ initial_plane_bo(struct xe_device *xe,
>  			page_size);
>  	size -= base;
>  
> -	if (IS_DGFX(xe)) {
> -		u64 pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
> -
> -		if (is_pte_local(pte) != need_pte_local(xe)) {
> -			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
> -			return NULL;
> -		}
> -
> -		phys_base = pte & ~(page_size - 1);
> +	pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
> +	phys_base = pte & ~(page_size - 1);
> +	if (is_pte_local(pte) != need_pte_local(xe)) {
> +		drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
> +		return NULL;
> +	}
>  
> +	if (IS_DGFX(xe)) {
>  		flags |= XE_BO_FLAG_VRAM0;
>  
>  		/*
> @@ -104,25 +102,14 @@ initial_plane_bo(struct xe_device *xe,
>  			    "Using phys_base=%pa, based on initial plane programming\n",
>  			    &phys_base);
>  	} else {
> -		struct ttm_resource_manager *stolen;
> -		u64 pte;
> +		flags |= XE_BO_FLAG_STOLEN;
> +		phys_base -= xe_ttm_stolen_gpu_offset(xe);
>  
> -		stolen = ttm_manager_type(&xe->ttm, XE_PL_STOLEN);
> -		if (!stolen) {
> +		if (!ttm_manager_type(&xe->ttm, XE_PL_STOLEN)) {
>  			drm_dbg_kms(&xe->drm, "No stolen for initial FB\n");
>  			return NULL;
>  		}
>

Woops, phys_base adjustment should be after !stolen check,
result should be the same though.

> -		pte = xe_ggtt_read_pte(tile0->mem.ggtt, base);
> -
> -		if (is_pte_local(pte) != need_pte_local(xe)) {
> -			drm_err(&xe->drm, "Initial plane PTE has bad local memory bit\n");
> -			return NULL;
> -		}
> -
> -		phys_base = (pte & ~(page_size - 1)) - xe_ttm_stolen_gpu_offset(xe);
> -		flags |= XE_BO_FLAG_STOLEN;
> -
>  		if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>  		    IS_ENABLED(CONFIG_DRM_FBDEV_EMULATION) &&
>  		    !xe_display_bo_fbdev_prefer_stolen(xe, plane_config->size)) {

