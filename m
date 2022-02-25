Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CA74C4E31
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 19:59:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935C010E92F;
	Fri, 25 Feb 2022 18:59:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77C5410E929;
 Fri, 25 Feb 2022 18:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=5amayy+QjO++eY7OjdHexuPyKPMRfacdwbbbFz1KIP4=; b=LbmLNHJ3xpP8zS+wvNGrbnLvBZ
 xw0m9KXFXYJoJWBVj9bYT6A8HaIW8Z/dep9C2Mzt66cImZwMYJgPU6IZGOGoEqf7pF7riGb9gDISO
 UQCOa9OkjKDkgaANZvVO2DJna7+zybAIieO/iBUP7vIFkkqXK8o/JWwBhNe3YTof7ySdfxmoxtCGG
 8vDy/xg/yz1g2oZ0DUjaD/phV/IpP08DpSu3fGFLSN6pc2+H2R5zz5D8URp3WI1Gn5jDHOghWixx6
 MTcj4P7U43Gp2H0QcESc8Mm3suanGPJ8iowAQpL1uOfw4997wSyHNQJV7i4+IiAIlpkNLaf7s/3Rc
 yYduqoQg==;
Received: from willy by casper.infradead.org with local (Exim 4.94.2 #2 (Red
 Hat Linux)) id 1nNfnr-0062ub-QS; Fri, 25 Feb 2022 18:58:56 +0000
Date: Fri, 25 Feb 2022 18:58:55 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <Yhkm71fniiLAAi5p@casper.infradead.org>
References: <20220225032436.904942-1-michael.cheng@intel.com>
 <20220225032436.904942-2-michael.cheng@intel.com>
 <011a236d-7ed4-0d48-e8a6-c9bd98740d5b@linux.intel.com>
 <718c6339-4a19-0de0-2666-a32be7c56dd7@intel.com>
 <0b9dd25f-63ea-9121-6326-14087f5f8e63@linux.intel.com>
 <ce1fadfd-4ae3-8639-8b92-4666ac68da14@intel.com>
 <9f8dd83b-ded2-6a75-2857-2a6a3246fa03@linux.intel.com>
 <683a9a0b-4d3b-8424-cb8f-3fa198a65d06@intel.com>
 <5a9b1536-2180-c3b2-d33d-217f112da056@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5a9b1536-2180-c3b2-d33d-217f112da056@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v12 1/6] drm: Add arch arm64 for
 drm_clflush_virt_range
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
Cc: Michael Cheng <michael.cheng@intel.com>, intel-gfx@lists.freedesktop.org,
 lucas.demarchi@intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Feb 25, 2022 at 06:42:37PM +0000, Tvrtko Ursulin wrote:
> Matthew, what do you think fix for this build warning on h8300 and s390 should be? Or perhaps a build environment issue with kernel test robot?

I'd suggest this should do the job:

+++ b/include/linux/cacheflush.h
@@ -4,6 +4,8 @@

 #include <asm/cacheflush.h>

+struct folio;
+
 #if ARCH_IMPLEMENTS_FLUSH_DCACHE_PAGE
 #ifndef ARCH_IMPLEMENTS_FLUSH_DCACHE_FOLIO
 void flush_dcache_folio(struct folio *folio);

