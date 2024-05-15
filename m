Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A91F8C688F
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 16:25:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62D5210EA1D;
	Wed, 15 May 2024 14:25:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fhQObuP5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3727E10EA1D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 14:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715783143; x=1747319143;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=xu3KVLetXiO8to3FINOXYPv3F+/f/i9PGJzbRVteiM8=;
 b=fhQObuP5HgVUfG+vYanXQylUnaTWZHCpzrjDm5cUUksKajGJqMoOl5Am
 Kt+GaGiG+Jcl0kc9TbBlJ9xceL95550utp7GWHn2zvSshzV3KSubjr7CV
 YFMK6+051Wa4zO7YfGmRtjBtV8/B1ua8e2dD3nSKAXouxzBnsIkmKIE+v
 PrAahYf6yruKSjGvSgPk+f7CrFqSR1vRhINx+BL383qzfQ1Oc4hyS0npU
 TUAuyp5MmTHQr4X36y9WsKnDVUyJG7uoUtViqID331YVXEsyonFQOhfzw
 Fz7R0OdHhr2AD/+5x5J3SF4iiFBe0YfLSzuHIuVLHp9cfP2Qwvw9L2BPy A==;
X-CSE-ConnectionGUID: LYd6TxtmS/mhD21GiNlEsw==
X-CSE-MsgGUID: 6KfVbiTORGGbQsRNaEHpfQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="23235803"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="23235803"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 07:25:33 -0700
X-CSE-ConnectionGUID: 8iP5cGIQS168o7ijLyzKgQ==
X-CSE-MsgGUID: /syg6Vm6R5mQy6mGVIpi+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="31006383"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 07:25:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org
Subject: Re: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
In-Reply-To: <87ikzlhiv8.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715340032.git.jani.nikula@intel.com>
 <87ikzlhiv8.fsf@intel.com>
Date: Wed, 15 May 2024 17:25:26 +0300
Message-ID: <8734qjcfu1.fsf@intel.com>
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

On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Fri, 10 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> This is a spin-off from [1], including just the PCI ID macro cleanups,
>> as well as adding a bunch more cleanups.
>>
>> BR,
>> Jani.
>>
>> [1] https://lore.kernel.org/all/cover.1715086509.git.jani.nikula@intel.com/
>>
>>
>> Jani Nikula (8):
>>   drm/i915/pciids: add INTEL_PNV_IDS(), use acronym
>>   drm/i915/pciids: add INTEL_ILK_IDS(), use acronym
>>   drm/i915/pciids: add INTEL_SNB_IDS()
>>   drm/i915/pciids: add INTEL_IVB_IDS()
>>   drm/i915/pciids: don't include WHL/CML PCI IDs in CFL
>>   drm/i915/pciids: remove 11 from INTEL_ICL_IDS()
>>   drm/i915/pciids: remove 12 from INTEL_TGL_IDS()
>>   drm/i915/pciids: don't include RPL-U PCI IDs in RPL-P
>>
>>  arch/x86/kernel/early-quirks.c                | 19 +++---
>
> Bjorn, ack for merging this via drm-intel-next?

No reply from Bjorn, Cc: the x86 maintainers and list, could I get an
ack from you please?

I'd like to get these PCI ID macro changes moving forward, I've got more
work pending on this.

Lore link to the whole series [1].

Thanks,
Jani.


[1] https://lore.kernel.org/r/cover.1715340032.git.jani.nikula@intel.com

>
>>  .../drm/i915/display/intel_display_device.c   | 20 +++---
>>  drivers/gpu/drm/i915/i915_pci.c               | 13 ++--
>>  drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
>>  include/drm/i915_pciids.h                     | 67 ++++++++++++-------
>>  5 files changed, 71 insertions(+), 51 deletions(-)

-- 
Jani Nikula, Intel
