Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 35105B88D77
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 12:22:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B79A10E985;
	Fri, 19 Sep 2025 10:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="itPnSTlE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE19310E984
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Sep 2025 10:22:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id BB3CE438D3;
 Fri, 19 Sep 2025 10:22:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36979C4CEF0;
 Fri, 19 Sep 2025 10:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758277332;
 bh=ssjn2KU0pcb/4ABh7q77iwxyJqODUjc/RhN0ZgKKhe0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=itPnSTlEtqD4xn06AOVSsw1q+QRcO30pPndLRzI0Nl/RUa/ICAyFoG4Y8GRghqEsc
 k3KRsShzLuJO8g90OOjYaraUKpysXCaiFTfA8tK/d6Duak4vkjGBAACT6eURtQDy7N
 TEy8POX096a8xbWI0f89h52ghz1lTc8YV93x6S0L38VAKpTqW5XOKVOM7BHhec9ltv
 giPU6uot1Y7QVtLiGsDGRIna4LdlbRUcIp5hNNFMXiKo+g8t7r+Pz2f9etFuj/2JIv
 Qui51QhOqGPhf6TySd4PNSHCGTz1FnEh6nw4CGyHK46oCqABIMH+hlXBRkWlZpBqDS
 EEH4/OW94NrNg==
Date: Fri, 19 Sep 2025 12:22:08 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
Cc: intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, 
 alex.zuo@intel.com, andi.shyti@linux.intel.com
Subject: Re: [PATCH] drm/i915/gvt: Simplify case switch in intel_vgpu_ioctl
Message-ID: <5bvoyx5x54b5byihaulx32shros3qw2kyyoqoqewnlqjazysci@lxlfpcgovcrd>
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

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
