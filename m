Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 402BB47A8DC
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Dec 2021 12:40:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64273113E9A;
	Mon, 20 Dec 2021 11:40:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 400 seconds by postgrey-1.36 at gabe;
 Mon, 20 Dec 2021 11:40:09 UTC
Received: from mail.skyhub.de (mail.skyhub.de [IPv6:2a01:4f8:190:11c2::b:1457])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A170113E9A
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Dec 2021 11:40:09 +0000 (UTC)
Received: from zn.tnic (dslb-088-067-202-008.088.067.pools.vodafone-ip.de
 [88.67.202.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id E145C1EC04FB;
 Mon, 20 Dec 2021 12:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1640000003;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=jv+2cS0MSX4C7Q59qd+/K7GaVEGKkT4ISPl0b+0VegM=;
 b=DCNSfpXDKeCmT3FnkTTPZPy28zudgBGLDmHqkUkYreYcHaEbUXS9DFvafxTvn7LYQDrZd7
 lMjytgDAV+HLGvPLBzdzpiD2KfOdfrTC++p/LalN7L5QXYf/Fs0qrwxR+TYuTKTPTmy0+n
 RY10VAKFcNP89qsY5QjY3BEU/U7YS94=
Date: Mon, 20 Dec 2021 12:33:26 +0100
From: Borislav Petkov <bp@alien8.de>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <YcBqBgnRVgyzUqUE@zn.tnic>
References: <20211210051802.4063958-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87r1ab1huq.fsf@intel.com>
 <20211219084921.lgd47srpzepspdpv@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20211219084921.lgd47srpzepspdpv@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH V3] drm/i915/adl-n: Enable ADL-N platform
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
 Dave Hansen <dave.hansen@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Thomas Gleixner <tglx@linutronix.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 19, 2021 at 12:49:21AM -0800, Lucas De Marchi wrote:
> > I note not all such changes in git log have your acks recorded, though
> > most do. Do you want us to be more careful about Cc'ing you for acks on
> > PCI ID changes every time going forward?
> 
> That's what Borislav asked in
> https://lore.kernel.org/all/20200520093025.GD1457@zn.tnic/

Right, I guess in the interest of not holding you guys up, if the patch
is only a trivial oneliner like below adding a GPU generation to the
list of quirks, you can only Cc x86@kernel.org so that we're aware and
proceed with it further without our ACK.

More involved stuff would need normal review, ofc.

Thx.

> > > diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> > > index fd2d3ab38ebb..1ca3a56fdc2d 100644
> > > --- a/arch/x86/kernel/early-quirks.c
> > > +++ b/arch/x86/kernel/early-quirks.c
> > > @@ -554,6 +554,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
> > >  	INTEL_RKL_IDS(&gen11_early_ops),
> > >  	INTEL_ADLS_IDS(&gen11_early_ops),
> > >  	INTEL_ADLP_IDS(&gen11_early_ops),
> > > +	INTEL_ADLN_IDS(&gen11_early_ops),
> > >  	INTEL_RPLS_IDS(&gen11_early_ops),
> > >  };
> > > 

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
