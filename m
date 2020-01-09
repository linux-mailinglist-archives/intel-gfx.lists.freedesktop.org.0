Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22DB3135AD0
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 15:02:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 126056E42B;
	Thu,  9 Jan 2020 14:02:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD886E42A;
 Thu,  9 Jan 2020 14:02:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 06:02:08 -0800
X-IronPort-AV: E=Sophos;i="5.69,413,1571727600"; d="scan'208";a="216308382"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.17])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 06:02:06 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Date: Thu,  9 Jan 2020 15:01:23 +0100
Message-Id: <20200109140125.18483-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 0/2] tests/prime_vgem: Examine blitter
 access path
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
Cc: igt-dev@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On future hardware with missing GGTT BAR we won't be able to exercise
dma-buf access via that path.  An alternative to basic-gtt subtest for
testing dma-buf access is required, as well as basic-fence-mmap and
coherency-gtt subtest alternatives for testing WC coherency.

Access to the dma sg list feature exposed by dma-buf can be tested
through blitter.  Unfortunately we don't have any equivalently simple
tests that use blitter.  Provide them.

Blitter XY_SRC_COPY method implemented by igt_blitter_src_copy__raw()
IGT library function has been chosen.

v2: As fast copy is not supported on platforms older than Gen 9,
    use XY_SRC_COPY instead (Chris),
  - bundle with a patch providing XY_SRC_COPY implementation,
  - add subtest descriptions.

Janusz Krzysztofik (1):
  tests/prime_vgem: Examine blitter access path

Vanshidhar Konda (1):
  lib/intel_batchbuffer: Add blitter copy using XY_SRC_COPY_BLT

 lib/intel_batchbuffer.c | 185 ++++++++++++++++++++++++++++++++++++++
 lib/intel_batchbuffer.h |  21 +++++
 tests/prime_vgem.c      | 192 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 398 insertions(+)

-- 
2.21.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
