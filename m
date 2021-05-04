Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE9AF3723CD
	for <lists+intel-gfx@lfdr.de>; Tue,  4 May 2021 02:12:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CFAD6EA43;
	Tue,  4 May 2021 00:12:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D3706EA41;
 Tue,  4 May 2021 00:12:16 +0000 (UTC)
IronPort-SDR: n52SsQzsSettVBSqB6zh4ViBE9w88S2wHTX3GHf2dvA/adMsHkSz/Lord1j71Zay9TxPO1+WIk
 ODWfjG6tiXOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="177400697"
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="177400697"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 17:12:13 -0700
IronPort-SDR: 0M2R1H6+pgOsqk3KRwapXbaILYNgMQWyY9xkOgxAeAousvWmWukXhppkumxV8axjq8vQQA4S0m
 FnJK1Tgvszxw==
X-IronPort-AV: E=Sophos;i="5.82,271,1613462400"; d="scan'208";a="388584786"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 17:12:13 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  3 May 2021 17:12:12 -0700
Message-Id: <20210504001213.69573-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 0/1] Add support for querying engine cycles
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
Cc: dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is just a refresh of the earlier patch along with cover letter for the IGT
testing. The query provides the engine cs cycles counter.

v2: Use GRAPHICS_VER() instead of IG_GEN()
v3: Add R-b to the patch
v4: Split cpu timestamp array into timestamp and delta for cleaner API
v5: Add width of the cs cycles to the uapi

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20210504001003.69445-1-umesh.nerlige.ramappa@intel.com

Umesh Nerlige Ramappa (1):
  i915/query: Correlate engine and cpu timestamps with better accuracy

 drivers/gpu/drm/i915/i915_query.c | 157 ++++++++++++++++++++++++++++++
 include/uapi/drm/i915_drm.h       |  56 +++++++++++
 2 files changed, 213 insertions(+)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
