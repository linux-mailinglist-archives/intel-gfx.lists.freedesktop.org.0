Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B4B1EEB52
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 21:49:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03C4E6E59D;
	Thu,  4 Jun 2020 19:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C1266E59D
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 19:49:41 +0000 (UTC)
IronPort-SDR: ewc7w2qLOng3BEKuaKuPDWo5Es7rNU+T+LkqvDJ5smGtCRE7BELbzVH3mDKstVQ0NrfAETBHWa
 8kAi5VB3iPnQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:49:40 -0700
IronPort-SDR: APRP92uimiKBM2yIa+hw57h4Whb12c8J5jd7hf2TuPlfH9wkfQ8+Q0QLC/BhsqM64kWNFf8YGd
 bD/VupEsj+mA==
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="445619692"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:49:38 -0700
Date: Thu, 4 Jun 2020 22:49:35 +0300
From: Imre Deak <imre.deak@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200604194935.GG15427@ideak-desk.fi.intel.com>
References: <20200604002359.17128-1-manasi.d.navare@intel.com>
 <20200604152543.GU6112@intel.com> <20200604183530.GB3922@intel.com>
 <20200604183819.GD6112@intel.com> <20200604185223.GC3922@intel.com>
 <20200604185824.GG6112@intel.com> <20200604190140.GH6112@intel.com>
 <20200604190858.GE15427@ideak-desk.fi.intel.com>
 <20200604192340.GF15427@ideak-desk.fi.intel.com>
 <20200604194020.GE3922@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604194020.GE3922@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Reset link params on connector
 disconnect
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 04, 2020 at 12:40:20PM -0700, Manasi Navare wrote:
> On Thu, Jun 04, 2020 at 10:23:40PM +0300, Imre Deak wrote:
> > On Thu, Jun 04, 2020 at 10:08:58PM +0300, Imre Deak wrote:
> > > On Thu, Jun 04, 2020 at 10:01:40PM +0300, Ville Syrj=E4l=E4 wrote:
> > > > [...]
> > > > > > Then we get this hpd, in this case if we dont reset the param t=
o max values, prev triggered modeset continues
> > > > > > with fallback values but since connector probe doesnt happen ag=
ain through IGT, it tries the same mode
> > > > > > with fallback values and return encoder config failure.
> > > > > =

> > > > > If the link training failed then clearly the sink didn't like us =
anymore
> > > > > anyway. So feels like resetting these here is just shifting some =
race
> > > > > window around a bit, but it could still fail if the sink still do=
esn't
> > > > > like us.
> > > > > =

> > > > > Would be good if someone was able to figure out why the sink goes=
 bad in
> > > > > the first place.
> > > > =

> > > > Oh, and don't we now have Imre's "weird hpd happened in the middle =
of
> > > > the test, don't trust the results" thing in igt?
> > > =

> > > An LG and IIyama monitor this happens on disconnect and reconnect aft=
er
> > > waking from an idle state when modesetting them, not sure if it's the
> > > same case.
> > =

> > Manasi, could you try if a modeset on the monitor after it has been
> > disabled for a while always results in a long HPD pulse a few seconds
> > after the modeset? If so does this also happen when you just modeset in
> > a sequence from one mode to the other not letting the monitor idle? The
> > same monitor should be also tested then with the above sequences on
> > older platforms if it behaves the same on those too.
> >
> =

> This test has been passing on older ICL platforms. But on TGL we do
> see these AUX E timeouts once in a while which recover on their own
> for the next modeset. Any idea why these spurious AUX timeouts and how
> I can possibly rootcause why these timeouts are seen only with AUX E?

If the monitor is in a disconnected state as you described, then AUX
will fail too. So you need to root cause why the monitor gets
disconnected. One possibility for that is what I described above. You
can't really make a conclusion on a test passing on ICL and not on TGL,
the timing can be different. You'd need to check if a disconnect happens
due to long HPD pulse when using the same monitor with the sequences I
described above, both on TGL and then also on ICL.

> =

> Manasi
>  =

> > > =

> > > --Imre
> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
