Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 317A8602959
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 12:32:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68C0E10E7AC;
	Tue, 18 Oct 2022 10:32:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33C8010E7AC
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Oct 2022 10:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666089160; x=1697625160;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=B9QBkZdiEKRXds6f01qLYgOxmjJ0WM3LSkhM7gknqPs=;
 b=ZZEbZsqEI0PzjjnbScF5d1N+VHlPRc5UiusOGMeJ1TQ/bZHUr18XNbBq
 42h2l0CvaVKtUPZ0wlm9L5HJPioz70RNZheg1lCYtQS9iqeZrZNWEbKX5
 zYkXFORsutLeWABjT7p0fyQnT2O+Zf/yXFFsYM2O0tIw6hmF+UsFdNNkM
 m7DDLgIWJQX0hbawX+fJ1atIrIGdIMhA8HCIKUOjREp41xCSSZERLTPVX
 VQ8I/vdLpg646/jMmL4q5pitR5KhPcqBG5yvdmaulJ9gM3yML31x9K+1C
 zTluUqaySoC2PgexRSEHjj3cxIzL5p2n9TzNQWo5Bknv/FQJYMda7Aw1h Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="285785649"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="285785649"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2022 03:32:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10503"; a="803693165"
X-IronPort-AV: E=Sophos;i="5.95,193,1661842800"; d="scan'208";a="803693165"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga005.jf.intel.com with SMTP; 18 Oct 2022 03:32:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Oct 2022 13:32:35 +0300
Date: Tue, 18 Oct 2022 13:32:35 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <Y06Awzhqr8FutEgK@intel.com>
References: <355dde1c-91e3-13b5-c8e8-75c9b9779b4f@redhat.com>
 <87a65usvgq.fsf@intel.com> <877d0ysv1e.fsf@intel.com>
 <717fb4ab-5225-884f-37f9-2032c265824e@redhat.com>
 <241af90a-4cec-9266-8fb0-3c69f9880b52@leemhuis.info>
 <fac9a564-edff-db25-20d4-7146ae2a7dc8@redhat.com>
 <87tu42indv.fsf@intel.com>
 <490bed5d-8db4-dc31-7aed-bc5941c974c5@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <490bed5d-8db4-dc31-7aed-bc5941c974c5@redhat.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] alderlake crashes (random memory corruption?) with
 6.0 i915 / ucode related
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Thorsten Leemhuis <regressions@leemhuis.info>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 04:32:28PM +0200, Hans de Goede wrote:
> Hi,
> 
> On 10/17/22 15:35, Jani Nikula wrote:
> > On Mon, 17 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
> >> Hi,
> >>
> >> On 10/17/22 13:19, Thorsten Leemhuis wrote:
> >>> CCing the regression mailing list, as it should be in the loop for all
> >>> regressions, as explained here:
> >>> https://www.kernel.org/doc/html/latest/admin-guide/reporting-issues.html
> >>
> >> Yes sorry about that I meant to Cc the regressions list, not you personally,
> >> but the auto-completion picked the wrong address-book entry
> >> (and I did not notice this).
> >>
> >>> On 17.10.22 12:48, Hans de Goede wrote:
> >>>> On 10/17/22 10:39, Jani Nikula wrote:
> >>>>> On Mon, 17 Oct 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>>>>> On Thu, 13 Oct 2022, Hans de Goede <hdegoede@redhat.com> wrote:
> >>>>>>> With 6.0 the following WARN triggers:
> >>>>>>> drivers/gpu/drm/i915/display/intel_bios.c:477:
> >>>>>>>
> >>>>>>>         drm_WARN(&i915->drm, min_size == 0,
> >>>>>>>                  "Block %d min_size is zero\n", section_id);
> >>>>>>
> >>>>>> What's the value of section_id that gets printed?
> >>>>>
> >>>>> I'm guessing this is [1] fixed by commit d3a7051841f0 ("drm/i915/bios:
> >>>>> Use hardcoded fp_timing size for generating LFP data pointers") in
> >>>>> v6.1-rc1.
> >>>>>
> >>>>> I don't think this is the root cause for your issues, but I wonder if
> >>>>> you could try v6.1-rc1 or drm-tip and see if we've fixed the other stuff
> >>>>> already too?
> >>>>
> >>>> 6.1-rc1 indeed does not trigger the drm_WARN and for now (couple of
> >>>> reboots, running for 5 minutes now) it seems stable. 6.0.0 usually
> >>>> crashed during boot (but not always).
> >>>>
> >>>> Do you think it would be worthwhile to try 6.0.0 with d3a7051841f0 ?
> >>
> >> So I have been trying 6.0.0 with d3a7051841f0 doing a whole bunch of
> >> reboots + general use and that seems stable, then I reverted it and
> >> the very first boot of the kernel with that broke again, so I'm
> >> pretty sure that d3a7051841f0 fixes things.
> >>
> >> So d3a7051841f0 seems to do more then just fix the WARN().
> > 
> > Wow, so I guess we do screw up the parsing royally then. :o
> 
> I'm running the kernel with lockdep + list-debugging enabled and
> I could not reproduce this (not easily at least) on a standard
> Fedora 6.0.0 build without that. So maybe the parsing just manages
> to write out of binds a tiny bit which just happens to hit a list_head
> somewhere ... ?

We don't parse any of the LFP data stuff if we didn't manage
to generate the data ptrs. So can't really see how that would
happen. Another theory might be that something else gets
screwed up if we fail to parse anything, but can't really
think how that would lead to list corruption either.

> 
> Either way things look stable with d3a7051841f0 and it turns out
> that Fedora already had that cherry-picked downstream in the
> 5.19.13 kernel which was stable for me too.
> 
> >> So lets try to get d3a7051841f0 added to the official stable series
> >> ASAP (I just noticed that Mark Pearson from Lenovo has already added it
> >> to Fedora's 6.0.2 build.
> > 
> > I think I'd also pick d3a7051841f0^ i.e. both commits:
> > 
> > d3a7051841f0 ("drm/i915/bios: Use hardcoded fp_timing size for generating LFP data pointers")
> > 4e78d6023c15 ("drm/i915/bios: Validate fp_timing terminator presence")
> > 
> > for stable.

Ack from me.

> 
> That sounds good, can you take care of submitting these to gkh ?
> 
> Regards,
> 
> Hans

-- 
Ville Syrjälä
Intel
