Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D60969536
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2024 09:22:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E6F710E34A;
	Tue,  3 Sep 2024 07:21:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F36110E34A
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2024 07:21:57 +0000 (UTC)
X-CSE-ConnectionGUID: k05IcbNURnOGOtEyKLX5Mg==
X-CSE-MsgGUID: dPb6a0SqSimaOiXKjPFKiQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="24110773"
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="24110773"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 00:21:57 -0700
X-CSE-ConnectionGUID: 6HghMS/tTvuHWMJUCanBbQ==
X-CSE-MsgGUID: u9HaEpwATGG+1FjClOAsCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,198,1719903600"; d="scan'208";a="64449944"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2024 00:21:56 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Tue, 03 Sep 2024 10:21:40 +0300
Resent-Message-ID: <87seuhtd6j.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from orviesa008.jf.intel.com (ORVIESA008.jf.intel.com
 [10.64.159.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 4316820CFED7;
 Mon,  2 Sep 2024 19:56:52 -0700 (PDT)
X-CSE-ConnectionGUID: zknMlc3OQzCVYxMKSvEE6A==
X-CSE-MsgGUID: NNhrDyg6S8eM10Yk6DNo3w==
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="65487567"
Received: from fmvoesa106.fm.intel.com ([10.64.2.16])
 by orviesa008-1.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 19:56:52 -0700
X-CSE-ConnectionGUID: 0YStDhyRTaSnGY3Rb6YfFA==
X-CSE-MsgGUID: RNbY1K0rSaOIqpaSZQF/Wg==
Authentication-Results: mtab.intel.com; dkim=none (message not signed)
 header.i=none; spf=None smtp.pra=nichen@iscas.ac.cn; spf=Pass
 smtp.mailfrom=nichen@iscas.ac.cn; spf=Pass smtp.helo=postmaster@cstnet.cn
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: 66d67af3_ILHcAoOL8dXfkVMPXdd1/B2dqf3Mdq4WYXK9Ee1J2TCElV3
 uY8htn8QiOdLLTijTyz05u/ryIgvBfk1gcyoFeA==
X-ThreatScanner-Verdict: Negative
X-IPAS-Result: =?us-ascii?q?A0EPAQAGetZmmBX74p9agliCRIFYLwMHCEgdjTWpBgYJA?=
 =?us-ascii?q?QEBAQEBAQEBCUEBAgQBAYUHiXEgBgEEMwYOAQIEAQEBAQMCAQIBAQEBAQEBA?=
 =?us-ascii?q?QYBAQECAgEBAQIBAQIEAwEBAQECEAEBAQEBAQEBNwVJhgKCXIQINgFGgT4Sg?=
 =?us-ascii?q?wCCZQIBBa5ogQHdcCuCAoFIjUJwhTdAgU2BSoEGgi2FEIV3BJ1+JYlfjHpIg?=
 =?us-ascii?q?SEDWSECEQFVEw0KCwkFiT2DAwUhBCWBa4EjgnWCTgKCV4FnCWGEO4I9cGeBC?=
 =?us-ascii?q?C2BEYEfO0eBO4E3MBskC16BR3snFwYVBIEnRT+CV2xOPAINAjeCLyVugmRUQ?=
 =?us-ascii?q?AMLGA1IESw1Bg4bRG4HqXGCYIEOqA2gfxWECoRvnEsaM5dKknoBmHEipBGEZ?=
 =?us-ascii?q?oF9JIFcgQWDIk8DFwIPjjrRYDc0OwIHCwEBAwmFQwEBJBOFbi4BgRwBAQ?=
IronPort-PHdr: A9a23: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
 Exu4jY=
IronPort-Data: A9a23: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
 lGR3pT1OKhJxI29FlFbJcXlNq+dik4xMgw=
IronPort-HdrOrdr: A9a23:QAXrNKBnI0x89cHlHemq55DYdb4zR+YMi2TDGXocdfUzSL37qy
 nAppomPHPP4gr5O0tQ+uxoRpPgfZq0z/ccirX5Vo3MYOCJggaVxAgO1/qF/9XTdheOk9K0F8
 pbAsxD4aXLbWSS2vyKhzWFLw==
X-Talos-CUID: =?us-ascii?q?9a23=3AnTJ2i2nkKppmFjjoaaeDAG5aP9XXOSXs92v8I16?=
 =?us-ascii?q?CNW9STpKkEmWappJqveM7zg=3D=3D?=
X-Talos-MUID: 9a23:yUlGMQXXi7xcgB7q/AXKjgA7F59y2K2JKVkVmK40gufDCiMlbg==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="27788759"
X-IronPort-AV: E=Sophos;i="6.10,197,1719903600"; d="scan'208";a="27788759"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from smtp21.cstnet.cn (HELO cstnet.cn) ([159.226.251.21])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2024
 19:56:50 -0700
Received: from localhost (unknown [124.16.138.129])
 by APP-01 (Coremail) with SMTP id qwCowADXaarvetZm_EK1AA--.36173S2;
 Tue, 03 Sep 2024 10:56:47 +0800 (CST)
From: Chen Ni <nichen@iscas.ac.cn>
To: jani.nikula@linux.intel.com, rodrigo.vivi@intel.com,
 joonas.lahtinen@linux.intel.com, tursulin@ursulin.net, airlied@gmail.com,
 daniel@ffwll.ch
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 Chen Ni <nichen@iscas.ac.cn>
Subject: [PATCH] drm/i915: convert comma to semicolon
Date: Tue,  3 Sep 2024 10:55:58 +0800
Message-Id: <20240903025558.493977-1-nichen@iscas.ac.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: qwCowADXaarvetZm_EK1AA--.36173S2
X-Coremail-Antispam: 1UD129KBjvdXoW7Jw4UZF15Zr47Grykuw4fGrg_yoW3ZFcEkr
 yrCr4fCFy5CFnFvw17Cr43ur9Ivw4q9F4xW34rt3sIyw17J34UX39ruFy7Z345AF1jyFyD
 Aa18Wr97ZrnrujkaLaAFLSUrUUUUbb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
 9fnUUIcSsGvfJTRUUUbTAFF20E14v26r4j6ryUM7CY07I20VC2zVCF04k26cxKx2IYs7xG
 6rWj6s0DM7CIcVAFz4kK6r1j6r18M28lY4IEw2IIxxk0rwA2F7IY1VAKz4vEj48ve4kI8w
 A2z4x0Y4vE2Ix0cI8IcVAFwI0_Gr0_Xr1l84ACjcxK6xIIjxv20xvEc7CjxVAFwI0_Gr0_
 Cr1l84ACjcxK6I8E87Iv67AKxVW8Jr0_Cr1UM28EF7xvwVC2z280aVCY1x0267AKxVW0oV
 Cq3wAS0I0E0xvYzxvE52x082IY62kv0487Mc02F40EFcxC0VAKzVAqx4xG6I80ewAv7VC0
 I7IYx2IY67AKxVWUAVWUtwAv7VC2z280aVAFwI0_Gr0_Cr1lOx8S6xCaFVCjc4AY6r1j6r
 4UM4x0Y48IcxkI7VAKI48JM4x0x7Aq67IIx4CEVc8vx2IErcIFxwACI402YVCY1x02628v
 n2kIc2xKxwCY1x0262kKe7AKxVWUtVW8ZwCY02Avz4vE14v_Gr1l42xK82IYc2Ij64vIr4
 1l4I8I3I0E4IkC6x0Yz7v_Jr0_Gr1lx2IqxVAqx4xG67AKxVWUJVWUGwC20s026x8GjcxK
 67AKxVWUGVWUWwC2zVAF1VAY17CE14v26r1q6r43MIIYrxkI7VAKI48JMIIF0xvE2Ix0cI
 8IcVAFwI0_Jr0_JF4lIxAIcVC0I7IYx2IY6xkF7I0E14v26r4j6F4UMIIF0xvE42xK8VAv
 wI8IcIk0rVWUJVWUCwCI42IY6I8E87Iv67AKxVW8JVWxJwCI42IY6I8E87Iv6xkF7I0E14
 v26r4j6r4UJbIYCTnIWIevJa73UjIFyTuYvjfU5hL0DUUUU
X-Originating-IP: [124.16.138.129]
X-CM-SenderInfo: xqlfxv3q6l2u1dvotugofq/
X-TUID: 8BTyMWr68+eR
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

Replace a comma between expression statements by a semicolon.

Signed-off-by: Chen Ni <nichen@iscas.ac.cn>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 19498ee455fa..00e98a5ede09 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -1313,8 +1313,8 @@ static int intel_hdmi_hdcp_write(struct intel_digital_port *dig_port,
 	memcpy(&write_buf[1], buffer, size);
 
 	msg.addr = DRM_HDCP_DDC_ADDR;
-	msg.flags = 0,
-	msg.len = size + 1,
+	msg.flags = 0;
+	msg.len = size + 1;
 	msg.buf = write_buf;
 
 	ret = i2c_transfer(ddc, &msg, 1);
-- 
2.25.1

