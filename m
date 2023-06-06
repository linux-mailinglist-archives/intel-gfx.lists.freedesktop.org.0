Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1697724CCC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C06E10E39E;
	Tue,  6 Jun 2023 19:15:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 958A810E39E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078927; x=1717614927;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DhNXHxWdKkniFXnebBrcWZTetBeJjFtop+kUryhx7mU=;
 b=dDcQSSaBvjR3Yx5kPHC4e4hz2jBvx0ze294caP8MTu/Iur7QiNSuhY0v
 AnMS/QfkxoYl29DHTEyE1r1lZs5WbycO2vWo518NNZED9PJ1HKw2/eenu
 Wj5kyTuXvsJ1nkuFpvHBu5mbRsRiVtW/7VJGrU048gFp3i5Pc4DpVmuuz
 v10yN0LPgm5eIkrhnwYA8W2ApdPAMD8i74O/Ndzed3eHGDvGtLaw7sv0o
 A8sQkEfTrJ8SsxolvoIsrFDzSunVEDB57prGqGGjmjekWplp/4PmgvDgg
 +0FpbXvdZjCCYwvDyiUBaFiXAhAe/lGYKbpZDfYDHLDvCPEFgDyq2532G Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146278"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146278"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187051"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187051"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:22 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:51 +0300
Message-Id: <20230606191504.18099-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 06/19] drm/i915/dsb: Avoid corrupting the
 first register write
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

i915_gem_object_create_internal() does not hand out zeroed
memory. Thus we may confuse whatever stale garbage is in
there as a previous register write and mistakenly handle the
first actual register write as an indexed write. This can
end up corrupting the instruction sufficiently well to lose
the entire register write.

Make sure we've actually emitted a previous instruction before
attemting indexed register write merging.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 093b2567883d..a20ae5313d23 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -141,6 +141,14 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	const u32 *buf = dsb->cmd_buf;
 	u32 prev_opcode, prev_reg;
 
+	/*
+	 * Nothing emitted yet? Must check before looking
+	 * at the actual data since i915_gem_object_create_internal()
+	 * does *not* give you zeroed memory!
+	 */
+	if (dsb->free_pos == 0)
+		return false;
+
 	prev_opcode = buf[dsb->ins_start_offset + 1] >> DSB_OPCODE_SHIFT;
 	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
 
-- 
2.39.3

