Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2161A191980
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 19:55:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD726E516;
	Tue, 24 Mar 2020 18:55:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D2E516E513
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 18:54:58 +0000 (UTC)
IronPort-SDR: 1Gvx5nLMxZ1oc0RvcSFzIDztvLOmgLx/X1Dzg1cb1QnG5XRyESFKFVTp176zJYEizwxSglinAA
 UY2OVDc+0DGQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 11:54:57 -0700
IronPort-SDR: Y5KOhladye8Ep1zfU/CHeW++jrPig1TVTRETqrS3EifkIr3ymaGbzngJamRKzGiltKyAHQJ2rv
 +CnDo4L5Xazg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="246817660"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 11:54:57 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Tue, 24 Mar 2020 11:54:54 -0700
Message-Id: <20200324185457.14635-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/3] drm/i915/perf: add OA interrupt support
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

Hi all,

This is a revival of an earlier patch series submitted by Lionel
Landwerlin - https://patchwork.freedesktop.org/series/54280/

The patches enable interrupt support for the perf OA unit in
i915, further details can be found in the orignal series linked
above.

v2: (Umesh)
- This series will split into 2. This revision will only support the addition of
  poll delay parameter to perf OA. If needed a future revision will incorporate
  interrupt support.

Regards,
Umesh


Lionel Landwerlin (3):
  drm/i915/perf: rework aging tail workaround
  drm/i915/perf: move pollin setup to non hw specific code
  drm/i915/perf: add new open param to configure polling of OA buffer

 drivers/gpu/drm/i915/i915_perf.c       | 250 +++++++++++--------------
 drivers/gpu/drm/i915/i915_perf_types.h |  34 ++--
 include/uapi/drm/i915_drm.h            |  13 ++
 3 files changed, 144 insertions(+), 153 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
