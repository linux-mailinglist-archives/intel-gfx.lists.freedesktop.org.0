Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD4C2D4784
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Dec 2020 18:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 855076EADD;
	Wed,  9 Dec 2020 17:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8289C89CAF;
 Tue,  8 Dec 2020 09:54:39 +0000 (UTC)
Date: Tue, 8 Dec 2020 11:54:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607421279;
 bh=XaAiKY++wv+M/pEQ1YMGklfnktr6P64K75FF//gLABU=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=QaB10O3rXRlsz3jL/My6bXO3XK0Nt8oWAtezsz2d6c8xEOp09HWJfMHLPyW47A9o5
 acD+9HQ8TOhBioB6ICPp8erOZNmu0tqsM0cSLPQxiCXt30p5namEDToHhhfxHygra1
 ijoy3TJghKlWlRBo20u+fHI8krrFK1qWWBjWmieU090Pk4QglIxsfAzFWEYBXo6zcD
 ozrHclftiywg7TvFA+UMAEyDRDuc6C2IzCtzf3bucwszo/yl7WU/r0nsxgd9l7kUBe
 gdFo1qPgEJgJM98lQ5pNlGd8UIwdL+KLpFLA8Y5mBgy/4jmooYgc9ga4jc+IWUTar2
 KJ9EghZZxxaTQ==
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>
Message-ID: <20201208095432.GA44672@kernel.org>
References: <20201205014340.148235-1-jsnitsel@redhat.com>
 <20201205014340.148235-3-jsnitsel@redhat.com>
 <875z5e99ez.fsf@nanos.tec.linutronix.de>
 <87o8j67h7u.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8j67h7u.fsf@nanos.tec.linutronix.de>
X-Mailman-Approved-At: Wed, 09 Dec 2020 17:11:02 +0000
Subject: Re: [Intel-gfx] [PATCH v3 2/4] drm/i915/pmu: Use kstat_irqs to get
 interrupt count
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
Cc: David Airlie <airlied@linux.ie>, Matthew Garrett <mjg59@google.com>,
 intel-gfx@lists.freedesktop.org, Jerry Snitselaar <jsnitsel@redhat.com>,
 linux-kernel@vger.kernel.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Peter Zijlstra <peterz@infradead.org>,
 dri-devel@lists.freedesktop.org, linux-integrity@vger.kernel.org,
 Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Dec 06, 2020 at 10:33:09PM +0100, Thomas Gleixner wrote:
> On Sun, Dec 06 2020 at 17:38, Thomas Gleixner wrote:
> > On Fri, Dec 04 2020 at 18:43, Jerry Snitselaar wrote:
> >> Now that kstat_irqs is exported, get rid of count_interrupts in
> >> i915_pmu.c
> >
> > May I ask why this has been merged in the first place?
> >
> > Nothing in a driver has ever to fiddle with the internals of an irq
> > descriptor. We have functions for properly accessing them. Just because
> > C allows to fiddle with everything is not a justification. If the
> > required function is not exported then adding the export with a proper
> > explanation is not asked too much.
> >
> > Also this lacks protection or at least a comment why this can be called
> > safely and is not subject to a concurrent removal of the irq descriptor.
> > The same problem exists when calling kstat_irqs(). It's even documented
> > at the top of the function.
> 
> And as pointed out vs. that TPM thing this really could have been a
> trivial
> 
>     i915->irqs++;
> 
> in the interrupt handler and a read of that instead of iterating over
> all possible cpus and summing it up. Oh well...

I'm fine with that. 

> Thanks,
> 
>         tglx

/Jarkko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
