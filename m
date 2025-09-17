Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB86B7DEDD
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A4CE10E1AD;
	Wed, 17 Sep 2025 12:36:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Goapz1Dj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87B0D10E1AD;
 Wed, 17 Sep 2025 12:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758112600; x=1789648600;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=DdWiAkkVa5p+fFuaeYUovNehLLhuzWA/xVo6GS+Cj6o=;
 b=Goapz1Djs5USI6DRY8tBioS6n7+ZuJutK0+ok5/nMkS0A0TnDQbzbQ+t
 LbbQ+SaQfKEsjyqcKeKFp4f+n+1gDmELlwlcw+fbzmDRLaWdEValjSWsH
 gCEAYaa2wKf3pPr6Dg2vRgoCQxQjrhd66+3FG3mMOpn6Ox1rH5FFTIJIj
 sTHdkyoeHNQ135GODdvShioQ6xa5ufFemG8WWGAnNET6Nr94T7KDY984i
 8+5YPGf9VoREZKvgqNWV2Waj+jpf/mNdbZYlOXo8qCyZECMHgFmBG6raR
 oQ4ws3dHE/fQb++i5q5czNlpqo7N3fAtZWIxZSScgu75bMqWGOnDWaE92 w==;
X-CSE-ConnectionGUID: zRYvqA8zQM+UHuzRyPlMDQ==
X-CSE-MsgGUID: cEr4O5n6QPu0BRHxXmeh6g==
X-IronPort-AV: E=McAfee;i="6800,10657,11556"; a="71782207"
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="71782207"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 05:36:40 -0700
X-CSE-ConnectionGUID: NlKifTQ2Qe66WjlJIC/uhQ==
X-CSE-MsgGUID: BJYADIAiSu+6zGSdy78CQg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,272,1751266800"; d="scan'208";a="212380266"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.83])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2025 05:36:38 -0700
Date: Wed, 17 Sep 2025 15:36:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
Message-ID: <aMqrVCeLB-OAUM6H@intel.com>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com>
 <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
 <aMgHS992-0aZ8FIb@intel.com>
 <3328d2c9-e398-4097-a3de-fdee441fa50d@intel.com>
 <3f1d3ce2-fb8a-4576-a74a-cd8b59a016fc@intel.com>
 <aMmy79ka0CgBrLmf@intel.com>
 <bc897dc1-b98e-4ba3-b6d3-474cd156b581@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bc897dc1-b98e-4ba3-b6d3-474cd156b581@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Sep 17, 2025 at 04:08:39PM +0530, Nautiyal, Ankit K wrote:
