Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7398B8B37F5
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Apr 2024 15:09:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C6041123BA;
	Fri, 26 Apr 2024 13:09:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="REsO10Md";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A16B51123BA;
 Fri, 26 Apr 2024 13:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714136990; x=1745672990;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=kuYMqhGQ+gATA6ZRDIWdlvxOT1isLspNTVI6crwbQxo=;
 b=REsO10MdOQACGD3GT3iHuBGh7ODp41RDCcWNPruEF61MPmZjsaxyLIRQ
 l3Zh1BeIL0BAaO7rHci1Hy2+hW3FF+qwRbLcDuooJQDre9thEt4PnnbXQ
 5XKXCqSwNtMSB23lZCQqUp3Gj5kRSDZN1Q5FI/15TJUAFxvQEmTOKZvG5
 ZdfNxdF32aTxRe/2MmHKjYklmkjjsrp8sM+x9B+f+Dofwl9QpsmoicEOM
 QH1bD9yWoZd2l1W6t+WuqpGYzSNo3vW/r2a4nmB1B/LXSFDXWg0mv4qaq
 REj6jzMXN2kaWQHYGypIwB39PqFtkY6mAxW0pGMFnABR9ukH+7AQrAP7U A==;
X-CSE-ConnectionGUID: Xm4M6AxmRuukA5RmrJuTZQ==
X-CSE-MsgGUID: Y/H9JmWITRunTWXDLB6qKA==
X-IronPort-AV: E=McAfee;i="6600,9927,11056"; a="21017946"
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="21017946"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:09:50 -0700
X-CSE-ConnectionGUID: RoXs2KxGRbeUOTUqL2Oz0A==
X-CSE-MsgGUID: Gf0CMhHXTjyjkBJ/fHZvtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,232,1708416000"; d="scan'208";a="25406115"
Received: from dgarbuz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.145])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2024 06:09:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 000/123] drm/i915: remove implicit dev_priv local
 variable use
In-Reply-To: <cover.1714136165.git.jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1714136165.git.jani.nikula@intel.com>
Date: Fri, 26 Apr 2024 16:09:45 +0300
Message-ID: <87ttjo46ee.fsf@intel.com>
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

On Fri, 26 Apr 2024, Jani Nikula <jani.nikula@intel.com> wrote:
> Hey all, it's time to stop using the implicit dev_priv local variable in
> register macros. Yes, this is huge. It's also (almost) completely
> scripted.

Okay, I was first going to send the entire series, but chickened out and
hit ^C when git send-email was going though the patches. You get the
idea with what's here. It's just more of the same. Plus I pushed the lot
to [1].

I think we'll need to do this. The question is how to handle this
churn. Do we want this many patches? If not, how much to squash?


BR,
Jani.


[1] https://gitlab.freedesktop.org/jani/linux/-/commits/regs-mass-dev-priv-removal/?ref_type=heads


-- 
Jani Nikula, Intel
