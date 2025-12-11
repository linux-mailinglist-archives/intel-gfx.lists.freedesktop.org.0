Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2D39CB633A
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Dec 2025 15:34:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CF9510E2E1;
	Thu, 11 Dec 2025 14:34:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RK2clUKg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D99510E2E1;
 Thu, 11 Dec 2025 14:34:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765463688; x=1796999688;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6i5NU6XjPxXUvnqqnjni0H51gbQz9EUAbNeZ2KwNTGY=;
 b=RK2clUKg3jxPa+sLnJbCf5jcxOLGjYltkZu5E2R/EXIRKB4KDC6ZX/ue
 v0hfQtanb+54I25Dr/lhUMbMzXch0gmjpYwND4KG9VMOVou+ySbgKYFYA
 brZ1PcNsqez6bZDFrty3etlNKy8rd9QgDdlgmKRdhT0akBWSl5Mt9mg66
 8Q10nUx7MnWEXtTacbG7mBeKsIT/sSzn5qD1sBWNQnEPXuHUW66iz3YBa
 ZXasonLOU8C2xcWYnOUh5RiO/eJ8RnLXovwEzcQg9LLa1qOe22fm+6uN3
 8+KdikU5x3c6+7pvxYJiJd+6P1t/QEAwyYEuf2ZiylKAMeum+85ZvM/T7 A==;
X-CSE-ConnectionGUID: kJ9BQlHSTW2htN6dadHOIg==
X-CSE-MsgGUID: DxS9JImaR7mHtmPPL1fNFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="84855402"
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="84855402"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:34:47 -0800
X-CSE-ConnectionGUID: 1cHOALioSEaa5beKHC6XOg==
X-CSE-MsgGUID: w52OmYxhQ+eQ2Sn9qJ9HWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,141,1763452800"; d="scan'208";a="227464444"
Received: from mwiniars-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2025 06:34:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: Maarten Lankhorst <dev@lankhorst.se>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/2] drm/i915/display: Fix intel_lpe_audio_irq_handler
 for PREEMPT-RT
In-Reply-To: <aTrPwDcYsMMJhSPv@black.igk.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251209151319.494640-3-dev@lankhorst.se>
 <20251209151319.494640-4-dev@lankhorst.se>
 <f9641fa9298cf52efbde5d41014470f2355e3551@intel.com>
 <cb0c9201-74f9-43c5-8177-5b5b77851973@lankhorst.se>
 <e0ba6a112e0150731a23934109e1419d07e526e2@intel.com>
 <aTrPwDcYsMMJhSPv@black.igk.intel.com>
Date: Thu, 11 Dec 2025 16:34:42 +0200
Message-ID: <23cc04865c6f8aa4c3bf31a0c0c5e088a31084bd@intel.com>
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

On Thu, 11 Dec 2025, Raag Jadav <raag.jadav@intel.com> wrote:
> I've been looking at some of the AMD patches and found the template
> to be much useful.
>
> Subject: [WHAT]
>
> Commit message:
> [WHY]
>
> [HOW]
>
> Not a hard mandate but worth thinking in this direction?

Yeah, that's what you're basically supposed to do, but I hate having
those template things stay in the commit messages. They're not
necessary.

BR,
Jani.


-- 
Jani Nikula, Intel
