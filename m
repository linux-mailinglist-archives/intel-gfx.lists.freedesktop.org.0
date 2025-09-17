Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 623C0B7DF6D
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Sep 2025 14:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89D3E10E183;
	Wed, 17 Sep 2025 08:59:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="rRL2AL9j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4866F10E183
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Sep 2025 08:59:49 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 7FEA760238;
 Wed, 17 Sep 2025 08:59:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 92358C4CEF0;
 Wed, 17 Sep 2025 08:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758099588;
 bh=+Hmh4nLPmR/GhgOkJ0SAOnTni8iOPXX/4b3Z1pzM5c0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=rRL2AL9jGN/P8SUlX78DRil5PmC1dw2B0jMuchUzGF7m0THGSD2y8bXWdE1ARQx/9
 RC+ZTXslVZdNiXUUdCiQCD7/WbWk0jtmxMmKwsLRdgtRCzWT/bnyayM4KUdQYBd4qj
 5hFo2tioXAfAngOqaenEGNlvrpJdswtCLJpCpAXGiPwmw+uqL7b5DfMHgZVPvJQ93D
 pP5225ixccB/+d82iTzSc65eCQxRdrni7wiNP/sae1KMcq0rmeRhKBWLHuDDj0mLuN
 c//sdXWGV9yuQjCIfAmedUKhVzVm8lAcBzSynIpzWahzK2gd+kQI+gFagkL/rYFvEe
 7uUVU15+szQ3w==
Date: Wed, 17 Sep 2025 10:59:44 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com
Subject: Re: [PATCH 1/2] drm/i915/gvt: Remove unnecessary check in reg_is_mmio
Message-ID: <xr666hlklzazdmigyfwbtg5hpwgxmlkygclaqukprysah5jqlf@ab374omrxzoz>
References: <20250916174317.76521-4-jonathan.cavitt@intel.com>
 <20250916174317.76521-5-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916174317.76521-5-jonathan.cavitt@intel.com>
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

Hi Jonathan,

On Tue, Sep 16, 2025 at 05:43:19PM +0000, Jonathan Cavitt wrote:
> The reg >= 0 check in reg_is_mmio is unnecessary because reg is always
> greater than zero in all current use cases.  This is obvious when
> checking 'offset' by itself (as offset is defined as an unsigned
> integer), but it's also true for the offset + bytes - 1 use case in
> intel_vgpu_emulate_mmio_read because bytes > 0.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
