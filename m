Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA44F9EE39B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB4E910E213;
	Thu, 12 Dec 2024 10:02:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dgZ9Z5Ha";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7957910E213
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 10:02:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733997753; x=1765533753;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=c+niypVveZ9/o27C0Qh39fRJcLCEWPFwCuCUPkteOLs=;
 b=dgZ9Z5HaPtJg0MiO0yi0HvAHMQc9IDCcgt+0zDKiCdjH5suiWs0ry1H7
 1GhHIfXeSfsIF537UaMc53lWSZo8rOcL+1uYgvIx/KnTEfhNQxFX2HxQj
 RXjFt4idZTPJjrfHxsUq3onw8N6gTvUpm6Ye2Z7GTaczfqhA5I4A8wx5a
 bQjM8eHogq3DCg2llA9jv33Z1cQR/lvE3uPMR4dNXpyzitxwZ0d218doZ
 AcB+BJ3p2KpkxsnMfXrA6uJsjEtOEnefQ5pPGjHGZyclnNVZG5toZMgPQ
 Nb9JVGavPeXSwP2RcVrVuLJ16GRmr1PcaAYw+Iq1MadqzrUJesBNIfIm3 w==;
X-CSE-ConnectionGUID: tWEKRk0fQC2sZaxC79KQIA==
X-CSE-MsgGUID: UGbK2msrQkmV3MzFO8Mx8Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34133923"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="34133923"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:02:33 -0800
X-CSE-ConnectionGUID: MFtgSmpTT+ubpwFweTEqtQ==
X-CSE-MsgGUID: hIm3ZbIBScSCkvsWA7tHfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="96980941"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:02:30 -0800
Date: Thu, 12 Dec 2024 12:02:27 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v4 0/4] Implement Wa_14022698537
Message-ID: <Z1q0s7ncARjeN8ZM@black.fi.intel.com>
References: <20241211115952.1659287-1-raag.jadav@intel.com>
 <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan>
 <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
 <Z1qgcHImmUFB9SVi@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z1qgcHImmUFB9SVi@ashyti-mobl2.lan>
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

On Thu, Dec 12, 2024 at 09:36:00AM +0100, Andi Shyti wrote:
> Hi Raag,
> 
> On Thu, Dec 12, 2024 at 05:22:32AM +0200, Raag Jadav wrote:
> > On Thu, Dec 12, 2024 at 12:40:07AM +0100, Andi Shyti wrote:
> > > > Raag Jadav (4):
> > > >   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
> > > >   drm/i915/dg2: Introduce DG2_D subplatform
> > > >   drm/i915: Introduce intel_cpu_info.c for CPU IDs
> > > >   drm/i915/dg2: Implement Wa_14022698537
> > > 
> > > merged to drm-intel-next.
> > 
> > Thanks, appreciate it.
> > 
> > Andy usually picks the cover letter as well, we don't do that here?
> 
> what do you mean with taking the cover letter?
> 
> For pushing the patch I use the dim tool and I feed it with the
> cover letter's mbox file.

Ah okay. I think he uses b4 with cover letter as a merge patch. Kind of
like treating it as a PR. It's useful when we have a nice summary which
adds required context (which I understand is not the case here anyway).

Examples,

$ git show 563532b49aa0aa00
$ git show e4e17186723570e8

Raag
