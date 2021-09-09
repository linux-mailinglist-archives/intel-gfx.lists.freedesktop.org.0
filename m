Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA140405DCF
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Sep 2021 21:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 423F36E907;
	Thu,  9 Sep 2021 19:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 063C96E902;
 Thu,  9 Sep 2021 19:59:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="217729736"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="217729736"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 12:59:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="606983051"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 09 Sep 2021 12:59:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Sep 2021 22:59:36 +0300
Date: Thu, 9 Sep 2021 22:59:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 mesa-dev@lists.freedesktop.org
Message-ID: <YTpnqFh3Nn6iTNd9@intel.com>
References: <YTekMq0Kfb3Xkeid@intel.com>
 <20210907181929.GG461228@mdroper-desk1.amr.corp.intel.com>
 <YToTGr2kSQjGtpan@intel.com>
 <20210909142933.GZ461228@mdroper-desk1.amr.corp.intel.com>
 <YTocngFdY1dynYrc@intel.com>
 <20210909150002.GA461228@mdroper-desk1.amr.corp.intel.com>
 <YTojw4z1JkfBoI+q@intel.com>
 <20210909171556.GC461228@mdroper-desk1.amr.corp.intel.com>
 <YTpHdx84rEkdB6FK@intel.com>
 <20210909181415.GE461228@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210909181415.GE461228@mdroper-desk1.amr.corp.intel.com>
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