> 
> On 9/17/2025 12:26 AM, Ville Syrjälä wrote:
> > On Tue, Sep 16, 2025 at 08:08:01PM +0530, Nautiyal, Ankit K wrote:
> >> On 9/16/2025 8:00 PM, Nautiyal, Ankit K wrote:
> >>> On 9/15/2025 6:02 PM, Ville Syrjälä wrote:
> >>>> On Sun, Sep 14, 2025 at 11:29:10AM +0530, Nautiyal, Ankit K wrote:
> >>>>> On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
> >>>>>> On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
> >>>>>>> When VRR TG is always enabled and an optimized guardband is used,
> >>>>>>> the pipe
> >>>>>>> vblank start is derived from the guardband.
> >>>>>>> Currently TRANS_SET_CONTEXT_LATENCY is programmed with
> >>>>>>> crtc_vblank_start -
> >>>>>>> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
> >>>>>>> With shorter guardband this become a large window.
> >>>>>>>
> >>>>>>> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl
> >>>>>>> value to 1
> >>>>>>> when using optimized guardband.
> >>>>>>>
> >>>>>>> Also update the VRR get config logic to set crtc_vblank_start
> >>>>>>> based on
> >>>>>>> vtotal - guardband, during readback.
> >>>>>>>
> >>>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >>>>>>> ---
> >>>>>>>     drivers/gpu/drm/i915/display/intel_display.c | 36
> >>>>>>> ++++++++++++++++----
> >>>>>>>     drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
> >>>>>>>     2 files changed, 38 insertions(+), 7 deletions(-)
> >>>>>>>
> >>>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>>> b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>>> index 55bea1374dc4..73aec6d4686a 100644
> >>>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>>>>> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct
> >>>>>>> intel_crtc_state *crtc_state)
> >>>>>>>         return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> >>>>>>>     }
> >>>>>>>     +static int intel_set_context_latency(const struct
> >>>>>>> intel_crtc_state *crtc_state,
> >>>>>>> +                     int crtc_vblank_start,
> >>>>>>> +                     int crtc_vdisplay)
> >>>>>>> +{
> >>>>>>> +    struct intel_display *display = to_intel_display(crtc_state);
> >>>>>>> +
> >>>>>>> +    /*
> >>>>>>> +     * When VRR TG is always on and optimized guardband is used,
> >>>>>>> +     * the pipe vblank start is based on the guardband,
> >>>>>>> +     * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
> >>>>>>> +     */
> >>>>>>> +    if (intel_vrr_always_use_vrr_tg(display))
> >>>>>>> +        return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
> >>>>>> What are you trying to achieve with this? As in what problem are you
> >>>>>> seeing with the current SCL programming?
> >>>>> In VRR TG mode with optimized guardband, the guardband is shortened and
> >>>>> vblank start is moved to match the delayed vblank position.
> >>>>>
> >>>>> The SCL value which we are currently writing as difference between
> >>>>> delayed vblank and undelayed vblank becomes quite large.
> >>>>>
> >>>>> With this large SCL, the flipline decision boundary which is given by
> >>>>> delayed vblank start and SCL lines is same as the undelayed vblank.
> >>>> Everything should match the undelayed vblank.
> >>>>
> >>>>> It seems that intel_dsb_wait_vblank_delay() (in turn
> >>>>> intel_dsb_wait_usec()) does not behave correctly within the W2 window
> >>>>> (between flipdone decision boundary and delayed vblank start).
> >>>>>
> >>>>> It seems to return prematurely. Since the push bit hasn’t cleared yet,
> >>>>> this leads to DSB poll errors.
> >>>> That doesn't make any sense. That command is supposed to simply wait
> >>>> for the specifid number of microseconds. It should not care at all
> >>>> what is happening with the scanout. If that is not the case then we
> >>>> need to write a synthetic test to reproduce it, and report the
> >>>> problem to the hardware folks.
> >>> You are right, on debugging further I noticed that
> >>> intel_dsb_wait_usec() and intel_dsb_wait_vblank_delay() are working
> >>> correctly.
> >>>
> >>> Due to large SCL, the the intel_dsb_wait_vblanks() is not waiting till
> >>> the undelayed vblank but the safe window, apparently undelayed vblank
> >>> - SCL lines.
> >>>
> >>> We are setting DSB_CHICKEN_REG bits 14-15 : which says: Wait for
> >>> Vblank instruction will use only safe window signal from dptunit in
> >>> DSB HW to complete the wait for vblank instruction.
> >>>
> >>> I am not exactly sure if its mentioned in Bspec that safe window start
> >>> = undelayed vblank start - SCL lines.
> >>>
> >>> Observation:
> >>>
> >>> For example with eDP panel VRR range 40-60 and below mode:
> >>>
> >>> Mode: "2880x1800": 60 347710 2880 2928 2960 3040 1800 1803 1809 1906
> >>>
> >>> Before optimization:
> >>>
> >>> guardband = vblank length = 106; Undelayed vblank start =1800; Delayed
> >>> vblank start = 1906 - 106 = 1800
> >>>
> >>> SCL = 1800 - 1800 = 0
> >>>
> >>> Flipline decision boundary is = 1800
> >>>
> >>> After optimization:
> >>>
> >>> vblank length = 106; guardband = 38; Undelayed Vblank start = 1800;
> >>> Delayed Vblank start = 1868 (1906 - 38)
> >>>
> >>> SCL = 1868 - 1800 = 68
> >>>
> >>> Flipline decision boundary = 1868 - 68 = 1800
> >>>
> >>> Consider lines in  intel_atomic_dsb_finish() :
> >>>
> >>>   intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);         /* If
> >>> flip is earlier than 1732 (1800 - 68) this waits till 1732.*/
> >>>
> >>>                  intel_vrr_send_push(new_crtc_state->dsb_commit,
> >>> new_crtc_state);    /* Push happens immediately*/
> >>>                  intel_dsb_wait_vblank_delay(state,
> >>> new_crtc_state->dsb_commit);        /* Waits for duration (delayed
> >>> vblank start - undelayed vblank start) ie. 68 lines ie. till we reach
> >>> 1732 + 68 = 1800*/
> >>> intel_vrr_check_push_sent(new_crtc_state->dsb_commit,     /* Push is
> >>> not clear yet as delayed vblank start (1868) is not reach yet, we get
> >>> DSB POLL error */
> >>>                                            new_crtc_state);
> >>> intel_dsb_interrupt(new_crtc_state->dsb_commit);       /* DSB
> >>> interrupt is fired earlier */
> >>
> >> Sorry for the bad formatting, perhaps this will be more readable:
> >>
> >>
> >>    intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> >>
> >> /* If flip is earlier than 1732 (1800 - 68) this waits till 1732.*/
> > That does not seem right, or at least it's not how it works on LNL.
> > I just hacked some DSB_STATUS stuff into intel_display_poller [1],
> > and when running that on LNL the safe window always starts at the
> > undelayed vblank.
> >
> > So if we look at the vmax case then I think the diagram should look
> > like this:
> >
> >      udelayed vblank
> >      ^               vmax decision boudnary
> >      |               ^           delayed vblank
> >      |               |           ^                 vmax
> >      |               |           |                 ^
> >      | <- stretch -> | <- scl -> | <- guardband - >|
> >       _______________
> > ..._/               \______________________________... safe window
> >
> > ... push affects curent frame ->|<- push affects next frame ...
> >                                  |
> > 				v
> > 				push send bit clears if set
> >
> > And then for the maximum vrefresh case (defined by flipline instead
> > of vnax) the "stretch" part is something between 0 and
> > delayed_vblank-undelayed_vblank, depending on how we configure SCL.
> >
> > Additionally if a push is sent during the scl window just
> > after the vmax decisioun bondary, said push will still affect
> > the current frame (ie. such a frame will not have a full
> > scl/w2 window). Only a push sent after the delayed vblank
> > will in fact get deferred to the next frame. That particular
> > scenatio isn't really described in the bspec timing diagrams.
> > Though since we always precede the push with a "wait for safe
> > window" for us the push would get deferred to the next frame
> > anyway.
> >
> > Now, I suppose PTL may have changed how the safe window works to
> > support that "SCL during vactive" stuff. I think a bit more poking
> > might be needed to get to the bottom of this...
> >
> > [1] https://github.com/vsyrjala/intel-gpu-tools.git dsb_status_poller
> 
> I have tried with same eDP panel with PTL and LNL.
> I tried my changes where SCL was programmed to 68 in above setup.
> On PTL it does take the safe window as undelayed vblank -SCL.
> 
> I also tried without my changes, but just wrote TRANS_SCL_CONTEXT as 
> 0x44 (68) and got the same result.
> Which is similar to my observation earlier.
> 
> With set context latency as 0 : we get undelayed vblank - SCL 1800 -0 = 
> 1800
> [0] 1798 - 1799 (1799)
> ….
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1798 -   1799
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295
> 
> With set context latency set to larger value eg. 68 (0x44) and I am 
> getting the safe window start as : 1731 (which is around undelayed 
> vblank  - SCL i.e. 1800 -68 -1 = 1732)
> [0] 1730 - 1731 (1731)
> ….
> [0] 1730 - 1731 (1731)
> [0] 1730 - 1731 (1731)
> [0] 1730 - 1731 (1731)
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1730 -   1731
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295
> 
> 
> For LNL:
> With set context latency as 0: we get:
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> [0] 1798 - 1799 (1799)
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1798 -   1799
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295
> 
> But with set context latency as 68 (0x44):we get:
> [0] 1798 - 1799 (1799)
> [0] 1866 - 1867 (1867)
> [0] 1798 - 1799 (1799)
> 
> [0] 1798 - 1799 (1799)
> …
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> [0] 1798 - 1799 (1799)
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> [0] 1866 - 1867 (1867)
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [0]   1866 -   1799
> dsl / pipe A / DSB0 / DSB_STATUS[26]: [1]      0 - 4294967295
> 
> I am not sure why for LNL I am getting 1866 though.

