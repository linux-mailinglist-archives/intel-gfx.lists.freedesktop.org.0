Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8A0F405BE6
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 19:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D029E6E8D3;
	Thu,  9 Sep 2021 17:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875C26E8D3
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Sep 2021 17:20:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="220905083"
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="220905083"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 10:20:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,280,1624345200"; d="scan'208";a="696419407"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 10:20:04 -0700
Date: Thu, 9 Sep 2021 10:20:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 intel-gfx@lists.freedesktop.org, jon.bloomfield@intel.com,
 Jordan Justen <jordan.l.justen@intel.com>
Message-ID: <20210909172003.GD461228@mdroper-desk1.amr.corp.intel.com>
References: <20210907171639.1221287-1-ayaz.siddiqui@intel.com>
 <20210907172728.GF461228@mdroper-desk1.amr.corp.intel.com>
 <YTekMq0Kfb3Xkeid@intel.com>
 <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
 <YToTGr2kSQjGtpan@intel.com>
 <20210909142933.GZ461228@mdroper-desk1.amr.corp.intel.com>
 <YTocngFdY1dynYrc@intel.com>
 <20210909150002.GA461228@mdroper-desk1.amr.corp.intel.com>
 <YTojw4z1JkfBoI+q@intel.com>
 <20210909171556.GC461228@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210909171556.GC461228@mdroper-desk1.amr.corp.intel.com>
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

+Cc a couple more people.

