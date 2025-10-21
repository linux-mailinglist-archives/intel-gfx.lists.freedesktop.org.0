Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7706BF5407
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Oct 2025 10:33:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E45D10E591;
	Tue, 21 Oct 2025 08:33:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hQnmlWXB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55F5010E591;
 Tue, 21 Oct 2025 08:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761035585; x=1792571585;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mbyV75+AfbKAPu7AOxRbcMvTlA/ce4oBEAlYOokgvVs=;
 b=hQnmlWXBVPOYufaTdc9ACheyWRq5plKVdABkooC5qu9YiUptGEwJoZJx
 Y6LymmNaNMEF5V6/CMHHd+D+ZkRGlZIWQa80uwW8GeO+YeYxacdKwafAH
 DeXz6l2V7EELLt4PDH/xANIYqTtaEvwjuY8UMgT1Vq54XVWb9/ler8whZ
 YEwuL7oy6Bw4d9uPBW6yf5n7f/FYj0e+KXCJ4r76ArchWzR8hsvSFQgFL
 sG5dRZikDu/adEh0MJwvdUroAV7Dti7C4OCqXcuZpItyloLspwuNnZT5l
 NeYbvlrJaqmde6qdqx5hNx4Ps9de/8iJyJCyRBdgfgQyRHO8pmXiBpfeR Q==;
X-CSE-ConnectionGUID: 1Q4zfbeZTZ2NaZua+XyJ6Q==
X-CSE-MsgGUID: VQoZQPdXQp6yuuc4o7QoEA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63305812"
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="63305812"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:33:05 -0700
X-CSE-ConnectionGUID: Ybc6Ev76RAuWyu+RsVubRw==
X-CSE-MsgGUID: UmZBzrN5RWiBJhaEQlYYbw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,244,1754982000"; d="scan'208";a="183242160"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2025 01:33:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?Q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Matt Roper <matthew.d.roper@intel.com>, Ravi
 Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 27/32] drm/i915/vbt: Add fields dedicated_external and
 dyn_port_over_tc
In-Reply-To: <176073244932.2362.18113914581478817061@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-27-d2d1e26520aa@intel.com>
 <d02b6f306e3b503066dcb4cf7d1a8c1fdf626e30@intel.com>
 <176073244932.2362.18113914581478817061@intel.com>
Date: Tue, 21 Oct 2025 11:32:57 +0300
Message-ID: <33bca917d351c5161a13239b67e5d7cb1ec9fb3b@intel.com>
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

On Fri, 17 Oct 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> Quoting Jani Nikula (2025-10-15 12:29:00-03:00)
>>We probably want to add the info to print_ddi_port().
>
> Yep.  Good idea.
>
> I'm currently looking at print_ddi_port() and the one-liner is already
> quite long and I don't know we would be able to come up with a good
> abbreviation to put there.

Yeah, it is...

>
> Probably just print on its own line?
> E.g.:
>
> 	dedicated_external = intel_bios_encoder_is_dedicated_external(devdata);
> 	if (dedicated_external)
> 		drm_dbg_kms(display->drm,
> 			    "Port %c is dedicated external\n");

Ack.

> Do you think printing for dyn_port_over_tc is also useful?

We'll only know when we're debugging some issue! ;)

BR,
Jani.


-- 
Jani Nikula, Intel
