Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DABAF2D0A5A
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 06:50:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F354189F3B;
	Mon,  7 Dec 2020 05:50:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 627916E3F7;
 Sat,  5 Dec 2020 10:40:02 +0000 (UTC)
Date: Sat, 5 Dec 2020 12:39:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1607164801;
 bh=ya75zup16uvciko51cfo9cxYRN4wjQt4zz/di3M+HUc=;
 h=From:To:Cc:Subject:References:In-Reply-To:From;
 b=gxcHQBhbkXZmRYCTdX6D6sLKNGhthkg1RD/jj+nsJCoMq5D9vhBnQhpqITLSzPOFR
 6P16fGAsvC9mpyjb0d0uN1zi4UWn8aC6SPqONPHj0jvFDTDCLmlNPWSNSVqcz2chXe
 goJtuoMtBKAFRl7UgS1AqAh6haemykgGvkPApdgbz19JYKIiZuin7eBGAp+T2/UtQn
 xwPQb0b4/SsSRCwX6Adm5E0Le004HEZGFwGdoGHfsRQigIUdh2D4hsLR3qBa9NB0Nm
 YyyD3AuUKNfzu78kkGpgX3+PD3bJ81vxFE2/fCLKqXbPsL8jtaLMBF2rvVs0Gd9yQ6
 ruN5KUVa+XHOg==
From: Jarkko Sakkinen <jarkko@kernel.org>
To: Jerry Snitselaar <jsnitsel@redhat.com>
Message-ID: <20201205103954.GA17088@kernel.org>
References: <20201205014340.148235-1-jsnitsel@redhat.com>
 <20201205014340.148235-2-jsnitsel@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201205014340.148235-2-jsnitsel@redhat.com>
X-Mailman-Approved-At: Mon, 07 Dec 2020 05:50:24 +0000
Subject: Re: [Intel-gfx] [PATCH v3 1/4] irq: export kstat_irqs
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
Cc: Yunfeng Ye <yeyunfeng@huawei.com>, David Airlie <airlied@linux.ie>,
 Jiri Kosina <jkosina@suse.cz>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 James Bottomley <James.Bottomley@hansenpartnership.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, Jarkko Sakkinen <jarkko@kernel.org>,
 Matthew Garrett <mjg59@google.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-integrity@vger.kernel.org, Peter Huewe <peterhuewe@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 04, 2020 at 06:43:37PM -0700, Jerry Snitselaar wrote:
> To try and detect potential interrupt storms that
> have been occurring with tpm_tis devices it was suggested
> to use kstat_irqs() to get the number of interrupts.
> Since tpm_tis can be built as a module it needs kstat_irqs
> exported.

I think you should also have a paragraph explicitly stating that
i915_pmu.c contains a duplicate of kstat_irqs() because it is not
exported as of today. It adds a lot more weight to this given that
there is already existing mainline usage (kind of).

> 
> Reported-by: kernel test robot <lkp@intel.com>

I'm not sure if this makes much sense.

> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Jarkko Sakkinen <jarkko@kernel.org>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Peter Huewe <peterhuewe@gmx.de>
> Cc: James Bottomley <James.Bottomley@HansenPartnership.com>
> Cc: Matthew Garrett <mjg59@google.com>
> Cc: Hans de Goede <hdegoede@redhat.com>
> Signed-off-by: Jerry Snitselaar <jsnitsel@redhat.com>

/Jarkko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
