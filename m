Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE33912CB7F
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2019 01:56:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CC5589CDB;
	Mon, 30 Dec 2019 00:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F76189CD4
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2019 00:56:08 +0000 (UTC)
Received: from localhost (unknown [40.117.208.15])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B7D12207FF;
 Mon, 30 Dec 2019 00:56:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577667368;
 bh=X+ZiZE0Q9RE0b6ofqykXAHqzTVUaga8ljfKY+wy6BVs=;
 h=Date:From:To:To:To:Cc:Cc:Cc:Cc:Cc:Cc:Subject:In-Reply-To:
 References:From;
 b=PCHdz9S/RMxYlB1AFxk7CvAwBC9zCWvpw8wDh3Xu9kbjazdsBgiLwYitpLXgA1UQU
 UoVS5OIk7ctxlmXDPmGfGqEHLjBO+tchF3rPxMRsoJ5uCJicpfI6d8glWX2nhHZk80
 iPdk39l2/ASrd2jMfvgaond53UT9MEo0I2finDzU=
Date: Mon, 30 Dec 2019 00:56:06 +0000
From: Sasha Levin <sashal@kernel.org>
To: Sasha Levin <sashal@kernel.org>
To: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20191226184056.266739-1-matthew.d.roper@intel.com>
References: <20191226184056.266739-1-matthew.d.roper@intel.com>
Message-Id: <20191230005607.B7D12207FF@mail.kernel.org>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Add Wa_1407352427:icl,ehl
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
Cc: , Lucas De Marchi <lucas.demarchi@intel.com>, stable@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

[This is an automated email]

This commit has been processed because it contains a -stable tag.
The stable tag indicates that it's relevant for the following trees: all

The bot has tested the following trees: v5.4.6, v5.3.18, v4.19.91, v4.14.160, v4.9.207, v4.4.207.

v5.4.6: Build OK!
v5.3.18: Build OK!
v4.19.91: Failed to apply! Possible dependencies:
    622b3f68139e ("drm/i915/icl: Add WaEnable32PlaneMode")

v4.14.160: Failed to apply! Possible dependencies:
    01ab0f921607 ("drm/i915: Implement WaDisableVFclkgate.")
    0a46ddd57c9e ("drm/i915/cnp: Wa 1181: Fix Backlight issue")
    0a60797a0efb ("drm/i915: Implement ReadHitWriteOnlyDisable.")
    2cbecff4122c ("drm/i915/cnl: WaPushConstantDereferenceHoldDisable")
    34991bd48c92 ("drm/i915: Unify SLICE_UNIT_LEVEL_CLKGATE w/a for cnl")
    392572feb01c ("drm/i915/cnl: WA FtrEnableFastAnisoL1BankingFix")
    5152defe4a53 ("drm/i915/preempt: Default to disabled mid-command preemption levels")
    8f067837c4b7 ("drm/i915: Display WA #1133 WaFbcSkipSegments:cnl, glk")
    90007bca6162 ("drm/i915/cnl: Introduce initial Cannonlake Workarounds.")
    91200c09d38b ("drm/i915: Stop using long platform names on clock gating functions.")

v4.9.207: Failed to apply! Possible dependencies:
    01ab0f921607 ("drm/i915: Implement WaDisableVFclkgate.")
    03cdc1d4f795 ("drm/i915: Store port enum in intel_encoder")
    46c26662d2fb ("drm/i915/cfl: Introduce Coffee Lake workarounds.")
    4f8036a28112 ("drm/i915: Make HAS_DDI and HAS_PCH_LPT_LP only take dev_priv")
    50a0bc905416 ("drm/i915: Make INTEL_DEVID only take dev_priv")
    6e266956a57f ("drm/i915: Make INTEL_PCH_TYPE & co only take dev_priv")
    8652744b647e ("drm/i915: Make IS_BROADWELL only take dev_priv")
    8da53efaa228 ("drm/i915/kbl: Apply WaIncreaseDefaultTLBEntries on KBL.")
    90007bca6162 ("drm/i915/cnl: Introduce initial Cannonlake Workarounds.")
    9fb5026f857d ("drm/i915/glk: Turn on workarounds that apply to Geminilake too")

v4.4.207: Failed to apply! Possible dependencies:
    01ab0f921607 ("drm/i915: Implement WaDisableVFclkgate.")
    0673ad472b98 ("drm/i915: Merge i915_dma.c into i915_drv.c")
    0a9d2bed5557 ("drm/i915/skl: Making DC6 entry is the last call in suspend flow.")
    0ad35fed618c ("drm/i915: gvt: Introduce the basic architecture of GVT-g")
    1f814daca43a ("drm/i915: add support for checking if we hold an RPM reference")
    2f693e28b8df ("drm/i915: Make turning on/off PW1 and Misc I/O part of the init/fini sequences")
    399bb5b6db02 ("drm/i915: Move allocation of various workqueues earlier during init")
    414b7999b8be ("drm/i915/gen9: Remove csr.state, csr_lock and related code.")
    46c26662d2fb ("drm/i915/cfl: Introduce Coffee Lake workarounds.")
    5d7a6eefc3b0 ("drm/i915: Split out load time early initialization")
    643a24b6ecdc ("drm/i915: Kconfig for extra driver debugging")
    73dfc227ff5c ("drm/i915/skl: init/uninit display core as part of the HW power domain state")
    755412e29c77 ("drm/i915: Add an optional selection from i915 of CONFIG_MMU_NOTIFIER")
    8652744b647e ("drm/i915: Make IS_BROADWELL only take dev_priv")
    8da53efaa228 ("drm/i915/kbl: Apply WaIncreaseDefaultTLBEntries on KBL.")
    90007bca6162 ("drm/i915/cnl: Introduce initial Cannonlake Workarounds.")
    9c5308ea1cd4 ("drm/i915/skl: Refuse to load outdated dmc firmware")
    9fb5026f857d ("drm/i915/glk: Turn on workarounds that apply to Geminilake too")
    b6e7d894c3d2 ("drm/i915/skl: Store and print the DMC firmware version we load")
    bc87229f323e ("drm/i915/skl: enable PC9/10 power states during suspend-to-idle")
    c73666f394fc ("drm/i915/skl: If needed sanitize bios programmed cdclk")
    d5165ebd527c ("drm/i915: implement WaIncreaseDefaultTLBEntries")
    ebae38d061df ("drm/i915/gen9: csr_init after runtime pm enable")
    f4448375467d ("drm/i915/gen9: Use dev_priv in csr functions")
    f514c2d84285 ("drm/i915/gen9: flush DMC fw loading work during system suspend")


NOTE: The patch will not be queued to stable trees until it is upstream.

How should we proceed with this patch?

-- 
Thanks,
Sasha
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
