Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C62E67A68CA
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 18:23:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF7AE10E143;
	Tue, 19 Sep 2023 16:23:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D0410E143
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 16:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:To:From:Date:Sender:Reply-To:Cc:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=N/F0TfUKD2FwDDuwKE83Lif/4ObCj58AF17G04emdhw=; b=spQw0kCPmvB5UOKtTXLMQ053Xh
 edMPuv5PG2NmeLW0KwTMPAehfsw91hpUAbXsLORUV/1ztU87Kilc61nX3Dp9apod7f2jIg0nSgDkY
 gEvzQs3fwKICFvO8OzalHRvMpjVcVDA0283siNGOjHYUn7aQlZghtUE+vRc8M5M1TMCi5JioPpdj7
 rYFVF8l+X3x4EG0ewT2l6TobuQwT5LYTGT1y69Ojm3Mjm5jaHcUa+EmJcmBx+2GmkyTHVJp6nZ2Tj
 PZdEzluNTLtehmAZtQBDgjWhzfMAkYT5zTVUWfxxRa653RhDNITHoye2GENdWXcMF4ldxrA9Z3MfB
 yjQ42cCw==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1qidVv-000bIr-8b
 for intel-gfx@lists.freedesktop.org; Tue, 19 Sep 2023 16:23:51 +0000
Date: Tue, 19 Sep 2023 17:23:51 +0100
From: Matthew Wilcox <willy@infradead.org>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZQnLF91vi1w2n1vG@casper.infradead.org>
References: <4857570.31r3eYUQgx@natalenko.name>
 <169513996676.3667.11418695108092348576@emeril.freedesktop.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <169513996676.3667.11418695108092348576@emeril.freedesktop.org>
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Panic_in_gen8=5Fggtt=5Finsert=5Fentries=28=29_with_v6=2E5?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 19, 2023 at 04:12:46PM -0000, Patchwork wrote:
> -:7: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
> #7: 
> > Andrzej asked me to try to revert commits 0b62af28f249, e0b72c14d8dc and 1e0877d58b1e, and reverting those fixed the i915 crash for me. The e0b72c14d8dc and 1e0877d58b1e commits look like just prerequisites, so I assume 0b62af28f249 ("i915: convert shmem_sg_free_table() to use a folio_batch") is the culprit here.

This is just a parsing fail.

> -:48: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #48: FILE: drivers/gpu/drm/i915/gem/i915_gem_shmem.c:155:
> +		nr_pages = min_t(unsigned long,
> +				folio_nr_pages(folio), page_count - i);

This is bullshit.  Aligning to open paren is an antipattern that leads
to significant unnecessary code churn.  I will not be part of such a
stupid system.
