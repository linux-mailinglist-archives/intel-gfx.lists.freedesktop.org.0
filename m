Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572ED35BBB3
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAD696E215;
	Mon, 12 Apr 2021 08:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7EA96E1D8
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Subject:Cc:To:From:Date:Message-ID:
 Sender:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=lvcAH3egkmdk3BEVnfleRsOyxvt27C1nGCYDzcE+hkk=; b=sQ5jFlOYyMTzY0JnGSHwnsBEas
 3VVJi+90/a64uIGmKHJMN1RZcsGxuwH1JhqV0BEk/hNjPdSW4MkvVQq7bunC7rnk9y9ZiCj8Qb8ZM
 ZLzkzVA2ISZrT7mRczADplemHqCFAWIYIURVGtWdalUgynLRJ/8Tge/Rie3hXAWkT5MB5dNtoWTrW
 VI8m/Da5y0acWJvV12VGOwYct7eAOJBhj7z0vltT3YU/697ZzTWCSt/W54YfQ1z0bdE4vhPF74ZER
 bPcmKKF8kBzlszyzb6jq8S5SJmDlWwtrr0A1S/FjtGCGr13YoJOtZtjFK+IQy9Mfo7a5kF9GBnxOm
 OfUV58Jg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrcl-003yd6-5Q; Mon, 12 Apr 2021 08:08:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 798BF300209;
 Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 2E6C325F2152C; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080012.357146277@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:12 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
Subject: [Intel-gfx] [PATCH 0/7] mm: Unexport apply_to_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 peterz@infradead.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk, linux-mm@kvack.org,
 boris.ostrovsky@oracle.com, hch@lst.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

These patches remove the last few modular apply_to_page_range() users and
unexports these interface. Since these functions provide direct access to our
page-tables they're a prime target for nefarious activities.

These patches rely on the remap_pfn_range_notrack() patches from Christoph that
are currently already in Andrew's tree.

Please consider.

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
