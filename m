Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F22844AC11
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 11:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7493B6E3FC;
	Tue,  9 Nov 2021 10:58:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23B2E6E3DF;
 Tue,  9 Nov 2021 10:58:43 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6B81E67373; Tue,  9 Nov 2021 11:58:40 +0100 (CET)
Date: Tue, 9 Nov 2021 11:58:40 +0100
From: "hch@lst.de" <hch@lst.de>
To: "Wang, Zhi A" <zhi.a.wang@intel.com>
Message-ID: <20211109105840.GA9675@lst.de>
References: <20211108212718.10576-1-zhi.a.wang@intel.com>
 <875yt17qzs.fsf@intel.com> <5dd106e7-e62f-dfcd-bfa1-3f92794b8e3e@intel.com>
 <87o86t636f.fsf@intel.com> <20211109103622.GA7607@lst.de>
 <ddff22c4-fa19-24b4-c5e5-9910abb02bf6@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ddff22c4-fa19-24b4-c5e5-9910abb02bf6@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 1/3] i915/gvt: seperate tracked MMIO table
 from handlers.c
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
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 Zhi Wang <zhi.wang.linux@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jgg@nvidia.com" <jgg@nvidia.com>,
 "intel-gvt-dev@lists.freedesktop.org" <intel-gvt-dev@lists.freedesktop.org>,
 "hch@lst.de" <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Nov 09, 2021 at 10:51:27AM +0000, Wang, Zhi A wrote:
> Can you elaborate more about this? We need the hash query from the table 
> ASAP when the hypervisor trapped a mmio access. It's a critical path and 
> we tried different data structure in the kernel and the hash table gives 
> the best performance.

Ok, I misunderstood the hashtable.h interface.  hash_for_each_possible
actually does a hash lookup instead of an interation despite the rather
misleading name.
