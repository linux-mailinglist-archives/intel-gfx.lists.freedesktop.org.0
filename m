Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB62203CD0
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2020 18:44:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1CA36E136;
	Mon, 22 Jun 2020 16:44:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60B586E136;
 Mon, 22 Jun 2020 16:44:33 +0000 (UTC)
IronPort-SDR: hvAXJPLhJPkrw+Qb3RUC7HgDTLiSf1TDDDWv7fxbi+HNWz1d73Iu221FqlDOUV5iquZ3iyAnZR
 SO5vwzKYZxww==
X-IronPort-AV: E=McAfee;i="6000,8403,9660"; a="205294056"
X-IronPort-AV: E=Sophos;i="5.75,268,1589266800"; d="scan'208";a="205294056"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:32 -0700
IronPort-SDR: VYHr/tJ7BLOotM2aETnG8EQ8i1Zwg+ZsrL8gV9HcxUol4yObo6qO6fpKXZ9PclbBg9fIguLlPS
 N6LovkNDE0Qw==
X-IronPort-AV: E=Sophos;i="5.75,267,1589266800"; d="scan'208";a="422687517"
Received: from jkrzyszt-desk.igk.intel.com ([172.22.244.18])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2020 09:44:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Mon, 22 Jun 2020 18:44:07 +0200
Message-Id: <20200622164415.30352-1-janusz.krzysztofik@linux.intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH i-g-t v2 0/8] tests/core_hotunplug: New
 subtests and enhancements
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

Add a bunch of new test variants, enhance debugging of hotunplug driver
issues.

v2: rebase on upstream

Janusz Krzysztofik (8):
  tests/core_hotunplug: Duplicate debug messages in dmesg
  tests/core_hotunplug: Use PCI device sysfs entry, not DRM
  tests/core_hotunplug: Add unbind-unplug-rescan variant
  tests/core_hotunplug: Add 'lateclose before recover' variants
  tests/core_hotunplug: Add 'GEM address space' variant
  tests/core_hotunplug: Add 'GEM object' variant
  tests/core_hotunplug: Add 'PRIME handle' variant
  tests/core_hotunplug: Add 'GEM batch' variant

 tests/core_hotunplug.c | 330 +++++++++++++++++++++++++++++++++++------
 1 file changed, 283 insertions(+), 47 deletions(-)

-- 
2.21.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
