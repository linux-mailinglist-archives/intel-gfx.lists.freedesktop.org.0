Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179188A975
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Mar 2024 17:34:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F25EC10E14E;
	Mon, 25 Mar 2024 16:34:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (4096-bit key; unprotected) header.d=alien8.de header.i=@alien8.de header.b="X+JgVXgo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.alien8.de (mail.alien8.de [65.109.113.108])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42FE510E9A9
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Mar 2024 16:34:03 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTP id C08B540E02A5; 
 Mon, 25 Mar 2024 16:34:00 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at mail.alien8.de
Authentication-Results: mail.alien8.de (amavisd-new); dkim=pass (4096-bit key)
 header.d=alien8.de
Received: from mail.alien8.de ([127.0.0.1])
 by localhost (mail.alien8.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id wiJf6WFNVAJy; Mon, 25 Mar 2024 16:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=alien8;
 t=1711384437; bh=HXMuRH0/0L3hy88yC35JI4AqWxDy4+d9cctRzhY/F6k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X+JgVXgoZM+fjCWf+TsjCGUjfdlLy/98Zjui34Pao8XB3Mw/uNWb41KhZNGT4PsOJ
 PM/v0mhvtefmc6RHemcOG99qgnJo1TaebZEmpG73Wm0uGXHRzt60N85JHNsPCF4bsf
 kwliCdlLmEEOl0lx22SHEl5kLbbfmpalq6zaLYMoChTOsIu+nyrsw4r7YbEtELdhur
 p356DfAEh6DxSmQbqq1eAHwgITAWXcrcScxNWp06E2PRxPzVccsijzIEDB5XKplg59
 AMvRQiIDMBiKdCiSCjgofq+ZTeWl5UxFsXPATttRR93uX52EBFi+pWVf+A9aXkj+1h
 Vs5XlDBMgWSbJzEw82wAgslVIVUywSE8v/yJLJNHlG+oPDauSzwKeo+cJ94KXfavwz
 TFgaEvzt9U0GVGGSSHqHbk7+gshzQIEiE6p8fJ5AtF8TQhXB3uC2/zACOAiV8eRaUA
 aIPgcRuVWTa6S2rRovdtxc2nr3/8z8exAdDTcz7VNwpZBduj57qf635jeZexOGK+9y
 +5GqVBQIcr51R7E07GNA5/uil8z5nM4bRLxEKUXto9bhSxZXiAe6Pw2v11sMJ6bAan
 Xx01R+9LQqc7paA4KnzJdy1X7wc1D2oqLtoS33oWje/2S+d0NonTBmuNUxQkPQBqoM
 TZvEEnLvaG5g2PEbha0bWjV8=
Received: from zn.tnic (p5de8ecf7.dip0.t-ipconnect.de [93.232.236.247])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest
 SHA256) (No client certificate requested)
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 1407540E02A2;
 Mon, 25 Mar 2024 16:33:48 +0000 (UTC)
Date: Mon, 25 Mar 2024 17:33:42 +0100
From: Borislav Petkov <bp@alien8.de>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 lkml <linux-kernel@vger.kernel.org>
Subject: Re: BUG: sleeping function called from invalid context at
 drivers/gpu/drm/i915/gem/i915_gem_pages.c:526
Message-ID: <20240325163342.GEZgGnZpROSN4euuLb@fat_crate.local>
References: <20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local>
 <87jzmqjir5.fsf@intel.com>
 <20240227105356.GBZd2_RL9hjC_LupZB@fat_crate.local>
 <87h6hujhrz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87h6hujhrz.fsf@intel.com>
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

On Tue, Feb 27, 2024 at 12:58:08PM +0200, Jani Nikula wrote:
> Let's see what Ville says, but in the end bisection might be the
> quickest way to find the regression. Though I understand it can be
> tedious for you personally.

That still fires with 6.-9-rc1. Does Ville have any suggestions or
should I bisect?

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
