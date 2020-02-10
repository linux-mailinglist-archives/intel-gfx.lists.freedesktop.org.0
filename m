Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C53157F4C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2020 17:00:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D785D89E26;
	Mon, 10 Feb 2020 16:00:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3BD189E26
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2020 16:00:13 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Feb 2020 08:00:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,425,1574150400"; d="scan'208";a="433360066"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
 by fmsmga006.fm.intel.com with ESMTP; 10 Feb 2020 08:00:12 -0800
Received: from ahiler-desk1.fi.intel.com (10.237.68.143) by
 IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 10 Feb 2020 16:00:11 +0000
Date: Mon, 10 Feb 2020 18:00:09 +0200
From: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200210160009.qazm6krixf7nhtca@ahiler-desk1.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Patchwork-Hint: comment
References: <20200205082959.31317-1-jani.nikula@intel.com>
 <87imke1xvt.fsf@intel.com>
 <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a8c9aee482db2d51630094ea07d7821b27a8d567.camel@intel.com>
X-Originating-IP: [10.237.68.143]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mst: fix pipe and vblank enable
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Peres,
 Martin" <martin.peres@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Feb 10, 2020 at 01:43:47PM +0200, Lisovskiy, Stanislav wrote:
> On Mon, 2020-02-10 at 13:32 +0200, Jani Nikula wrote:
> > On Wed, 05 Feb 2020, Jani Nikula <jani.nikula@intel.com> wrote:
> > > Commit 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> > > encoders on DDI platforms") pushed pipe and vblank enable to
> > > encoders on
> > > DDI platforms, however it missed the DP MST encoder. Fix it.
> > > 
> > > Fixes: 21fd23ac222f ("drm/i915: move pipe, pch and vblank enable to
> > > encoders on DDI platforms")
> > > Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > > Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> > > Reported-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> > 
> > Thanks for the reviews and testing, pushed to dinq.
> > 
> > I don't usually cut corners, but I've made an exception and pushed
> > this without full IGT results.
> > 
> > It's been 5 days since the patch was posted, the sharded run has
> > fallen between the cracks, and the queue is currently about three
> > days. IMHO it's intolerable for any patch, but especially so for a
> > regression fix that was posted within hours of the bug report.
> 
> Absolutely agree, since we already had a regression, it's pointless
> now to wait longer with such a trivial fix. We are anyway in a bad
> situation now, checking also some other MST issues and having to apply
> this patch manually first in order to get at least this issue ruled
> out.
> 
> Stan

As of why it was silently dropped:

We poke patchwork to check whether there is a newer version of a given
series. If there is we won't waste time on running the older one through
shards.

This bit looks more or less like this:

  RES="$(curl -q https://patchwork.freedesktop.org/api/1.0/series/$SER/revisions/$(( $REV + 1 ))/ 2>/dev/null)"
  [[ "$RES" = "" || "$RES" = *"ot found"* ]] || exit 1

If there is a network issue and curl exits with non-zero exit status
this aborts the shards because of `set -e`, which is what has happened:

  +++ curl -q https://patchwork.freedesktop.org/api/1.0/series/73006/revisions/2/
  ++ RES=
  Build step 'Execute shell' marked build as failure

So a network issue + not robust enough bash script is the cause.

I have fixed the logic there to account for this and in case of network
errors we just go ahead with testing. Thanks for rising this up.


As of the 3 days worth of queued shards:

I agree that this is unacceptable, but we can do only so much from the
CI/infra side. The time has been creeping up steadily over the last year
or so and the machines are not getting any faster.

We are currently sitting on ~58min for a run and Tomi has already done a
lot of in terms of optimization. The overhead is as minimal as it can be
and there is some logic tracking the test execution times and doing
random but balanced test distribution.

We are also considering introducing hard limits on subtest execution
times and hunting down the tests that are exceeding this.

On IGT side there was a recent introduction of dynamic subtest which
should help with time wasted on some of the skips, and I am working on a
more reliable skips for multiple mode testing (currently one subtest =
one execv) but without optimizing the test cases we won't shave off much
time.

-- 
Cheers,
Arek
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
