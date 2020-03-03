Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 697D21775BB
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 13:15:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAEAC6EA1E;
	Tue,  3 Mar 2020 12:15:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDCB56EA1E;
 Tue,  3 Mar 2020 12:15:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 04:15:22 -0800
X-IronPort-AV: E=Sophos;i="5.70,511,1574150400"; d="scan'208";a="412722427"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Mar 2020 04:15:20 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Tue,  3 Mar 2020 13:15:07 +0100
Message-Id: <20200303121509.29662-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t 0/2] tests/gem_userptr_blits: Refresh
 other now MMAP_GTT dependent subtests
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Together with recently submitted "tests/gem_userptr_blits: Refresh
map-fixed-invalidate* subtests" (Chris' R-b: already collected) and
"tests/gem_userptr_blits: Exercise new invalid mapping types" (a part
of "tests/gem_userptr_blits: Enhance invalid mapping exercise" series,
still waiting for someone to provide a review) patches, this series
concludes MMAP_OFFSET related changes required for gem_userptr_blits,
I believe.

Thanks,
Janusz


Janusz Krzysztofik (2):
  tests/gem_userptr_blits: Refresh readonly-mmap-unsync exercise
  tests/gem_userptr_blits: Refresh other now MMAP_GTT dependent subtests

 tests/i915/gem_userptr_blits.c | 129 ++++++++++++++++++++++++---------
 1 file changed, 95 insertions(+), 34 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
