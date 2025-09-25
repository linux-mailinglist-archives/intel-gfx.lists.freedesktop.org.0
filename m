Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D882BA1C81
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Sep 2025 00:24:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDAEF10E2DF;
	Thu, 25 Sep 2025 22:24:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DJ2rDgnT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D650410E2DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Sep 2025 22:24:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 0493E61286;
 Thu, 25 Sep 2025 22:24:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 055B7C4CEF0;
 Thu, 25 Sep 2025 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758839094;
 bh=G1twP7ubwsaGBSmqjUYLaTuz07aE+ImttWwk9RXof2A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DJ2rDgnT5uNITx+AOv6fU6IbXJ6Fo3jyjCSiidaVecAdG/zvWqNByyc1gP3SToo1y
 bBTY54QPvK++oPYlGUUBu+DQuyIfpnV1mZ/Mk0oDcJrVt8exT9VKikseh4sxUXRM1y
 czSeNZQ9ue3ywH4NK+DCZXA4EcvYXNt5ciE38AuOa1WT4R1CkN7270h6pzzvjuvoAj
 VJT42wXdW3N9Hn916/UZF7Ar4L0+8CK9wcZPyo4sv7nGlY61K0ENwgI5HP5pxicy6m
 Dc7bznRxujdMwu5IzrtJ7xxZHog49a/vfhZ3RdrR73mbrvmgql4Zq/EwhezQhx1tTD
 csr1JX0fUsscA==
Date: Fri, 26 Sep 2025 00:24:49 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH] drm/i915/gvt: Simplify case switch in intel_vgpu_ioctl
Message-ID: <fdqs4pb3hv6vf7hnlzgry4vgk3pumqlwlbqo6wmsnoquwkz6ni@djzxydkwqdvc>
References: <20250918214515.66926-2-jonathan.cavitt@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250918214515.66926-2-jonathan.cavitt@intel.com>
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

On Thu, Sep 18, 2025 at 09:45:16PM +0000, Jonathan Cavitt wrote:
> We do not need a case switch to check cap_type_id in intel_vgpu_ioctl
> for various reasons (it's impossible to hit the default case in the
> current code, there's only one valid case to check, the error handling
> code overlaps in both cases, etc.).  Simplify the case switch into a
> single if statement.  This has the additional effect of simplifying the
> error handling code.
> 
> Note that it is still currently impossible for
> 'if (cap_type_id == VFIO_REGION_INFO_CAP_SPARSE_MMAP)'
> to fail, but we should still guard against the possibility of this
> changing in the future.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Andi Shyti <andi.shyti@linux.intel.com>

pushed to drm-intel-next.

Thanks,
Andi
