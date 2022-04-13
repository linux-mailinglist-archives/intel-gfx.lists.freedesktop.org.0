Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8734FFA81
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 17:41:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD3E10E50E;
	Wed, 13 Apr 2022 15:41:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B15A10E24C;
 Wed, 13 Apr 2022 15:41:24 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id AB22568BEB; Wed, 13 Apr 2022 17:41:20 +0200 (CEST)
Date: Wed, 13 Apr 2022 17:41:20 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220413154120.GC27532@lst.de>
References: <cover.1649852517.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1649852517.git.jani.nikula@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 0/2] drm/i915/gvt: clean up makefile
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
Cc: intel-gfx@lists.freedesktop.org, intel-gvt-dev@lists.freedesktop.org,
 Zhi Wang <zhi.wang.linux@gmail.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Apr 13, 2022 at 03:25:37PM +0300, Jani Nikula wrote:
> This is [1] rebased on gvt-next. (Which means it won't build on CI.)

Btw, now that I found that gvt-next branch:

Zhi, your commits still have per-commit changelog like:

v6:
 - Remove the reference of intel_gvt_device_info.(Christoph)
 - Refine the save_mmio() function. (Christoph)

which don't belong in the commit log.  It might be worth to fix that
before sending a pull request.
