Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A428C1BD7D1
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 11:02:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7ABB6EC48;
	Wed, 29 Apr 2020 09:02:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 547AF6EC48
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 09:02:46 +0000 (UTC)
IronPort-SDR: FzARjEyZ0COCymBjXUv29KHrkNlpS43WiAsswVNHnXq77VdJ45j0k/wDHtJWsIwcEiKhkwPg1o
 LKcbtYCxQiAA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 02:02:45 -0700
IronPort-SDR: F9fghx6q1VyvT4hNVY8j9bXvANmVPY8UynelT2f/gSNvEF1ZeW1a2AUTnfcSVbF3wqHEftiZ2Y
 /sFVvXLHSxXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,331,1583222400"; d="scan'208";a="246784812"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.252.38.205])
 by orsmga007.jf.intel.com with ESMTP; 29 Apr 2020 02:02:44 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 12:02:38 +0300
Message-Id: <20200429090242.978170-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v9 0/4] drm/i915/perf: Add support for multi
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

Just a small change on the key passed to bsearch().

Cheers,

Lionel Landwerlin (4):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: stop using the kernel context
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 930 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  47 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 661 insertions(+), 337 deletions(-)

--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
