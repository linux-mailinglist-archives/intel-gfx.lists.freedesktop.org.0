Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F3418C352
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Mar 2020 23:52:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB73B6EA9C;
	Thu, 19 Mar 2020 22:52:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 87E7A6EA9A
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Mar 2020 22:52:05 +0000 (UTC)
IronPort-SDR: OBfhspuwmRrRWi5cOSUlaGPwTAor2i0QOBnakIjmzk2vBxB+mwYw0d1Bhg0pMaB65nnz/n8QGR
 2906KasrVsbw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2020 15:52:04 -0700
IronPort-SDR: RCHpMVSB1/0sOPqX+d5JklHriCfaJPblw+d3hlj4kbR/ikohVBtbpNjnGm9PpoX846iIhI2Bte
 ZTa86hawAZLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,573,1574150400"; d="scan'208";a="446464396"
Received: from unerlige-desk.jf.intel.com ([10.165.21.208])
 by fmsmga006.fm.intel.com with ESMTP; 19 Mar 2020 15:52:04 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Lionel G Landwerlin <lionel.g.landwerlin@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Thu, 19 Mar 2020 15:52:00 -0700
Message-Id: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
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

 drivers/gpu/drm/i915/i915_perf.c       | 243 +++++++++++--------------
 drivers/gpu/drm/i915/i915_perf_types.h |  35 ++--
 include/uapi/drm/i915_drm.h            |  13 ++
 3 files changed, 143 insertions(+), 148 deletions(-)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
