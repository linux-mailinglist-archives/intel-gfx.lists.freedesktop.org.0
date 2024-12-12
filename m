Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CF19EE159
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2024 09:35:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B4C10E45A;
	Thu, 12 Dec 2024 08:35:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jYkiGjnM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A0310E45A
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2024 08:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733992509; x=1765528509;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=D2JX/Z8GOC6SsmyMqmwGD//1oz1u6TFhmOhs8d6gLAE=;
 b=jYkiGjnMCLBgIGyD206K3jBPg4pZfPLcQNisr773fhM49sI3iSPnQhZI
 Zj6W8v0aT5WWXyTfhdbDc4vkQTW/63TNDMf9KJk7r43v//LIsixA6AOpX
 IzqrMOqAnIeM5IxjxnVSpnlPUQijCWSb+JHikyTpUW4aZ5Ro6TkjNzOz7
 sQpSyMewU179GVYLrKXkSAyB6owUZBYVa/f04r+IrG8s2Cem3CAdyntUs
 MxiHCIGSEykSmxaEUAjgxc0gBFrjVCjjwwASR18b1Ygma/nNDt2qUQ3Lu
 ksQ1QyimaMB1kNyVPiwLvfwVHRVf5V/XwGsVfEGPx7bgN9AyC3uxHFolH g==;
X-CSE-ConnectionGUID: qcNUffiLSLmoqYl8EdoomA==
X-CSE-MsgGUID: Tq74Z6KtSLigI1dRGcRg5g==
X-IronPort-AV: E=McAfee;i="6700,10204,11283"; a="38088353"
X-IronPort-AV: E=Sophos;i="6.12,228,1728975600"; d="scan'208";a="38088353"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 00:35:09 -0800
X-CSE-ConnectionGUID: kM0AXxN9QYeToJo0pnAxUA==
X-CSE-MsgGUID: /I7iDCJ8TQerC/9HzgLHTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,227,1728975600"; d="scan'208";a="95916195"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.101])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2024 00:35:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>, Andi Shyti <andi.shyti@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v4 0/4] Implement Wa_14022698537
In-Reply-To: <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241211115952.1659287-1-raag.jadav@intel.com>
 <Z1oi12-OwzLRGLoX@ashyti-mobl2.lan> <Z1pW-HyMsRdsWp2Y@black.fi.intel.com>
Date: Thu, 12 Dec 2024 10:35:02 +0200
Message-ID: <87msh1xps9.fsf@intel.com>
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
> On Thu, Dec 12, 2024 at 12:40:07AM +0100, Andi Shyti wrote:
>> Hi Raag,
>> 
>> > Raag Jadav (4):
>> >   drm/intel/pciids: Refactor DG2 PCI IDs into segment ranges
>> >   drm/i915/dg2: Introduce DG2_D subplatform
>> >   drm/i915: Introduce intel_cpu_info.c for CPU IDs
>> >   drm/i915/dg2: Implement Wa_14022698537
>> 
>> merged to drm-intel-next.
>
> Thanks, appreciate it.
>
> Andy usually picks the cover letter as well, we don't do that here?

What do you mean by "picking the cover letter?"


BR,
Jani.


-- 
Jani Nikula, Intel
