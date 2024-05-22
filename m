Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B575A8CBE3E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2024 11:43:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A90610E0FD;
	Wed, 22 May 2024 09:43:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dSNvxMqb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D60FA10E0FD
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2024 09:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716371012; x=1747907012;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mjMI5jn7GDB1KOVdd12Y1631VJlZG67v4e1IULzb7Hs=;
 b=dSNvxMqbfioH3vLMNoofVuSQ1+OqY2iI5Ns0Vu3NMXAyJJO+zk1/79Dg
 Y0MrMHX7D/LHvLML8dRcz4QsG4SFnXPSn34X3BX/jEBkNvPPGyyVed2u4
 9vMeC4cgOodk18EDaEGLGy89RZCED/K1SSlXucpmH6KoOiFZxg99ki0kj
 3Gegi+8f/dOqVGeoENdO1mQGPyTmRzqNnb3wM5WrSEzmmBzdaiZGSLkfH
 LtT7Ry1eTWxUnT4biYq7vqo8+B6vQcTbCf9sdZPSVmcucMdiuLpJ2Jaeg
 BzU4YXUiePJyNVvayWhpTB5pu8ZFg+CIexneQMSbLPLqlM6gcIw9G9Uvg g==;
X-CSE-ConnectionGUID: JrxS/6CsR/eJHqFQilMkiQ==
X-CSE-MsgGUID: 173XVfciRqaG0NEe4Fe8Ew==
X-IronPort-AV: E=McAfee;i="6600,9927,11079"; a="12728100"
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="12728100"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:43:31 -0700
X-CSE-ConnectionGUID: iHs1xWFuStKABTrq10synQ==
X-CSE-MsgGUID: zcFovMXvTq2IQ/WHrvl6/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,179,1712646000"; d="scan'208";a="33284685"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.230])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2024 02:43:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org, Lucas De
 Marchi <lucas.demarchi@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/pciids: switch to xe driver style PCI ID
 macros
In-Reply-To: <87y184sm72.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240515165651.1230465-1-jani.nikula@intel.com>
 <87y184sm72.fsf@intel.com>
Date: Wed, 22 May 2024 12:43:26 +0300
Message-ID: <87ed9uqj0h.fsf@intel.com>
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

On Mon, 20 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> On Wed, 15 May 2024, Jani Nikula <jani.nikula@intel.com> wrote:
>> The PCI ID macros in xe_pciids.h allow passing in the macro to operate
>> on each PCI ID, making it more flexible. Convert i915_pciids.h to the
>> same pattern.
>>
>> INTEL_IVB_Q_IDS() for Quanta transcode remains a special case, and
>> unconditionally uses INTEL_QUANTA_VGA_DEVICE().
>>
>> Cc: Bjorn Helgaas <bhelgaas@google.com>
>> Cc: linux-pci@vger.kernel.org
>
> Bjorn, since I asked for acks on the last ones, I probably should here
> too. :)
>
> I'm hoping to stop mucking with the macros after this.

Okay, well, I pushed this to drm-intel-next, since this doesn't really
change x86 functionally, and you weren't all that interested the last
time. Hope it's fine. :)

BR,
Jani.


-- 
Jani Nikula, Intel
