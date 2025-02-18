Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 339B3A3A1DD
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2025 16:57:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC6EF10E3C0;
	Tue, 18 Feb 2025 15:57:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VO/MABLP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCB9710E3C0;
 Tue, 18 Feb 2025 15:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739894224; x=1771430224;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=XuOBGmq/BD9exp+SZ7U0g/hzIg/lifb48RlcrJBDQY4=;
 b=VO/MABLPFAJeQC2I1xl62TN+7ixoS4pjFI2fWUQQcOMQgQDwz2yfCYZh
 qMVmBRK5wnxn35DuRQT3MWfqShJ4XRzKVLxYEjUnGZCXhmbVLAsZj/Rtb
 Ql5aE2uwzZFnWCfnKqjvy3S2CW34oy5zgN3XOooTraDLp0x0kBC/G7nI7
 pgsBn+AxdIBdHjUwGNIMNQ+zp9Ui5giYZztJChEq6UXQwq7NXvx7AOC8Z
 Aro6JQGx8OyBSrBSD3ngADPPSaVdp7mhAB0yXq4XvX5aIGTCiOZHKYnzX
 Bzvnd9V6D8/4Q1HVF0ioDQbUChbS1BU0+bLuq1WXxtvpZpISjsWGYI1Dl Q==;
X-CSE-ConnectionGUID: s0Z3p8mcSiiH68PqgZAM9Q==
X-CSE-MsgGUID: cnh/Az4BSI65VGaBOB7T7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="50810224"
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="50810224"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Feb 2025 07:57:04 -0800
X-CSE-ConnectionGUID: QhbhzaHKQH+0ixSgKxNNjQ==
X-CSE-MsgGUID: cuLR44rsRGueuiI0rhJbJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,296,1732608000"; d="scan'208";a="114626418"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 18 Feb 2025 07:57:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Feb 2025 17:57:00 +0200
Date: Tue, 18 Feb 2025 17:57:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 1/2] drm/{i915,xe}: Move intel_pch under display
Message-ID: <Z7StzI4OHWACh32c@intel.com>
References: <20250218010224.761209-1-rodrigo.vivi@intel.com>
 <878qq3o36t.fsf@intel.com> <Z7SdGtcVfduRSkNs@intel.com>
 <Z7Sm7Z1pfz0hYGD2@intel.com>
 <f37c9a532c6dd18ffae8264305d6b1e3b63f2155.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <f37c9a532c6dd18ffae8264305d6b1e3b63f2155.camel@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Feb 18, 2025 at 03:34:14PM +0000, Vivi, Rodrigo wrote:
> On Tue, 2025-02-18 at 17:27 +0200, Ville Syrjälä wrote:
> > On Tue, Feb 18, 2025 at 09:45:46AM -0500, Rodrigo Vivi wrote:
> > > On Tue, Feb 18, 2025 at 02:19:38PM +0200, Jani Nikula wrote:
> > > > On Mon, 17 Feb 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > > > > The only usage of the "PCH" infra is to detect which South
> > > > > Display
> > > > > Engine we should be using. Move it under display so we can
> > > > > convert
> > > > > all its callers towards intel_display struct later.
> > > > 
> > > > Yeah, PCH is becoming a blocker to finishing the conversions of
> > > > many
> > > > files from drm_i915_private to intel_display. We'll need to do
> > > > something
> > > > like this.
> > > 
> > > First of all, I'm sorry for not sending a cover letter explaining
> > > more about
> > > my thoughts here and also for not tagging this as an RFC. And thank
> > > you very
> > > much for jumping in the discussion.
> > > 
> > > I started this, exactly because my consolidation of display pm now
> > > is
> > > blocked in some HPD calls. Then I checked the IRQ code and I have
> > > some
> > > ideas do organize that, but that got blocked on the PCH, then I
> > > moved
> > > towards seeing what could and should be done to PCH and these 2
> > > patches
> > > is the initial of my conclusion.
> > > 
> > > > 
> > > > I was eyeing the PCH checks outside of display, and frankly many
> > > > of them
> > > > are plain wrong (done to check stuff that's unrelated to PCH, but
> > > > happens to match desired platforms), or should be in display
> > > > (e.g. gt_record_display_regs()). But there are also legitimate
> > > > checks, I
> > > > think in clock gating.
> > > 
> > > Yes, this one in GPU hang was one of the most strange ones, but
> > > then
> > > I noticed it is inside this function that should be moved to the
> > > display
> > > side anyway.
> > > 
> > > Other cases are:
> > > drivers/gpu/drm/i915/intel_clock_gating.c:
> > > 
> > > This entire file should be in the display side.
> > 
> > Mostly, but it still has bunch of gt workarounds in it.
> > Those all should be moved into the gt w/a framework.
> 
> hmm... indeed. But anyway, all that I saw using PCH is related
> to display.
> 
> > 
> > > But I got super
> > > scared now because it looks like it is not getting called from
> > > nowhere.
> > > So we might be missing many display workarounds. I will investigate
> > > this more later.
> > 
> > It's hidden behind some confusing macro stuff.
> 
> oh no! someone is reading too much i915-guc related code :(
> 
> > 
> > > 
> > > drivers/gpu/drm/i915/i915_irq.c:
> > > This is exactly where I got blocked. All the PCH calls inside it
> > > are display related that I need to move to the display side in
> > > order to have a proper split and make the display to stop using
> > > the irq spin locks directly.
> > > 
> > > drivers/gpu/drm/i915/i915_gpu_error.c:
> > > good idea on moving that entire function to display anyway.
> > 
> > That seems like a random set of stuff no one actually cares about.
> > Should just nuke the whole thing, apart from DERRMR because that
> > one is actually relevant for GPU hangs. Though that one doesn't
> > exist on VLV/CHV so currently some random garbage is being read
> > into it on those platforms.
> 
> Indeed. Let's see what we can kill without breaking decode tools.
> But moving the function entirely to display is the easiest for now.
> 
> So, about the PCH stuff itself moving to inside display, no objection
> from your side, right Ville?

Seems mostly doable.

The one thing I'm not quite sure how to deal with is the
SDEIER hack in ilk_irq_handler(). Maybe we can move it into
{ilk,ivb}_display_irq_handler(), just need to think about
the ordering a bit.

Hmm, the whole ilk+ irq handling still looks fairly dodgy.
I should probably resurrect my old irq ack+handle split
series and finally get that code into proper form...

-- 
Ville Syrjälä
Intel
