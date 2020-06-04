Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D471EEADE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jun 2020 21:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACC936E578;
	Thu,  4 Jun 2020 19:09:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC4086E578
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jun 2020 19:09:03 +0000 (UTC)
IronPort-SDR: KxPTlKreZokH/W9f4TZpJWt/jIEcFN8YJ+lCB+RL+yR4aBoLKjiYF0UU2S6OGBiEkQD5aNWH9s
 JIze+4ryiGrQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:09:03 -0700
IronPort-SDR: E3b2x24SY0BkJ+dXlULosJ3v9eYAahE4n2o/QRRuoNzwOt5zhrF3qCF0yor0FXg1iaD7i00FWo
 p2VynUIiGyPQ==
X-IronPort-AV: E=Sophos;i="5.73,472,1583222400"; d="scan'208";a="417013161"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2020 12:09:01 -0700
Date: Thu, 4 Jun 2020 22:08:58 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200604190858.GE15427@ideak-desk.fi.intel.com>
References: <20200604002359.17128-1-manasi.d.navare@intel.com>
 <20200604152543.GU6112@intel.com> <20200604183530.GB3922@intel.com>
 <20200604183819.GD6112@intel.com> <20200604185223.GC3922@intel.com>
 <20200604185824.GG6112@intel.com> <20200604190140.GH6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604190140.GH6112@intel.com>
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

On Thu, Jun 04, 2020 at 10:01:40PM +0300, Ville Syrj=E4l=E4 wrote:
> [...]
> > > Then we get this hpd, in this case if we dont reset the param to max =
values, prev triggered modeset continues
> > > with fallback values but since connector probe doesnt happen again th=
rough IGT, it tries the same mode
> > > with fallback values and return encoder config failure.
> > =

> > If the link training failed then clearly the sink didn't like us anymore
> > anyway. So feels like resetting these here is just shifting some race
> > window around a bit, but it could still fail if the sink still doesn't
> > like us.
> > =

> > Would be good if someone was able to figure out why the sink goes bad in
> > the first place.
> =

> Oh, and don't we now have Imre's "weird hpd happened in the middle of
> the test, don't trust the results" thing in igt?

An LG and IIyama monitor this happens on disconnect and reconnect after
waking from an idle state when modesetting them, not sure if it's the
same case.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
