Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F7336CDFA
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Apr 2021 23:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 509086E9EA;
	Tue, 27 Apr 2021 21:53:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66036E9E6
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Apr 2021 21:53:40 +0000 (UTC)
IronPort-SDR: za/RULTU2+qEt8GmwFPGcmUjyxHne3z2Ynp9Oxeu6A58ANG/f+kPFjE6ZksS+jog/1JQHbuzjG
 PnQW09ROjo1Q==
X-IronPort-AV: E=McAfee;i="6200,9189,9967"; a="176717427"
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="176717427"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 14:53:40 -0700
IronPort-SDR: Hofdf/aCczpojWjka1IiyUqtLeeR9Zml/FL/rJ8w1i/2/33py1mUsCloMfDX880Rs74CR0txjV
 augw6KcdazbA==
X-IronPort-AV: E=Sophos;i="5.82,256,1613462400"; d="scan'208";a="604653461"
Received: from orsosgc001.ra.intel.com ([10.23.184.150])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2021 14:53:40 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Apr 2021 14:53:38 -0700
Message-Id: <20210427215339.47191-1-umesh.nerlige.ramappa@intel.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This is just a refresh of the earlier patch along with cover letter for the IGT
testing. The query provides the engine cs cycles counter.

v2: Use GRAPHICS_VER() instead of IG_GEN()
v3: Add R-b to the patch

Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20210421172046.65062-1-umesh.nerlige.ramappa@intel.com

Umesh Nerlige Ramappa (1):
  i915/query: Correlate engine and cpu timestamps with better accuracy

 drivers/gpu/drm/i915/i915_query.c | 145 ++++++++++++++++++++++++++++++
 include/uapi/drm/i915_drm.h       |  48 ++++++++++
 2 files changed, 193 insertions(+)

-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
