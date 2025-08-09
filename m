Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A249DB1F176
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Aug 2025 02:31:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3E610E1FE;
	Sat,  9 Aug 2025 00:31:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="pO4ywBrM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D30510E1FE
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Aug 2025 00:31:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 0572846048;
 Sat,  9 Aug 2025 00:31:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E341C4CEF4;
 Sat,  9 Aug 2025 00:31:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754699502;
 bh=otyPQO0UMMJLuqffFWOYdmmpN4frBpy81fhyF6J7ct0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pO4ywBrMO6IvRKfiROWG2nEIMKyyoFO710d+FXHO3krnsX0IuLiK8cAkH3GvEDP3y
 EIQnzP/UXyylVLRY/5au/A9ctHVavczjxjwn2MSdoJ3b7zWiI+SiklaqWDMplso7+y
 31u7HMTIHfRLd4htzEkxK+7xdYM4bKuoFZ5zIKaPVThOQ03RVR5vmSqoDOw2h0NBnt
 6v6XZoQZSvCvMirtYvdIs7Z2z7SaYRkDIXSGgStMQRAo1kKmeMSwJ+24Gg+v0Q4moV
 QBfpF0tc+z0NUAD9vUs9I24Bso178SoOCcDqrf3l4Nt5I5uUDKtPZ8WZPbQSs67v4v
 jUxEYwsX8xpmg==
Date: Fri, 8 Aug 2025 23:31:38 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com, 
 andi.shyti@linux.intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 2/3] drm/i915/gt: Relocate Gen7 context-specific
 workarounds
Message-ID: <24rmieglqnsxsuvu6lclimk7qyubb7athbznfxsbwebtjvumim@ap7idlijqmo6>
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
 <0c2cbd5cbcda14938954cad2382d8e030646c50e.1754041191.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0c2cbd5cbcda14938954cad2382d8e030646c50e.1754041191.git.sebastian.brzezinka@intel.com>
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

Hi Sebastian,

On Fri, Aug 01, 2025 at 09:49:01AM +0000, Sebastian Brzezinka wrote:
> The workarounds for disabling Render Cache Operational Flush and
> PIXEL_SUBSPAN_COLLECT_OPT_DISABLE were previously applied in
> rcs_engine_wa_init(). These are specific to Gen7 platforms
> so move them to gen7_ctx_workarounds_init() for better alignment with
> platform-specific initialization.

Same thing here, I would rewrite it as:

CACHE_MODE_1 register should be saved and restored as part of
the context, not during engine reset. Move the related workaround
from rcs_engine_wa_init() to gen7_ctx_workarounds_init() for
Gen7 platforms. This ensures the WA is applied during context
initialisation.

BSPEC: 55885

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
