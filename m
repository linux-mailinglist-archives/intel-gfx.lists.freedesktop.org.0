Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 442F03E46E0
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Aug 2021 15:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D72A89BAC;
	Mon,  9 Aug 2021 13:47:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com
 [IPv6:2607:f8b0:4864:20::72b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E161489ACD;
 Mon,  9 Aug 2021 02:34:22 +0000 (UTC)
Received: by mail-qk1-x72b.google.com with SMTP id t68so16870768qkf.8;
 Sun, 08 Aug 2021 19:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mvNc8KEp40u8XM5bp+0t7D+wLd2rEwsp3dCzstYaaGU=;
 b=nlnkEnMrOuWtZqj+HBSQ8uXnTHHiGWsAH91m80fdrlrjvhbG6KKsH/L1/cCrsJCJek
 tj0YvgVhbLKLhUb3+0LoTDv0L7y1Svp/+7uw5+5T+0Erv7OgmER/988Hn4S7WL0oIrJf
 k3vkisJuJ1k+oO2hXaaVhXHA2hJSaDkHEeIZKlxF13GwV0TxXXAzId+VInnpji6lfQCV
 HClkQXSnm5+z7MpwJtWPfXuwvhcH/8bpKY7SHHUQ/dAbc8BwJvpq+qfV41ov6kmiLJLY
 2XVrsBtP+nR81+YDVYufYi5L6GUBuxVzvTdzkWbswSvuW54/tFHLjxNhNhkBaQIUab+i
 rPZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=mvNc8KEp40u8XM5bp+0t7D+wLd2rEwsp3dCzstYaaGU=;
 b=TF0vBt3NGotDw/UyqsQjWyrbr4/BVJkSD3hW8ciS+DFWOVhkDNTVs0cRe1BlRMK1ec
 +OI//chZ9mAiUZt2bW9U0JFhMTgf33vYfXKx4l+yi6piyd6/L5A32Ug5MuHtBr+Oqnfb
 WNPfHZno5P9toAJhUbPag7E71Zbe7tjascZ9sWo97meoHVVeHws9MD5j9NXLtbcTRR0M
 l8VbISa4rFKAqJRo8H16UCbcYbkeC0ISwJEH+/jm/nJYjZVMVsbrcgGAHGuDfrHjUu/+
 k4i5m0XWpaTu5G96lT7zBRPdKYEU2S4Dn4pY8IZiGr5DMF9HTvWiZAE4PS2B4fk7UfLp
 /DGg==
X-Gm-Message-State: AOAM531v0EAYI7W0Vo3cEm+/lb3wnNLMBU2/VnJiSOHL1oMtfuBcF5yn
 Bn0LmOZITHxQhWcB7ppzsSo=
X-Google-Smtp-Source: ABdhPJzY2bUH6lQr8pQrRnAPmCymeUJuoWEhinskSxMJQ5axmW91ZJ55W+jSIReeuOVzOHoElT86RQ==
X-Received: by 2002:a37:4641:: with SMTP id t62mr20756456qka.389.1628476461792; 
 Sun, 08 Aug 2021 19:34:21 -0700 (PDT)
Received: from localhost.localdomain (ip70-186-197-128.hr.hr.cox.net.
 [70.186.197.128])
 by smtp.gmail.com with ESMTPSA id u6sm9085018qkp.49.2021.08.08.19.34.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Aug 2021 19:34:21 -0700 (PDT)
From: Julius Victorian <julius.victorian.home@gmail.com>
To: airlied@linux.ie
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 linux-kernel@vger.kernel.org, rodrigo.vivi@intel.com, daniel@ffwll.ch,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Julius <julius.victorian.home@gmail.com>
Date: Sun,  8 Aug 2021 22:33:42 -0400
Message-Id: <20210809023342.377422-1-julius.victorian.home@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 09 Aug 2021 13:47:46 +0000
Subject: [Intel-gfx] [PATCH] DRM: i915: i915_perf: Fixed compiler warning
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

From: Julius <julius.victorian.home@gmail.com>

Fixed compiler warning: "left shift of negative value"

Signed-off-by: Julius Victorian <julius.victorian.home@gmail.com>
---
 drivers/gpu/drm/i915/i915_perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
index 9f94914958c3..7b852974241e 100644
--- a/drivers/gpu/drm/i915/i915_perf.c
+++ b/drivers/gpu/drm/i915/i915_perf.c
@@ -2804,7 +2804,7 @@ get_default_sseu_config(struct intel_sseu *out_sseu,
 		 * all available subslices per slice.
 		 */
 		out_sseu->subslice_mask =
-			~(~0 << (hweight8(out_sseu->subslice_mask) / 2));
+			~(~0U << (hweight8(out_sseu->subslice_mask) / 2));
 		out_sseu->slice_mask = 0x1;
 	}
 }
-- 
2.30.2

