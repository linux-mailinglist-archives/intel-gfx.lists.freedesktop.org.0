Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 77569346903
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 20:28:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD2B6E943;
	Tue, 23 Mar 2021 19:28:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A63486E943;
 Tue, 23 Mar 2021 19:28:43 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 040C368BFE; Tue, 23 Mar 2021 20:28:41 +0100 (CET)
Date: Tue, 23 Mar 2021 20:28:40 +0100
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20210323192840.GN17735@lst.de>
References: <0-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
 <16-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <16-v1-7dedf20b2b75+4f785-vfio2_jgg@nvidia.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 16/18] vfio/gvt: Use mdev_get_type_group_id()
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
Cc: Max Gurtovoy <mgurtovoy@nvidia.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 David Airlie <airlied@linux.ie>, Leon Romanovsky <leonro@nvidia.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Dan Williams <dan.j.williams@intel.com>, intel-gvt-dev@lists.freedesktop.org,
 Christoph Hellwig <hch@lst.de>, Tarun Gupta <targupta@nvidia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 02:55:33PM -0300, Jason Gunthorpe wrote:
> intel_gvt_init_vgpu_type_groups() makes gvt->types 1:1 with the
> supported_type_groups array, so the type_group_id is also the index into
> gvt->types. Use it directly and remove the string matching.
> 
> Signed-off-by: Jason Gunthorpe <jgg@nvidia.com>
> ---
>  drivers/gpu/drm/i915/gvt/gvt.c   | 24 +++++++-----------------
>  drivers/gpu/drm/i915/gvt/gvt.h   |  4 ++--
>  drivers/gpu/drm/i915/gvt/kvmgt.c |  5 ++---
>  3 files changed, 11 insertions(+), 22 deletions(-)

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
