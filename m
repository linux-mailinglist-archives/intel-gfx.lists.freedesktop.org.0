Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD8B8725EB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Mar 2024 18:49:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A62810E189;
	Tue,  5 Mar 2024 17:49:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="VYInVLCh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C983410E5A5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Mar 2024 17:49:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=+9Sm1KpDhuq0rWoH374LRl9+5kp/n2UjXdlcgW2CMHo=; b=VYInVLChjE1n2liUy/O3HY25tH
 F6N2V5vHVn7X9aIyo1ELHVqCH911aOgcaZ5SZmVLvAwhMHQJ/g1J0XhmsfJTcNCbspGbxXniZHzc2
 mgRec+b6p0x4VK3VSvb2AvaSbTONR7Hqz7ceX3HTgUwiMpqsxa6oKjhliQIlH4EPXtlIFINKfC7Tu
 WyjUsSQKHRXXaOBjNSxmyW8ha/8yOthrKU7waAdpFsqF4AOgxRc1aVhbUAOpEY0qxrrqsKkIl+eb0
 Nt+A+8Ji4qQa+QBkqFTAT5oyL8iHBObYjU9lECx8krYqrcZNZbOHlOyv57uxN8sXxv5ijw3zQYpSp
 8amxHokA==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1rhYub-00000004vUB-3aVs;
 Tue, 05 Mar 2024 17:49:09 +0000
Date: Tue, 5 Mar 2024 17:49:09 +0000
From: Matthew Wilcox <willy@infradead.org>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>
Subject: Re: Regression on linux-next (next-20240228)
Message-ID: <ZedbFeW3nYVTeaKW@casper.infradead.org>
References: <SJ1PR11MB61292145F3B79DA58ADDDA63B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeVis2823T4YllDg@casper.infradead.org>
 <SJ1PR11MB6129A8999D977A46D6E9CA4AB9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZeXLAAVtjEz0mB8V@casper.infradead.org>
 <SJ1PR11MB6129E5A41D3B4FEF81C87CC7B9232@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB61299F3119D2CE9190AF92E5B9222@SJ1PR11MB6129.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SJ1PR11MB61299F3119D2CE9190AF92E5B9222@SJ1PR11MB6129.namprd11.prod.outlook.com>
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

On Tue, Mar 05, 2024 at 06:49:16AM +0000, Borah, Chaitanya Kumar wrote:
> Issue is still seen with the following changes
> 
> void put_pages_list(struct list_head *pages)
>  
>         folio_batch_init(&fbatch);
>         list_for_each_entry(folio, pages, lru) {
> -               if (!folio_put_testzero(folio))
> +               if (!folio_put_testzero(folio)) {
> +                       list_del(&folio->lru);
>                         continue;
> +               }
>                 if (folio_test_large(folio)) {
>                         __folio_put_large(folio);
> +                       list_del(&folio->lru);
>                         continue;
>                 }

Thanks for testing.  Sorry about this.  I think I figured out what
the problem actually is.  I switched from list_for_each_entry_safe()
to list_for_each_entry() since I was no longer deleting the entries
from the list.  Unfortunately, I was still freeing the entries as I
walked the list!  So it would dereference folio->lru.next after giving
folio back to the page allocator (which probably put it on the PCP list,
where it would point to another free folio?)

Anyway, this should do the job, without the change I asked you to test
above.  If this doesn't do the job by itself, you could try combining
the two changes, but I don't think that will be necessary.

diff --git a/mm/swap.c b/mm/swap.c
index a910af21ba68..1d4b7713605d 100644
--- a/mm/swap.c
+++ b/mm/swap.c
@@ -139,10 +139,10 @@ EXPORT_SYMBOL(__folio_put);
 void put_pages_list(struct list_head *pages)
 {
 	struct folio_batch fbatch;
-	struct folio *folio;
+	struct folio *folio, *next;
 
 	folio_batch_init(&fbatch);
-	list_for_each_entry(folio, pages, lru) {
+	list_for_each_entry_safe(folio, next, pages, lru) {
 		if (!folio_put_testzero(folio))
 			continue;
 		if (folio_test_hugetlb(folio)) {
