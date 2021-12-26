Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6437A4899E3
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jan 2022 14:25:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ECDD611283A;
	Mon, 10 Jan 2022 13:25:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 060EB10E951;
 Sun, 26 Dec 2021 11:25:17 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id e5so7505360wmq.1;
 Sun, 26 Dec 2021 03:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JVsPYyeSs0Z89jpnz+/jWObtkdsoENnAN2PsMGBB0X8=;
 b=Ay89gIcMZst8GS6tyGXp98KOAC6Qgvu1V13cw/bSJfQ0fXJgZG1CyQSXYBVYyvR85x
 chNrltN4WsAL+D/E3LN61lFu800OdW4YqE6Db671ZbGItmrxctjiekoTQY0QMokGJw5/
 dFUWjTEqmeu7+zjUpWpFiuLEq/JaQFOlkPTQPKbBf+sB0HwATkpJjBjYCpHkXvy3l+LB
 Xg+NBHYtfxiRQwHcnYXOynDBNnmRXqt1Y9sodZKjUdDsfBRynMJBPd+bt21AhRYc69WM
 DOS4WhO6K4Oo4XOYxTYk8cqZyoBIkjRq7c4O3pNViYg5skoeqHc5uCCEZq03e9AUZ3xI
 FgVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JVsPYyeSs0Z89jpnz+/jWObtkdsoENnAN2PsMGBB0X8=;
 b=lW9y++n25D+JNPIlDdWDItzzhkqExz97hfu3/xXtVCdHEdkTO0xZkEGi7r01zYz64T
 pWK/7Jke4tPmrK4V6jAEM1dh9+LXrO84IWmThF0fwoi66mJAhqLVaGtX6q3SGg5tz887
 Bw+9lp7xRonNxoX25DXd1wxNoppi1o3oNoxfS2H01bgL3PicQsW8gwx08GiKHnTc8l/K
 M89Dm5Gybpn+uCHdXewQSyYIoiQK3fEbD6/qBWyPEYnBuHQtA+TvEEDmvKOslqwKvhQs
 9xnHyEdZMhDayTDNaigBPdd1/Nd0mXEgDSLwoO9vQaN3s1DdjbyC56WIA777mVO3HYGz
 HDmQ==
X-Gm-Message-State: AOAM533psaPzHbWsUuo5S9xqMYNYea4+cMdvpFDilxLlRLudikKkGLW/
 9Wn6rsEFn00kvguM5j5N22Q=
X-Google-Smtp-Source: ABdhPJw57VZXKuh209lrx9BjCOI+QhODbcZjFyWAqCKVxPAtqvffXu2BoHojbDQtI0Ncc1Ggqfq3oA==
X-Received: by 2002:a05:600c:6018:: with SMTP id
 az24mr9821191wmb.103.1640517916521; 
 Sun, 26 Dec 2021 03:25:16 -0800 (PST)
Received: from localhost.localdomain ([217.113.240.86])
 by smtp.gmail.com with ESMTPSA id g12sm13654743wrd.71.2021.12.26.03.25.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 26 Dec 2021 03:25:16 -0800 (PST)
From: =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>
To: contact@emersion.fr
Date: Sun, 26 Dec 2021 12:24:59 +0100
Message-Id: <20211226112503.31771-3-jose.exposito89@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211226112503.31771-1-jose.exposito89@gmail.com>
References: <20211226112503.31771-1-jose.exposito89@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 10 Jan 2022 13:24:14 +0000
Subject: [Intel-gfx] [PATCH v3 2/6] drm/plane: Fix typo in
 format_mod_supported documentation
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
Cc: airlied@linux.ie, alexandre.torgue@foss.st.com, stefan@agner.ch,
 benjamin.gaignard@linaro.org, festevam@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, marex@denx.de, linux-imx@nxp.com,
 intel-gfx@lists.freedesktop.org, s.hauer@pengutronix.de, mripard@kernel.org,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
 yannick.fertre@foss.st.com, linux-kernel@vger.kernel.org,
 philippe.cornu@foss.st.com, mcoquelin.stm32@gmail.com,
 dmitry.baryshkov@linaro.org,
 =?UTF-8?q?Jos=C3=A9=20Exp=C3=B3sito?= <jose.exposito89@gmail.com>,
 shawnguo@kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Fix minor typo: "valdiate" -> "validate".

Signed-off-by: José Expósito <jose.exposito89@gmail.com>
Reviewed-by: Simon Ser <contact@emersion.fr>
---
 include/drm/drm_plane.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/drm/drm_plane.h b/include/drm/drm_plane.h
index 0c1102dc4d88..06759badf99f 100644
--- a/include/drm/drm_plane.h
+++ b/include/drm/drm_plane.h
@@ -516,7 +516,7 @@ struct drm_plane_funcs {
 	 * This optional hook is used for the DRM to determine if the given
 	 * format/modifier combination is valid for the plane. This allows the
 	 * DRM to generate the correct format bitmask (which formats apply to
-	 * which modifier), and to valdiate modifiers at atomic_check time.
+	 * which modifier), and to validate modifiers at atomic_check time.
 	 *
 	 * If not present, then any modifier in the plane's modifier
 	 * list is allowed with any of the plane's formats.
-- 
2.25.1

