Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98BC157DEE0
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jul 2022 11:57:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAE4A92B99;
	Fri, 22 Jul 2022 09:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 888F792BAB;
 Fri, 22 Jul 2022 09:57:29 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id A3C6C68AFE; Fri, 22 Jul 2022 11:57:24 +0200 (CEST)
Date: Fri, 22 Jul 2022 11:57:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Robert Beckett <bob.beckett@collabora.com>
Message-ID: <20220722095724.GA14113@lst.de>
References: <20220721174307.1085741-1-bob.beckett@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220721174307.1085741-1-bob.beckett@collabora.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop using swiotlb
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
Cc: dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Thomas Hellstrom <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 kernel@collabora.com, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 21, 2022 at 06:43:07PM +0100, Robert Beckett wrote:
> +	max_segment = dma_max_mapping_size(i915->drm.dev);
> +	max_segment = max_t(size_t, max_segment, PAGE_SIZE) >> PAGE_SHIFT;

dma_max_mapping_size is always larger than PAGE_SIZE, so I don't think
the max is needed.

Otherwise this loks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>
