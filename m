Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81C28276BCB
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Sep 2020 10:27:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A3FB6E18F;
	Thu, 24 Sep 2020 08:26:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84F886E18F
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Sep 2020 08:26:57 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id E20A468AFE; Thu, 24 Sep 2020 10:26:52 +0200 (CEST)
Date: Thu, 24 Sep 2020 10:26:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Dan Carpenter <dan.carpenter@oracle.com>
Message-ID: <20200924082652.GA14084@lst.de>
References: <20200924081830.GA1568157@mwanda>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200924081830.GA1568157@mwanda>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Uninitialized variable in
 i915_gem_object_map_page()
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
Cc: Abdiel Janulgue <abdiel.janulgue@linux.intel.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, David Airlie <airlied@linux.ie>,
 intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Matthew Auld <matthew.auld@intel.com>, Dave Airlie <airlied@redhat.com>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 24, 2020 at 11:18:30AM +0300, Dan Carpenter wrote:
> The "i" iterator is never set to zero.  This probably doesn't affect
> testing because GCC sometimes initializes variables and also we have a
> new pluggin to initialize stack variables to zero.
> 
> Fixes: 7edd32a9e614 ("drm/i915: use vmap in i915_gem_object_map")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
> Hi Andrew, this should probably go through the -mm tree and get folded
> into the original patch.

FYI, I'll need to resend anyway, and I've folded this into the latest
branch.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
