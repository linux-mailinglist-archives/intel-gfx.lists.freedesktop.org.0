Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A3E4AEB2D
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Feb 2022 08:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0784F10E41F;
	Wed,  9 Feb 2022 07:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23F6E10E41F;
 Wed,  9 Feb 2022 07:36:48 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 96FD468AFE; Wed,  9 Feb 2022 08:36:44 +0100 (CET)
Date: Wed, 9 Feb 2022 08:36:44 +0100
From: Christoph Hellwig <hch@lst.de>
To: Zhi Wang <zhi.wang.linux@gmail.com>
Message-ID: <20220209073644.GD9050@lst.de>
References: <20220208111151.13115-1-zhi.a.wang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220208111151.13115-1-zhi.a.wang@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v6 1/3] i915/gvt: Introduce the mmio table
 to support VFIO new mdev API
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Terrence Xu <terrence.xu@intel.com>, dri-devel@lists.freedesktop.org,
 jgg@nvidia.com, intel-gvt-dev@lists.freedesktop.org, hch@lst.de
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

A cover letter with the changelog, the base and maybe a pointer to a git
tree would be nice.

> +static int handle_mmio_cb(struct intel_gvt_mmio_table_iter *iter, u32 offset,
> +			  u32 device, u32 size)
> +{
> +	if (size < 1024 || offset == i915_mmio_reg_offset(GEN9_GFX_MOCS(0)))
> +		return handle_mmio(iter, offset, device, size);
> +	else
> +		return handle_mmio_block(iter, offset, device, size);
> +}

No need for an else statement after a return statement.

> +/* XXX FIXME i915 has changed PP_XXX definition */

Btw, can someone explain this comment?  I has always puzzled me.
