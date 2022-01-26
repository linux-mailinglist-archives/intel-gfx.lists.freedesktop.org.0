Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A583649C5F3
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 10:13:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56FFE10E7CF;
	Wed, 26 Jan 2022 09:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp-out2.suse.de (smtp-out2.suse.de [195.135.220.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40C4E10E7CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Jan 2022 09:13:32 +0000 (UTC)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by smtp-out2.suse.de (Postfix) with ESMTPS id 820E31F393;
 Wed, 26 Jan 2022 09:13:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1643188410; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YZ/4KWoebNsl9A4gl5sc7likmLSs3VvOKbroC5xzTVQ=;
 b=Qqa4HobY7Saj41/e+ToarHJRdE2pakolS2yuXb8trTwkm3yLOgvLmpYT4ehD4oL4GH0oXj
 v74n/lYBzyoXUtWAJt64rUOn9mgYjHkXUGbXFOOWBHjKp2mksOFsLqyehUkaZOf+zAyD+l
 7LmIIJtfqqF0i+HpTvqnO34SHdepdbI=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1643188410;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YZ/4KWoebNsl9A4gl5sc7likmLSs3VvOKbroC5xzTVQ=;
 b=eg+eSMVMV0HqGLxrveB8igxS7pBy3t/1JnmccXSTs3gcBDNpNLJm/S/aJFzVWVH3dAPeTg
 2aUfy2bnEOzbqHDQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
 (No client certificate requested)
 by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 5FE7413B82;
 Wed, 26 Jan 2022 09:13:30 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
 by imap2.suse-dmz.suse.de with ESMTPSA id GvGsFroQ8WHTQAAAMHmgww
 (envelope-from <vbabka@suse.cz>); Wed, 26 Jan 2022 09:13:30 +0000
Message-ID: <ac4c4da5-817a-0fec-94ad-03fd8b246f80@suse.cz>
Date: Wed, 26 Jan 2022 10:13:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
From: Vlastimil Babka <vbabka@suse.cz>
In-Reply-To: <20220126081539.23227-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix oops due to missing stack
 depot
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
Cc: Marco Elver <elver@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 1/26/22 09:15, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We call __save_depot_stack() unconditionally so the stack depot

Ah, in __untrack_all_wakerefs()? Looks like I missed it, sorry.

> must always be initialized or else we'll oops on platforms without
> runtime pm support.
> 
> Presumably we've not seen this in CI due to stack_depot_init()
> already getting called via drm_mm_init()+CONFIG_DRM_DEBUG_MM.
> 
> Cc: Vlastimil Babka <vbabka@suse.cz>
> Cc: Dmitry Vyukov <dvyukov@google.com>
> Cc: Marco Elver <elver@google.com> # stackdepot
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Imre Deak <imre.deak@intel.com>
> Fixes: 2dba5eb1c73b ("lib/stackdepot: allow optional init and stack_table allocation by kvmalloc()")
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Acked-by: Vlastimil Babka <vbabka@suse.cz>
Thanks!

> ---
>  drivers/gpu/drm/i915/intel_runtime_pm.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 53f1ccb78849..64c2708efc9e 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -68,9 +68,7 @@ static noinline depot_stack_handle_t __save_depot_stack(void)
>  static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  {
>  	spin_lock_init(&rpm->debug.lock);
> -
> -	if (rpm->available)
> -		stack_depot_init();
> +	stack_depot_init();
>  }
>  
>  static noinline depot_stack_handle_t

