Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BA1398F77
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jun 2021 18:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF9D6ECEE;
	Wed,  2 Jun 2021 16:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A44A6ECEE
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jun 2021 16:00:14 +0000 (UTC)
IronPort-SDR: DN2i5+68+XT5yGX0OxXOqMYpxei0fvHy5chX2W2bIM6A0zMPu8/D5ReCQ3VZ+X4GXBiTdNtB4m
 y+MB+H/D9CUg==
X-IronPort-AV: E=McAfee;i="6200,9189,10003"; a="201963852"
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="201963852"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 09:00:11 -0700
IronPort-SDR: nYsaGc7A3MmMynPy1Amvv/1N3u6nOhCsQWPI2m8ediSOZiCyi/CtW6mDm/PN+bXH6OT1HN68l8
 WnlgNCN2kR1w==
X-IronPort-AV: E=Sophos;i="5.83,242,1616482800"; d="scan'208";a="467511835"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2021 09:00:10 -0700
Date: Wed, 2 Jun 2021 09:00:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20210602160009.GK6936@mdroper-desk1.amr.corp.intel.com>
References: <20210527181700.1676790-1-lucas.demarchi@intel.com>
 <20210527181700.1676790-2-lucas.demarchi@intel.com>
 <20210601165834.GA6936@mdroper-desk1.amr.corp.intel.com>
 <20210601171514.63lh3lqb2yprri73@ldmartin-desk2>
 <20210601173055.GB6936@mdroper-desk1.amr.corp.intel.com>
 <20210601191317.mn646kbpdbjw65xc@ldmartin-desk2>
 <20210601203925.GD6936@mdroper-desk1.amr.corp.intel.com>
 <20210602063439.nrfejgmslba3hruy@ldmartin-desk2>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602063439.nrfejgmslba3hruy@ldmartin-desk2>
Subject: Re: [Intel-gfx] [PATCH 1/7] drm/i915/gt: replace IS_GEN and friends
 with IS_GRAPHICS_VER
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 01, 2021 at 11:34:39PM -0700, Lucas De Marchi wrote:
> On Tue, Jun 01, 2021 at 01:39:25PM -0700, Matt Roper wrote:
> > On Tue, Jun 01, 2021 at 12:13:17PM -0700, Lucas De Marchi wrote:
> > > On Tue, Jun 01, 2021 at 10:30:55AM -0700, Matt Roper wrote:
> > > > On Tue, Jun 01, 2021 at 10:15:14AM -0700, Lucas De Marchi wrote:
> > > > > On Tue, Jun 01, 2021 at 09:58:34AM -0700, Matt Roper wrote:
> > > > > > On Thu, May 27, 2021 at 11:16:54AM -0700, Lucas De Marchi wrote:
> > > > > > > This was done by the following semantic patch:
> > > > > >
> > > > > > Is the commit message here out-of-date?  The cocci doesn't appear to
> > > > > > match the diff anymore.  IS_GRAPHICS_VER() is the range macro now and
> > > > > > IS_GEN is being replaced with a direct "==" comparison.
> > > > >
> > > > > not necessarily, it's included in "and friends...". Maybe rewording to
> > > > > something like "replace gen-based macros with new ver-based ones" would
> > > > > make it clearer?
> > > >
> > > > I mean that running the coccinelle rules below through spatch won't
> > > > generate the code diff here; it would generate a completely different
> > > > patch (that I don't think would build properly either).
> > > 
> > > oh, ok. I fixed the issues in the .cocci and forgot to update the commit
> > > message. Thanks.
> > > 
> > > Lucas De Marchi
> > 
> > Aside from the commit messages needing updated Coccinelle rules, the
> > code deltas look correct to me.
> > 
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> humn... is that to the series or only this commit?

Sorry, that was meant for the whole series.


Matt

> 
> Lucas De Marchi

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
