Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D91DA44A7EE
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 08:55:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CECC16E580;
	Tue,  9 Nov 2021 07:55:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A9A66E584;
 Tue,  9 Nov 2021 07:55:48 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9444E68AA6; Tue,  9 Nov 2021 08:55:45 +0100 (CET)
Date: Tue, 9 Nov 2021 08:55:45 +0100
From: Christoph Hellwig <hch@lst.de>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Message-ID: <20211109075545.GA27339@lst.de>
References: <20211102070601.155501-1-hch@lst.de>
 <20211102070601.155501-3-hch@lst.de>
 <163602902009.4807.3745093259631583283@jlahtine-mobl.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <163602902009.4807.3745093259631583283@jlahtine-mobl.ger.corp.intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 02/29] drm/i915/gvt: integrate into the main
 Makefile
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
Cc: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Jason Gunthorpe <jgg@nvidia.com>,
 intel-gvt-dev@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 04, 2021 at 02:30:20PM +0200, Joonas Lahtinen wrote:
> Quoting Christoph Hellwig (2021-11-02 09:05:34)
> > Remove the separately included Makefile and just use the relative
> > reference from the main i915 Makefile as for source files in other
> > subdirectories.
> 
> The thinking behind the split is to avoid any merge conflicts as the
> gvt/ subdirectory is handled through separate pull request flow and
> are note part of drm-tip.
> 
> The other subdirectories are part of drm-intel-next/drm-intel-gt-next
> and are part of drm-tip.
> 
> So I would rather still see the Makefile live in gvt/ directory.

So the reason I did this is because the include broke doing nice
little subdir makes or me.  It would also require renaming the kvmgvt.c
source file later on.
