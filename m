Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0EBB2BF04
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 12:34:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F23F610E588;
	Tue, 19 Aug 2025 10:34:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="qxn1p0pH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B13B10E588
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Aug 2025 10:34:50 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id CF9775C5DE0;
 Tue, 19 Aug 2025 10:34:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 16C5EC4CEF1;
 Tue, 19 Aug 2025 10:34:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755599689;
 bh=GlXu5Q+zdEOeDsq1lXxkHMrC/ikN7w/vjVMCC+mIAVY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qxn1p0pHud+us+wn6us2W2Nozkbin1mgi6asAzNPLHT9L8DARouxru7QvYYPdyQNv
 7bpFuooiHuop+lKPyKeL6lm+rMoaqwjbpX8E9xJ6Mo/YqNM/DEWoxavhkhDSRBhMJC
 pj+eXp7v4OcI93xny8RKcc0LX9n9PTsK84ePN58IANigkwXeS87auXLynEeylGkZkd
 7IPNKVme7NDk18QevHdqjMJTD5MgK3KunBypzWoAV2x8CYbHmjLYAQ1w8Rig6026+9
 Lkr6VRegHkCj8JvpkZVeExODRJEgmfWT6foCLqj3imKVAkZNe4PX0O/cFSR6NKYeEr
 G171bfPtyZdHQ==
Date: Tue, 19 Aug 2025 09:34:45 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH v2 0/3] drm/i915/gt: Relocate context-specific workarounds
Message-ID: <lfzdiqboyy4q7dnmqorx3d7idzpe36oiqxtocyycxuzuu4acxq@2jrismdndoi2>
References: <cover.1754902406.git.sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1754902406.git.sebastian.brzezinka@intel.com>
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

On Mon, Aug 11, 2025 at 09:12:23AM +0000, Sebastian Brzezinka wrote:
> This series cleans up the placement of several context-specific workarounds
> in the i915 driver by moving them from rcs_engine_wa_init() to the
> appropriate *_ctx_workarounds_init() functions. This improves clarity and
> ensures that platform-specific workarounds are applied during context
> initialization, as intended.
>  
> It also aligns with the hardware documentation, which mandates that certain
> CACHE_MODE_0 and CACHE_MODE_1 register settings be applied during context
> initialization to ensure correct GPU behavior.
>  
> If some workarounds remain in rcs_engine_wa_init(), it's due to issues
> encountered while attempting to move them, such as the workaround not
> sticking when applied in context, or other platform-specific constraints
> that require further investigation.
> 
> v1 -> v2:
> 	- clarify commit message
>  
>  Sebastian Brzezinka (3):
>   drm/i915/gt: Relocate compression repacking WA for JSL/EHL
>   drm/i915/gt: Relocate Gen7 context-specific workarounds
>   drm/i915/gt: Relocate Gen6 context-specific workaround

I forgot to notify you that I applied this series to
drm-intel-gt-next.

Andi
