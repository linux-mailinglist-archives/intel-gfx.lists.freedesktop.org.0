Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 579374AE3C4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Feb 2022 23:24:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63DA010E4BC;
	Tue,  8 Feb 2022 22:24:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0ED7E10E4BC
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Feb 2022 22:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644359063; x=1675895063;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=qr54sjYnHOEyJOZ6vhsSVyxLTBKow/Fqy2l03aiGBp0=;
 b=kNVano2VYGII+NzPziiQ5J4e0ZnbfDZGYZQPOPkcPyTqV47wBK/FiDwM
 +Ns4fiQT+l59JJLaIdOjBZ/0AzTTpZg736dJB8NZmT1T2xILLBIdwoZwT
 MSjyjHHKpOABD845Q4lzeQjhWqwjUwWHMOgPciU74l2sUrYCURZvQSAD+
 bO4/o66Jxc0dAFjdS3LlC5crjEZSj7eR/gNz17dkToi3uf8v94DQM97Q5
 ZwhvQdLjC4j07rD+Qfk0gUvLsHCiceJTMtQSCyTsi7T/Fdj+q1lr0gVQ6
 TC+tYi5CZA8ibnaLDSQoifxp/yu4LicPCxbcZNHCy1EPDrLyGm+Jazicg Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10252"; a="273599361"
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="273599361"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 14:24:10 -0800
X-IronPort-AV: E=Sophos;i="5.88,353,1635231600"; d="scan'208";a="601394692"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2022 14:24:10 -0800
Date: Tue, 8 Feb 2022 14:18:14 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <20220208221814.GA24152@jons-linux-dev-box>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-7-alan.previn.teres.alexis@intel.com>
 <20220204181924.GA18242@jons-linux-dev-box>
 <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86faa4f1dd88a52b0ddf13a1e6804d01732b14ea.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH v5 06/10] drm/i915/guc: Update GuC's
 log-buffer-state access for error capture.
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 11:38:13AM -0800, Teres Alexis, Alan Previn wrote:
> Hi Matt, thank you for taking the time to review the codes.
> Answering your question inline below.
> 
> 
> On Fri, 2022-02-04 at 10:19 -0800, Matthew Brost wrote:
> > On Wed, Jan 26, 2022 at 02:48:18AM -0800, Alan Previn wrote:
> > > GuC log buffer regions for debug-log-events, crash-dumps and
> > > error-state-capture are all a single bo allocation that includes
> > > the guc_log_buffer_state structures.
> > >
> > > Since the error-capture region is accessed with high priority at non-
> > > deterministic times (as part of gpu coredump) while the debug-log-event
> > > region is populated and accessed with different priorities, timings and
> > > consumers, let's split out separate locks for buffer-state accesses
> > > of each region.
> > >
> > > Also, ensure a global mapping is made up front for the entire bo
> > > throughout GuC operation so that dynamic mapping and unmapping isn't
> > > required for error capture log access if relay-logging isn't running.
> > >
> > > Additionally, while here, make some readibility improvements:
> > > 1. change previous function names with "capture_logs" to
> > >    "copy_debug_logs" to help make the distinction clearer.
> > > 2. Update the guc log region mapping comments to order them
> > >    according to the enum definition as per the GuC interface.
> > >
> > > Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc.h        |   2 +
> > >  .../gpu/drm/i915/gt/uc/intel_guc_capture.c    |  47 ++++++
> > >  .../gpu/drm/i915/gt/uc/intel_guc_capture.h    |   1 +
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_log.c    | 135 +++++++++++-------
> > >  drivers/gpu/drm/i915/gt/uc/intel_guc_log.h    |  16 ++-
> > >  5 files changed, 141 insertions(+), 60 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > index 4e819853ec2e..be1ad7fa2bf8 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
> > > @@ -34,6 +34,8 @@ struct intel_guc {
> > >     struct intel_uc_fw fw;
> > >     /** @log: sub-structure containing GuC log related data and objects */
> > >     struct intel_guc_log log;
> > > +   /** @log_state: states and locks for each subregion of GuC's log buffer */
> > > +   struct intel_guc_log_stats log_state[GUC_MAX_LOG_BUFFER];
> >
> > Why move this? This still probably should be sub-structure of
> > intel_guc_log. Most of the access is from functions that pass in
> > intel_guc_log, then retrieve the GuC object, only to access this new
> > intel_guc_log_stats object. That layering seems wrong, if the argument
> > to a function is intel_guc_log it should really try to access members
> > within that object or below. Obv some exceptions exist but here it seems
> > clear to me this is in the wrong place.
> >
> So the reasoning i had was because because intel_guc_log module only managed
> guc-relay-logging and guc-log-dumping for log-events but allocates the buffer
> for 3 separate subregion/usages (i.e. log-events, crash-dump and error-capture).
> That said, I did not want intel_guc_capture and relay-logging (or log-dumping)
> to have to contend with the same lock because these two subregions are completely
> independant of each other in terms of when they are being accessed and why.
> 

All that is fine, I just think the 'struct intel_guc_log_stats' should
be sub-substure of struct intel_guc_log.

> However, after the redesign of rev5 (this rev), I now believe the intel_guc_capture
> module does not require a lock because its only ever accessing its log
> subregion in response to the ctb handler functions that run out of the same queue.
> As we know intel_guc_capture reacts to G2H-error-capture-notification and G2H-context-reset
> (that trickles into i915_gpu_coredump). At the point of i915_error_state dump,
> intel_guc_capture module does not access the buffer - it merely dumps the already-parsed
> and engine-dump-node (that was detached from error-capture's internal linked-list
> and attached to the gpu_coredump structure in the second G2H above).
> 
> And of course, intel_guc_log only ever accesses the log-events subregion
> and never the error-capture regions.
> 
> That said, i could revert the lock structure to the original and not have
> intel_guc_capture using locks. What do you think?
> 

Again my comment has nothing to do with locking, it is where the
structure lives.

Matt

> ...alan
> 
> > Another nit, I'd personally break this out into multiple patches.
> >
> > e.g. 1 to rename relay log functions, 1 introducing intel_guc_log_stats
> > + lock, and 1 adding intel_guc_capture_output_min_size_est. Maybe I'm
> > missing another patch or two in there.
> >
> > Not a blocker but it does make reviews easier.
> >
> Will do.
> 
> > Matt
> >
> > >     /** @ct: the command transport communication channel */
> > >     struct intel_guc_ct ct;
> > >     /** @slpc: sub-structure containing SLPC related data and objects */
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> > > index 70d2ee841289..e7f99d051636 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> > > @@ -651,6 +651,53 @@ int intel_guc_capture_prep_lists(struct intel_guc *guc, struct guc_ads *blob, u3
> > >     return PAGE_ALIGN(alloc_size);
> > >  }
> > >
> > > 2.25.1
> > >
> 
