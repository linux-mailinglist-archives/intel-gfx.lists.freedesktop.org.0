Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6759968116
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 09:57:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9584310E22D;
	Mon,  2 Sep 2024 07:57:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=uniontech.com header.i=@uniontech.com header.b="IZDOUdZ5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 487E710E22D
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 07:57:04 +0000 (UTC)
X-CSE-ConnectionGUID: n1jp8lTSSZWE08aGlvLt6Q==
X-CSE-MsgGUID: R2ZkT4+4RSGbLgmMltz4Sw==
X-IronPort-AV: E=McAfee;i="6700,10204,11182"; a="34398536"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="34398536"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 00:57:04 -0700
X-CSE-ConnectionGUID: IRYQSEybRsy+gl8Pfs4yNA==
X-CSE-MsgGUID: GvLt7tyAQDa+dir1F9VzNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="68666602"
Received: from ltuz-desk.ger.corp.intel.com (HELO localhost) ([10.245.246.4])
 by fmviesa003-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024 00:57:02 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 02 Sep 2024 10:56:50 +0300
Resent-Message-ID: <87le0av67x.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from fmviesa003.fm.intel.com (fmviesa003.fm.intel.com
 [10.60.135.143])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id B051420CFED7;
 Sat, 31 Aug 2024 06:51:52 -0700 (PDT)
X-CSE-ConnectionGUID: ihQOSna8TMChtFSTnPFxdA==
X-CSE-MsgGUID: FZZGPZcHTueCheyR1bkx2A==
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="68299172"
Received: from orvoesa102.jf.intel.com ([10.18.183.142])
 by fmviesa003-1.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2024 06:51:52 -0700
X-CSE-ConnectionGUID: D3E0VdcIT8uvE3tedZhrQQ==
X-CSE-MsgGUID: qLyD3D69SQmlKxAhKIqmYw==
Authentication-Results: mtab.intel.com; spf=None
 smtp.pra=helugang@uniontech.com; spf=Pass
 smtp.mailfrom=helugang@uniontech.com; spf=None
 smtp.helo=postmaster@smtpbgeu1.qq.com; dkim=pass (signature verified)
 header.i=@uniontech.com; dmarc=pass (p=none dis=none) d=uniontech.com
IronPort-SDR: 66d31ff7_SiaQAsnUv7l0SQ8Ead1X4rriab0VJwEE2QEGDPgTpcWjYdP
 fWiegIaJAnMR2/kuRVoLKWeGkBe50xsPm4FhwAA==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0FaAwC4HtNmhhaxOzRaHgEBCxIMggQLgkSBVzMEC0i0W?=
 =?us-ascii?q?oF+DwEBAQEBAQEBAQlEBAEBAwSFAIlwAh4HAQQwCQ4BAgECAQEBAQEDAgECA?=
 =?us-ascii?q?QEBAQEBAQEGAQEBAgIBAQECAQECBAMBAQEBAhABAQEBIBkHDgkyhXUNglyBK?=
 =?us-ascii?q?oEmAQEBAQEBAQEBAQEBHQIIYwEhKwsBDQEBNwGBPRKDAIJlAgQCrhYzgQGCD?=
 =?us-ascii?q?AEBBgQDAgHcE4FjCYFIjUJwhRwbgUlEgUeDNog3glCeBCWJZ404SIEhA1khA?=
 =?us-ascii?q?gEQAVUTDQoLCQWJPYMDBSEEJYFrgSOCdYJNAoJYgWcJYYQ9gj5wZ4EILYERg?=
 =?us-ascii?q?R87R4E9gTkwGyQLXoFHeycXBhUEgTFFP4JZbE45Ag0CN4IzJ3OCeFRAAwsYD?=
 =?us-ascii?q?UgRLDUGDhsGPm4HqhGCYoEPgiilZKB/hB+BY6Akl0qSegGYcSKkEYRmgWc6g?=
 =?us-ascii?q?VxNIxWDIk8DGQ+OIQwNCYNYzRA2NTsCBwsBAQMJi2qBSwEB?=
IronPort-PHdr: A9a23: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
 y0e4oUQWlmdiozf7wWsmbsV+nkE9+s=
IronPort-Data: A9a23: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
 iaEuxADOahOFKydNHB6B+nEF1Kdn0/g1w30sTM=
IronPort-HdrOrdr: A9a23:g2B5tKDF7DjYRzblHelO55DYdb4zR+YMi2TDGXoBKyC9Ffbo7/
 xG+c5x6faaskd0ZJheo6H7BEDtexPhHP1OkPAs1NWZLW7bUQKTRekP0WKI+UyEJ8SRzJ8/6Y
 5QN4NfO/nZLX0/reuS2miF+q4bsb+62ZHtvd+b4XFqQCplApsP0y5JTj6iVmtsRAdHApIlFJ
 2Toup/zgDMRV0nKvyCQkMoeMX4h+7m/aiWGiIuNloe0E21txzA0tHHOind5i9bVzNDqI1JzV
 T4
