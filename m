Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A60A61BBAC0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 12:08:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D416E25F;
	Tue, 28 Apr 2020 10:08:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 875466E1D8
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 10:08:25 +0000 (UTC)
IronPort-SDR: oMqloMVf0odZliN2wytbK2JVZqJpm4fXRB1vCS41ciP/Nbqe/KrzAg3t4k6SVngQaniKSWA3IH
 k6i/a7CjE1VQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 03:08:24 -0700
IronPort-SDR: layZ24OCsenDVsLcJGCAMKWhgVwLL8+1BHozSSCvTYOpzS9LHnBFJcDqS/vqJkSuE4qcIttjNL
 UKOTXaZJt98A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,327,1583222400"; d="scan'208";a="432128918"
Received: from pbooyens-mobl1.ger.corp.intel.com (HELO
 delly.ger.corp.intel.com) ([10.252.37.143])
 by orsmga005.jf.intel.com with ESMTP; 28 Apr 2020 03:08:23 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Apr 2020 13:08:12 +0300
Message-Id: <20200428100816.951014-1-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 0/4] drm/i915/perf: Add support for multi
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

This series is enabling multiple context filtering for performance queries.

Our Iris driver uses 2 contexts to run 3D & compute commands with
synchronization between the 2 contexts.

Right now i915/perf only supports filtering/pinning a single context.

The Mesa change making use of this feature is now reviewed at :

   https://gitlab.freedesktop.org/mesa/mesa/-/merge_requests/4464

Cheers,

Lionel Landwerlin (4):
  drm/i915/perf: break OA config buffer object in 2
  drm/i915/perf: stop using the kernel context
  drm/i915/perf: prepare driver to receive multiple ctx handles
  drm/i915/perf: enable filtering on multiple contexts

 drivers/gpu/drm/i915/i915_perf.c       | 905 ++++++++++++++++---------
 drivers/gpu/drm/i915/i915_perf_types.h |  47 +-
 include/uapi/drm/i915_drm.h            |  21 +
 3 files changed, 636 insertions(+), 337 deletions(-)

--
2.26.2
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
