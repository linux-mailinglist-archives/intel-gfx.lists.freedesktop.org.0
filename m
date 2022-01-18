Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE021492C4C
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jan 2022 18:26:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D14D210E35F;
	Tue, 18 Jan 2022 17:26:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7367110E35F
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jan 2022 17:26:52 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de
 [88.67.202.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 347CD1EC018C;
 Tue, 18 Jan 2022 18:26:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1642526806;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=CWaM8oIp7o2Aaev/wro+HXQnt9heh/Qc8Sja6PGiC6I=;
 b=Oj2BAifzOwJW2z2oqt8iF5j5YA6Q9zR7oT0UASVq0337uvHudzyu1rba49S7MNCbs3ZE3S
 ah04gGzTqruJ3yc2e/3P+q2BWRYIePZWkaRGtNiH3NhfU7zVeVrShzvFmKrRStPq8/DkLP
 dpQdJ/QpipwyQvGl6KkTvL2GuK0Wa8A=
Date: Tue, 18 Jan 2022 18:26:48 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Yeb4WKOFNDNbx6tH@zn.tnic>
References: <20220114002843.2083382-1-lucas.demarchi@intel.com>
 <YeaLIs9t0jhovC28@zn.tnic>
 <20220118163656.fzzkwubgoe5gz36k@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20220118163656.fzzkwubgoe5gz36k@ldmartin-desk2>
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
Cc: Dave Hansen <dave.hansen@linux.intel.com>, linux-pci@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, x86@kernel.org, stable@vger.kernel.org,
 Ingo Molnar <mingo@redhat.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 18, 2022 at 08:36:56AM -0800, Lucas De Marchi wrote:
> I had the impression the subject/title should be imperative, with it
> more relaxed in the body. It seems we have one more difference among
> subsystems and I will adapt on next submissions to x86.

We have written it down properly, in case it explains it better:

"The tip tree maintainers set value on following these rules, especially
on the request to write changelogs in imperative mood and not
impersonating code or the execution of it. This is not just a whim of
the maintainers. Changelogs written in abstract words are more precise
and tend to be less confusing than those written in the form of novels."

from Documentation/process/maintainer-tip.rst

> > So I wonder: why can't you simply pass in a static struct chipset *
> > pointer into the early_qrk[i].f function and in there you can set
> > QFLAG_APPLIED or so, so that you can mark that the quirk is applied by
> > using the nice, per-quirk flags someone has already added instead of
> > this ugly static variable?
> 
> It seems you prefer v1. See 20211218061313.100571-1-lucas.demarchi@intel.com

I do?

I don't see there:

	early_qrk[i].f(&early_qrk[i], num, slot, func)

so that the ->f callback can set the flags. Or at least the flags passed
in.

If it is not clear what I mean, pls say so and I'll try to produce an
example diff ontop.

> Although in the review Bjorn suggested just splitting the commit, it was
> also mentioned that the PCI subsystem has no such logic in its
> equivalent pci_do_fixups(): a quirk/fixup needing that should instead
> use a static local.

Why?

There's perfectly nice ->flags there for exactly stuff like that. static
vars are ugly and should be avoided if possible.

> What is special about patch 3?

Nothing special. It is just ugly.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
