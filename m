Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 132B146C84E
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 00:35:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CB216E040;
	Tue,  7 Dec 2021 23:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A25966E040
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 23:35:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="217737923"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="217737923"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 15:35:39 -0800
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="580335715"
Received: from jons-linux-dev-box.fm.intel.com (HELO jons-linux-dev-box)
 ([10.1.27.20])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 15:35:39 -0800
Date: Tue, 7 Dec 2021 15:30:14 -0800
From: Matthew Brost <matthew.brost@intel.com>
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Message-ID: <20211207233014.GA17811@jons-linux-dev-box>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-6-alan.previn.teres.alexis@intel.com>
 <20211207223146.GA17690@jons-linux-dev-box>
 <9339aa7b84050e511e202dcd32a0f2e4c4b282ab.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9339aa7b84050e511e202dcd32a0f2e4c4b282ab.camel@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [RFC 5/7] drm/i915/guc: Update GuC's
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

On Tue, Dec 07, 2021 at 03:33:00PM -0800, Teres Alexis, Alan Previn wrote:
> Thank you for the detailed review Matt. Responses and follow up questions on some of them below (wanna
> make sure i dont misunderstand).
> 
> Will fix all the rest - glad we dont have any design problems .. so far :)
> 
> ...alan
> 
> On Tue, 2021-12-07 at 14:31 -0800, Matthew Brost wrote:
> > On Mon, Nov 22, 2021 at 03:04:00PM -0800, Alan Previn wrote:
> > > -static bool guc_check_log_buf_overflow(struct intel_guc_log *log,
> > > -                                  enum guc_log_buffer_type type,
> > > -                                  unsigned int full_cnt)
> > > +bool guc_check_log_buf_overflow(struct intel_guc *guc,
> > > +                           struct intel_guc_log_stats *log_state,
> > > +                           unsigned int full_cnt)
> >
> > I don't think you meant to drop the 'static' here.
> actually i do need to call it from guc_capture - but that was on the next patch.
> my action would be to move this change to the next patch and i guess change the name to "intel_guc..."?
> (im assuming we dont wanna duplicate this).
> 

Ok. Yes, if you export a function add the intel_ prefix.

> >
> > > +
> > > +   guc_log_size = PAGE_SIZE + DEBUG_BUFFER_SIZE + CRASH_BUFFER_SIZE + CAPTURE_BUFFER_SIZE;
> >
> > I'd personally keep the original formatting here.
> >
> Question: - You are refering to just that last line of the "guc_log_size = .." above right?
> 

Yes.

> > >   struct intel_guc_log {
> > >     u32 level;
> > >     struct i915_vma *vma;
> > > +   void *buf_addr;
> >
> > I don't think you need both 'buf_addr' and 'relay.buf_addr' as they are
> > the same value, right?
> >
> Matt
> >
> Clarification: In the baseline code, i believe we use the "relay.buf_addr" like an enable flag
> way to verify that the guc relay debugfs was invoked by user space and is currently active.
> (which can be disabled. That said I can definitely remove that relay.buf_addr by introducing
> a more descriptive flag such as "relay.active". Assume this is ok right?
>

Sounds good to me.

Matt
 
> 
