Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E275096F7
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 07:47:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B67910F304;
	Thu, 21 Apr 2022 05:47:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B23E10E49F;
 Thu, 21 Apr 2022 05:47:42 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9154768B05; Thu, 21 Apr 2022 07:47:38 +0200 (CEST)
Date: Thu, 21 Apr 2022 07:47:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>
Message-ID: <20220421054738.GA20772@lst.de>
References: <5a8b9f48-2c32-8177-1c18-e3bd7bfde558@intel.com>
 <20220420164351.GC2120790@nvidia.com>
 <20220420114033.7f8b57c7.alex.williamson@redhat.com>
 <20220420174600.GD2120790@nvidia.com> <20220420200034.GE2120790@nvidia.com>
 <55cb46db-754e-e339-178c-0a2cfaf65810@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <55cb46db-754e-e339-178c-0a2cfaf65810@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PULL v2] gvt-next
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Jason Gunthorpe <jgg@nvidia.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 21, 2022 at 04:57:34AM +0000, Wang, Zhi A wrote:
> Is it possible that I can send two different pull based on the same branch?
> I was thinking I can remove this line in the original patch and then add a
> small patch to add this line back on the top. Then make two different tags
> before and after that small patch, send one pull with tag that includes that
> small patch to i915 and the other pull with tag that doesn't includes it to
> VFIO?

Yes, you can do that as long as the small fixup commit is the very last
one.
