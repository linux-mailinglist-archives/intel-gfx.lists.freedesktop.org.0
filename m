Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C4977148B8
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 13:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9F7E10E276;
	Mon, 29 May 2023 11:39:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADCE110E276
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 11:39:13 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="441042526"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="441042526"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:39:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880361183"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880361183"
Received: from iswiersz-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.191])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2023 04:39:11 -0700
Resent-Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7,
 02160 Espoo
Resent-To: intel-gfx@lists.freedesktop.org
Resent-From: Jani Nikula <jani.nikula@intel.com>
Resent-Date: Mon, 29 May 2023 14:39:08 +0300
Resent-Message-ID: <87r0qzgyeb.fsf@intel.com>
X-Original-To: jani.nikula@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by jnikula-mobl4.ger.corp.intel.com with IMAP (fetchmail-6.4.29)
 for <jani@localhost> (single-drop); Mon, 29 May 2023 14:32:48 +0300 (EEST)
Received: from orsmga005.jf.intel.com (orsmga005.jf.intel.com [10.7.209.41])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 6B9A7580699;
 Mon, 29 May 2023 04:30:15 -0700 (PDT)
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="880358305"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="880358305"
Received: from fmsmga106.fm.intel.com ([10.1.193.131])
 by orsmga005-1.jf.intel.com with ESMTP; 29 May 2023 04:30:14 -0700
Authentication-Results: mtab.intel.com; dkim=none (message not signed)
 header.i=none; spf=None smtp.pra=suijingfeng@loongson.cn; spf=Pass
 smtp.mailfrom=suijingfeng@loongson.cn; spf=None
 smtp.helo=postmaster@mail.loongson.cn
X-Ironport-Dmarc-Check-Result: validskip
IronPort-SDR: 64748cbc_W3EbOV3Hu1sNNVbHij06fdV3rrfvBYLYYoprWKnGbThJi/n
 FQ9XbiKyU8xgC8beg/Rx9ilPLjnAfneQh37Iojg==
X-IPAS-Result: =?us-ascii?q?A0FaAQBajHRkkKPO8nJaHgEBCxIMggQLgi+BSjEEC0eze?=
 =?us-ascii?q?YF+DwEBAQEBAQEBAU0EAQGFBoVfAh0HAQQwCQ0BAQIEAQEBAQMCAQIBAQEBA?=
 =?us-ascii?q?QEDAQEBAgIBAQECAQECBAIBAQEBAhABAQEBAQEgHhAOJ4V1gjcpAYNbCwFGg?=
 =?us-ascii?q?T4BEoJ+gl0CBq4pFxyBAZ9ggWiBQowUhXEbgUlEhH6EC4Z7BI5VjT2BMHKBI?=
 =?us-ascii?q?z9pgQICCQIRZ4EOCGeBdEACDVYLC2WBJlU+gU0CAhE+FVVjGhIBEwMHBAKBC?=
 =?us-ascii?q?BAvBwQzCSAGCRkxJwZWBwEWFiQJExVEB4QEAwqBKWwDCQMHBUlAAwsYDRY6E?=
 =?us-ascii?q?Sw1Bg4fBiYggQkYYwSCAAoHJCSgAYEOlVuRJKAmhBKBXQyfFk2pUC6XYCCjO?=
 =?us-ascii?q?oY7OoFcTYNaTwMZD445kxcBSTcxOwIHCwEBAwmIbIJaAQE?=
IronPort-PHdr: A9a23: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
 /Pn6bf/KoIcLYr9nUdkOAASoQ==
IronPort-Data: A9a23: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
IronPort-HdrOrdr: A9a23:0iRFKKHmRrgCgCN/pLqE6seALOsnbusQ8zAXPo5KJiC9Ffbo8v
 xG88576faZslsssRIb6LK90de7IU80nKQdieJ6AV7IZmfbUQWTQL2LZObZslrd8x+SzJ846U
 +jHpIObuEYdWIK7vrH3A==
X-Talos-CUID: 9a23:gMPbVm0eCs3TCaAPkbfF07xfBuMBLnrz60fqJ0bhMENOcrKIaHiV0fYx
X-Talos-MUID: =?us-ascii?q?9a23=3A87W1fw9Nn0bh8nTcjLIWU1iQf5ov5eOENhhTqsp?=
 =?us-ascii?q?co8K5BxBxIiacpg3iFw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="334309989"
