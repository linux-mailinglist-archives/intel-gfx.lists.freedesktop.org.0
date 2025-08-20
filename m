Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8771EB2D978
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 12:02:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 640E510E6D2;
	Wed, 20 Aug 2025 10:02:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="NzApq35E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4851810E6D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 10:02:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 1BCAB5C0611;
 Wed, 20 Aug 2025 10:02:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB65C4CEEB;
 Wed, 20 Aug 2025 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755684136;
 bh=gGUwWWRzup1+7gT/95iliLDExrD1EQ9iwRE9QvcV9So=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NzApq35Epo5lhGlLTvr8nzgrxaAHbrAxBHQT10liMmWVIBdCpg4f16vqsotOWQ8Cc
 KuOM/iq1m+3e+IsRKHUUgrAspA2aWQgBeLcYu951P4gcGHj9asgHuiIUj/hlbS361O
 8K1PD6VPFnLDErIUdPgxuxi0u1NsV7SgF7Y5Cs3QhNTkcBAyqCCX6B7PHvIJ0ugZVg
 kvxi7sEcAh4J/NBcAEnbdvEFmbxuqGSXJciMrDNmh/jMvaMQN99dT/v25JszQMRvbj
 W+PuPAw5OKq13EKf9LWGXdL8osnmQjNAnWICzAfUuWJostBaDAoE1XSsbJuz09xH1+
 TBjmLVjpyPgbg==
Date: Wed, 20 Aug 2025 09:02:13 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, badal.nilawar@intel.com, 
 anshuman.gupta@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH] drm/i915/selftests: Add RPS debug info for power test
 failure
Message-ID: <gxp6ehzn62mzfwhkckuurp5wblja6ftq2etnngmcmufpqpsjn7@btkz4wimzk2j>
References: <20250820094527.467883-2-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820094527.467883-2-sk.anirban@intel.com>
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

Hi,

On Wed, Aug 20, 2025 at 03:15:28PM +0530, Sk Anirban wrote:
> Add debug logging to show RPS frequency configuration when the
> live_rps_power selftest fails to conserve power at lower frequencies.
> This helps diagnose frequency scaling issues by showing max_freq,
> rp0_freq, and max_freq_softlimit values.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774

how is this helping to close the issue?

Andi

> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
