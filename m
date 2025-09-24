Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B511DB9885B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Sep 2025 09:25:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4616010E6A7;
	Wed, 24 Sep 2025 07:25:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="Oez04QDj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C9A10E6A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Sep 2025 07:25:13 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id F3DDC601A7;
 Wed, 24 Sep 2025 07:25:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1AA01C116B1;
 Wed, 24 Sep 2025 07:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758698712;
 bh=I8IoRaft8NZr0j21i6JHrY/nvqFsMbHB9bTwavJl2HU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Oez04QDj2U9fwPyMsVZojYHearp1pObbbmQrWQUp7m5Sey/KO6KnEd6zStrrNnb99
 Cw8jNXzJOw7ZGO6i/yR8cZDBqqWGl7GITj7rrAofxA1W5k0pf8ekoXDK5hfzZwspIJ
 ddxe1+OSQsCY4YiqtKj2eE1IVcYxCE8mAb7N5ua15XP27YGhJ2/YS266OoMtTpjDXT
 h8SbZWCseX4BP0n3NDDXK3BE1wtnD4Tm+E51DK1v+NbFyd5SplzSBMIj1JGRXdiFit
 cQ2fgdLharcnvTnyYMI5n/PC1mNp7rMjAK0qPP4PSLbZcemplummZwt/IdwXwEAQXH
 hChWMRompbKIw==
Date: Wed, 24 Sep 2025 09:25:08 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: Jonathan Cavitt <jonathan.cavitt@intel.com>, 
 intel-gfx@lists.freedesktop.org, saurabhg.gupta@intel.com, alex.zuo@intel.com, 
 andi.shyti@linux.intel.com, zhenyuw.linux@gmail.com
Subject: Re: [PATCH v3] drm/i915/gvt: Improve intel_vgpu_ioctl hdr error
 handling
Message-ID: <ysylwppr4s5dhw7awxo5v26cykzqbdbo3rwxwt6g3qzp4ddfe2@p3kltwo3734k>
References: <20250923212332.112137-2-jonathan.cavitt@intel.com>
 <fggu6gus2o25ooqhih4zrdevayi44azbhu7npx636rml4uex7e@tqs7vstca2zj>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fggu6gus2o25ooqhih4zrdevayi44azbhu7npx636rml4uex7e@tqs7vstca2zj>
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

> > Add error handling for the following VFIO_DEVICE_SET_IRQS cases with
> > respect to the hdr struct:
> > 
> > - More than one VFIO_IRQ_DATA_TYPE_MASK flag is set in hdr.flags
> > - More than one VFIO_IRQ_ACTION_TYPE_MASK flag is set in hdr.flags
> > - hdr.count is not specified
> > 
> > Note that since hdr.count != 0, data_size != 0 is guaranteed unless
> > vfio_set_irqs_validate_and_prepare fails and returns an error.  So, we
> > no longer need to check data_size before running memdup_user because
> > checking the return value of the function is sufficient.
> 
> The code looks good and I don't think the BAT failure is related
> to your change:

I retriggered another test. There are two patches from Jonathan
being tested.

Andi
