Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8D87A6B4A
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 21:15:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EEE310E1D9;
	Tue, 19 Sep 2023 19:15:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6576110E15A;
 Tue, 19 Sep 2023 19:15:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=mtuH2w3GgKbuTZlNeOSy72cGHogSsKnbkktpBiLKKzQ=; b=WPBKNjv+cN0N06hRNxRWfKuikF
 MeTj9F0doLhLJAMbL+0JKSgbX02n3Z4uzWUTW8pymxXwNYU+JrbYNhNK3KBCfea85Sleu4J1qv2s7
 +7q6WEFM3IFN1rz1pchFHlt/Rxl7wimI5+hxLjAAkU0dcuvuoy86DNOc1I56vK7DVpg97On1atJWo
 JTJ+a40iN4Av25ZvSc8CG9k+3m38X6LgUOT9W2xV6wQisahd88K4lCnTTBHLKMH3hMJLsOZQ69j2m
 QM/CP6tFYeVy2e84YyZ+7KsyHj5s45XNqG9NHNTCHERay5zlmU1EdfakUC5d8HKCRMqbIEBoVpZWl
 u6IffTNA==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qigBt-001KcU-F0; Tue, 19 Sep 2023 19:15:21 +0000
Date: Tue, 19 Sep 2023 20:15:21 +0100
From: Matthew Wilcox <willy@infradead.org>
To: Oleksandr Natalenko <oleksandr@natalenko.name>
Message-ID: <ZQnzSQzspy6kejo4@casper.infradead.org>
References: <4857570.31r3eYUQgx@natalenko.name>
 <6287208.lOV4Wx5bFT@natalenko.name>
 <ZQnBrLCPnZfG0A1s@casper.infradead.org>
 <2554845.iZASKD2KPV@natalenko.name>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2554845.iZASKD2KPV@natalenko.name>
Subject: Re: [Intel-gfx] [REGRESSION] [BISECTED] Panic in
 gen8_ggtt_insert_entries() with v6.5
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
Cc: Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, intel-gfx@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Nathan Chancellor <nathan@kernel.org>, linux-mm@kvack.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, dri-devel@lists.freedesktop.org,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, David Airlie <airlied@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 19, 2023 at 08:11:47PM +0200, Oleksandr Natalenko wrote:
> I can confirm this one fixes the issue for me on T460s laptop. Thank you!

Yay!

> Should you submit it, please add:
> 
> Fixes: 0b62af28f2 ("i915: convert shmem_sg_free_table() to use a folio_batch")

Thanks for collecting all these; you're making my life really easy.
One minor point is that the standard format for Fixes: is 12 characters,
not 10.  eg,

Documentation/process/5.Posting.rst:    Fixes: 1f2e3d4c5b6a ("The first line of the commit specified by the first 12 characters of its SHA-1 ID")

I have this in my .gitconfig:

[pretty]
        fixes = Fixes: %h (\"%s\")

and in .git/config,

[core]
        abbrev = 12

I'm working on the commit message now.
