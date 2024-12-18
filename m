Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAE29F68ED
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2024 15:48:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D78D10EBC1;
	Wed, 18 Dec 2024 14:48:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H/XjcuKB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33F8110EBC1
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Dec 2024 14:48:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734533293; x=1766069293;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=dhHVHF3VCXci1HSj+vSfsoaxc8+a/7neB7/OMMkp11s=;
 b=H/XjcuKBhtjqVZRIFsZaOaLT8mwmt2zQ9OcQjSSkpKIx0IKvvqxrGyfv
 uGIy5XNpxvyiFgFC0499FRn6+7pkfazE4T2oB8y/1sh99/GzspYOawfpJ
 JM1UWvXP69DQVQ62bCPIqGRBuLo5mvhnhVfSDJEBuEyfNh7EKO5mh44U0
 dziPyekv7fQ+sd1VXb2kXHxFhuUOJg8jWjqLti0+JajIEW3aDwg4wrTFq
 b8Lz6yebqeLCykQrq1hsXIaBvs6UhlytDkDwTGktVJdlZ7jZYX92Oqcvn
 BUA9iIf/1eXuo2hwfpzaok5AdoNC7VZgU7CtObYn1ABVNoGMHyGGARv41 w==;
X-CSE-ConnectionGUID: K8y8+DwaQMmzHsYbQCSWaA==
X-CSE-MsgGUID: ek8awNelTOi++icfLJ54LA==
X-IronPort-AV: E=McAfee;i="6700,10204,11290"; a="35170083"
X-IronPort-AV: E=Sophos;i="6.12,244,1728975600"; d="scan'208";a="35170083"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 06:48:13 -0800
X-CSE-ConnectionGUID: z/y/dl2KTRGD/vj5QF6Ksg==
X-CSE-MsgGUID: T//VTT7STV+/q2E/8zlMXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="102886371"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.245.246.114])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2024 06:48:10 -0800
Date: Wed, 18 Dec 2024 15:48:06 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org, vidya.srinivas@intel.com,
 Ville Syrjala <ville.syrjala@intel.com>
Subject: Re: [RFC PATCH] i915/gt: Reapply workarounds in case the previous
 attempt failed.
Message-ID: <Z2LgpnKVp-0fhTlj@ashyti-mobl2.lan>
References: <aqoql4ri3vpe4larpkz4p6hxy76agq6pmn6gunt5xv56hxdbye@72ilwk7rpiu5>
 <Z1MacMC8XyyyHcqj@intel.com> <Z1r4YJ0TkjIsgoz8@ashyti-mobl2.lan>
 <20241216212751.GZ5725@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241216212751.GZ5725@mdroper-desk1.amr.corp.intel.com>
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

Hi Matt,

On Mon, Dec 16, 2024 at 01:27:51PM -0800, Matt Roper wrote:
> On Thu, Dec 12, 2024 at 03:51:12PM +0100, Andi Shyti wrote:
> > On Fri, Dec 06, 2024 at 10:38:24AM -0500, Rodrigo Vivi wrote:
> > > On Thu, Dec 05, 2024 at 03:47:35PM +0000, Sebastian Brzezinka wrote:
> > > > `wa_verify`sporadically detects lost workaround on application; this
> > > > is unusual behavior since wa are applied at `intel_gt_init_hw` and
> > > > verified right away by `intel_gt_verify_workarounds`, and  `wa_verify`
> > > > doesn't fail on initialization as one might suspect would happen.
> > > > 
> > > > One approach that may be somewhat beneficial is to reapply workarounds
> > > > in the event of failure, or even get rid of verify on application,
> > > > since it's redundant to `intel_gt_verify_workarounds`.
> > > > 
> > > > This patch aims to resolve: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> > > 
> > > It should be:
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12668
> > 
> > aapart from the formatting issues this was suggested by me. We
> > have observed some sporadic vailures in applying the specific
> > workaround added by Ville (now cc'ed to the thread) in commit
> > 0ddae025ab6c ("drm/i915: Disable compression tricks on JSL").
> > 
> > Because it's sporadic, we could give it one more chance and try
> > to re-apply it.
> 
> That sounds like it's just papering over the issue without really
> figuring out what's truly going on.

Independently from your next comments and the implementation, the
sporadic errors we've seen have an extremely low rate and we
weren't able to make sense to them or fully test them.

We had a short chat with Ville (who implemented the workaround)
amd he suggested to leave it as it is, while I suggested to give
it another chance.

> Looking at the current implementation, it looks like at least one
> possible problem is that it was implemented in rcs_engine_wa_init, but
> the CACHE_MODE_0 register itself is part of the LRC (according to bspec
> 18907).  So we want to move it to icl_ctx_workarounds_init() instead to
> make sure it gets recorded in the golden context image.  Our
> initialization and reset handling for workarounds touching registers in
> the context are different from those that aren't.
> BTW, I'm a bit surprised to see us needing to implement this workaround
> in the kernel at all.  CACHE_MODE_0 is a register that's under userspace
> control (according to bspec 14181), so we usually expect the userspace
> drivers to own implementing any workarounds dealing with the registers
> they control.  Indeed, it looks like Mesa's Iris driver already has an
> implementation of this workaround in iris_state.c:
> 
>    if (devinfo->disable_ccs_repack) {
>       iris_emit_reg(batch, GENX(CACHE_MODE_0), reg) {
>          reg.DisableRepackingforCompression = true;
>          reg.DisableRepackingforCompressionMask = true;
>       }
>    }
> 
> and that workaround was added back in mid-2019 so it should be in all
> recent Mesa releases.

Ville? Any comment here?

Andi
