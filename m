Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F551FD175
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2020 18:01:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ADB26E106;
	Wed, 17 Jun 2020 16:01:29 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E2726E106
 for <Intel-gfx@lists.freedesktop.org>; Wed, 17 Jun 2020 16:01:27 +0000 (UTC)
IronPort-SDR: lTVDzst2Q0OTH75IFigdUrzfsOyNVJwDv0fA0Glx4P2nQuasPHkhCoT9SDke3dJ4Nbop0D5vYP
 GML0khw/hu6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2020 09:01:26 -0700
IronPort-SDR: XQa5bMnckBff+6ntR3FyUxv4vu2snpuGS+1uAm0w3ZQk40Skw8LOUserWbIMczmiD3oI1I7FPR
 YrKPfm2lTIKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,523,1583222400"; d="scan'208";a="421186023"
Received: from aabdelhi-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.255.197.210])
 by orsmga004.jf.intel.com with ESMTP; 17 Jun 2020 09:01:25 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Wed, 17 Jun 2020 17:01:10 +0100
Message-Id: <20200617160120.16555-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 00/10] gem_wsim improvements
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Ripping out of legacy code and adding some new features, plus bugfixes.

First bit is important so the tool can be refactored to support Gen11 and 12
properly. Working sets support is useful for simulating buffer contention and
similar.

Tvrtko Ursulin (10):
  gem_wsim: Rip out userspace balancing
  gem_wsim: Buffer objects working sets and complex dependencies
  gem_wsim: Show workload timing stats
  gem_wsim: Move BO allocation to a helper
  gem_wsim: Support random buffer sizes
  gem_wsim: Support scaling workload batch durations
  gem_wsim: Log max and active working set sizes in verbose mode
  gem_wsim: Snippet of a workload extracted from carchase
  gem_wsim: Implement device selection
  gem_wsim: Fix calibration handling

 benchmarks/Makefile.am                        |    2 +-
 benchmarks/Makefile.sources                   |    6 -
 benchmarks/ewma.h                             |   71 -
 benchmarks/gem_wsim.c                         | 2054 ++++++-----------
 benchmarks/ilog2.h                            |  104 -
 benchmarks/meson.build                        |    6 +-
 benchmarks/wsim/README                        |   63 +
 benchmarks/wsim/carchasepart.wsim             |  184 ++
 benchmarks/wsim/cloud-gaming-60fps.wsim       |   11 +
 benchmarks/wsim/composited-ui.wsim            |    7 +
 benchmarks/wsim/media-1080p-player.wsim       |    2 +
 benchmarks/wsim/media_1n2_480p.wsim           |   12 +-
 benchmarks/wsim/media_1n2_asy.wsim            |    8 +-
 benchmarks/wsim/media_1n3_480p.wsim           |   16 +-
 benchmarks/wsim/media_1n3_asy.wsim            |    8 +
 benchmarks/wsim/media_1n4_480p.wsim           |   20 +-
 benchmarks/wsim/media_1n4_asy.wsim            |   10 +
 benchmarks/wsim/media_1n5_480p.wsim           |   24 +-
 benchmarks/wsim/media_1n5_asy.wsim            |   12 +
 benchmarks/wsim/media_load_balance_17i7.wsim  |   10 +-
 benchmarks/wsim/media_load_balance_19.wsim    |    4 +-
 .../wsim/media_load_balance_4k12u7.wsim       |    2 +
 .../wsim/media_load_balance_fhd26u7.wsim      |   16 +-
 benchmarks/wsim/media_load_balance_hd01.wsim  |   34 +-
 .../wsim/media_load_balance_hd06mp2.wsim      |    6 +-
 benchmarks/wsim/media_load_balance_hd12.wsim  |    6 +-
 .../wsim/media_load_balance_hd17i4.wsim       |    8 +-
 benchmarks/wsim/media_mfe2_480p.wsim          |   12 +-
 benchmarks/wsim/media_mfe3_480p.wsim          |   18 +-
 benchmarks/wsim/media_mfe4_480p.wsim          |   24 +-
 benchmarks/wsim/media_nn_1080p.wsim           |    4 +
 benchmarks/wsim/media_nn_1080p_s1.wsim        |    4 +-
 benchmarks/wsim/media_nn_1080p_s2.wsim        |    2 +
 benchmarks/wsim/media_nn_1080p_s3.wsim        |    2 +
 benchmarks/wsim/media_nn_480p.wsim            |    4 +
 benchmarks/wsim/vcs_balanced.wsim             |   52 +-
 scripts/media-bench.pl                        |  736 ------
 37 files changed, 1171 insertions(+), 2393 deletions(-)
 delete mode 100644 benchmarks/ewma.h
 delete mode 100644 benchmarks/ilog2.h
 create mode 100644 benchmarks/wsim/carchasepart.wsim
 create mode 100644 benchmarks/wsim/cloud-gaming-60fps.wsim
 create mode 100644 benchmarks/wsim/composited-ui.wsim
 delete mode 100755 scripts/media-bench.pl

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
