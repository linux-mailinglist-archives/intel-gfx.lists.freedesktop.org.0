Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20641C6B75B
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 20:34:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 034F110E1F2;
	Tue, 18 Nov 2025 19:34:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AZBZ/prs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF56910E1E9;
 Tue, 18 Nov 2025 19:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763494449; x=1795030449;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=UOyi9fwKFK5kXkNNtmT0G5IrdNQQSjQKI8iw+MQ2u0c=;
 b=AZBZ/prsB12t41PjRcXhEwpNYiKRZlQ1uwkl+IMG2+nSZ9c75+JbayA6
 RTNhgspzbz0BqvF62nfhVIsD2b4vVRlZXXNVXUlOTorVMNxMbgV3ajXeA
 jhyC5+7sP7Hdd559kN2diL7gcyv7ENLP1YnUxNUWqkOsCt5W+hcbfyBSj
 GLb1p+EN8ElwJYANfeZbtUvaZsKt82VRwNnW9d3MBajt4mMW3PYOr8ILz
 SCJ8RliDU3b4kozuS6eMnNIa29RsqCGGI24s1Nk28Ht22oyNCxwn++Doh
 E/ud5GQvhI8jbNH9F6p6RU8C9tF9TAVBCME3CkCwwD5/gnZDLUuEGoXrg w==;
X-CSE-ConnectionGUID: Ynq/S0elRDik77rI4qyDrQ==
X-CSE-MsgGUID: bDtDHhThSjeOMyU2uvxIGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11617"; a="64728493"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="64728493"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 11:34:09 -0800
X-CSE-ConnectionGUID: IKoJ9HRESke1WPMhWMuyNg==
X-CSE-MsgGUID: 2fLwIpJ2T9iS5m/4qkqU9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="221755264"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.245.187])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2025 11:34:07 -0800
Date: Tue, 18 Nov 2025 21:34:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: change pipe order for platforms
 with big joiner
Message-ID: <aRzKK_fxBHnpjp-w@intel.com>
References: <20251118095801.2248786-1-jani.nikula@intel.com>
 <20251118133758.2373008-1-jani.nikula@intel.com>
 <0989b7647aef0c1dfacbdd302e5b3720d3a558c4@intel.com>
 <aRyvdsdmuS7LvI1F@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aRyvdsdmuS7LvI1F@intel.com>
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

On Tue, Nov 18, 2025 at 07:40:06PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 18, 2025 at 03:43:35PM +0200, Jani Nikula wrote:
> > On Tue, 18 Nov 2025, Jani Nikula <jani.nikula@intel.com> wrote:
> > > When big joiner is enabled, it reserves the adjacent pipe as the
> > > secondary pipe. This happens without the user space knowing, and
> > > subsequent attempts at using the CRTC with that pipe will fail. If the
> > > user space does not have a coping mechanism, i.e. trying another pipe,
> > > this leads to a black screen.
> > >
> > > If the platform allows joining A+B, map the CRTCs to pipes in order A,
> > > C, B, and D to trick userspace to using pipes that are more likely to be
> > > available for joining.
> > >
> > > Although there are currently no platforms with more than four pipes, add
> > > a fallback for initializing the rest of the pipes to not miss them.
> > >
> > > v2: Also remove WARN_ON()
> > 
> > There's still this in intel_atomic_check_joiner():
> > 
> > 		/*
> > 		 * The state copy logic assumes the primary crtc gets processed
> > 		 * before the secondary crtc during the main compute_config loop.
> > 		 * This works because the crtcs are created in pipe order,
> > 		 * and the hardware requires primary pipe < secondary pipe as well.
> > 		 * Should that change we need to rethink the logic.
> > 		 */
> > 		if (WARN_ON(drm_crtc_index(&primary_crtc->base) >
> > 			    drm_crtc_index(&secondary_crtc->base)))
> > 			return -EINVAL;
> > 
> > This still works for A+B and C+D joining, but will fail loudly for B+C
> > joining.
> > 
> > Ideas?
> 
> Hmm, I think I got rid of that requirement semi-accidentally in
> commit 3a5e09d82f97 ("drm/i915: Fix intel_modeset_pipe_config_late() for
> bigjoiner")
> 
> So it looks to me like we can just drop that check entirely.

After some pondering we might have a bit of problem with 
the for_each_intel_crtc*() stuff. At least during
the hardware programming phase we'd like those to walk the
crtcs in pipe order but currently they use the crtc index
order.

Say we have a commit with pipes A+B,C. Currently we do
everything in the C->B->A or A->B->C order. Thus the joined
pipe A+B are always updated back-to-back, giving us the best
chance to get an atomic update across them. With the shuffling
pipe C will now sneak in between A and B, making it less likely
that the updates on A and B will happen on the same frame.

So I'm thinking we probably want to change all the 
for_each_intel_crtc*() macros to use the pipe order as well.
Either that or we need to review each use case and rewrite
the important ones to use the pipe order.

for_each_pipe_crtc_modeset_{disable,enable}() are fortunately
already immune to crtc shuffling. Those absolutely have to use
the correct pipe order or else we'd completely screw up the
joiner programming sequence during modesets.

-- 
Ville Syrjälä
Intel
