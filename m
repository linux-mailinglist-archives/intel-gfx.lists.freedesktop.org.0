Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HaACW6iAWpKhAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 11:33:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 861C250AF73
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 11:33:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09F3E10E151;
	Mon, 11 May 2026 09:33:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="oKuflpx4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87FAC10E06B;
 Mon, 11 May 2026 09:33:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778492010; x=1810028010;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Nxn/SJxFgpyHXhNu+xmkiMum9B7+qkLommG6kbe2hTk=;
 b=oKuflpx4ss9kvxOozisGS+qdHjKihtTeMAQQ98MfjttgzHB1OX3GsTSE
 fNdh6o9Hzt92jXx9G76vFmru+oi8XcjXu99jrjn1elnFqtUmdxAiVwuZ0
 /DkRQgC1iDUoQrBV8Q5xqjgSe7tVHGgsUbzVxU888OckM6MmNiJcQT8m2
 tkewwO/TAHCo9ZDztERBEBLT3kp5MEbpj1ZXcD0s1Oe2LuyVIW5dp4YRk
 pf1BL0eDLyViUU/3Rn4dk5iDWfObN9Y2heVj3+oq6mU/rGxVIdrVh0T59
 F++6KXh0HNKove9oKHwSK/6fvgPVLl78Cl0NgcxNZpBXO540IOcFodhl2 w==;
X-CSE-ConnectionGUID: lVDG/9wfTlyrC7+n2SyNGA==
X-CSE-MsgGUID: J8kTdF3vTayfqiY59xJAZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90751103"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90751103"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:33:29 -0700
X-CSE-ConnectionGUID: zwhdx/fdQZSUhe4FLlBejw==
X-CSE-MsgGUID: SYQIv4xNSNWmwSjhhkCBJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="241376626"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.244.253])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 02:33:25 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aaron Esau <aaron1esau@gmail.com>, intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 rodrigo.vivi@intel.com, joonas.lahtinen@linux.intel.com,
 tursulin@ursulin.net, mika.kahola@intel.com, stable@vger.kernel.org, Aaron
 Esau <aaron1esau@gmail.com>, Marco Nenciarini <mnencia@kcore.it>, Imre
 Deak <imre.deak@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH 0/3] drm/i915/cx0: fix PLL enable failure handling on
 Meteor Lake
In-Reply-To: <20260509162407.510539-1-aaron1esau@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260509162407.510539-1-aaron1esau@gmail.com>
Date: Mon, 11 May 2026 12:33:21 +0300
Message-ID: <cdf591ba648d7b3d6a4ae5fead14f5faa92e52ca@intel.com>
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
X-Rspamd-Queue-Id: 861C250AF73
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org];
	FREEMAIL_CC(0.00)[lists.freedesktop.org,intel.com,linux.intel.com,ursulin.net,vger.kernel.org,gmail.com,kcore.it];
	RCPT_COUNT_TWELVE(0.00)[13];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

On Sat, 09 May 2026, Aaron Esau <aaron1esau@gmail.com> wrote:
> On Meteor Lake with a hybrid Intel/NVIDIA GPU setup, s2idle resume can
> leave the CX0 PHY MSGBUS unresponsive. When this happens, the PLL
> enable sequence silently fails: register writes via MSGBUS are dropped,
> the PLL never locks, but the driver marks it as enabled and proceeds to
> drive the pipe.
>
> The root cause of the MSGBUS becoming unresponsive appears to be the
> NVIDIA dGPU not participating in S0ix (addressed via the
> NVreg_EnableS0ixPowerManagement module parameter). However, the i915
> driver should handle PLL enable failures gracefully regardless of the
> trigger.

The way I read this is: There's an issue with an out-of-tree proprietary
driver, you can only reproduce the issue with said proprietary driver,
and the upstream driver should jump through hoops to workaround the
issue in the proprietary driver, in ways that we won't be able to test
in our CI. And the expectation to work around this upstream is because
you can't really do anything about the proprietary driver.

Is that about right?

Apart from adding a bunch of generic error handling code superficially
unrelated to the proprietary driver.

The reason the CRTC enable path generally doesn't have error propagation
is that 1) the allowed errors on atomic commit are *very* limited, 2)
nonblocking commits are even more limited, and 3) even on failures the
display pipe must be running.

You simply can't bail out in the middle of hsw_crtc_enable() like
suggested in patch 2.

See [1] for more. Also see parts about tainted kernels in [2].


BR,
Jani.


[1] https://docs.kernel.org/gpu/drm-kms.html#c.drm_mode_config_funcs
[2] https://docs.kernel.org/admin-guide/reporting-issues.html


>
> This series:
>   1. Fixes intel_cx0_pll_is_enabled() to check the hardware ACK bit,
>      not just the driver-set REQUEST bit, so a PLL that failed to lock
>      is correctly reported as disabled.
>   2. Adds error propagation through the DPLL enable path: changes the
>      .enable callback to return int, threads errors through
>      _intel_enable_shared_dpll() and intel_dpll_enable(), and checks
>      the result in hsw_crtc_enable() and ilk_pch_enable().
>   3. Makes the CX0 PLL enable path return -ETIMEDOUT when the PHY
>      fails to come out of reset or the PLL fails to lock.
>
> Found on a Lenovo ThinkPad with Intel Ultra 7 155H and NVIDIA RTX 2000
> Ada. Kernel traces before each crash:
>
>   i915: Failed to bring PHY A to idle.
>   i915: PHY A Read 0c70 failed after 3 retries.
>   i915: Timeout waiting for DDI BUF A to get active
>   i915: [CRTC:149:pipe A] flip_done timed out
>
> Aaron Esau (3):
>   drm/i915/cx0: check PLL ACK bit in intel_cx0_pll_is_enabled()
>   drm/i915/dpll: add error propagation to DPLL enable path
>   drm/i915/cx0: return errors from CX0 PLL enable on failure
>
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 54 ++++++++----
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |  6 +-
>  drivers/gpu/drm/i915/display/intel_display.c  | 10 ++-
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 87 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  7 +-
>  6 files changed, 117 insertions(+), 49 deletions(-)

-- 
Jani Nikula, Intel
