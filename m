Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 120E474CF87
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 10:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7386F10E0FC;
	Mon, 10 Jul 2023 08:11:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 320 seconds by postgrey-1.36 at gabe;
 Mon, 10 Jul 2023 08:11:06 UTC
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C2110E21B
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 08:11:06 +0000 (UTC)
Received: from mail.alien8.de (mail.alien8.de [65.109.113.108])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id C62571EC0622;
 Mon, 10 Jul 2023 10:05:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1688976339;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=PKMVLHHTljB+aZKz/kMixqd9D2fBGzHr1sfuZuXFjGU=;
 b=RQOnRcDtgWAzCrw+tEPE5SZ6bjYrrfiU12DMy6fqc4mcNDHmjt9xql5e+J6XW48Jhd57BY
 sAodBYyu8J8Wnb40vnAJS23WkX5f1snH7txMC+S90wt1f7y7qhKTLvfNg/yoo1X3hGA1hL
 llh8wqk9I/gNuC59xa8WnIpe+J46dT4=
X-Virus-Scanned: Debian amavisd-new at mail.alien8.de
Authentication-Results: mail.alien8.de (amavisd-new); dkim=pass (4096-bit key)
 header.d=alien8.de
Received: from mail.alien8.de ([127.0.0.1])
 by localhost (mail.alien8.de [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id TxrFKHtT6B2t; Mon, 10 Jul 2023 08:05:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=alien8;
 t=1688976336; bh=PKMVLHHTljB+aZKz/kMixqd9D2fBGzHr1sfuZuXFjGU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Lt/bvoGC2ELpTZkcrWi4sDb181XGuUdlZ2qkNkFVZF9HFmMq5a/I0dI8yz5cRAkdc
 lsHk/VC/a1g4+dpLE5eokpA54BwHZeNo5m6GT3wPTZBsItz/FtRliL3LH96kimTy1g
 sBoK/AlYB+a/9i5x03co3axmNCrMiOwXl8WaaXnpNPKNbReo0VwHzL1RFPtpkLxMJU
 x4SnBq1oDCbdRnavmTaD0K62fB6ia2dtWEs8uMn3BNmwLUZsAnXU+GeCLUUX8yv9gZ
 Y0rB8ZjO8n2bwVmb4DOAHb7TLZThjVW4prGfqrkNgOi9qUZRNH+mrlYU2LFqU57XkC
 NlvR/4gH3g61ctE+r/sMnTy2CL1UFgxz/dU+ZL6bJ/jg0PkLj04+jyPdoaDlo1v+jj
 6fTu1G5oBU0p3fVvG59vrLvZNfwN8kCHUsiF10IAZYvW8V2BWkVutxG+19nNtOacNg
 uXwS4OyyUNrrMSG8wWz6ASr5mtjyKdDC1cF+YJhi6XKMUmsKFdWKPbKm1W8RQJ+xka
 uOFOF/oMuUIX+Shf6OgFaC1lRt8f9wCsMO5+o8HNwaTci1dp8KPga0TKx6HSRywzvo
 GCvKNJM0+yh8suIgRHaFShGDJrveibT2QePA0WAdqx7H22ds7X194oadfufz06LVEW
 CdXxDmBROZ/JzHxfSMo7kyn4=
Received: from zn.tnic (pd9530d32.dip0.t-ipconnect.de [217.83.13.50])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest
 SHA256) (No client certificate requested)
 by mail.alien8.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id D5E4E40E00F4;
 Mon, 10 Jul 2023 08:05:24 +0000 (UTC)
Date: Mon, 10 Jul 2023 10:05:19 +0200
From: Borislav Petkov <bp@alien8.de>
To: Dave Hansen <dave.hansen@linux.intel.com>
Message-ID: <20230710080519.GAZKu7v2N/eK/jYXPL@fat_crate.local>
References: <20230710073613.8006-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20230710073613.8006-2-janusz.krzysztofik@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 RESEND] x86/mm: Fix PAT bit missing from
 page protection modify mask
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
Cc: Juergen Gross <jgross@suse.com>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org,
 Marek =?utf-8?Q?Marczykowski-G=C3=B3recki?= <marmarek@invisiblethingslab.com>,
 linux-kernel@vger.kernel.org, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, "Edgecombe,
 Rick P" <rick.p.edgecombe@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jul 10, 2023 at 09:36:14AM +0200, Janusz Krzysztofik wrote:
> Assume that adding _PAGE_PAT to _PAGE_CHG_MASK doesn't break pte_modify()
> and its users, and go for it.  Also, add _PAGE_PAT_LARGE to

That's my only worry.

I'd suggest we queue this but not send it to Linus now. Instead, let it
cook in linux-next for the whole 6.5 release cycle so that it can get at
least *some* testing.

Because if we send it now and something else obscure breaks in a weird
way in his tree, then we'll have to scramble to fix that too and it'll
be one helluva mess.

Dave?

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
