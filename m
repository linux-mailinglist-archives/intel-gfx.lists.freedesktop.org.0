Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FCD60DDFE
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Oct 2022 11:25:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98DDB10E212;
	Wed, 26 Oct 2022 09:25:39 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from outbound-smtp16.blacknight.com (outbound-smtp16.blacknight.com
 [46.22.139.233])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B2A10E212
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 09:25:34 +0000 (UTC)
Received: from mail.blacknight.com (pemlinmail01.blacknight.ie [81.17.254.10])
 by outbound-smtp16.blacknight.com (Postfix) with ESMTPS id
 EF02D1C535E
 for <Intel-gfx@lists.freedesktop.org>; Wed, 26 Oct 2022 10:25:31 +0100 (IST)
Received: (qmail 23250 invoked from network); 26 Oct 2022 09:25:31 -0000
Received: from unknown (HELO techsingularity.net)
 (mgorman@techsingularity.net@[84.203.198.246])
 by 81.17.254.9 with ESMTPSA (AES256-SHA encrypted, authenticated);
 26 Oct 2022 09:25:31 -0000
Date: Wed, 26 Oct 2022 10:25:29 +0100
From: Mel Gorman <mgorman@techsingularity.net>
To: Hugh Dickins <hughd@google.com>
Message-ID: <20221026092529.xia2nug2b2yijfws@techsingularity.net>
References: <1596edbb-02ad-6bdf-51b8-15c2d2e08b76@linux.intel.com>
 <20221024142321.f2etddxtqa47bib7@techsingularity.net>
 <8d9517cc-6fba-ede0-a95f-e9b036e75ceb@linux.intel.com>
 <20221025100338.zcvqyji5gwiuj3nj@techsingularity.net>
 <831c3f2f-97c6-608d-9d16-1742c447c7e@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
In-Reply-To: <831c3f2f-97c6-608d-9d16-1742c447c7e@google.com>
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
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>,
 Linux MM <linux-mm@kvack.org>, Matthew Auld <matthew.auld@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 25, 2022 at 08:26:06AM -0700, Hugh Dickins wrote:
> > 
> > > If so I
> > > can temporarily put it in until it arrives via the next rc - assuming that
> > > would be the flow from upstream pov?
> 
> The right thing for now is for GregKH to drop Mel's from 6.0.4:
> I've just sent a mail asking for that (I would have asked yesterday,
> but mistook that GregKH was not in Cc).
> 

Thanks for catching that, I only saw the mail this morning that it had been
picked up as a stable candidate and was internally screaming "no no no"
until I saw your mail :P. I added the warning thinking "we have almost a
full rc cycle to catch any additional fallout".

> Of course Mel's fix is much more important than the harmless
> (unless panic on warn) warning, but let's delay it a few more days,
> it just flowed into stable too quickly.
> 
> Thanks Mel: I never knowingly hit the THP_SWAP issue which your patch
> is fixing, but it now looks like it was also responsible for mysterious
> occasional OOM kills that I had been chasing for weeks.
> 

I'm glad it helped! I worried that the additional warning would trigger an
excessive number of new bugs but it served its intended purpose -- catch
fallout from clobbering page->private causing subtle bugs later that are
hard to debug.

-- 
Mel Gorman
SUSE Labs
