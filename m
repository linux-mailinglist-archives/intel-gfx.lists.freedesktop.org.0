Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DACEA19FA25
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Apr 2020 18:33:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7D3389D61;
	Mon,  6 Apr 2020 16:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D8DC89C61;
 Mon,  6 Apr 2020 16:32:57 +0000 (UTC)
IronPort-SDR: wr+66tU6SO/Gn9iHDyGZt92RFO33Qfj3Rwu3SMcNFtayo2ef2BO0rKAu2LxbrvVGNt4in0fD6b
 BeMJ+fKTjelA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 09:32:56 -0700
IronPort-SDR: MKFG8lSJk49LJi8nCwEQJBsg6tQjdaiSJ5z4RAau0MAibZisAoxO4s0JaFPZCGgsMV1HY0SROO
 tWmGyJbLNKIg==
X-IronPort-AV: E=Sophos;i="5.72,351,1580803200"; d="scan'208";a="254163421"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2020 09:32:54 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
Date: Mon,  6 Apr 2020 18:32:35 +0200
Message-Id: <20200406163237.28293-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t v2 0/2] tests/gem_userptr_blits: Refresh
 still MMAP_GTT dependent subtests
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Refresh subtests which are still using pre-v4 MMAP_GTT API.

v2: Patch 2/2: clear 'map' before reuse (Zbigniew).

Janusz Krzysztofik (2):
  tests/gem_userptr_blits: Refresh readonly-mmap-unsync exercise
  tests/gem_userptr_blits: Refresh other still MMAP_GTT dependent
    subtests

 tests/i915/gem_userptr_blits.c | 132 ++++++++++++++++++++++++---------
 1 file changed, 97 insertions(+), 35 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
