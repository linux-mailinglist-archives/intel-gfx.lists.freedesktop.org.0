Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76DEFB99D28
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 14:24:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A879310E70C;
	Wed, 24 Sep 2025 12:24:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="kYI6qFeU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D72D010E1BC;
 Wed, 24 Sep 2025 12:24:39 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 954DF60007;
 Wed, 24 Sep 2025 12:24:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A344C4CEE7;
 Wed, 24 Sep 2025 12:24:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758716678;
 bh=3yBqULPN03ZFixtNtZO2/BT/KfxSdBJrKiUP9C1volA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kYI6qFeU4ym/VjdCIshW9h6TM/s2Z0qAMMjT1OsRwLo+ntSUVsX8gZrHrPC5cwTVQ
 1eBjzDR74kmzwf9tT+3j3t+HZx5EUbCja+scYEQnfmYQW9+0eF3jVcwhB3soTMH9LQ
 LTmut/5g96LjASJe4jCth/eWBkWbu7YUp22BARlNhFblPtflrEj/0hln73X6WmuQ/I
 2h5/PyYHd0sYnWZRq+bExptcOZvyZUX/8Qm12WCmU2RdoRJ9tR9bnMhM3nMkbZiB1Q
 5k8zJzOYr/NlTRV0jl5ZUigUQElIWCNXq23svDKc3InZ2r2Ikar/3bSyyNiTlcoHIG
 5eog/DoMvst5w==
Date: Wed, 24 Sep 2025 14:24:33 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com
Subject: Re: [PATCH 7/9] drm/i915/reg_defs: Add REG_FIELD_MAX wrapper for
 FIELD_MAX()
Message-ID: <i6ppumn76afqjrppko6ck33qqhiknlnizbnnvskuxjg3nu5bx2@zvyfo6easidr>
References: <20250924105129.2771196-1-ankit.k.nautiyal@intel.com>
 <20250924105129.2771196-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924105129.2771196-8-ankit.k.nautiyal@intel.com>
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

Hi Ankit,

> +/**
> + * REG_FIELD_MAX() - produce the maximum value representable by a field
> + * @__mask: shifted mask defining the field's length and position
> + *
> + * Local wrapper for FIELD_MAX() to return the maximum bit value that can
> + * be held in the field specified by @_mask, cast to u32 for consistency
> + * with other macros.
> + */
> +#define REG_FIELD_MAX(__mask)	((u32)FIELD_MAX(__mask))

I'm not a big fan of these generic definitions inside i915. These
should all go to bitfield.h. But this is how it's done here. For
now:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
