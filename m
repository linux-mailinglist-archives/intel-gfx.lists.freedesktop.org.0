Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E953DB1F177
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Aug 2025 02:34:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347B610E1FF;
	Sat,  9 Aug 2025 00:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="j3HmQZsB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9B810E1FF
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Aug 2025 00:34:23 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 780475C628B;
 Sat,  9 Aug 2025 00:34:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 58F70C4CEF6;
 Sat,  9 Aug 2025 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754699663;
 bh=tBwR4ee+qcNCfAExvV+LbeFrUO2sgMsKYVwDnJ2JzP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j3HmQZsBqUg1WFRRTLikuuuu673BawLTuq49xhPD9IclIfmynoqLuPC5VEm1lDhnP
 cIwuN5/KoEsorTeckjDl9eXTrCttESS/yGG32lYJhmel6Z/AalGJ6FyLXOEClxMC6D
 7dRcuRhaPVtHbWxgGhJsizjtOyQWl1oAQyClnRWSa5BY0R9GNUz5QrpCVHUqaieoCo
 sq1uxlu+AdDJZMPwexVD5G2TSoSW4nDjr9R/74mW/WqjUCY5E8S/lYCNDV5A3JDLRo
 wV4Z0B50AJt6bgCrqgydBCj3CG5CqNWReaNuPtUKJbKubsOaJlOTOD+ohVZctex6PJ
 PFXtnKFs+olrQ==
Date: Fri, 8 Aug 2025 23:34:18 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, krzysztof.karas@intel.com, 
 andi.shyti@linux.intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH 3/3] drm/i915/gt: Relocate Gen6 context-specific workaround
Message-ID: <ofojwl6u6d7ao2wayuue2kfi7ubs2h7p3m6zlp5ipyagmef2vr@nfekwxyfti5q>
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
 <0162dba90c2c8720fb087ca4af2585908f1c69ee.1754041191.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0162dba90c2c8720fb087ca4af2585908f1c69ee.1754041191.git.sebastian.brzezinka@intel.com>
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

On Fri, Aug 01, 2025 at 09:49:08AM +0000, Sebastian Brzezinka wrote:
> The workaround for disabling Render Cache Operational Flush
> (WaDisable_RenderCache_OperationalFlush:snb) was previously applied
> in rcs_engine_wa_init(). As it's a context workaround specific to Gen6,
> move it to gen6_ctx_workarounds_init() for proper platform-specific
> context setup.
> 
> CM0_STC_EVICT_DISABLE_LRA_SNB is also Gen6-specific, but it does
> not stick when applied in context, so it remains in engine init.

clear!

I believe this is

BSPEC: 11322

> Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
