Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE6F9EE47B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 11:48:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3070B10E224;
	Thu, 12 Dec 2024 10:48:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d1EWWZ8B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DF2110E224
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 10:48:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734000515; x=1765536515;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=7FYUihr6O0fRfb4tDfbPUE9OUsgtdByMac5kwwFeBjs=;
 b=d1EWWZ8B7SMyzhM2i2glf+6U6/5Fh4+FAKh0lYHrcHGC2sN/ITDCQCp3
 y199N96lmEXTTGgyyuUmHdUYhIC3KGbyWKHC85K+fDGkqMyers8ngSmxR
 TJEaIVl5SeN+IDe+L+c/Wp5ZHX2IlcMdnY24GJM3QLzO+x+SiktFm1vWa
 bFEg3MCEexoF7pIg0PL+S4tbuqqytRNPWceSdhXGgwdYVzW6spFwkfiYF
 a/1MkVHkqfnwSBhyeIRp0sp4sKLNtlXmWLV+u00tiiT+eHLn7vF5jn0qC
 Ahcr7E6WpuWIlvXt+3X6lhAJkbwpkKWnag/pBb8LhF2DhQYewLPklPtzt A==;
X-CSE-ConnectionGUID: slHmrNnQQx6pZIWYp/wYZg==
X-CSE-MsgGUID: HnfvWneZQwWWdL23fkKUog==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="34653681"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="34653681"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:48:35 -0800
X-CSE-ConnectionGUID: 5JptqckrTNyW86o5J5IJKw==
X-CSE-MsgGUID: gfiDdJ4ASdyRssHI2YTDjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="133576774"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.101])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 02:48:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Dave Airlie <airlied@redhat.com>, Simona
 Vetter <simona.vetter@ffwll.ch>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: b4 Merge patch series (was: Re: [PATCH v4 0/4] Implement
 Wa_14022698537)
In-Reply-To: <Z1q0s7ncARjeN8ZM@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241211115952.1659287-1-raag.jadav@intel.com>
 <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan> <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
 <Z1qgcHImmUFB9SVi@ashyti-mobl2.lan> <Z1q0s7ncARjeN8ZM@black.fi.intel.com>
Date: Thu, 12 Dec 2024 12:48:27 +0200
Message-ID: <87o71hw51g.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 12 Dec 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Thu, Dec 12, 2024 at 09:36:00AM +0100, Andi Shyti wrote:
>> Hi Raag,
>> 
>> On Thu, Dec 12, 2024 at 05:22:32AM +0200, Raag Jadav wrote:
>> > On Thu, Dec 12, 2024 at 12:40:07AM +0100, Andi Shyti wrote:
>> > > > Raag Jadav (4):
>> > > >   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
>> > > >   drm/i915/dg2: Introduce DG2_D subplatform
>> > > >   drm/i915: Introduce intel_cpu_info.c for CPU IDs
>> > > >   drm/i915/dg2: Implement Wa_14022698537
>> > > 
>> > > merged to drm-intel-next.
>> > 
>> > Thanks, appreciate it.
>> > 
>> > Andy usually picks the cover letter as well, we don't do that here?
>> 
>> what do you mean with taking the cover letter?
>> 
>> For pushing the patch I use the dim tool and I feed it with the
>> cover letter's mbox file.
>
> Ah okay. I think he uses b4 with cover letter as a merge patch. Kind of
> like treating it as a PR. It's useful when we have a nice summary which
> adds required context (which I understand is not the case here anyway).
>
> Examples,
>
> $ git show 563532b49aa0aa00
> $ git show e4e17186723570e8

I assume this was done using 'b4 shazam --merge'.

With 10+k commits merged each release, we'd get an insane amount of
placeholder "Merge patch series" merge commits, without an actual merge
of branches, if we chose this approach.

IMO each patch and thus commit should stand on its own merits, and
contain all the information required, without depending on the cover
letter having been merged for informational purposes.

Also, there doesn't appear to be a single merge like that under drm.


BR,
Jani.


-- 
Jani Nikula, Intel
