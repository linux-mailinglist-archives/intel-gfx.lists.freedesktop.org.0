Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B14348C6AA4
	for <lists+intel-gfx@lfdr.de>; Wed, 15 May 2024 18:32:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 528D610E35D;
	Wed, 15 May 2024 16:32:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEROMsRf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43D1510E35D
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 May 2024 16:32:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715790730; x=1747326730;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=nui8g1oHbr2oB2DKqSyORL0IlshxXxbeuaYFRJIE1A4=;
 b=aEROMsRfh6eUcvMH0moIi0AwtULdpJSnqaW1u/qzTUS9gYkyZ1RJn4yw
 qaZeIFJPpeMn4E4L+8zNZsyS4j60+dTIHhPCFXl8CkR3TFFnhnjQlw+8r
 FaK6fn7Vx1L5JqVfVSGh9w6HEXPeOZ0uUKn2Yl3yygyOwRA4E2Byru2Hh
 +XuzeEy6aR4gmgHv+eQyCPhiL+SB67mjNvilSiSgyBx5aoTpC/L+8lFUn
 9eceSdfNOsR1kixRb651YPrkNEX2HTU4rXyd41372VRQv2mpSFGK/WcA7
 52nFpRU3Nd7/c7dvfzYaELR4IYnN3UYxrjdDW/wivJFM1PrIXh1DWVU+j Q==;
X-CSE-ConnectionGUID: jFVWLlYwSBS1abOjIOFuUA==
X-CSE-MsgGUID: eZw7bTu1QeitIEzdhzrMnA==
X-IronPort-AV: E=McAfee;i="6600,9927,11074"; a="29343787"
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="29343787"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:32:10 -0700
X-CSE-ConnectionGUID: Ioa1riIsT/qlPchH8XaUXA==
X-CSE-MsgGUID: QDgzYScqRheigPyL62Ko0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,162,1712646000"; d="scan'208";a="68572648"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.141])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2024 09:32:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: intel-gfx@lists.freedesktop.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 0/8] drm/i915/pciids: PCI ID macro cleanups
In-Reply-To: <20240515154505.GA2123614@bhelgaas>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240515154505.GA2123614@bhelgaas>
Date: Wed, 15 May 2024 19:32:03 +0300
Message-ID: <87zfsravek.fsf@intel.com>
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

On Wed, 15 May 2024, Bjorn Helgaas <helgaas@kernel.org> wrote:
> Sorry, I had ignored this because I didn't think it affected any PCI
> stuff.  This is fine with me:
>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Thanks, pushed to drm-intel-next.

> But since you asked :), I'll gripe again about the fact that this
> intel_early_ids[] list needs continual maintenance, which is not the
> way things are supposed to work.  Long thread about it here:
>
> https://lore.kernel.org/linux-pci/20201104120506.172447-1-tejaskumarx.surendrakumar.upadhyay@intel.com/t/#u

Right. I was under the impression we'd cease doing this for new
platforms, and see if we can get away with it. For example, we don't
have Meteorlake or Lunarlake there. Fingers crossed. But we probably
don't want to touch the old stuff.

Except now that I'm doing some non-functional refactoring to be able to
better reuse the macros for something else. There's a bit more coming,
please bear with me. :) I just tend to err on the side of getting the
acks than pushing away.

BR,
Jani.


-- 
Jani Nikula, Intel
