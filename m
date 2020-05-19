Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9061D958D
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 13:48:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECFC6E316;
	Tue, 19 May 2020 11:47:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA8B06E316
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 11:47:56 +0000 (UTC)
IronPort-SDR: 10GoMOre/Iix87OWFjJWBnUqFnQCWdArF8WSrq/mWBvncIcpH6CAn56/XYqGC0zBZZVA/MteXt
 XPKLZuFdpSew==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 04:47:56 -0700
IronPort-SDR: VxJAJbOizoXTKtcUWaUX89pwgq1sITNWUkwPDOa9Zz9QtArwGz1tGmL3NGNc08zJTHa/TFnJwW
 8KQygOzu1HoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="267860750"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 19 May 2020 04:47:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 19 May 2020 14:47:53 +0300
Date: Tue, 19 May 2020 14:47:53 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200519114753.GW6112@intel.com>
References: <20200516132444.24007-1-chris@chris-wilson.co.uk>
 <20200516133102.32167-1-chris@chris-wilson.co.uk>
 <20200519104245.GV6112@intel.com>
 <158988521466.7442.3791653477981759222@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <158988521466.7442.3791653477981759222@build.alporthouse.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Measure CS_TIMESTAMP
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

On Tue, May 19, 2020 at 11:46:54AM +0100, Chris Wilson wrote:
> Quoting Ville Syrj=E4l=E4 (2020-05-19 11:42:45)
> > On Sat, May 16, 2020 at 02:31:02PM +0100, Chris Wilson wrote:
> > > Count the number of CS_TIMESTAMP ticks and check that it matches our
> > > expectations.
> > =

> > Looks ok for everything except g4x/ilk. Those would need something
> > like
> > https://patchwork.freedesktop.org/patch/355944/?series=3D74145&rev=3D1
> > + read TIMESTAMP_UDW instead of TIMESTAMP.
> > =

> > bw/cl still needs
> > https://patchwork.freedesktop.org/patch/355946/?series=3D74145&rev=3D1
> > though the test seems a bit flaky on my cl. Sometimes the cycle count
> > comes up short. Never seen it exceed the expected value, but it can =

> > come up significantly short. And curiously it does seem to have a
> > tendency to come out as roughly some nice fraction (seen at least
> > 1/2 and 1/4 quite a few times). Dunno if the tick rate actually
> > changes due to some unknown circumstances, or if the counter just
> > updates somehow lazily. Certainly polling the counter over a longer
> > period does show it to tick at the expected rate.
> =

> Any guestimate at how short a period is long enough?

After a bit more debugging it looks like the read just sometimes returns
a stale value:
[ 5248.749794] rcs0: 0: TIMESTAMP 75->123 (48) cycles [1013808ns]
[ 5248.749817] rcs0: 1: TIMESTAMP 202859->202859 (0) cycles [1031688ns]
[ 5248.749818] rcs0: 2: TIMESTAMP 409179->613179 (204000) cycles [1020234ns]
[ 5248.749820] rcs0: 3: TIMESTAMP 613227->825083 (211856) cycles [1059623ns]
[ 5248.749821] rcs0: 4: TIMESTAMP 825163->1036491 (211328) cycles [1057109n=
s]

So far it looks like doing a double read is sufficient to get
an up to date value.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
