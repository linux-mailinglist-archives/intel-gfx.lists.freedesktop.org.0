Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC89524E8AD
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Aug 2020 18:20:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC87E6E459;
	Sat, 22 Aug 2020 16:20:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx2.suse.de (mx2.suse.de [195.135.220.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7BA0D6E457
 for <intel-gfx@lists.freedesktop.org>; Sat, 22 Aug 2020 16:20:42 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
 by mx2.suse.de (Postfix) with ESMTP id CCAF7AFF2;
 Sat, 22 Aug 2020 16:21:09 +0000 (UTC)
Date: Sat, 22 Aug 2020 18:20:38 +0200
From: Joerg Roedel <jroedel@suse.de>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200822162038.GQ3354@suse.de>
References: <20200821123746.16904-1-joro@8bytes.org>
 <20200821153412.5902e4ed0699615d8de4a595@linux-foundation.org>
 <159805314945.32652.6355592202796435703@build.alporthouse.com>
 <159809591535.32652.4016790228519688343@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159809591535.32652.4016790228519688343@build.alporthouse.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2] mm: Track page table modifications in
 __apply_to_page_range()
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-mm@kvack.org,
 David Vrabel <david.vrabel@citrix.com>, Pavel Machek <pavel@ucw.cz>,
 Dave Airlie <airlied@redhat.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>, Joerg Roedel <joro@8bytes.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Aug 22, 2020 at 12:31:55PM +0100, Chris Wilson wrote:
> The active ingredient was
> 
> 7f0a002b5a21 ("x86/mm: remove vmalloc faulting")

Right, that is what bisection will point to. Thanks for collecting all
the info and updating the commit message!

Regards,

	Joerg
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
