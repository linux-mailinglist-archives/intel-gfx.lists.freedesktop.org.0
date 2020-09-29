Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AB5227D982
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Sep 2020 23:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 277FA6E1D7;
	Tue, 29 Sep 2020 21:01:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B27B6E1CF;
 Tue, 29 Sep 2020 21:01:47 +0000 (UTC)
IronPort-SDR: 1HZPEGG3Nh0EWvMrQ8R9kzYdgsRcvrltKTMelo16RsH7HiU2u2Jd1QrdmlZdu1QL4XetAUiCsr
 MVaxfImQUFjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9759"; a="159670480"
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="159670480"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:01:46 -0700
IronPort-SDR: 3y3hxNG837iKBHrtpVmPmwtpYnxUZuyzdnd78mzT/zxiC23dluy0F43zwvwf8RPmHNxE5YaL4K
 mF77vBotTbeA==
X-IronPort-AV: E=Sophos;i="5.77,319,1596524400"; d="scan'208";a="514024926"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2020 14:01:45 -0700
Date: Tue, 29 Sep 2020 14:01:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20200929210144.GA2214475@mdroper-desk1.amr.corp.intel.com>
References: <20200929121127.254086-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <d235e6f34182e327d8bb46383f6c3ef518b5fc23.camel@intel.com>
 <20200929200201.GH6112@intel.com>
 <a4a075597c7d3e65b25598ab696a59eccbd2a069.camel@intel.com>
 <20200929203022.GI6112@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200929203022.GI6112@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/edp/jsl: Update vswing table
 for HBR and HBR2
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
Cc: "Pandey, Hariom" <hariom.pandey@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 29, 2020 at 11:30:22PM +0300, Ville Syrj=E4l=E4 wrote:
> On Tue, Sep 29, 2020 at 08:20:22PM +0000, Souza, Jose wrote:
> > On Tue, 2020-09-29 at 23:02 +0300, Ville Syrj=E4l=E4 wrote:
> > > On Tue, Sep 29, 2020 at 07:33:45PM +0000, Souza, Jose wrote:
> > > > On Tue, 2020-09-29 at 17:41 +0530, Tejas Upadhyay wrote:
> > > > > JSL has update in vswing table for eDP
> > > > =

> > > > Would be nice to mention in the commit description why PCH is being=
 used, that would avoid Ville's question.
> > > =

> > > If the thing has nothing to do PCH then it should not use the PCH type
> > > for the the check. Instead we should just do the EHL/JSL split.
> > =

> > In the first version Matt Roper suggested to use PCH to differentiate b=
etween EHL and JSL, Jani also agreed with this solution.This 2 PCHs can onl=
y be
> > associate with EHL and JSL respectively, so no downsides here.
> =

> The downside is that the code makes no sense on the first glance.
> It's going to generate a "wtf?" exception in the brain and require
> me to take a second look to figure what is going on. Exception
> handling is expensive and shouldn't be needed in cases where it's
> trivial to make the code 100% obvious.

The bspec documents EHL and JSL as being the same platform and identical
in all programming since they are literally the same display IP; this
vswing table is the one and only place where the two are treated in a
distinct manner for reasons that lie outside the display controller.  If
you had to stop and take a closer look at the code here, that's a
probably a good thing since in general there should generally never be a
difference in the behavior between the two.  Adding an additional
clarifying comment is probably in order too since this is a very
exceptional special case.

If we deviate from the bspec's guidance and try to split IS_ELKHARTLAKE
and IS_JASPERLAKE across the whole driver, that's going to be a lot more
pain to maintain down the road since we'll almost certainly have cases
where someone silently leaves one or the other off a condition and gets
unexepcted behavior.  I could see arguments for using a SUBPLATFORM here
like we do for TGL_U vs TGL_Y, but even that seems like overkill if we
already have a clear way to distinguish the two cases (PCH pairing) and
can just leave a clarifying comment.


Matt


> =

> -- =

> Ville Syrj=E4l=E4
> Intel

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