X-Talos-CUID: 9a23:XcuRqmwPhTcUmt1F+57NBgU4Qe19THHW7UuAPlGVUnpkRI+VU2aprfY=
X-Talos-MUID: =?us-ascii?q?9a23=3AJ/zOnA68u0ONljFUC+onQOa1xoxxx7WCU2xTwK4?=
 =?us-ascii?q?/vs2nJQVwGBaEiQWoF9o=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11181"; a="41225506"
X-IronPort-AV: E=Sophos;i="6.10,192,1719903600"; d="scan'208";a="41225506"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from smtpbgeu1.qq.com ([52.59.177.22])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 31 Aug 2024
 06:51:50 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=uniontech.com;
 s=onoh2408; t=1725112286;
 bh=Ka8qarsYmLf/GSHcOa6Wu4VTS+Rj6nO0p0Jn4Jg4f6A=;
 h=From:To:Subject:Date:Message-ID:MIME-Version;
 b=IZDOUdZ5SECKjlpNHG8Hq8lv8fEktGM8lLMbs9foWtUATRd3OGxTr0YRrckrDDm41
 0Tx8SLuOzN9jIWwwtt9JeaNiIvhqvQj+EESSBmz7GZRorFKJtvHAEoTJqprAsXnG20
 AVJ/zuc8jBnFyk8rncmvGjUTEFMr5eH5asneRmM4=
X-QQ-mid: bizesmtp81t1725112283t58gjqd6
X-QQ-Originating-IP: 1POhq59Ce/8SA+Ew+Nl0UnuNsMKhl0XEbMtQaqDt5yw=
Received: from localhost.localdomain ( [221.226.144.218])
 by bizesmtp.qq.com (ESMTP) with 
 id ; Sat, 31 Aug 2024 21:51:17 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1308400164487728062
From: He Lugang <helugang@uniontech.com>
To: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 He Lugang <helugang@uniontech.com>
Subject: [PATCH] drm/i915:Remove unused parameter in marco.
Date: Sat, 31 Aug 2024 21:51:14 +0800
Message-ID: <F84191BE8AA4A690+20240831135114.497043-1-helugang@uniontech.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:uniontech.com:qybglogicsvrgz:qybglogicsvrgz7a-0
X-TUID: s8o3NyQP0U1B
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

The parameter dev_priv is actually not used in macro PORT_ALPM_CTL
and PORT_ALPM_LFPS_CTL,so remove it to simplify the code.

Signed-off-by: He Lugang <helugang@uniontech.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c     | 4 ++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
 3 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 82ee778b2efe..7a93ba627aa6 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -330,7 +330,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 			ALPM_CTL_AUX_LESS_WAKE_TIME(intel_dp->alpm_parameters.aux_less_wake_lines);
 
 		intel_de_write(display,
-			       PORT_ALPM_CTL(display, port),
+			       PORT_ALPM_CTL(port),
 			       PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(15) |
 			       PORT_ALPM_CTL_MAX_PHY_SWING_HOLD(0) |
@@ -338,7 +338,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp,
 				       intel_dp->alpm_parameters.silence_period_sym_clocks));
 
 		intel_de_write(display,
-			       PORT_ALPM_LFPS_CTL(display, port),
+			       PORT_ALPM_LFPS_CTL(port),
 			       PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(10) |
 			       PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(
 				       intel_dp->alpm_parameters.lfps_half_cycle_num_of_syms) |
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 257526362b39..d66dbb529e1d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2076,7 +2076,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
 			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 
 		intel_de_rmw(dev_priv,
-			     PORT_ALPM_CTL(dev_priv, cpu_transcoder),
+			     PORT_ALPM_CTL(cpu_transcoder),
 			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
 	}
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 642bb15fb547..b4984e589d7e 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -295,7 +295,7 @@
 
 #define _PORT_ALPM_CTL_A			0x16fa2c
 #define _PORT_ALPM_CTL_B			0x16fc2c
-#define PORT_ALPM_CTL(dev_priv, port)		_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
+#define PORT_ALPM_CTL(port)			_MMIO_PORT(port, _PORT_ALPM_CTL_A, _PORT_ALPM_CTL_B)
 #define  PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE	REG_BIT(31)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK	REG_GENMASK(23, 20)
 #define  PORT_ALPM_CTL_MAX_PHY_SWING_SETUP(val)	REG_FIELD_PREP(PORT_ALPM_CTL_MAX_PHY_SWING_SETUP_MASK, val)
@@ -306,7 +306,7 @@
 
 #define _PORT_ALPM_LFPS_CTL_A					0x16fa30
 #define _PORT_ALPM_LFPS_CTL_B					0x16fc30
-#define PORT_ALPM_LFPS_CTL(dev_priv, port)			_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)
+#define PORT_ALPM_LFPS_CTL(port)				_MMIO_PORT(port, _PORT_ALPM_LFPS_CTL_A, _PORT_ALPM_LFPS_CTL_B)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
-- 
2.45.2

