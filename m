Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A2DF7013CE
	for <lists+intel-gfx@lfdr.de>; Sat, 13 May 2023 03:55:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B59D410E08F;
	Sat, 13 May 2023 01:55:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6023810E053
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 May 2023 01:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683942949; x=1715478949;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2lTPJeOCyYVDWgwi21L73AWP3vd7P8OPhOEaO6TAQtk=;
 b=ZbyK9dlGRsc3GXxiCIpxGajAlU+AOuwThkigUndx8n0D4rxD1Z7sYN1O
 1hoGLDLXlrNy2FW/Vky/h+B6zua0itM6gf6A2ZQrUT68lOHrc8rl/3nPt
 QaleBMRIL9PB305Dc1i2ReR2C/+v7qAeGg2EJGYzBumB87OZEp/KmRBbq
 XB6SV8GerXTAcwJC9jG7/yxK/88fc9lgIgOK6zR2fBRYQ+c+GLscOLK+g
 Ae+pAu/ccFpyhTuuBtWnxUkJ6DSTaY6a9rx++4g/pvCfajXwxoNtPa++B
 oWfMZNnfIKejJd/RUBr8IB8AkhJdYpygN6P2G1Nf+T6R9zHRBs6fTVbLP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="354054421"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="354054421"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="731017013"
X-IronPort-AV: E=Sophos;i="5.99,271,1677571200"; d="scan'208";a="731017013"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 18:55:48 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>
Date: Fri, 12 May 2023 18:55:41 -0700
Message-Id: <20230513015545.2807282-3-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
References: <20230513015545.2807282-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/6] drm/i915/pmu: Skip sampling engines with no
 enabled counters
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

As we have more and more engines do not waste time sampling the ones no-
one is monitoring.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/i915_pmu.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
index 67fa6cd77529..ba769f7fc385 100644
--- a/drivers/gpu/drm/i915/i915_pmu.c
+++ b/drivers/gpu/drm/i915/i915_pmu.c
@@ -339,6 +339,9 @@ engines_sample(struct intel_gt *gt, unsigned int period_ns)
 		return;
 
 	for_each_engine(engine, gt, id) {
+		if (!engine->pmu.enable)
+			continue;
+
 		if (!intel_engine_pm_get_if_awake(engine))
 			continue;
 
-- 
2.36.1

