Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B5427453C
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Sep 2020 17:27:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B42D6E8B4;
	Tue, 22 Sep 2020 15:27:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52A486E8B0;
 Tue, 22 Sep 2020 15:27:10 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6CC1F67373; Tue, 22 Sep 2020 17:27:06 +0200 (CEST)
Date: Tue, 22 Sep 2020 17:27:06 +0200
From: Christoph Hellwig <hch@lst.de>
To: boris.ostrovsky@oracle.com
Message-ID: <20200922152706.GA30633@lst.de>
References: <20200918163724.2511-1-hch@lst.de>
 <20200918163724.2511-7-hch@lst.de>
 <0833b9a8-5096-d105-a850-1336150eada1@oracle.com>
 <20200922145819.GA28420@lst.de>
 <ebd69ba1-fc06-3cc7-348e-3cb0004c2a34@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ebd69ba1-fc06-3cc7-348e-3cb0004c2a34@oracle.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
Subject: Re: [Intel-gfx] [PATCH 6/6] x86/xen: open code alloc_vm_area in
 arch_gnttab_valloc
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
Cc: Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, linux-mm@kvack.org,
 Peter Zijlstra <peterz@infradead.org>, intel-gfx@lists.freedesktop.org,
 x86@kernel.org, linux-kernel@vger.kernel.org, Minchan Kim <minchan@kernel.org>,
 dri-devel@lists.freedesktop.org, xen-devel@lists.xenproject.org,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 Nitin Gupta <ngupta@vflare.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 22, 2020 at 11:24:20AM -0400, boris.ostrovsky@oracle.com wrote:
> =

> On 9/22/20 10:58 AM, Christoph Hellwig wrote:
> > On Mon, Sep 21, 2020 at 04:44:10PM -0400, boris.ostrovsky@oracle.com wr=
ote:
> >> This will end up incrementing area->ptes pointer. So perhaps something=
 like
> >>
> >>
> >> pte_t **ptes =3D area->ptes;
> >>
> >> if (apply_to_page_range(&init_mm, (unsigned long)area->area->addr,
> >> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
PAGE_SIZE * nr_frames, gnttab_apply, &ptes)) {
> >>
> >> =A0=A0=A0=A0=A0=A0 ...
> > Yeah.  What do you think of this version? =

> =

> =

> Oh yes, this is way better. This now can actually be read without trying =
to mentally unwind triple pointers. (You probably want to initialize idx to=
 zero before calling apply_to_page_range(), I am not sure it's guaranteed t=
o be zero).

Both instances are static variables, thus in .bss and initialized.
So unless you insist I don't think we need a manual one.
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
