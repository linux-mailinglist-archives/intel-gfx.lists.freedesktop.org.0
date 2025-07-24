Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 607DAB10B4A
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Jul 2025 15:24:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C16E410E285;
	Thu, 24 Jul 2025 13:24:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="FhKpYFWI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4082C10E285
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Jul 2025 13:24:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id EB55F44720;
 Thu, 24 Jul 2025 13:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 305B8C4CEED;
 Thu, 24 Jul 2025 13:24:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1753363451;
 bh=z485Q7RmhYujxUH2judGnuGPZsmJFrWVG+TfEXKtoas=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=FhKpYFWIVMnUdu7SHYkOWDkGjQEUdwith+W0rKFXPT2r/Bga+AyGNAzh8Bf1wl/Hb
 GETvJveyDi6xWprPHJ05XFRCX7XHFQ05IqegKJaPd5QY9IRsFKSTz8CML2Ns43AmLy
 vsHakBMkkr0VohAEXqbmbCkgchauJb/BgGdvYj+IlqRbIEC/rZwhF6Y8DWHhcXoVNr
 x+0G9/+KWXAcuhkbOnWCd24STA/9KU4D7+9Q23BqZlncnVXd0D2/xgBmVsamQYxcni
 CyRiZkT9kJz9O5ZVP0+KXlNWUbTlEQkno359LaRvyjP4HAcRwWSz1r/ZDmUGbpI/J4
 XgUiSwdzLpn5w==
Date: Thu, 24 Jul 2025 15:24:07 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Cc: intel-gfx@lists.freedesktop.org, andi.shyti@linux.intel.com, 
 krzysztof.karas@intel.com
Subject: Re: [PATCH v3 0/4] i915_gem_execbuffer.c minor improved
Message-ID: <kjbnfwyvjtt47qf4wxtw6ebc4ewc5cz4y6hcumg2wmkwll6zuj@ez24k7bjqudn>
References: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250718102752.684975-1-sebastian.brzezinka@intel.com>
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

> Sebastian Brzezinka (4):
>   drm/i915: Add braces around the else block in clflush_write32()
>   drm/i915: Replaced hardcoded value 4095 with PAGE_SIZE - 1
>   drm/i915: Replace empty conditional with continue in eb_relocate_vma()
>   drm/i915: Use dedicated return variable in eb_relocate_vma()

I merged patch 1 and 3 in drm-intel-gt-next.

Thanks,
Andi
