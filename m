Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A043265F93
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Sep 2020 14:31:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 307596EA19;
	Fri, 11 Sep 2020 12:31:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B29F06EA19
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Sep 2020 12:31:32 +0000 (UTC)
IronPort-SDR: ZqvC03r2osGHqowkiJNvbbC0f6kCxKkP9ZSxrKJjMLZfU57u7EgFw/H4rMgaLsAzzRVSZ1WHGI
 h9vkwxpjF+6A==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138261112"
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="138261112"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2020 05:31:32 -0700
IronPort-SDR: xEK9ur+3f1GgI/BKAAQpUh55jIpMnSa5Cw5b1jlEwUT3FBfMGqMtgno/B4HqIPhG5JC48/UxnJ
 e51+fTWDlVLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,415,1592895600"; d="scan'208";a="286882899"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 11 Sep 2020 05:31:29 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Sep 2020 15:31:28 +0300
Date: Fri, 11 Sep 2020 15:31:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20200911123128.GG6112@intel.com>
References: <CAPM=9twVqXMW17Pw11W09D9+tn+r676yb7R3FxwpkMYrTEtS1A@mail.gmail.com>
 <f42a12f4-9c43-bfe1-20b6-f42b729d633f@intel.com>
 <159982722697.15554.10447903613389770525@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159982722697.15554.10447903613389770525@jlahtine-mobl.ger.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] dg1 flag for userspace to allocate contig resources
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Sep 11, 2020 at 03:27:07PM +0300, Joonas Lahtinen wrote:
> + Jani and Ville
> =

> Quoting Matthew Auld (2020-09-11 11:56:56)
> > On 11/09/2020 06:42, Dave Airlie wrote:
> > > I've just been looking at the current DG1 uapi, and I can't see any
> > > flag to allow userspace to upfront say it was a contiguous vram BO.
> > > =

> > > I think you'd really want this for scanout, since otherwise you'll
> > > have to migrate any non-contig to contig when it transitions to
> > > scanout, and cause an extra set of copies.
> > =

> > Hmm, why do we need physically contiguous memory for scanout? From hw =

> > pov it's seen through the GTT.
> =

> That's correct. On both discrete (and integrated) platforms the scan-out
> addresses on Intel GPUs are programmed to targer Global GTT managed by
> kernel. So no need to have the backing storage contiguous.

The only exception being the ye olde gen2/3 physical cursor stuff :)

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
