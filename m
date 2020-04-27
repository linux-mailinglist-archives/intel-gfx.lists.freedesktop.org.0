Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E5A1BAAC4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2020 19:07:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 154E36E342;
	Mon, 27 Apr 2020 17:07:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA2996E342
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 17:07:50 +0000 (UTC)
IronPort-SDR: B4nFe13ctVu4SK6N3pg2pRNGwrBKlNqgQCxSXpTN2EOBjchMgDp93lUXrcXD0ycqxsDRegsS1p
 +O1xVoxnYW9A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 10:07:50 -0700
IronPort-SDR: ru8y6koDooEZl6njh7CRx9xtm4i0nDeN66BfF0h0zF9mEGzQdesYszgwjUJyUx9X3FpJpe0iMM
 iaJsj+NgcU+A==
X-IronPort-AV: E=Sophos;i="5.73,324,1583222400"; d="scan'208";a="293595341"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.202])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 10:07:50 -0700
Date: Mon, 27 Apr 2020 10:07:06 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Alexei Podtelezhnikov <apodtele@gmail.com>
Message-ID: <20200427170706.GB3697495@intel.com>
References: <20200427032232.4307-1-apodtele@gmail.com>
 <20200427140248.GG6112@intel.com>
 <158799689628.17035.14733867368309109586@build.alporthouse.com>
 <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
 <158799871806.17035.9616562654177490399@build.alporthouse.com>
 <CAJU=AjX8Mhy-KG27r_iQOeuRZ3PtPp9F2TUvA7BL+nNsJEzp1Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJU=AjX8Mhy-KG27r_iQOeuRZ3PtPp9F2TUvA7BL+nNsJEzp1Q@mail.gmail.com>
Subject: Re: [Intel-gfx] [patch] PCI ID review
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 11:18:46AM -0400, Alexei Podtelezhnikov wrote:
> On Mon, Apr 27, 2020 at 10:45 AM Chris Wilson <chris@chris-wilson.co.uk> wrote:
> >
> > Quoting Alexei Podtelezhnikov (2020-04-27 15:40:42)
> > > >
> > > > These do not exist. They are fake PCI-ID for Windows95 multi monitor.
> > > > The single device appears twice on the bus as a second function. We
> > > > never had that restriction and could do multiple monitors on the single
> > > > device.
> > >
> > > Windows 10 drivers list them, they do show up on lspci and I'll quote
> > > from Atom datasheet.
> > > "This register is unique in Function 1 (the Function 0 DID is
> > > separate). This difference in Device ID is necessary for allowing
> > > distinct Plug and Play enumeration of function 1 when both function 0
> > > and function 1 have the same class code."
> > > Whatever this means.
> >
> > It means it's a hack for the Window's driver. There is no HW behind it.
> 
> Intel talks about two separate engines (threads?)
> https://www.intel.com/content/www/us/en/support/articles/000005880/graphics-drivers/legacy-graphics.html
> https://www.intel.com/content/www/us/en/support/articles/000005747/graphics-drivers.html
> Still not buying?

Hi Alexei, thanks for these.

With this information in mind it looks very wrong to simply add the PCI ID.

ADD2 device is not supported by i915. I don't believe it will be as simple
as just adding the PCI ID here.

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