That does look odd. The difference is exactly that 68 lines,
but the start of the safe window should not have moved at all.
One theory might be that there is a brief pulse on the safe
window signal at end of the SCL window. But so far I've not been
able to see observe such a thing on the LNL I have here.

> To sum up there is indeed a difference in safe window start based on SCL 
> lines for LNL and PTL.

Yeah, looks like it. 

So with the SCL=vblank_delay approach we could just do a scanline
window wait just after the intel_dsb_wait_vblanks() to make sure
we're not in that SCL window just before the undelayed vblank.


                   undelayed_vblank
                   ^           delayed_vblank
                   |           ^                 vmin
                   |           |                 ^
     | <-  scl  -> | <- scl -> | <- guardband -> | 
     | <-    safe window    -> |
     | XXXXXXXXXXX |
... vactive     -> | <- vblank ...

But if we do want to minimize SCL (which I'm thinking we do) then
we'll need to do something else since we'll want to wait for the
SCL rather than the vblank delay after the push. So I suppose we'd
need a scanline window wait to make sure we're not in the 
(undelayed_vblank-SCL to delayed_vblank-SCL) range:

                   undelayed_vblank
                   ^                           delayed_vblank
                   |                           ^                 vmin
                   |                           |                 ^
     | <-  scl  -> | <- stretch -> | <- scl -> | <- guardband -> | 
     | <-       safe window     -> |
     | XXXXXXXXXXXXXXXXXXXXXXXXXXX |
... vactive     -> | <- vblank ...

Hmm. I guess that (undelayed_vblank-SCL to delayed_vblank-SCL) window
is actually correct for both cases.

-- 
Ville Syrjälä
Intel
