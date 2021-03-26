Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE87434A12E
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Mar 2021 06:55:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 719796E193;
	Fri, 26 Mar 2021 05:55:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB3C16E195;
 Fri, 26 Mar 2021 05:55:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=E58WkaT5a9CNBDa4o1M7zxGvPLG9b5U0RpS7GSOEYIs=; b=arksn03N9GceF7TZwzcFjWK42a
 rv/LcAMf0RAUO2Sb6OMiJPq7OEqgv1ifffRGNR4nJBf5Z3WhJWUJ9iyxAz08DAa9PMYmH9Kv8HNOl
 Ru6h5yg9e3gey9qb9I077A8BYeNWH95xHORqU76QfshaGZFndffgKK/fybjI7ttVci08Q6pn89rla
 SFkVO27xRJ31M+LOPi4JvvCnXZKKdmm4xWyy8cKl1r13A3SUzH3k+esyB4uSfL3nrXeY6Ejez0pqF
 JIwyDMRW7mAndZMzGkhPLeV/a8NW5HlyDjaa5svv7+M6iNISOd4amiait+iWEXam5QH0KyRM05Qta
 bvkOGKLg==;
Received: from [2001:4bb8:191:f692:97ff:1e47:aee2:c7e5] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lPfR5-005AHi-IK; Fri, 26 Mar 2021 05:55:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Andrew Morton <akpm@linux-foundation.org>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Date: Fri, 26 Mar 2021 06:55:01 +0100
Message-Id: <20210326055505.1424432-1-hch@lst.de>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] add remap_pfn_range_notrack instead of reinventing it
 in i915 v2
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
Cc: Peter Zijlstra <peterz@infradead.org>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linux-mm@kvack.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all,

i915 has some reason to want to avoid the track_pfn_remap overhead in
remap_pfn_range.  Add a function to the core VM to do just that rather
than reinventing the functionality poorly in the driver.

Note that the remap_io_sg path does get exercises when using Xorg on my
Thinkpad X1, so this should be considered lightly tested, I've not
managed to hit the remap_io_mapping path at all.

Changes since v1:
 - create a io_mapping_map_user wrapper instead of exporting
   remap_pfn_range_notrack
 - switch to plain remap_pfn_range for remap_sg as it does not use
   a pre-verified pgprot from an iomap

Diffstat:
 drivers/gpu/drm/i915/Kconfig             |    1 
 drivers/gpu/drm/i915/gem/i915_gem_mman.c |    9 +-
 drivers/gpu/drm/i915/i915_drv.h          |    3 
 drivers/gpu/drm/i915/i915_mm.c           |  117 ++++++-------------------------
 include/linux/io-mapping.h               |    3 
 include/linux/mm.h                       |    2 
 mm/Kconfig                               |    3 
 mm/Makefile                              |    1 
 mm/io-mapping.c                          |   29 +++++++
 mm/memory.c                              |   51 ++++++++-----
 10 files changed, 97 insertions(+), 122 deletions(-)
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
