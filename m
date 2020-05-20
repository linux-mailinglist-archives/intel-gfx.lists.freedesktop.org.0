Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E972C1DAEEB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 May 2020 11:38:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3017089F3B;
	Wed, 20 May 2020 09:38:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 463 seconds by postgrey-1.36 at gabe;
 Wed, 20 May 2020 09:38:19 UTC
Received: from mail.skyhub.de (mail.skyhub.de [5.9.137.197])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EDC89F3B
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 May 2020 09:38:19 +0000 (UTC)
Received: from zn.tnic (p200300ec2f0bab00d907527c3c1e360d.dip0.t-ipconnect.de
 [IPv6:2003:ec:2f0b:ab00:d907:527c:3c1e:360d])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id 6F3701EC032C;
 Wed, 20 May 2020 11:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alien8.de; s=dkim;
 t=1589967031;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:in-reply-to:in-reply-to:  references:references;
 bh=teHER3drpZC90YV39aV0JKoBgNp1orOkwIEOsr66nLA=;
 b=kQ8DtzJUg1v/fjf2FfUfjDuzC0tAMDIqK1AKZWVIHAJfzvTxLH85PT9mZ7UZlvEPHYul1s
 gje3F5/VhcVN+VoGjcW4SB/QBnBxb4q2X2tbU++u+CuU/Aiyq3WMf2CQSwSKp2pLBdYs2y
 HgHZvVHfNGsmY3Jev7HTOk9sW/79emM=
Date: Wed, 20 May 2020 11:30:25 +0200
From: Borislav Petkov <bp@alien8.de>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>
Message-ID: <20200520093025.GD1457@zn.tnic>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-3-matthew.d.roper@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073482C132A@ORSMSX108.amr.corp.intel.com>
 <CAKi4VA+wnY7eY-fLxcfQ1x2nsxg2=z7MRetOF02djtDDo3ENxQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKi4VA+wnY7eY-fLxcfQ1x2nsxg2=z7MRetOF02djtDDo3ENxQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 02/22] x86/gpu: add RKL stolen memory
 support
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 x86@kernel.org, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Borislav Petkov <bp@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, May 19, 2020 at 04:57:27PM -0700, Lucas De Marchi wrote:
> The following files are outside of i915 maintenance scope:
> arch/x86/kernel/early-quirks.c
> 
> Can we get an ack?

Acked-by: Borislav Petkov <bp@suse.de>

> Going forward, for simple changes like this, do you prefer to still
> ack on it or should we just apply to our tree?

Well, we are very quickly to give an ACK for trivial stuff like that
if we get CCed upfront on the patch. It keeps us aware of what's being
changed outside of tip.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
