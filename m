Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD50227EFA8
	for <lists+intel-gfx@lfdr.de>; Wed, 30 Sep 2020 18:51:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C5FF89E33;
	Wed, 30 Sep 2020 16:51:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2700989DD2;
 Wed, 30 Sep 2020 16:51:47 +0000 (UTC)
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1FD65206C9;
 Wed, 30 Sep 2020 16:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601484706;
 bh=MwdJW4mqrWOrBCkHeReFHIvPIJHWwvzq0/1WZ3thz34=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0QiwqGrru7E0hnFByyf199zgzY5HfiHmMto2K2DP2GQaRpF+SQylW3LD64x0jYywQ
 GcH0r71FBZ2SrN2dwCGbIV3fjNBJqBLpm/gW0SCLI6mvVwTGAH152XfnjfVFnYbu9N
 wSMSXIznFZBAd5pNwXWXfAuppEMtLhJPcm6C38Ms=
Date: Wed, 30 Sep 2020 19:51:42 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Jason Gunthorpe <jgg@nvidia.com>
Message-ID: <20200930165142.GS3094@unreal>
References: <20200927064647.3106737-1-leon@kernel.org>
 <20200927064647.3106737-5-leon@kernel.org>
 <20200929195929.GA803555@nvidia.com> <20200930095321.GL3094@unreal>
 <20200930114527.GE816047@nvidia.com>
 <80c49ff1-52c7-638f-553f-9de8130b188d@nvidia.com>
 <20200930115837.GF816047@nvidia.com>
 <7e09167f-c57a-cdfe-a842-c920e9421e53@nvidia.com>
 <20200930151406.GM816047@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200930151406.GM816047@nvidia.com>
Subject: Re: [Intel-gfx] [PATCH rdma-next v4 4/4] RDMA/umem: Move to
 allocate SG table from pages
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
Cc: David Airlie <airlied@linux.ie>, intel-gfx@lists.freedesktop.org,
 Roland Scheidegger <sroland@vmware.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org,
 Doug Ledford <dledford@redhat.com>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Maor Gottlieb <maorg@nvidia.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 30, 2020 at 12:14:06PM -0300, Jason Gunthorpe wrote:
> On Wed, Sep 30, 2020 at 06:05:15PM +0300, Maor Gottlieb wrote:
> > This is right only for the last iteration. E.g. in the first iteration =
in
> > case that there are more pages (left_pages), then we allocate
> > SG_MAX_SINGLE_ALLOC.=A0 We don't know how many pages from the second it=
eration
> > will be squashed to the SGE from the first iteration.
>
> Well, it is 0 or 1 SGE's. Check if the first page is mergable and
> subtract one from the required length?
>
> I dislike this sg_mark_end() it is something that should be internal,
> IMHO.

I don't think so, but Maor provided possible solution.
Can you take the patches?

Thanks

>
> Jason
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