On Thu, Sep 09, 2021 at 10:15:57AM -0700, Matt Roper wrote:
> On Thu, Sep 09, 2021 at 06:09:55PM +0300, Ville Syrjälä wrote:
> > On Thu, Sep 09, 2021 at 08:00:02AM -0700, Matt Roper wrote:
> > > On Thu, Sep 09, 2021 at 05:39:26PM +0300, Ville Syrjälä wrote:
> > > > On Thu, Sep 09, 2021 at 07:29:33AM -0700, Matt Roper wrote:
> > > > > On Thu, Sep 09, 2021 at 04:58:50PM +0300, Ville Syrjälä wrote:
> > > > > > On Tue, Sep 07, 2021 at 11:19:29AM -0700, Matt Roper wrote:
> > > > > > > On Tue, Sep 07, 2021 at 08:41:06PM +0300, Ville Syrjälä wrote:
> > > > > > > > On Tue, Sep 07, 2021 at 10:27:28AM -0700, Matt Roper wrote:
> > > > > > > > > On Tue, Sep 07, 2021 at 10:46:39PM +0530, Ayaz A Siddiqui wrote:
> > > > > > > > > > MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
> > > > > > > > > > While for other gen12 devices we need to set MOCS[1] as L3_WB,
> > > > > > > > > > So adding a new MOCS table for other gen 12 devices eg. ADL.
> > > > > > > > > > 
> > > > > > > > > > Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
> > > > > > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > > > > > > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > > > > > > > > 
> > > > > > > > > Yep, we overlooked that the TGL table still had an explicit entry for
> > > > > > > > > I915_MOCS_PTE and wasn't just using an implicit 'unused_entries' lookup
> > > > > > > > > for MOCS[1].  The new table is the same as the TGL table, just with
> > > > > > > > > I915_MOCS_PTE (1) removed.
> > > > > > > > 
> > > > > > > > And just how are people planning on handling display cacheability
> > > > > > > > control without a PTE MOCS entry? Is Mesa/etc. already making all
> > > > > > > > external bos uncached on these platforms just in case we might
> > > > > > > > scan out said bo?
> > > > > > > 
> > > > > > > MOCS entry 1 has never been considered a valid MOCS table entry on gen12
> > > > > > > platforms (despite the old #define, it's not actually related to PTE,
> > > > > > > display, etc. anymore).
> > > > > > 
> > > > > > So can someone finally explain to me how we're supposed to cache
> > > > > > anything that might become a scanout buffer later (eg. window system
> > > > > > buffers)? Or are we just making everything like that UC now, and is
> > > > > > everyone happy with that? Is userspace actually following that?
> > > > > 
> > > > > Table entry #1 has never had anything to do with scanout on gen12+.  I
> > > > > would assume that UMDs are either using the display entry in the MOCS
> > > > > table (which is 61 on gen12+) or some other UC entry.
> > > > 
> > > > If 61 is meant to to be the new PTE entry wy hasn't it been defines as
> > > > such in the code? And I know for a fact that userspace (Mesa) is not
> > > 
> > > There is no "PTE" entry anymore.  But 61 is already documented as
> > > "displayable" in both the spec and the code:
> > > 
> > >         /* HW Special Case (Displayable) */                                      
> > >         MOCS_ENTRY(61,                             
> > 
> > Why is it called a "HW special case"? I don't think there's any hw
> > magic in there?
> > 
> > And why aren't we setting it to PTE to get some cacheability for
> > window back buffers and such?
> 
> Who is "we" here?  The MOCS table is a pre-defined set of per-platform
> magic numbers.  The software teams don't get to decide what the values
> are, we just program the hardware with the per-platform numbers that
> have been agreed upon as part of a platform-wide stack (everything from
> low-level firmware to high level userspace should be working from the
> same table, defined in the bspec).
> 
> Once we know what the per-platform magic numbers are, we're supposed to
> pick the table entry that matches the behavior we're trying to
> accomplish.  If you want some specific level of cacheability, then you
> select a table row that gives you that.  Maybe 61 isn't the best
> setting, I don't know; userspace can pick whichever defined setting is
> actually best, using the data from the table.  But table row #1 is
> already well-documented as reserved/dontuse across the full stack; the
> fact that row #1 had values similar to PTE on Icelake hardware doesn't
> carry forward to any post-gen11 platform.
> 
> > 
> > > 
> > > > using entry 61. I think there is a massive communication gap here
> > > > where everyone just seems to assume the other side is doing something.
> > > > 
> > > > Could someone actually come up with a clear abi definition for this
> > > > and get all the stakeholders to sign off on it?
> > > 
> > > The agreement between the i915 team, various userspace teams, Windows
> > > driver team, hardware architects, software architects, and bspec writers
> > > was just completed; that's what triggered the kernel updates here (and
> > > I'm guessing is triggering similar work on the UMD side).  It's also why
> > > we held off on removing the force_probe flag on ADL until now since we
> > > couldn't consider enablement of the platform complete until the
> > > agreement and definitions here was finalized.
> > 
> > Can we get that agreement visible on the mailing list? Since MOCS is
> > abi I don't see why we shouldn't follow the normal abi rules for these,
> > ie. post to dri-devel, get acks from relevant people, links to agreed
> > userspace changes, etc.
> 
> The ABI design here was designed and agreed upon years ago, during early
> gen11 development.  The ABI design is that the kernel driver will
> faithfully initialize the hardware with the pre-determined set of magic
> numbers documented by the hardware team.  Since these are
> well-documented and unchanging numbers per-platform, there's no
> ambiguity for userspace, firmware, etc. about what a specific mocs index
> means, and no need to provide additional ABI for userspace to query what
> the kernel used in each row or anything like that.  The specific magic
> numbers are also ABI in the sense that we can't change the set of
> defined values once they're set for a platform (and it's been a long
> road to get the hardware and other OS software teams to understand and
> agree to this requirement), but we don't get to define or overrule what
> the initial values and order of those magic numbers are.
> 
> What is a bit vague in the formal documentation is what should be done
> about the reserved/dontuse table entries.  In theory it wouldn't matter
> since they'd never be used anyway, but in reality userspace can still
> use them by accident, such as by forgetting to update their MOCS
> selection logic from past platforms (e.g., still trying to use row #1 on
> platforms where it isn't defined).  Given that it's legal for entries to
> be added to MOCS tables, but never removed/modified, it follows that we
> should always initialize the undefined entries to fully cached; if a
> MOCS table update happens in the future and new rows show up, they can
> only become more coherent, and any userspace software that was
> incorrectly trying to use them previously will remain functionally
> correct.
> 
> What you're proposing would be a change to existing ABI --- instead of
> following the agreed upon contract, i915 would start defining its own
> set of magic numbers that potentially contradict the documentation that
> every other team is depending on.  We already made this mistake on
> TGL/RKL, so due to an i915 bug we're outside the spec; if entry #1 ever
> becomes a formally defined setting in the future, the rest of the
> software stack will need to explicitly work around i915's bug since we
> can't fix it now without breaking ABI.
> 
> If you really want to redefine how the MOCS ABI works and have i915 no
> longer follow the current contract, I think you need to do the
> following:
> 
>  * Re-add force_probe requirement to ADL and add appropriate Fixes: so
>    that the platform isn't enabled yet.
>  * Document clearly how you want i915 to select the MOCS settings it
>    uses for each table row if we're no longer going to follow the
>    documented values in the bspec.
>  * Provide a way for userspace to determine how i915 has defined the
>    MOCS settings (since they can no longer rely on us following the
>    previously agreed upon contract).
>  * Get acks from all the userspace teams on the new direction you're
>    proposing.
>  * Get an ack from the GuC team to make sure that programming
>    MOCS values differently than documented in the bspec won't have any
>    kind of impact on their operation.
> 
> Alternatively, you could lobby for a new table row #1 to be added to the
> formal MOCS table for gen12.  It's legal for new MOCS entries to show up
> in the future, so if that happens, we can follow up with the
> corresponding change in i915; since we'll be moving to a more coherent
> value (from today's fully cached entry), we'll be becoming more
> permissive from a correctness point of view.  But we absolutely should
> not try to add entries unilaterally in i915 that haven't been formally
> agreed upon because they may clash with a different definition of the
> row that shows up in the future through formal channels.
> 
> 
> 
> Matt
> 
> > 
> > -- 
> > Ville Syrjälä
> > Intel
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> VTT-OSGC Platform Enablement
> Intel Corporation
> (916) 356-2795

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
