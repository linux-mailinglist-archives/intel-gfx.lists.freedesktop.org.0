Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CEB463C32
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 17:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34C16E4BB;
	Tue, 30 Nov 2021 16:46:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C64746E487;
 Tue, 30 Nov 2021 16:46:27 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1EC9D68B05; Tue, 30 Nov 2021 17:46:23 +0100 (CET)
Date: Tue, 30 Nov 2021 17:46:22 +0100
From: Christoph Hellwig <hch@lst.de>
To: Zhi Wang <zhi.wang.linux@gmail.com>
Message-ID: <20211130164622.GA15150@lst.de>
References: <20211129123832.105196-1-zhi.a.wang@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211129123832.105196-1-zhi.a.wang@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH v4 1/2] i915/gvt: Introduce the
 mmio_info_table.c to support VFIO new mdev API
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
 dri-devel@lists.freedesktop.org, Terrence Xu <terrence.xu@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>, intel-gvt-dev@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I still think this goes into the wrong direction.

Something closer to your first version that also saves away the
gvt->mmio.mmio_attribute flags in the core i915 module, and which
splits the MMIO table into one that contains just the offset, size
and flags (core i915) and one that has the read-only mask and handlers
(gvt) would be much simpler and not create this super-tight coupling
between core i915 and gvt.

Bonus points for moving your new intel_gvt_hw_state structure out
of struct intel_gvt and into struct i915_virtual_gpu.
