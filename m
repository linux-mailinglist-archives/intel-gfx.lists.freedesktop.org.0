Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0782C1EEB02
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 21:19:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DAC6E584;
	Thu,  4 Jun 2020 19:19:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A129B6E584
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 19:19:52 +0000 (UTC)
IronPort-SDR: cvF0iSU+q7jj2IeLbvYdGoT42Dcl9Jr5i1YMyA8BBTM9eY9pA6uHSVzIHChZs4Or/OpN7+cfTQ
 XFmFsZuqdGZw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:19:51 -0700
IronPort-SDR: Ght3SC44ZWgvgBRTkZMenJW27KTJDLFQHFYl1+k5pg0HQSd36n6ikQsh2pyoAgxj4kCtU8azxL
 0wWb8eN+2CbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="294439578"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com)
 ([10.165.21.211])
 by fmsmga004.fm.intel.com with ESMTP; 04 Jun 2020 12:19:51 -0700
Date: Thu, 4 Jun 2020 12:20:39 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20200604192039.GD3922@intel.com>
References: <20200604002359.17128-1-manasi.d.navare@intel.com>
 <20200604152543.GU6112@intel.com> <20200604183530.GB3922@intel.com>
 <20200604183819.GD6112@intel.com> <20200604185223.GC3922@intel.com>
 <20200604185824.GG6112@intel.com> <20200604190140.GH6112@intel.com>
 <20200604190858.GE15427@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604190858.GE15427@ideak-desk.fi.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 04, 2020 at 10:08:58PM +0300, Imre Deak wrote:
> On Thu, Jun 04, 2020 at 10:01:40PM +0300, Ville Syrj=E4l=E4 wrote:
> > [...]
> > > > Then we get this hpd, in this case if we dont reset the param to ma=
x values, prev triggered modeset continues
> > > > with fallback values but since connector probe doesnt happen again =
through IGT, it tries the same mode
> > > > with fallback values and return encoder config failure.
> > > =

> > > If the link training failed then clearly the sink didn't like us anym=
ore
> > > anyway. So feels like resetting these here is just shifting some race
> > > window around a bit, but it could still fail if the sink still doesn't
> > > like us.
> > > =

> > > Would be good if someone was able to figure out why the sink goes bad=
 in
> > > the first place.
> > =

> > Oh, and don't we now have Imre's "weird hpd happened in the middle of
> > the test, don't trust the results" thing in igt?
> =

> An LG and IIyama monitor this happens on disconnect and reconnect after
> waking from an idle state when modesetting them, not sure if it's the
> same case.

Well in this case, it happens just after link training failure due to some =
AUX timeouts
then looks like the panel detects that the link was not enabled and sends t=
his HPD
which puts us into connector status changing from connected to disconnected.

But in IGT, we dont get any uevent so we dont reprobe and continue with the=
 next
igt_display_commit. =

So should we in IGT in kms_atomic_transitions, plane-all-modeset-transition=
s subtest,
should we check the connector status everytime before back to back commit c=
alls?

Like I think in real use case, after a link failure the userspace would get=
 a uevent and
respond to it by reprobing a connector, but we dont do that in IGT so these
random link failures cause issues like in here.

Manasi

> =

> --Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
