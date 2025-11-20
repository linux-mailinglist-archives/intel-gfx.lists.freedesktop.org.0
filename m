Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 659DBC7476C
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Nov 2025 15:11:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EDB8410E760;
	Thu, 20 Nov 2025 14:11:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MVf6HQEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0818C10E764;
 Thu, 20 Nov 2025 14:11:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763647877; x=1795183877;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7eFFvIVCBCsclpbW0ra+WXQ5+FOBTWzPIGvNmQ0cWGU=;
 b=MVf6HQEn5VmWojm5S5ul53NNjfKFx8fwkAypSYigRGoW7B0Vc+0JiHa8
 Umgugca9Ri4W75052ni3JoFEfzuZj2bWeOAl3El1qvB9tf+Pj4EuJs3B0
 Cnondafh64WgYBwlZRXbFoK2TQtltwA8O3ARbY6MU8FUZef2nrXtXSKJ6
 HuDXGcShF1EhytZi+TfiBEpwAeaAbn8oWyL3JVuAbYdIPtYV8OO7cQUi+
 mqbSrgWCRYle2qVqeqqEcwQh3CmsRFfp6vDdPuL0YUR2vVdEfMwF/kS36
 ofwMJvwlQGRpcT4x0yS9rzxqbHEIMzLO9jFn5NNOBUMcYHDA+mQF6jVpZ g==;
X-CSE-ConnectionGUID: Zr7aEJa1RBijpOp1Xqe29Q==
X-CSE-MsgGUID: 8xyZ6PRIRP2/RYnm5830KA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="69573667"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="69573667"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:11:17 -0800
X-CSE-ConnectionGUID: r4qNRIeNT9W+H4wSh1pnNQ==
X-CSE-MsgGUID: w2BcHFk9QTqJuZEeSm0HLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="195520607"
Received: from inaky-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.245.244.92])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 06:11:15 -0800
Date: Thu, 20 Nov 2025 16:11:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to
 polling read"
Message-ID: <aR8hfrY3EjxL8Loq@intel.com>
References: <20251119185310.10428-1-ville.syrjala@linux.intel.com>
 <20251119185310.10428-3-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307CCFF497C2D864B434FDCBAD4A@IA0PR11MB7307.namprd11.prod.outlook.com>
 <220fd18a4d5d0ce5fb8c4c61041c968f6b42cd43@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <220fd18a4d5d0ce5fb8c4c61041c968f6b42cd43@intel.com>
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

On Thu, Nov 20, 2025 at 03:08:12PM +0200, Jani Nikula wrote:
> On Thu, 20 Nov 2025, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
> >> -----Original Message-----
> >> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> >> Syrjala
> >> Sent: Thursday, November 20, 2025 12:23 AM
> >> To: intel-gfx@lists.freedesktop.org
> >> Cc: intel-xe@lists.freedesktop.org
> >> Subject: [PATCH 2/2] Revert "drm/i915/dp: change aux_ctl reg read to polling
> >> read"
> >> 
> >> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >> 
> >> This reverts commit 5a9b0c7418448ed3766f61ba0a71d08f259c3181.
> >> 
> >> The switch from AUX interrupts to pollign was very hand-wavy.
> >> Yes, there have been some situations in CI on a few platforms where the AUX
> >> hardware seemingly forgets to signal the timeout, but those have been
> >> happening after we switched to polling as well. So I don't think we have any
> >> conclusive evidence that polling actually helps here.
> >> 
> >> Someone really should root cause the actual problem, and see if there is a
> >> proper workaround we could implemnt (eg. disabling clock gating/etc.). In the
> >> meantime just go back to using the interrupt for AUX completion.
> >> 
> >> If the hardware fails to signal the timeout we will just hit the
> >> wait_event_timeout() software timeout instead. I suppose we could try to tune
> >> the software timeout to more closely match the expected hardware timeout.
> >> Might need to use
> >> wait_event_hrtimeout() or something to avoid jiffies granularity issues...
> >> 
> >> The AUX polling is also a hinderance towards using poll_timeout_us() because
> >> we have a very long timeout, but would need a fairly short polling interval to
> >> keep AUX transfer reasonably fast. Someone would need to come up with good
> >> numbers in a somewhat scientific way.
> >> 
> > Upon multiple rounds of validation based on the results polling had improvements when compared with the interrupt mechanism. We can optimize more by using poll_timeout, I am afraid that reverting back to interrupts may end up with more failures.

What exactly do you mean by failures? IIRC the only thing we've
seen is the software timeout firing instead of the hw timeout,
which shouldn't be a problem really. Eiter way the AUX transfer
failed.

> 
> I'm not sure the issues were root caused properly.

At least the commit message is completely useless in explaining any
of it. No explanation of what the actual issue seen was, no test
resutls, no mention of what other workarounds were attempted, 
no root cause...

-- 
Ville Syrjälä
Intel
