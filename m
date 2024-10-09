Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 59865997207
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 18:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F6810E78B;
	Wed,  9 Oct 2024 16:42:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MDXhDBnf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7876510E78B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 16:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728492165; x=1760028165;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=ye6hNtG6ZFcunCZa6P/upcP2QpDHszaHlRonFQmK6Rg=;
 b=MDXhDBnfaEQfNP3I7ooujzDpJrqt7MfLplA5cCiLoS7e3I6/PCYNx6qX
 XIAF1uKRx6EAOIvmLbVePUZ/P3Zpx/vqfp+0DT/eYy2F/tVh6xROMhVon
 jxoQNEcP2FSzbhhEZE0vTfHFPBGw0MSqr/8TZFnJytwMBOQQ5k1flohsc
 0QDHoOADS4UYOgoVraTrPECCjS3BfKwVKYWQ68H05f6Nb/XbGqNKwbY5W
 NSXGg5807cI6ThvcEEYfPk77CXILoslOgf8we3oaH5ztgXfi5h1LdqCxX
 F646h1X8vfACxhL0c1FCiyj3PLjXFbj+vAkA3Vu81EGl3GCFvb0RkpCHh A==;
X-CSE-ConnectionGUID: 4rcfHHuyQxqkMMqOqFmK+Q==
X-CSE-MsgGUID: huHHFdGLQoaezA7kld9Hog==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="45274389"
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="45274389"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 09:42:45 -0700
X-CSE-ConnectionGUID: F8YeV4JLSk+G0fKnZkKMbA==
X-CSE-MsgGUID: AYLZF/H0Q124R9ff2mcgXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,190,1725346800"; d="scan'208";a="75983821"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 09:42:43 -0700
Date: Wed, 9 Oct 2024 19:42:40 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Message-ID: <ZwaygLe1WIgkL2uE@black.fi.intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
 <871q0pa0kv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <871q0pa0kv.fsf@intel.com>
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

On Wed, Oct 09, 2024 at 04:05:20PM +0300, Jani Nikula wrote:
> On Wed, 09 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
> >> On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> >> > +
> >> > +/* Wa_14022698589:dg2 */
> >> > +static void intel_enable_g8(struct intel_uncore *uncore)
> >> > +{
> >> > +	if (IS_DG2(uncore->i915)) {
> >> > +		switch (INTEL_DEVID(uncore->i915)) {
> >> 
> >> Even using INTEL_DEVID() is a no-go. There are currently four users, and
> >> even some of them are too much.
> >> 
> >> We try hard to abstract this stuff at a higher level, and there must be
> >> zero direct PCI ID checks in code other than the table driven device
> >> identification. Otherwise it's just impossible to figure out where we do
> >> platform specific stuff for each platform.
> >
> > Even if we use pci_match_id(), we'd need an explicit list to match against.
> 
> Well, we don't use that for individual workarounds or hacks either. When
> you think of using something like that, see what git grep says.
> 
> > Any better way?
> 
> You probably need to turn it into another subplatform, and add it in
> intel_device_info.c. You're probably going to need to rehash the
> INTEL_DG2_*_IDS PCI ID macros too. That's how we tell platforms apart at
> the PCI ID granularity.

Which would be controversial since the ids span across existing subplatforms,
which we don't want to break.

Don't we have quirk mask thing like display?

Raag
