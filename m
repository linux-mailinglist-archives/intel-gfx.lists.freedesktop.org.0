Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1AF460D98C
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 05:04:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A0AC10E2A4;
	Wed, 26 Oct 2022 03:04:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC4A710E2E2
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 03:04:20 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 0F49561C5A;
 Wed, 26 Oct 2022 03:04:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E3585C433D7;
 Wed, 26 Oct 2022 03:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1666753459;
 bh=BJRek8JE8PbRiFnJ+9mL3bLqWsbDCsQpG9QwxgqCafw=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rMkoScGP715mzv3cGwxrexYAd0o2G6y7H9waTt6Jr13QCSf+7injFcz1l5cudMvTA
 g8/w+qkDcs3ORI75EholOlaDuL3RxekMSlZGA3JhPmrYFgBPeJ5V0DiSXqEh90v1Gs
 aDkMoVrT4TnjqI/z1y9by8dPVnollwWzUN4VCziU=
Date: Tue, 25 Oct 2022 20:04:17 -0700
From: Andrew Morton <akpm@linux-foundation.org>
To: Mel Gorman <mgorman@techsingularity.net>
Message-Id: <20221025200417.4657a50e93cf13fb08a87db4@linux-foundation.org>
In-Reply-To: <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
 <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
 <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] mm/huge_memory: do not clobber swp_entry_t during
 THP split
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 Hugh Dickins <hughd@google.com>,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Linux MM <linux-mm@kvack.org>, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Oct 2022 11:03:38 +0100 Mel Gorman <mgorman@techsingularity.net> wrote:

> > If so I
> > can temporarily put it in until it arrives via the next rc - assuming that
> > would be the flow from upstream pov?
> > 
> 
> I expect it to. It's currently in the akpm/mm.git branch
> mm/mm-hotfixes-unstable where I expect it to flow to mm/mm-hotfixes-stable
> in due course before sending to Linus. I can't make promises about the
> timing as that's determined by Andrew.

This is now in mainline, 71e2d666ef85.
