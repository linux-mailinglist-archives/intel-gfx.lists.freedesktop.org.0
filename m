Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D320139A68
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 20:57:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5051E6E148;
	Mon, 13 Jan 2020 19:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A97576E148
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 19:57:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 11:57:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,430,1571727600"; d="scan'208";a="397258103"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by orsmga005.jf.intel.com with ESMTP; 13 Jan 2020 11:57:01 -0800
Date: Mon, 13 Jan 2020 11:57:01 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <20200113195701.GA2244136@mdroper-desk1.amr.corp.intel.com>
References: <20200111014511.2988923-1-matthew.d.roper@intel.com>
 <93603b610b40926e3e5fe563ac488cd3ce36f9ff.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <93603b610b40926e3e5fe563ac488cd3ce36f9ff.camel@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add additional pcode status
 values
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Jan 13, 2020 at 10:38:06AM -0800, Souza, Jose wrote:
> On Fri, 2020-01-10 at 17:45 -0800, Matt Roper wrote:
> > I don't think we've ever hit these new error codes, but they're
> > documented in the gen11 pcode document, so we might as well add them
> > to
> > the handler.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h       | 2 ++
> >  drivers/gpu/drm/i915/intel_sideband.c | 4 ++++
> >  2 files changed, 6 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h
> > index 6cc55c103f67..e5071af4a3b3 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -8987,6 +8987,8 @@ enum {
> >  #define     GEN6_PCODE_UNIMPLEMENTED_CMD	0xFF
> >  #define     GEN7_PCODE_TIMEOUT			0x2
> >  #define     GEN7_PCODE_ILLEGAL_DATA		0x3
> > +#define     GEN11_PCODE_ILLEGAL_SUBCOMMAND	0x4
> > +#define     GEN11_PCODE_LOCKED			0x6
> 
> I can't find the error 0x6 in BSpec, what page are you looking at?
> I'm checking 34151.

It doesn't appear to be documented in the bpsec afaics, but there's a
separate "Icelake PCODE/Punit Mailboxes" HAS that has the documentation.
One of the pcode folks recently let us know that it is indeed an
important potential error code (even though we haven't been hitting it).

Also, bspec 34151 (and the similar 52065) are tagged as not valid for
ICL and TGL, so I don't think we really have any good reference to this
stuff in the bspec itself.  :-(


Matt

> 
> >  #define     GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE 0x10
> >  #define   GEN6_PCODE_WRITE_RC6VIDS		0x4
> >  #define   GEN6_PCODE_READ_RC6VIDS		0x5
> > diff --git a/drivers/gpu/drm/i915/intel_sideband.c
> > b/drivers/gpu/drm/i915/intel_sideband.c
> > index cbfb7171d62d..3361fdc41ee1 100644
> > --- a/drivers/gpu/drm/i915/intel_sideband.c
> > +++ b/drivers/gpu/drm/i915/intel_sideband.c
> > @@ -365,6 +365,10 @@ static inline int gen7_check_mailbox_status(u32
> > mbox)
> >  		return -ETIMEDOUT;
> >  	case GEN7_PCODE_ILLEGAL_DATA:
> >  		return -EINVAL;
> > +	case GEN11_PCODE_ILLEGAL_SUBCOMMAND:
> > +		return -ENXIO;
> > +	case GEN11_PCODE_LOCKED:
> > +		return -EBUSY;
> >  	case GEN7_PCODE_MIN_FREQ_TABLE_GT_RATIO_OUT_OF_RANGE:
> >  		return -EOVERFLOW;
> >  	default:

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
