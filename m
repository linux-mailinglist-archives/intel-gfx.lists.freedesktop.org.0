Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A86281C36F4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 May 2020 12:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AFDA6E180;
	Mon,  4 May 2020 10:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 206306E180
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 May 2020 10:31:50 +0000 (UTC)
IronPort-SDR: gb5+oZCxMpIV91MqYgkZwUv/eO9ORdEqyx/njWwfMIviEaDGtJ08C6NuQqQEUd0pKtmsWFqnvZ
 IfWwiT1eNQ6A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 03:31:49 -0700
IronPort-SDR: 4Vke688UUJjJOcH6Ial5ui0xuQedxOIoD60sH1dyYhF0Ggex8O/1yNOclMyG5qwY/oBMbWwH1e
 2+XUYqg50/2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,351,1583222400"; d="scan'208";a="369054444"
Received: from flast-mobl2.ger.corp.intel.com (HELO delly.ger.corp.intel.com)
 ([10.249.47.245])
 by fmsmga001.fm.intel.com with ESMTP; 04 May 2020 03:31:48 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 May 2020 13:31:42 +0300
Message-Id: <20200504103146.1359515-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v11 0/4] drm/i915/perf: Add support for multi
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

Hi all,

This version pins the configuration context for the lifecycle of the
i915-perf stream.

The associated userspace change : https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4464

Cheers,

Lionel Landwerlin (4):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: stop using the kernel context
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 903 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  47 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 639 insertions(+), 332 deletions(-)

--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
