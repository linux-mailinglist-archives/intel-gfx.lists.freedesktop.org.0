Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBE81C37C1
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 13:12:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE82689FC0;
	Mon,  4 May 2020 11:12:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6BA589FBC
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 11:12:54 +0000 (UTC)
IronPort-SDR: 83l6VEGT0ysiC3Cov3Fsblcfa4qOOhBMCwGUBKkJUvBzKH9TJBhkEuFXnH5/G7jUr8pWbZSwys
 4V9+FOFutCbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 04:12:54 -0700
IronPort-SDR: dih3fq9B8BzsuYKGIJ+zoxqjHioxdmfpIhErkyRmuRZ1miSPOVbifetPyjQ3MLkjPsHahrP6qT
 7N6uKnY3CiNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="248188620"
Received: from efilatov-mobl.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.56.163])
 by orsmga007.jf.intel.com with ESMTP; 04 May 2020 04:12:52 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 14:12:45 +0300
Message-Id: <20200504111249.1367096-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v12 0/4] drm/i915/perf: Add support for multi
 context perf queries
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
Cc: chris@chris-wilson.co.uk
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey,

Just a couple of nits.

The associated userspace change : https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4464

Cheers,

Lionel Landwerlin (4):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: stop using the kernel context
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 902 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  46 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 637 insertions(+), 332 deletions(-)

--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
