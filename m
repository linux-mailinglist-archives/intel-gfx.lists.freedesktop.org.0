Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9201C37A654
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 14:10:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 968CC6EA26;
	Tue, 11 May 2021 12:10:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from letterbox.kde.org (letterbox.kde.org
 [IPv6:2001:41c9:1:41e::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 716376E4D7
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 18:06:44 +0000 (UTC)
Received: from xps.localnet (235.red-80-26-237.dynamicip.rima-tde.net
 [80.26.237.235]) (Authenticated sender: aacid)
 by letterbox.kde.org (Postfix) with ESMTPSA id 3A68A280320;
 Mon, 10 May 2021 19:06:40 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kde.org; s=users;
 t=1620670002; bh=xuJ1gjernDZo4OkddAl81wkTMdDclEw4CLq0Grg6Ssg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FUyLwWMggeNq7xDYm1SRJP7b8u+LyhfjHfF+1yM/Py0L3pTLlA6Z/W5QzEYJyMZYi
 8uY0zU9GVF/bhbCOQQAFWu//CfEc+E7MxWieYA0k3L7nXcx0xxFDVePPBbCN6Y+7ay
 6F9dNbBF0J6NgNAwtxf+4YU+oUbDsh+X3rzhIKuOlE4aEqieqv5JZA3b9UU+6AGTx/
 CynQNHarfcZ9eOxtLVAA9TxRE6PPsLgLQMgZZ0kBngczBdNul4C6cb3h0Q8Hu+Mcel
 Py2dIGtnBX0WscFWRBQdvsAhl3iDsoioveBlXiV5H224KN9Uyhw0oq5OxlGsshfWtK
 w8okmNuW0naWw==
From: Albert Astals Cid <aacid@kde.org>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 Emanuele Panigati <ilpanich@gmail.com>
Date: Mon, 10 May 2021 20:06:40 +0200
Message-ID: <3349345.6yYDney9BF@xps>
In-Reply-To: <CABpPkAEVbSUwoBqXDaKpckbfkq4-z=MWNC27JYOLki3FhN0PyA@mail.gmail.com>
References: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
 <X/yY3Tvk8gq+Eg8W@intel.com>
 <CABpPkAEVbSUwoBqXDaKpckbfkq4-z=MWNC27JYOLki3FhN0PyA@mail.gmail.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 11 May 2021 12:09:59 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org,
 Kai-Heng Feng <kai.heng.feng@canonical.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Yes, I also have the same.

I git bisected that and found this to be the cause, i started a new email t=
hread because i couldn't find this email ^_^

Cheers,
  Albert

El dilluns, 10 de maig de 2021, a les 10:07:33 (CEST), Emanuele Panigati va=
 escriure:
> Hi,
>   on my Dell XPS 15 9570 laptop I might have a regression with Arch Linux
> (kernel 5.12.2-arch1-1: during boot the laptop monitor goes black while
> external monitors still works...
> =

> =

> Panich
> =

> =

> Il giorno lun 11 gen 2021 alle ore 19:28 Ville Syrj=E4l=E4 <
> ville.syrjala@linux.intel.com> ha scritto:
> =

> > On Thu, Jan 07, 2021 at 08:20:25PM +0200, Ville Syrjala wrote:
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > Some new eDP panels don't like to operate at the max parameters, and
> > > instead we need to go for an optimal confiugration. That unfortunately
> > > doesn't work with older eDP panels which are generally only guaranteed
> > > to work at the max parameters.
> > >
> > > To solve these two conflicting requirements let's start with the opti=
mal
> > > setup, and if that fails we start again with the max parameters. The
> > > downside is probably an extra modeset when we switch strategies but
> > > I don't see a good way to avoid that.
> > >
> > > For a bit of history we first tried to go for the fast+narrow in
> > > commit 7769db588384 ("drm/i915/dp: optimize eDP 1.4+ link config
> > > fast and narrow"). but that had to be reverted due to regression
> > > on older panels in commit f11cb1c19ad0 ("drm/i915/dp: revert back
> > > to max link rate and lane count on eDP"). So now we try to get
> > > the best of both worlds by using both strategies.
> >
> > Pushed. Fingers crossed for no regressions...
> >
> > --
> > Ville Syrj=E4l=E4
> > Intel
> >
> =





_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
