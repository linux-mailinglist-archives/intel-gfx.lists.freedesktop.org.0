Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 215C2492D7D
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 19:37:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 00E3010E1A3;
	Tue, 18 Jan 2022 18:37:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4097310E1A3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 18:37:33 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de
 [88.67.202.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id A88DA1EC056A;
 Tue, 18 Jan 2022 19:37:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1642531047;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=Tjdm+fJYHbI/r1mMtECH4HyAiyFRzU2NRFN0CGW0YZA=;
 b=VGyEgjtOeBCx3IEFbCxmJFZbIrZGwGsbKHj4HUXlJtbkLWUCrNC/AkV/UwTrfdH0DByvT5
 xOHGalQl3mCdDuClObLKW0kw9QmmiSQOZgWA1kBb1BO4gjL9Ba7MuJpCvsLO/kk+tSXLmb
 8Xnz7xjhim7Hjvn9QxfiscleqGwOZ/A=
Date: Tue, 18 Jan 2022 19:37:29 +0100
From: Borislav Petkov <bp@alien8.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Message-ID: <YecI6S9Cx5esqL+H@zn.tnic>
References: <Yeb4WKOFNDNbx6tH@zn.tnic>
 <20220118175853.GA881852@bhelgaas>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220118175853.GA881852@bhelgaas>
Subject: Re: [Intel-gfx] [PATCH v5 1/5] x86/quirks: Fix stolen detection
 with integrated + discrete GPU
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
Cc: x86@kernel.org, linux-pci@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 11:58:53AM -0600, Bjorn Helgaas wrote:
> Thanks for writing this down!  I do the same for PCI.  I suspect this
> is a pretty conservative style that would be acceptable tree-wide even
> if not required everywhere.

Yeah, although that is an uphill battle. People do love their personal
pronouns in commit messages even if it reads weird. And don't get
me wrong - I used to do it too but tglx started with this passive
formulation and now I see how it is a lot less intrusive and keeps the
focus on the issue at hand.

> I don't really care much one way or the other.  I think the simplest
> approach is to remove QFLAG_APPLY_ONCE from intel_graphics_quirks()
> and do nothing else, as I suggested here:
> 
>   https://lore.kernel.org/r/20220113000805.GA295089@bhelgaas
> 
> Unfortunately that didn't occur to me until I'd already suggested more
> complicated things that no longer seem worthwhile to me.
> 
> The static variable might be ugly, but it does seem to be what
> intel_graphics_quirks() wants -- a "do this at most once per system
> but we don't know exactly which device" situation.

I see.

Yeah, keeping it solely inside intel_graphics_quirks() and maybe with a
comment ontop, why it is done, is simple. I guess if more quirks need
this once-thing people might have to consider a more sensible scheme - I
was just objecting to sprinkling those static vars everywhere.

But your call. :)

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
