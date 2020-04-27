Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 391B01BB168
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 00:14:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CEEE6E0E5;
	Mon, 27 Apr 2020 22:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC9086E0E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Apr 2020 22:14:21 +0000 (UTC)
IronPort-SDR: 7VlYJ9pRY3ec/JcJUHe3NwowFQQj5uhO87rItMmwdBUxYTrcr3SRf22IpBkvUjiJ4l3AFET919
 Sou6FLMu60Xw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 15:14:21 -0700
IronPort-SDR: dm32M9NuhHv46qKPEjF6CnTznICfYBxRQtQPOeWMOhq/QCYq5X2YY31rrk71+93YcDPCdnZlfk
 VtwfvGjBuboA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,325,1583222400"; d="scan'208";a="275627867"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 27 Apr 2020 15:14:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 28 Apr 2020 01:14:16 +0300
Date: Tue, 28 Apr 2020 01:14:16 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20200427221416.GH6112@intel.com>
References: <20200427032232.4307-1-apodtele@gmail.com>
 <20200427140248.GG6112@intel.com>
 <158799689628.17035.14733867368309109586@build.alporthouse.com>
 <CAJU=AjVj6BPrqXgWbooTd2VSs_ZxoSbJR0LguxXWim2qu7Giug@mail.gmail.com>
 <158799871806.17035.9616562654177490399@build.alporthouse.com>
 <CAJU=AjX8Mhy-KG27r_iQOeuRZ3PtPp9F2TUvA7BL+nNsJEzp1Q@mail.gmail.com>
 <20200427170706.GB3697495@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200427170706.GB3697495@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 27, 2020 at 10:07:06AM -0700, Rodrigo Vivi wrote:
> On Mon, Apr 27, 2020 at 11:18:46AM -0400, Alexei Podtelezhnikov wrote:
> > On Mon, Apr 27, 2020 at 10:45 AM Chris Wilson <chris@chris-wilson.co.uk=
> wrote:
> > >
> > > Quoting Alexei Podtelezhnikov (2020-04-27 15:40:42)
> > > > >
> > > > > These do not exist. They are fake PCI-ID for Windows95 multi moni=
tor.
> > > > > The single device appears twice on the bus as a second function. =
We
> > > > > never had that restriction and could do multiple monitors on the =
single
> > > > > device.
> > > >
> > > > Windows 10 drivers list them, they do show up on lspci and I'll quo=
te
> > > > from Atom datasheet.
> > > > "This register is unique in Function 1 (the Function 0 DID is
> > > > separate). This difference in Device ID is necessary for allowing
> > > > distinct Plug and Play enumeration of function 1 when both function=
 0
> > > > and function 1 have the same class code."
> > > > Whatever this means.
> > >
> > > It means it's a hack for the Window's driver. There is no HW behind i=
t.
> > =

> > Intel talks about two separate engines (threads?)
> > https://www.intel.com/content/www/us/en/support/articles/000005880/grap=
hics-drivers/legacy-graphics.html
> > https://www.intel.com/content/www/us/en/support/articles/000005747/grap=
hics-drivers.html
> > Still not buying?
> =

> Hi Alexei, thanks for these.
> =

> With this information in mind it looks very wrong to simply add the PCI I=
D.
> =

> ADD2 device is not supported by i915. I don't believe it will be as simple
> as just adding the PCI ID here.

ADD2=3D=3Dsdvo, which is supported just fine. It has nothing to do
with the second fake PCI function though.

In practice adding the fake PCI IDs shouldn't do any harm as we reject
anything but function 0 in the driver probe. But it also means that
there is no point in adding them either.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
