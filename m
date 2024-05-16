Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FD3E8C72AC
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2024 10:20:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9F7010E058;
	Thu, 16 May 2024 08:20:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HBThG/+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3926010E058
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2024 08:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715847646; x=1747383646;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yTHJOz52a1/t0VjBwQJGAfDY+kbzziMgZaW5Id/Try4=;
 b=HBThG/+h31dH7Vin/CBok1ZXINHFp5pmdJ/QB5jU0re9+sVnXy9MJeZn
 ukkksMJin3+bPhZkOpsaOH5WU+/XxhrXac2g5BRBF7t6lt8LPEtlqYqn5
 Ls11OpfgzmPJmVDaj5zZU7FKaLkqXPBYp5KsuqzLI3b1GMZYB/o58S0Tw
 /DYf4yekdfbOpVOs2r0daeHWEQIBOoeLLzI9fI1TUGjJYP06U7CyV8gqe
 hBvzBSpriA7dPLExqKWGFnKaQjeaxaoVYx7Re4zVZO5nMHbpUTGO6k/oT
 bPygzra7lzi3z3PIMxM2AYFnydqBBTs7KdW54QuB5SEvh4eru/uhtOTZQ w==;
X-CSE-ConnectionGUID: 7Gdq1uqfSOiUka1mnBEDaw==
X-CSE-MsgGUID: 0RWNUpDwQq+eLE3mfItGhA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="29441929"
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="29441929"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:20:46 -0700
X-CSE-ConnectionGUID: hTXuMvTDRA2JNRN2pMnizg==
X-CSE-MsgGUID: 16lx1j+5TJmyCeZoaQZB2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,164,1712646000"; d="scan'208";a="36082653"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.208])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2024 01:20:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Dave Hansen <dave.hansen@intel.com>, intel-gfx@lists.freedesktop.org,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, Dave Hansen <dave.hansen@linux.intel.com>,
 x86@kernel.org
Subject: Re: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
In-Reply-To: <ad7df133-803a-4089-8ced-bf3eaf169d43@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1715340032.git.jani.nikula@intel.com>
 <87ikzlhiv8.fsf@intel.com> <8734qjcfu1.fsf@intel.com>
 <ad7df133-803a-4089-8ced-bf3eaf169d43@intel.com>
Date: Thu, 16 May 2024 11:20:37 +0300
Message-ID: <87pltmb222.fsf@intel.com>
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

On Wed, 15 May 2024, Dave Hansen <dave.hansen@intel.com> wrote:
> On 5/15/24 07:25, Jani Nikula wrote:
>> No reply from Bjorn, Cc: the x86 maintainers and list, could I get an
>> ack from you please?
>
> x86 is just a consumer of the drm/i915_pciids.h macros.  The name change
> is perfectly fine with me.  No objections.  But I really don't think you
> need our acks to move forward.
>
> Either way:
>
> Acked-by: Dave Hansen <dave.hansen@linux.intel.com> # for x86

Thanks, I know the changes are benign, but it's just that I tend to err
on the side of getting the acks rather than stepping on anyone's
toes. :)

BR,
Jani.


-- 
Jani Nikula, Intel
