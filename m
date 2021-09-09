Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F02405A08
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 17:10:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 818F16E877;
	Thu,  9 Sep 2021 15:10:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34F9D6E891
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 15:09:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10101"; a="220865248"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="220865248"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 08:09:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="513817019"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 09 Sep 2021 08:09:56 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Sep 2021 18:09:55 +0300
Date: Thu, 9 Sep 2021 18:09:55 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>, intel-gfx@lists.freedesktop.org
Message-ID: <YTojw4z1JkfBoI+q@intel.com>
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
 <20210907172728.GF461228@mdroper-desk1.amr.corp.intel.com>
 <YTekMq0Kfb3Xkeid@intel.com>
 <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
 <YToTGr2kSQjGtpan@intel.com>
 <20210909142933.GZ461228@mdroper-desk1.amr.corp.intel.com>
 <YTocngFdY1dynYrc@intel.com>
 <20210909150002.GA461228@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210909150002.GA461228@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Add separate MOCS table for
 Gen12 devices other than TGL/RKL
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 09, 2021 at 08:00:02AM -0700, Matt Roper wrote:
> On Thu, Sep 09, 2021 at 05:39:26PM +0300, Ville Syrjälä wrote:
> > On Thu, Sep 09, 2021 at 07:29:33AM -0700, Matt Roper wrote:
> > > On Thu, Sep 09, 2021 at 04:58:50PM +0300, Ville Syrjälä wrote:
> > > > On Tue, Sep 07, 2021 at 11:19:29AM -0700, Matt Roper wrote:
> > > > > On Tue, Sep 07, 2021 at 08:41:06PM +0300, Ville Syrjälä wrote:
> > > > > > On Tue, Sep 07, 2021 at 10:27:28AM -0700, Matt Roper wrote:
> > > > > > > On Tue, Sep 07, 2021 at 10:46:39PM +0530, Ayaz A Siddiqui wrote:
> > > > > > > > MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
> > > > > > > > While for other gen12 devices we need to set MOCS[1] as L3_WB,
> > > > > > > > So adding a new MOCS table for other gen 12 devices eg. ADL.
> > > > > > > > 
> > > > > > > > Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
> > > > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > > > > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > > > > > > 
> > > > > > > Yep, we overlooked that the TGL table still had an explicit entry for
> > > > > > > I915_MOCS_PTE and wasn't just using an implicit 'unused_entries' lookup
> > > > > > > for MOCS[1].  The new table is the same as the TGL table, just with
> > > > > > > I915_MOCS_PTE (1) removed.
> > > > > > 
> > > > > > And just how are people planning on handling display cacheability
> > > > > > control without a PTE MOCS entry? Is Mesa/etc. already making all
> > > > > > external bos uncached on these platforms just in case we might
> > > > > > scan out said bo?
> > > > > 
> > > > > MOCS entry 1 has never been considered a valid MOCS table entry on gen12
> > > > > platforms (despite the old #define, it's not actually related to PTE,
> > > > > display, etc. anymore).
> > > > 
> > > > So can someone finally explain to me how we're supposed to cache
> > > > anything that might become a scanout buffer later (eg. window system
> > > > buffers)? Or are we just making everything like that UC now, and is
> > > > everyone happy with that? Is userspace actually following that?
> > > 
> > > Table entry #1 has never had anything to do with scanout on gen12+.  I
> > > would assume that UMDs are either using the display entry in the MOCS
> > > table (which is 61 on gen12+) or some other UC entry.
> > 
> > If 61 is meant to to be the new PTE entry wy hasn't it been defines as
> > such in the code? And I know for a fact that userspace (Mesa) is not
> 
> There is no "PTE" entry anymore.  But 61 is already documented as
> "displayable" in both the spec and the code:
> 
>         /* HW Special Case (Displayable) */                                      
>         MOCS_ENTRY(61,                             

Why is it called a "HW special case"? I don't think there's any hw
magic in there?

And why aren't we setting it to PTE to get some cacheability for
window back buffers and such?

> 
> > using entry 61. I think there is a massive communication gap here
> > where everyone just seems to assume the other side is doing something.
> > 
> > Could someone actually come up with a clear abi definition for this
> > and get all the stakeholders to sign off on it?
> 
> The agreement between the i915 team, various userspace teams, Windows
> driver team, hardware architects, software architects, and bspec writers
> was just completed; that's what triggered the kernel updates here (and
> I'm guessing is triggering similar work on the UMD side).  It's also why
> we held off on removing the force_probe flag on ADL until now since we
> couldn't consider enablement of the platform complete until the
> agreement and definitions here was finalized.

Can we get that agreement visible on the mailing list? Since MOCS is
abi I don't see why we shouldn't follow the normal abi rules for these,
ie. post to dri-devel, get acks from relevant people, links to agreed
userspace changes, etc.

-- 
Ville Syrjälä
Intel
