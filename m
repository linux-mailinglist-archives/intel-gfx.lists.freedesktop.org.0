Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2E7C4C401
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Nov 2025 09:08:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C49210E4FA;
	Tue, 11 Nov 2025 08:08:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UpYuTcab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E33010E4F5;
 Tue, 11 Nov 2025 08:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762848479; x=1794384479;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=Uts3mk9HtYMEtjYIfT2CSOdxHtQZ9NVaGlqyXFxpnaw=;
 b=UpYuTcabMbm9+GlqPrI+CMn394vZlArwkv6S+7LxQO2GP6ksRDQHWWrI
 1CkvUWFGGjfVDnAXSRpV6qfc88sgG/EJnEPLqwu5JP7gUJr45wa4iC+En
 vRUzEOc3vmxklgIR+IOrFwXpF5hB7icy+74WfhGKPFnNx/EQ1VH9si259
 xYUHrFH6g9vA3lk3dk3Yf6Y0QWXtrJYIhElzUd/0yJ9aBIh8wyap8YCGc
 9J/f+GK3LFTSmX3Qbeo9iikLz+qQzx/reQ6AikcqjfItF8MV7hm2FHPj5
 fDJwrXYfkxThslEPNwwsnUfjagOmm0Rv1TRD1JdL5yiLUTrl4QxCtfoW7 A==;
X-CSE-ConnectionGUID: 1vekBqTrSvmmklLwsCr+gw==
X-CSE-MsgGUID: 9o7Tu9uDRRWfTfFaqW8SVg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="64997478"
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="64997478"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 00:07:58 -0800
X-CSE-ConnectionGUID: 4Thw8qKhTDO+2C2hoxhyew==
X-CSE-MsgGUID: ySvVuZBZSYaxTmLJhz1qsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,296,1754982000"; d="scan'208";a="212291978"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.239])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2025 00:07:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 4/4] drm/i915/display: shorten the
 intel_display_irq_regs_* function names
In-Reply-To: <aRJLuIJlD1wsIBDn@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1762803004.git.jani.nikula@intel.com>
 <ab7b409334ad0b02f531dcacbbad0f7d4a20c6f1.1762803004.git.jani.nikula@intel.com>
 <aRJLuIJlD1wsIBDn@intel.com>
Date: Tue, 11 Nov 2025 10:07:53 +0200
Message-ID: <52c2fda576e985430b3503e8051a2f3acd7e0ee3@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 10 Nov 2025, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, Nov 10, 2025 at 09:31:39PM +0200, Jani Nikula wrote:
>> Shorten the intel_display_irq_regs_* function names to the underlying
>> function names with a _wl suffix for clarity.
>>=20
>> - intel_display_irq_regs_init() -> irq_init_wl()
>> - intel_display_irq_regs_reset() -> irq_reset_wl()
>> - intel_display_irq_regs_assert_irr_is_zero() -> assert_iir_is_zero_wl()
>>=20
>> This emphasizes the difference is the wakelock. Platforms without the
>> DMC wakelock mechanism can use the non-wl versions.
>
> These things should just get nuked. You already switched to
> intel_de_{read,write}() in the previous patch, and those already
> handle the wakelock stuff for you.

Oh where's my brown paper bag when I need it.


--=20
Jani Nikula, Intel