On Thu, Sep 09, 2021 at 11:14:15AM -0700, Matt Roper wrote:
> On Thu, Sep 09, 2021 at 08:42:15PM +0300, Ville Syrj�l� wrote:
> > On Thu, Sep 09, 2021 at 10:15:56AM -0700, Matt Roper wrote:
> > > On Thu, Sep 09, 2021 at 06:09:55PM +0300, Ville Syrj�l� wrote:
> > > > On Thu, Sep 09, 2021 at 08:00:02AM -0700, Matt Roper wrote:
> > > > > On Thu, Sep 09, 2021 at 05:39:26PM +0300, Ville Syrj�l� wrote:
> > > > > > On Thu, Sep 09, 2021 at 07:29:33AM -0700, Matt Roper wrote:
> > > > > > > On Thu, Sep 09, 2021 at 04:58:50PM +0300, Ville Syrj�l� wrote:
> > > > > > > > On Tue, Sep 07, 2021 at 11:19:29AM -0700, Matt Roper wrote:
> > > > > > > > > On Tue, Sep 07, 2021 at 08:41:06PM +0300, Ville Syrj�l� wrote:
> > > > > > > > > > On Tue, Sep 07, 2021 at 10:27:28AM -0700, Matt Roper wrote:
> > > > > > > > > > > On Tue, Sep 07, 2021 at 10:46:39PM +0530, Ayaz A Siddiqui wrote:
> > > > > > > > > > > > MOCS table of TGL/RKL has MOCS[1] set to L3_UC.
> > > > > > > > > > > > While for other gen12 devices we need to set MOCS[1] as L3_WB,
> > > > > > > > > > > > So adding a new MOCS table for other gen 12 devices eg. ADL.
> > > > > > > > > > > > 
> > > > > > > > > > > > Fixes: cfbe5291a189 ("drm/i915/gt: Initialize unused MOCS entries with device specific values")
> > > > > > > > > > > > Cc: Matt Roper <matthew.d.roper@intel.com>
> > > > > > > > > > > > Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> > > > > > > > > > > 
> > > > > > > > > > > Yep, we overlooked that the TGL table still had an explicit entry for
> > > > > > > > > > > I915_MOCS_PTE and wasn't just using an implicit 'unused_entries' lookup
> > > > > > > > > > > for MOCS[1].  The new table is the same as the TGL table, just with
> > > > > > > > > > > I915_MOCS_PTE (1) removed.
> > > > > > > > > > 
> > > > > > > > > > And just how are people planning on handling display cacheability
> > > > > > > > > > control without a PTE MOCS entry? Is Mesa/etc. already making all
> > > > > > > > > > external bos uncached on these platforms just in case we might
> > > > > > > > > > scan out said bo?
> > > > > > > > > 
> > > > > > > > > MOCS entry 1 has never been considered a valid MOCS table entry on gen12
> > > > > > > > > platforms (despite the old #define, it's not actually related to PTE,
> > > > > > > > > display, etc. anymore).
> > > > > > > > 
> > > > > > > > So can someone finally explain to me how we're supposed to cache
> > > > > > > > anything that might become a scanout buffer later (eg. window system
> > > > > > > > buffers)? Or are we just making everything like that UC now, and is
> > > > > > > > everyone happy with that? Is userspace actually following that?
> > > > > > > 
> > > > > > > Table entry #1 has never had anything to do with scanout on gen12+.  I
> > > > > > > would assume that UMDs are either using the display entry in the MOCS
> > > > > > > table (which is 61 on gen12+) or some other UC entry.
> > > > > > 
> > > > > > If 61 is meant to to be the new PTE entry wy hasn't it been defines as
> > > > > > such in the code? And I know for a fact that userspace (Mesa) is not
> > > > > 
> > > > > There is no "PTE" entry anymore.  But 61 is already documented as
> > > > > "displayable" in both the spec and the code:
> > > > > 
> > > > >         /* HW Special Case (Displayable) */                                      
> > > > >         MOCS_ENTRY(61,                             
> > > > 
> > > > Why is it called a "HW special case"? I don't think there's any hw
> > > > magic in there?
> > > > 
> > > > And why aren't we setting it to PTE to get some cacheability for
> > > > window back buffers and such?
> > > 
> > > Who is "we" here?
> > 
> > We who care about the performance of the system.
> > 
> > > The MOCS table is a pre-defined set of per-platform
> > > magic numbers.  The software teams don't get to decide what the values
> > > are, we just program the hardware with the per-platform numbers that
> > > have been agreed upon as part of a platform-wide stack (everything from
> > > low-level firmware to high level userspace should be working from the
> > > same table, defined in the bspec).
> > 
> > The magic numbers must be based on something. If that something is
> > purely Windows behaviour/performance then we might be shooting
> > ourselves in the foot here.
> 
> That's not how MOCS works.  The MOCS tables define every meaningful
> combination of settings somewhere in the table.  The *types* of settings
> that can be expressed change from platform to platform (e.g.,
> "PAGETABLE" setting simply doesn't exist anymore hardware-wise) so the
> tables themselves differ between platforms and you may need to use
> different indices to get the same behavior between platforms.  But if
> you're actually paying attention to the tables and choosing the right
> entries, you're not going to leave any performance on the table.
> 
> > 
> > > 
> > > Once we know what the per-platform magic numbers are, we're supposed to
> > > pick the table entry that matches the behavior we're trying to
> > > accomplish.  If you want some specific level of cacheability, then you
> > > select a table row that gives you that.  Maybe 61 isn't the best
> > > setting, I don't know; userspace can pick whichever defined setting is
> > > actually best, using the data from the table.  But table row #1 is
> > > already well-documented as reserved/dontuse across the full stack; the
> > > fact that row #1 had values similar to PTE on Icelake hardware doesn't
> > > carry forward to any post-gen11 platform.
> > 
> > The only way you can get LLC cacheability for an external BO (window
> > back buffers and such) is by using a MOCS entry that directs the hardware
> > to consult the PTEs. Otherwise the client doing the rendering would have
> > to know ahead of time whether the buffer is going to be directly scanned
> > out by the compositor or not, for which there is no protocol in
> > X or wayland.
> 
> It sounds like you're complaining about gen12 hardware design rather
> than anything actually software or ABI related.  'Consult the PTEs'
> hasn't been something the hardware has supported since gen11. We still
> have macros with PTE or PAGETABLE in their names, but those aren't
> accurate descriptions of what they do on current platforms.

I've heard this a few times, but so far I've not been able to find
any evidence for it in bspec. I suppose to find out for sure I'm
going to have to test it on actual hardware.

I did stumble on some future platform stuff that shuffles around the
MOCS stuff once again, and looks like it adds in a specific PTE vs.
MOCS bit. So if it was removed, it's almost immediately coming back.

> We note
> this in the code:
> 
>    /*
>     * Note: LE_0_PAGETABLE works only up to Gen11; for newer gens it means
>     * the same as LE_UC
>     */
> 
> Even on gen11 the PAT entry was documented as being deprecated, so we
> knew it was going away.  I don't know why the hardware design changed,
> but it did.

Yeah, I've seen it, but could never figure out on what it was based.

> 
> > 
> > Historically I believe LLC cacheability has been on average a win.
> > Some workloads can do better with UC though. So if we are giving up
> > on LLC cacheability we should have some numbers to back up that
> > decision so that we're not dropping tons of performance on the floor.
> 
> It's not our decision to make.  The hardware design has already made
> this decision for us.  No matter what we program into the MOCS tables;
> we're simply not getting back the behavior you're asking for and blindly
> using the "LE_0_PAGETABLE" flags or whatever is just giving you
> uncached.

As said it looks to be coming back soon, if it ever went away.

> 
> > 
> > > > > > using entry 61. I think there is a massive communication gap here
> > > > > > where everyone just seems to assume the other side is doing something.
> > > > > > 
> > > > > > Could someone actually come up with a clear abi definition for this
> > > > > > and get all the stakeholders to sign off on it?
> > > > > 
> > > > > The agreement between the i915 team, various userspace teams, Windows
> > > > > driver team, hardware architects, software architects, and bspec writers
> > > > > was just completed; that's what triggered the kernel updates here (and
> > > > > I'm guessing is triggering similar work on the UMD side).  It's also why
> > > > > we held off on removing the force_probe flag on ADL until now since we
> > > > > couldn't consider enablement of the platform complete until the
> > > > > agreement and definitions here was finalized.
> > > > 
> > > > Can we get that agreement visible on the mailing list? Since MOCS is
> > > > abi I don't see why we shouldn't follow the normal abi rules for these,
> > > > ie. post to dri-devel, get acks from relevant people, links to agreed
> > > > userspace changes, etc.
> > > 
> > > The ABI design here was designed and agreed upon years ago, during early
> > > gen11 development.  The ABI design is that the kernel driver will
> > > faithfully initialize the hardware with the pre-determined set of magic
> > > numbers documented by the hardware team.  Since these are
> > > well-documented and unchanging numbers per-platform, there's no
> > > ambiguity for userspace, firmware, etc. about what a specific mocs index
> > > means, and no need to provide additional ABI for userspace to query what
> > > the kernel used in each row or anything like that.  The specific magic
> > > numbers are also ABI in the sense that we can't change the set of
> > > defined values once they're set for a platform (and it's been a long
> > > road to get the hardware and other OS software teams to understand and
> > > agree to this requirement), but we don't get to define or overrule what
> > > the initial values and order of those magic numbers are.
> > 
> > And this apporach has clearly not worked considering userspace and
> > kernel have not agreed on what the abi is. We need to do better.
> 
> Userspace and kernel *do* agree on what the ABI is.  There may be a
> delay in userspace enabling the MOCS properly on a new platform.

The fact that Mesa never started to use the MOCS entry supposedly
meant for display stuff is evidence to the contrary.

> But
> the changes here (which make everything fully cached by default) will
> help catch those cases where a bit of enablement was forgotten on the
> UMD side.  They won't "accidentally work" on initial bringup on the new
> platform, and the lack of proper MOCS programming will be quickly
> identified.

I'm looking at the history and not really convinced.

> 
> > 
> > > 
> > > What is a bit vague in the formal documentation is what should be done
> > > about the reserved/dontuse table entries.  In theory it wouldn't matter
> > > since they'd never be used anyway, but in reality userspace can still
> > > use them by accident, such as by forgetting to update their MOCS
> > > selection logic from past platforms (e.g., still trying to use row #1 on
> > > platforms where it isn't defined).  Given that it's legal for entries to
> > > be added to MOCS tables, but never removed/modified, it follows that we
> > > should always initialize the undefined entries to fully cached; if a
> > > MOCS table update happens in the future and new rows show up, they can
> > > only become more coherent, and any userspace software that was
> > > incorrectly trying to use them previously will remain functionally
> > > correct.
> > > 
> > > What you're proposing would be a change to existing ABI --- instead of
> > > following the agreed upon contract, i915 would start defining its own
> > > set of magic numbers that potentially contradict the documentation that
> > > every other team is depending on.  We already made this mistake on
> > > TGL/RKL, so due to an i915 bug we're outside the spec; if entry #1 ever
> > > becomes a formally defined setting in the future, the rest of the
> > > software stack will need to explicitly work around i915's bug since we
> > > can't fix it now without breaking ABI.
> > > 
> > > If you really want to redefine how the MOCS ABI works and have i915 no
> > > longer follow the current contract, I think you need to do the
> > > following:
> > 
> > I want the abi to be actually defined properly, and some assurance that
> > all the stakeholders implement it correctly. Following the proper abi
> > rules for kernel development would guarantee that.
> 
> This is what we have today.  As I said, if you want to propose a change
> to the ABI, then you need to take the proper steps to do so.  But as far
> as I can tell, most of your concern here boils down to not realizing
> that the hardware capabilities you want to use were taken away from us
> in gen12.

The fact that it's not actually properly documented anywhere certainly
doesn't help in figuring out what is going on.

> 
> > 
> > I would also like if the abi can give us the best performance rather
> > than potentially crippling it. Ie. I would expect to have a PTE MOCS
> > setting for potential scanout buffers, or some proof that pure UC
> > will in fact be a better choice.
> 
> Again, this isn't a choice.  This is a fact of how the hardware works on
> gen12.  Maybe you'll regain PTE flags on a future platform, but that's
> simply not something software can ask for on today's platforms.

There should be clear guidelines what MOCS index userspace is
supposed to use in each case. That more or less used to be the
case with the handful of MOCS entries we had defined (always
uncached vs. always cached vs. potential scanout buffers which
could be either depending on the situation). But that nice simple
approach wasn't good enough for whatever reason.

-- 
Ville Syrj�l�
Intel
