Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9535A6A2BCA
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Feb 2023 22:02:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8059010E071;
	Sat, 25 Feb 2023 21:02:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 493E210E071;
 Sat, 25 Feb 2023 21:02:44 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 60450B80B2D;
 Sat, 25 Feb 2023 21:02:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B0E37C433D2;
 Sat, 25 Feb 2023 21:02:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux-foundation.org;
 s=korg; t=1677358961;
 bh=dAdczosGMLE3reQ+yfqGchmgVwzqD0s258AHR5QDBk8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=alNPgnU7am/djLnV5nPooemcTFnojh9BxoSgHaOyQ1zVw/FmC9FHnkLEdsZbYmyo1
 myAxBpFmRRNHwYDF/RDFqVU53010sqZCOx0YG4deO0d5f7R/9zChC/0WdjTHh8h6rS
 9ad9+j7MEIPfQW8G40OfvZyJ7mjkjFPib3GnbAUc=
Date: Sat, 25 Feb 2023 13:02:39 -0800
From: Andrew Morton <akpm@linux-foundation.org>
To: kernel test robot <lkp@intel.com>
Message-Id: <20230225130239.d25f657955d3c4462c80d128@linux-foundation.org>
In-Reply-To: <63fa411f.ZvVOisJt5OlLzGYF%lkp@intel.com>
References: <63fa411f.ZvVOisJt5OlLzGYF%lkp@intel.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [linux-next:master] BUILD REGRESSION
 8232539f864ca60474e38eb42d451f5c26415856
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
Cc: linux-arch@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-usb@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-mm@kvack.org,
 Vlastimil Babka <vbabka@suse.cz>, io-uring@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, 26 Feb 2023 01:10:55 +0800 kernel test robot <lkp@intel.com> wrote:

> tree/branch: https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> branch HEAD: 8232539f864ca60474e38eb42d451f5c26415856  Add linux-next specific files for 20230225
> 
> Error/Warning reports:
> 
> mm/page_alloc.c:257:1: sparse: sparse: symbol 'check_pages_enabled' was not declared. Should it be static?

It should!

--- a/mm/page_alloc.c~mm-page_alloc-reduce-page-alloc-free-sanity-checks-fix
+++ b/mm/page_alloc.c
@@ -254,7 +254,7 @@ DEFINE_STATIC_KEY_MAYBE(CONFIG_INIT_ON_FREE_DEFAULT_ON, init_on_free);
 EXPORT_SYMBOL(init_on_free);
 
 /* perform sanity checks on struct pages being allocated or freed */
-DEFINE_STATIC_KEY_MAYBE(CONFIG_DEBUG_VM, check_pages_enabled);
+static DEFINE_STATIC_KEY_MAYBE(CONFIG_DEBUG_VM, check_pages_enabled);
 
 static bool _init_on_alloc_enabled_early __read_mostly
 				= IS_ENABLED(CONFIG_INIT_ON_ALLOC_DEFAULT_ON);
_

