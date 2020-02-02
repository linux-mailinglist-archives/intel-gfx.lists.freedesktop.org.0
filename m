Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ED5D214FE72
	for <lists+intel-gfx@lfdr.de>; Sun,  2 Feb 2020 18:07:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309BA6E0E1;
	Sun,  2 Feb 2020 17:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 531126E0CA;
 Sun,  2 Feb 2020 17:06:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 20091882-1500050 for multiple; Sun, 02 Feb 2020 17:06:51 +0000
MIME-Version: 1.0
To: Daniel Vetter <daniel@ffwll.ch>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200202164306.GQ43062@phenom.ffwll.local>
References: <20200202161009.3969641-1-chris@chris-wilson.co.uk>
 <20200202164306.GQ43062@phenom.ffwll.local>
Message-ID: <158066320986.17828.7875090801235082375@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Sun, 02 Feb 2020 17:06:49 +0000
Subject: Re: [Intel-gfx] [PATCH] drm: Remove PageReserved manipulation from
 drm_pci_alloc
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
Cc: intel-gfx@lists.freedesktop.org, stable@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Daniel Vetter (2020-02-02 16:43:06)
> On Sun, Feb 02, 2020 at 04:10:09PM +0000, Chris Wilson wrote:
> > drm_pci_alloc/drm_pci_free are very thin wrappers around the core dma
> > facilities, and we have no special reason within the drm layer to behave
> > differently. In particular, since
> > 
> > commit de09d31dd38a50fdce106c15abd68432eebbd014
> > Author: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
> > Date:   Fri Jan 15 16:51:42 2016 -0800
> > 
> >     page-flags: define PG_reserved behavior on compound pages
> > 
> >     As far as I can see there's no users of PG_reserved on compound pages.
> >     Let's use PF_NO_COMPOUND here.
> > 
> > it has been illegal to combine GFP_COMP with SetPageReserved, so lets
> > stop doing both and leave the dma layer to its own devices.
> > 
> > Reported-by: Taketo Kabe
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/1027
> > Fixes: de09d31dd38a ("page-flags: define PG_reserved behavior on compound pages")
> > Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: <stable@vger.kernel.org> # v4.5+
> 
> Given that after your i915 patch only mga and r128 still use this I think
> deleting code is the best action here.

drm_bufs.c has a little sting in its tail with the inclusion of the
drm_dma_handle struct in its seglist. Certainly after removing r128 we
can remove the EXPORT_SYMBOL and make it internal.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
