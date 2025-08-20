Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA34B2DE76
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 15:57:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 85E2010E73C;
	Wed, 20 Aug 2025 13:57:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="BAxD45zL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B55F10E73C
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 13:57:08 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 8ACBD5C68C8;
 Wed, 20 Aug 2025 13:57:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C071C4CEE7;
 Wed, 20 Aug 2025 13:57:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755698227;
 bh=a+17jPcnFvpz0bgN0Pw82s23PrcQOR0qxsWQzE+RgmQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BAxD45zL6GAL2jvCKmaoNs5sPDI2pBEdfFZa5G4CtOZe02jEjowJt2Rb4/e09p4FX
 1FL+rWnzht1cD+5ZUvBiTRcNU/m8BlrY226btZ1QtCuRFvgX4u9AoiAc8+AFG/Fb7+
 4S4DH8zSrRqEwy4WMHFTjufWwLdl/6aLJSW8YgZdC9/zSIGpqd7CLFuVZb1jxi9P6X
 Ilju2v+b1PJye4B2dygjgK+a6n4HrGqkfk5JHUTHZG5GGJSQZboY5Wnjwd786dA8gr
 MRbmp2n3Yv58GFXs1qNvRZI2mGjeV0ym/GSIkTTlZqTSk91QMCHCjS0Lc5GdEBEGpt
 Y/dCAsdn0VQ8Q==
Date: Wed, 20 Aug 2025 12:57:00 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: "Anirban, Sk" <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, badal.nilawar@intel.com, 
 anshuman.gupta@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH] drm/i915/selftests: Add RPS debug info for power test
 failure
Message-ID: <ypf5mf2u4gkxncim5z4w7lgb2ev6xjpdcmfapp2z5mow74yhv5@f4hvivmqshwi>
References: <20250820094527.467883-2-sk.anirban@intel.com>
 <gxp6ehzn62mzfwhkckuurp5wblja6ftq2etnngmcmufpqpsjn7@btkz4wimzk2j>
 <6f20edd3-4c77-402c-911f-d0b95664900b@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6f20edd3-4c77-402c-911f-d0b95664900b@intel.com>
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

On Wed, Aug 20, 2025 at 03:41:23PM +0530, Anirban, Sk wrote:
> On 20-08-2025 15:32, Andi Shyti wrote:
> > On Wed, Aug 20, 2025 at 03:15:28PM +0530, Sk Anirban wrote:
> > > Add debug logging to show RPS frequency configuration when the
> > > live_rps_power selftest fails to conserve power at lower frequencies.
> > > This helps diagnose frequency scaling issues by showing max_freq,
> > > rp0_freq, and max_freq_softlimit values.
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13774
> > how is this helping to close the issue?
> > 
> > Andi
> Good point - this patch adds debugging capability to investigate the issue
> rather than solving it. I'll switch to "References:" instead of "Closes:"
> for the proper context.

no need to resend, it can be changed before applying.

Do you want me to take care of it?

BTW, I don't have anything against the patch itself:

Acked-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
