Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EF43A0A5F4
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Jan 2025 21:41:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A6AE10E255;
	Sat, 11 Jan 2025 20:41:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="aqTl/G27";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org
 [IPv6:2604:1380:45d1:ec00::3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35FB510E255
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Jan 2025 20:41:53 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id CB0EFA40233;
 Sat, 11 Jan 2025 20:40:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 482F6C4CED2;
 Sat, 11 Jan 2025 20:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1736628111;
 bh=QgwSsmZ5r5v5ghwDo6JLF6kllb7bSo4ua7m9In7AlhE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=aqTl/G27JXAO8NdmB+AcUcV3MK1OZ3Fftigebe6jFSkDt/npQ69Ppz/GMv5NXX30h
 RD3CUqO3X/GfRiVGUqxv/Eb7ujaMBzlrPqVpTKwEe1cDJR3vHxG+hW+SuMi+6UlDYx
 rYOMrAxexTrhV+vi6iItnMkR72ogX7ltaBdw7mRyI/dahWLE+cGcyWig+hKqIkrbHu
 nS1ns+HESujlOY4je3RLG/xbjQQvXacGoBYupzsFL9Du2nK+8ZrseKKjUXukOQEzqz
 wOIdFKSwpyaBj2pOm7BPTS+9qu1s8pt/aqWQOkmutU2pD+NEhFkVxCrlc7XEfno1wS
 /4USf3Gq1n3yA==
Date: Sat, 11 Jan 2025 21:41:47 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Raag Jadav <raag.jadav@intel.com>
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com, 
 andi.shyti@linux.intel.com, anshuman.gupta@intel.com
Subject: Re: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
Message-ID: <sog7fejryo3zpyp2ekqk7wffgc7tueoxvkyntun6i7bqae5a3w@ljnv62saynkn>
References: <20250102110618.174415-1-raag.jadav@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102110618.174415-1-raag.jadav@intel.com>
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

Hi Raag,

On Thu, Jan 02, 2025 at 04:36:18PM +0530, Raag Jadav wrote:
> Current live_rps_control() implementation errors out on throttling.
> This was done with the assumption that throttling to minimum frequency
> is a catastrophic failure, which is incorrect. Throttling can happen
> due to variety of reasons and often times out of our control. Also,
> the resulting frequency can be at any given point below the maximum
> allowed. Change throttle criteria to reflect this logic and drop the
> error, as it doesn't necessarily mean selftest failure.
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>

Reviewed and merged to drm-intel-gt-next.

Thanks,
Andi
