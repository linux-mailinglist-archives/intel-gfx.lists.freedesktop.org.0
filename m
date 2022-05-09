Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B827851F53A
	for <lists+intel-gfx@lfdr.de>; Mon,  9 May 2022 09:24:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EF810EF23;
	Mon,  9 May 2022 07:24:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CAFC110EF23
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 May 2022 07:24:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652081058; x=1683617058;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UnqKBSqv0RbsRamhm4DelwHBuEuv8GQru05lB2Man74=;
 b=URYW/0hzZgVT+j46+3/Srt1GT9bE/cHK4e/3SzCFqoHYioUWgU96awf3
 bIHzV0nm+DBmyTh5Ws2n54O5ad6DwXL+qiSiCp26mgQogiJraL2guYY4N
 BYWxC+Hj4bp9ZS7XMsZ34QV/YA30Sj7UlCWyNp9BZozdDdU8MB/to6HKi
 c8ybGP3Q9yPUjj16ZEYdhp4YCKkSvthvmhcQ0HJKEBYpuHChvShQrLefv
 QJB2Z5Zr5nfoxVmgP7vXZR6Da5VhKjVgoZgkn/Ce1eCeP26rDnDePJcbl
 L+CJgyRMfqfqVDt0EynXvSOBgjWYlTFmbd5z9OCdb/z2lmXWBq9xY1KUb A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10341"; a="249503527"
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="249503527"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:18 -0700
X-IronPort-AV: E=Sophos;i="5.91,210,1647327600"; d="scan'208";a="710390641"
Received: from jparmijo-mobl.amr.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.219.202])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2022 00:24:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  9 May 2022 10:24:03 +0300
Message-Id: <20220509072404.1423018-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220509072404.1423018-1-jouni.hogander@intel.com>
References: <20220509072404.1423018-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/2] drm/i915/psr: Use full update In case of
 area calculation fails
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
Cc: Mark Pearson <markpearson@lenovo.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Currently we have some corner cases where area calculation fails.  For
these sel fetch area calculation ends up having update area as y1 = 0,
y2 = 4. Instead of these values safer option is full update.

One of such for example is big fb with offset. We don't have usable
offset in psr2_sel_fetch_update. Currently it's open what is the
proper way to fix this corner case. Use full update for now.

v2: Commit message modified

Cc: José Roberto de Souza <jose.souza@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>
Tested-by: Mark Pearson <markpearson@lenovo.com>
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 06db407e2749..8c099d24de86 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1770,6 +1770,9 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 		clip_area_update(&pipe_clip, &damaged_area);
 	}
 
+	if (pipe_clip.y1 == -1)
+		full_update = true;
+
 	if (full_update)
 		goto skip_sel_fetch_set_loop;
 
-- 
2.25.1

