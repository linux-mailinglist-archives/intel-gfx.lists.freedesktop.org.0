Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GTeHLYm7JmrQbwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2F65658C
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=J5dfICJV;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 402B910F358;
	Mon,  8 Jun 2026 12:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1037710F35C;
 Mon,  8 Jun 2026 12:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780923271; x=1812459271;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jazbHiP+/VVO60pQSt3WWjdMCkmxyBvJc2lfq5LwAFM=;
 b=J5dfICJVI4rhZlr7LehLJeVtndc8E2TQvAabUC+6shBgKL2cUouL+sBM
 uxcSsONY1x/OvjIpT9QOKTOS+7Ls+IjX903hJMfHrxMfxELspZlKvnoW1
 NB7iIKKkfF0GSyGwF8rjM0sP5JiL2emuT+25O2z44zlvO7MOfUgD8Ny4v
 gqo74DimnT3gUuRJDhzslpTiGyt+WIWsPgSyUEgnlE81eRShIMSZu8s/1
 PRogddFh3MhzF10iUSm4whcNN6o5Ofe+s5e5x1MgsJr0qaV+OpP7tdPiG
 0Hxq6l6nIUuInP8cHO+wMnY3GZTOgx4KQ14IeNA0g9GyyGoPI5rls8s1s A==;
X-CSE-ConnectionGUID: zMEm42UZSX+6CgPrvKFSxQ==
X-CSE-MsgGUID: WH1tyUVhT1uwO3lPT16giQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81401587"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81401587"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:54:30 -0700
X-CSE-ConnectionGUID: a7GtS5WbQ7y92rdJIoSIjg==
X-CSE-MsgGUID: ISrx4NocTbGue0ztJs/24w==
X-ExtLoop1: 1
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa003.fm.intel.com with ESMTP; 08 Jun 2026 05:54:29 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [RFC PATCH 1/2] drm/i915/cdclk: Avoid VCO-change glitches
Date: Mon,  8 Jun 2026 18:20:08 +0530
Message-Id: <20260608125009.979672-2-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260608125009.979672-1-nemesa.garg@intel.com>
References: <20260608125009.979672-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5AC2F65658C

On platforms with both cdclk squash and crawl, bxt_modeset_calc_cdclk()
can pick a target cdclk whose VCO differs from the current one. The
resulting transition causes pipe FIFO underruns:

  - Up-crawl from VCO 614400: intermediate frequencies fall below
    min_cdclk.
  - Down-crawl from VCO 1382400: DBUF ratio changes mid-commit before
    watermarks for the new ratio are programmed.

On a VCO-changing transition, prefer the lowest cdclk_table entry that
satisfies min_cdclk at the current VCO (pure squash, no DBUF ratio
change). If none exists, fall back to max_cdclk_freq on the up-crawl
path and stay at the current cdclk on the down-crawl path.

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cdclk.c | 47 ++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
index 189ae2d3cfc9..ead8e59e44a4 100644
--- a/drivers/gpu/drm/i915/display/intel_cdclk.c
+++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
@@ -1598,6 +1598,26 @@ static int bxt_calc_cdclk(struct intel_display *display, int min_cdclk)
 	return display->cdclk.max_cdclk_freq;
 }
 
+/*
+ * Lowest cdclk_table entry that satisfies min_cdclk AND keeps the
+ * supplied VCO. Returns 0 if no such entry exists.
+ */
+static int bxt_calc_cdclk_for_vco(struct intel_display *display,
+				  int min_cdclk, int vco)
+{
+	const struct intel_cdclk_vals *table = display->cdclk.table;
+	int i;
+
+	for (i = 0; table[i].refclk; i++) {
+		if (table[i].refclk == display->cdclk.hw.ref &&
+		    table[i].cdclk >= min_cdclk &&
+		    display->cdclk.hw.ref * table[i].ratio == vco)
+			return table[i].cdclk;
+	}
+
+	return 0;
+}
+
 static int bxt_calc_cdclk_pll_vco(struct intel_display *display, int cdclk)
 {
 	const struct intel_cdclk_vals *table = display->cdclk.table;
@@ -3300,6 +3320,33 @@ static int bxt_modeset_calc_cdclk(struct intel_atomic_state *state)
 	cdclk = bxt_calc_cdclk(display, min_cdclk);
 	vco = bxt_calc_cdclk_pll_vco(display, cdclk);
 
+	/*
+	 * Guard against VCO-changing CDCLK transitions that cause pipe FIFO
+	 * underruns. When crawling up from VCO 614400 the intermediate
+	 * frequencies are below min_cdclk; when crawling down from VCO
+	 * 1382400 the DBUF ratio changes mid-modeset before watermarks are
+	 * reprogrammed. Prefer a same-VCO cdclk_table entry (pure squash,
+	 * no DBUF ratio change); only fall back to max_cdclk_freq when no
+	 * such entry can satisfy min_cdclk.
+	 */
+	if (HAS_CDCLK_SQUASH(display) && HAS_CDCLK_CRAWL(display) &&
+	    display->cdclk.hw.vco > 0 && vco > 0 &&
+	    display->cdclk.hw.vco != vco) {
+		if (cdclk > display->cdclk.hw.cdclk) {
+			int same_vco_cdclk;
+
+			same_vco_cdclk = bxt_calc_cdclk_for_vco(display, min_cdclk,
+								display->cdclk.hw.vco);
+			if (same_vco_cdclk)
+				cdclk = same_vco_cdclk;
+			else
+				cdclk = display->cdclk.max_cdclk_freq;
+		} else {
+			cdclk = display->cdclk.hw.cdclk;
+		}
+		vco = bxt_calc_cdclk_pll_vco(display, cdclk);
+	}
+
 	cdclk_state->logical.vco = vco;
 	cdclk_state->logical.cdclk = cdclk;
 	cdclk_state->logical.voltage_level =
-- 
2.25.1

