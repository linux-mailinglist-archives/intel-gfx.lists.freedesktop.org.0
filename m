Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6282949F779
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jan 2022 11:38:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9654410EFDA;
	Fri, 28 Jan 2022 10:38:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DE4910EFC3
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Jan 2022 10:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643366331; x=1674902331;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=5Uq1owBUVf9ZOjmopzIE8Zp+t8W6LSBs4LgO3YYH9GY=;
 b=cMUfZvuxzmP5/ytENSXzXn6whbvxUKCiIJ7/w0iJ+h/d72KSQuh0GTAI
 02fNraBsX7QnNTRrljkk4M0zIqg5Gpr2Que1VY3Ut58QHJ4I6mRH5BfYR
 kjJHPvNtdD+50XxfKb+t4bKYEfAHOzuhgWoE/pD2i+rn6OcTlSpyMPQex
 0lHyXtjNbT8ZPYOE0wm/zr6wwpjhpXI/4alUJXiiqzDv+jv/6k3HnUAdQ
 hnmgX1W/PUcMIPqZvItCfYz5cOAGfrLJn3WZvcLSF7fNvDOGk8yBqZACR
 94aRy3TDkSLO7teqV9reo+XMd7sZiSztcAJ0SIMuUUDk8BkP6g5kYBjIc g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10240"; a="246870738"
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="246870738"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2022 02:38:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,323,1635231600"; d="scan'208";a="521647242"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.147])
 by orsmga007.jf.intel.com with SMTP; 28 Jan 2022 02:38:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Jan 2022 12:38:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Jan 2022 12:37:57 +0200
Message-Id: <20220128103757.22461-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
References: <20220128103757.22461-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 17/17] drm/i915: Document BDW+ DRRS M/N
 programming requirements
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

When reprogramming M/N live on BDW+ we must write the LINK_N
register last as it's the one that arms the double buffered
register update for all the M/N registers. Document this so
that we don't accidentally break things.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 6d435c8be8a2..cf90fdca5f43 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -3147,6 +3147,10 @@ void intel_set_m_n(struct drm_i915_private *i915,
 	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
 	intel_de_write(i915, data_n_reg, m_n->data_n);
 	intel_de_write(i915, link_m_reg, m_n->link_m);
+	/*
+	 * On BDW+ writing LINK_N arms the double buffered update
+	 * of all the M/N registers, so it must be written last.
+	 */
 	intel_de_write(i915, link_n_reg, m_n->link_n);
 }
 
-- 
2.34.1