X-IronPort-AV: E=Sophos;i="6.00,201,1681196400"; d="scan'208";a="334309989"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail.loongson.cn ([114.242.206.163])
 by mtab.intel.com with ESMTP; 29 May 2023 04:30:00 -0700
Received: from loongson.cn (unknown [10.20.42.43])
 by gateway (Coremail) with SMTP id _____8Bx7Oq1jHRk0zQCAA--.728S3;
 Mon, 29 May 2023 19:29:57 +0800 (CST)
Received: from openarena.loongson.cn (unknown [10.20.42.43])
 by localhost.localdomain (Coremail) with SMTP id
 AQAAf8AxQbS0jHRkhdd+AA--.10790S2;
 Mon, 29 May 2023 19:29:57 +0800 (CST)
From: Sui Jingfeng <suijingfeng@loongson.cn>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Mon, 29 May 2023 19:29:56 +0800
Message-Id: <20230529112956.2083389-1-suijingfeng@loongson.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID: AQAAf8AxQbS0jHRkhdd+AA--.10790S2
X-CM-SenderInfo: xvxlyxpqjiv03j6o00pqjv00gofq/
X-Coremail-Antispam: 1Uk129KBjvdXoWrKw1rGFWxZF15AFyDXF4fXwb_yoW3AFc_Aa
 4xAr15u348ArZ29r43Aas8GFWfKa4rtw4kCF1fJrnrWFy2yrn0kws5WrWaqF9xCrs8AF43
 X3Z0gFZ8JanxKjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8wcxFpf9Il3svdxBIdaVrn0
 xqx4xG64xvF2IEw4CE5I8CrVC2j2Jv73VFW2AGmfu7bjvjm3AaLaJ3UjIYCTnIWjp_UUUY
 b7kC6x804xWl14x267AKxVWUJVW8JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0rVWrJVCq3w
 AFIxvE14AKwVWUXVWUAwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK021l84ACjcxK
 6xIIjxv20xvE14v26ryj6F1UM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r4j6F4UM28EF7
 xvwVC2z280aVAFwI0_Cr1j6rxdM28EF7xvwVC2z280aVCY1x0267AKxVWxJr0_GcWle2I2
 62IYc4CY6c8Ij28IcVAaY2xG8wAqjxCEc2xF0cIa020Ex4CE44I27wAqx4xG64xvF2IEw4
 CE5I8CrVC2j2WlYx0E2Ix0cI8IcVAFwI0_JrI_JrylYx0Ex4A2jsIE14v26r1j6r4UMcvj
 eVCFs4IE7xkEbVWUJVW8JwACjcxG0xvY0x0EwIxGrwCF04k20xvY0x0EwIxGrwCFx2IqxV
 CFs4IE7xkEbVWUJVW8JwC20s026c02F40E14v26r1j6r18MI8I3I0E7480Y4vE14v26r10
 6r1rMI8E67AF67kF1VAFwI0_Jw0_GFylIxkGc2Ij64vIr41lIxAIcVC0I7IYx2IY67AKxV
 WUJVWUCwCI42IY6xIIjxv20xvEc7CjxVAFwI0_Jr0_Gr1lIxAIcVCF04k26cxKx2IYs7xG
 6r1j6r1xMIIF0xvEx4A2jsIE14v26r1j6r4UMIIF0xvEx4A2jsIEc7CjxVAFwI0_Gr0_Gr
 1UYxBIdaVFxhVjvjDU0xZFpf9x07jUsqXUUUUU=
Subject: [Intel-gfx] [PATCH v2] drm/i915_drm.h: fix a typo
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
Cc: intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

 'rbiter' -> 'arbiter'

Signed-off-by: Sui Jingfeng <suijingfeng@loongson.cn>
---
 include/drm/i915_drm.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/i915_drm.h b/include/drm/i915_drm.h
index 7adce327c1c2..adff68538484 100644
--- a/include/drm/i915_drm.h
+++ b/include/drm/i915_drm.h
@@ -42,7 +42,7 @@ extern struct resource intel_graphics_stolen_res;
  * The Bridge device's PCI config space has information about the
  * fb aperture size and the amount of pre-reserved memory.
  * This is all handled in the intel-gtt.ko module. i915.ko only
- * cares about the vga bit for the vga rbiter.
+ * cares about the vga bit for the vga arbiter.
  */
 #define INTEL_GMCH_CTRL		0x52
 #define INTEL_GMCH_VGA_DISABLE  (1 << 1)
-- 
2.25.1

