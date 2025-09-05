Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE0FB45530
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 12:46:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C29D10E2D5;
	Fri,  5 Sep 2025 10:46:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="RA1mrOiR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com
 [209.85.215.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2C9110E2D5;
 Fri,  5 Sep 2025 10:46:46 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id
 41be03b00d2f7-b4d118e13a1so1338119a12.3; 
 Fri, 05 Sep 2025 03:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1757069206; x=1757674006; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=hv/yPgLnKJ+YORbqBtkb58KTGYE/7RDyge96QtFF/tM=;
 b=RA1mrOiRQ0a/pQoM6rcBJhVAE9NBulShF/etyrYyCb5sMYBWIm9SK/pP7fBfqEhHPm
 jkVGLxTtDekj6zFm5fwIwR04f7rzTc+ipZhZ9ZNqRPc1wmnJ1/zx9USrprxsuBlSjhcx
 CCqutLWE/xR/4caKWM+CtuqUYzeIQ2Zz8o3cVsD+ApXEuhH4qyrjU923CIRecjTRNT+W
 l0uIhMvOykcY0ZljqQPT2V/rOeSvgF/GKL5u92+llh28A7bwPXBf0fJxV+qMkSKebwRI
 xTGG9LcywHrPxoiYaLXsTAhN/sTfEICBpzTcI9SzHLckIelvJNSixVZsHu/Ri94PoBH3
 BWHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1757069206; x=1757674006;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=hv/yPgLnKJ+YORbqBtkb58KTGYE/7RDyge96QtFF/tM=;
 b=avl69cljo6Rs251+/uDU/0szZ6cZNV0ghxoRfRhuL73zqlEC/f1RTHyToNB+QVWfWK
 6t6zE3t8RwIJQK2XZW6rxpfyERyQ+boWOHd7snnzTtEnHdtuF0BDqZRjtZJ8kFrkxxdK
 ZsRTXSRd9L/6wPCpkiPKjnKqN6godICAhdloNf+ZP4ApEk25Xzf6SLWr5HXRwfCXYlLH
 Fe7+FtN9y+HU+AtANfoAJuV/8U4O3ksKGFtJeTDdo/r64vert3JhjAnRoRXZS55+wDDb
 asrI0dzfwcMjH6jwl145xgdf4F+8n4vbSkdnkhMeqPgsr9MyaHA6pY6mV9Aa5Jfp9sP/
 vSlQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWvO976fL6n2Poirim4M6wMk9KF0IiPPoVsYQQ7RiMfU9sB94hfNwfmaHifFivf0HA6qQ2GnwoRw==@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwdSs4DAkY3RjeXbDvOg/jayu71ZjrDEKvxR/sA1tbz/ovCt13q
 608lEYMZsVm3rwXNltQDfIOokci/fecRMEpncy+frLywSOv7wBDeA0QNykDvZqRl
X-Gm-Gg: ASbGncsYY6VcGR5qRgKVb5sX6lCiifechKmyez4yMAmI7HjVzERc2m8iSeVe5FDDknT
 APvqaWwqf1zYdu1e6oYPynaUM6Y6JORwIKOeukH1Dp5qq7D/bZS+9d+s+GF4kyCr+tzUmADB6lp
 UpUh2kLvfiK3EEwtC8Gz39LvFP+Lk6Md0X1tyyZzcxmVpmVgHsc1TmxyQts6kXLCNosiT4MvDsT
 EJ3qcpmKtOo2alr/wFhaak8EpP7pgtD1esWpP8O0bo5NmReSKh7a+i42MRIWQDnMpkg4S/7MX9f
 VNsRWqPY5/xf787PtpGMFJtlq38d0UMhwghERZd4JpvlQCOM3Wre9XRiiFU4tD9d2Hl8ywqbhDK
 8SvWMU6lgLFg6r4WTqZhzjzwR7xA=
X-Google-Smtp-Source: AGHT+IH7bLUyGGXy0pqvPt7ii/T/Yxy2ef1srOt+c6lnVWD+elBXuSDQzJsy9c1lbXulq10+nnCNEw==
X-Received: by 2002:a17:902:ecc2:b0:24f:b709:b672 with SMTP id
 d9443c01a7336-24fb7df5a6amr558715ad.19.1757069205968; 
 Fri, 05 Sep 2025 03:46:45 -0700 (PDT)
Received: from localhost ([192.55.54.45]) by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7727bce1b58sm8101659b3a.9.2025.09.05.03.46.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 Sep 2025 03:46:45 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 1/3] drm/i915/display: take out dead code
Date: Fri,  5 Sep 2025 13:46:24 +0300
Message-ID: <20250905104626.1274147-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.43.0
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

if __waitfor timeout, ret will have -ETIMEDOUT. Then if condition
was met, and read_ret will have error that's handled.
Then if ret was zero, read_ret was zero ksv_ready must have value.

Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 42202c8bb066..2e34b625c80b 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -334,8 +334,6 @@ static int intel_hdcp_poll_ksv_fifo(struct intel_digital_port *dig_port,
 		return ret;
 	if (read_ret)
 		return read_ret;
-	if (!ksv_ready)
-		return -ETIMEDOUT;
 
 	return 0;
 }
-- 
2.43.0

