Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A189DF404
	for <lists+intel-gfx@lfdr.de>; Sun,  1 Dec 2024 00:55:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F44010E5FA;
	Sat, 30 Nov 2024 23:55:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="wq2eofx2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B94B10E5FB
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 23:55:54 +0000 (UTC)
Received: by mail-lf1-f41.google.com with SMTP id
 2adb3069b0e04-53df19bf6a9so3513677e87.1
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Nov 2024 15:55:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1733010952; x=1733615752; darn=lists.freedesktop.org;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:from:to:cc:subject:date:message-id
 :reply-to; bh=IU6Gl7Dl4dmhuEZdQnvRmTEGRcXAkcJN0vDa70RMZrc=;
 b=wq2eofx25hlqYy3TG6wmiVYsEPqDNsj1J05ZcAsM8zqp1jKbLMa6Fg6UwVr3Arp/mp
 SCNAUwmcy4QRQNAjCAONcWcHwdO6xv1y9tfIECGwa23gUFsp2huXYU9JpR/b+iXfKeEz
 wjQ0OlmXRIprMb8KJuIfyNxYmlN8f25AtWacejytO31dduZnF0ngLASO8KPPO1UxyFpL
 y2og9D0jAEbENCC7+lagzPyEa7DlpKnCYX/jrf+q1ILi70zrCGVMTOrXtIBuDo8WKofT
 0JZDF2NEdbrSkO+W6oEaG4m67l37Ih2fe1awH446xvq/sDXBuyCEicN3YQidituCi29R
 yKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1733010952; x=1733615752;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=IU6Gl7Dl4dmhuEZdQnvRmTEGRcXAkcJN0vDa70RMZrc=;
 b=O9N21hMHXl01KutwlkLVKoj9TzCRxsxDUs/lzlYLErOMOrAK8EDR+6RTUkR9r5uF/2
 LpszTdxIYZ/rX+ZSQoSxGdBb1wr4WRj4DvFeEsZd73x2ipAKQ9LoHZVqY72mvpfGee8O
 ztnTdZaamkeQsjsG3poEbF/DqeurVjQt8rlPn8ZQfCrBKmnRMfNpgWjZmUhn0ZFR1Sok
 uFm1Hh6I6UC+5a5o5Mh7TVMJgc4L3hyYQORZ4v6ak/i2W75q5HsRM6oqzKho2QWIBff5
 RXGasESuGXhod+PR+UxG72XgCLRbfQerUXbotCGLet1mBXJMqGou/XYMrwIhEQy/aCG8
 1gZw==
X-Forwarded-Encrypted: i=1;
 AJvYcCVJlB9vstw5oU4+6MMuwIuRwOHbi3bHc4xzSZrtCl1ptKl5Mhz+MkD8eP/d9+RYnkbPztUPvbt9Pnw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy9eLrehfZa1WnrtIw+Fl6zAKMhMblkdV88dJ9icl7kJtuEED22
 RMj8DXasUd5/I20VaUQXcX93TOFRcE9OGfcfGZUJq/bCIqoTGMktWJu3upAYFDk=
X-Gm-Gg: ASbGncvAjX+outwffFmh4em1uPrd+uwTjcwtvj2qNvpFSpqK8jSITLdvtyNez7OWgGz
 5QAjn6yleuAB1R+BCo9jndi/W3RIMj86iCdg+DiAIDoYpFQc1yVO+z7M4tixzh2puu779p6Y7CN
 gzNxXzb5vewoqQVsBWuKLT9A7J4bi+B+2xxgEX0bSFEqx2zGuKIaYXONshPGYMZ6f0c4mr6nVbN
 vf02a9ZTnJl/Y82SBo9Ai7q8TOKlR5MtVlzDC3r6g6qCEgKgLlJpnZhRg==
X-Google-Smtp-Source: AGHT+IF0apDYRdHR7KZD93hjbqsmabdU0vO1rz/bbiVNjvW03bvvtexlWq6c4CLLSgjKkBK26w1wwQ==
X-Received: by 2002:a05:6512:2210:b0:53d:ed6c:26ea with SMTP id
 2adb3069b0e04-53df00c79a2mr8823937e87.8.1733010952229; 
 Sat, 30 Nov 2024 15:55:52 -0800 (PST)
Received: from umbar.lan ([192.130.178.90]) by smtp.gmail.com with ESMTPSA id
 2adb3069b0e04-53df649647dsm900706e87.195.2024.11.30.15.55.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2024 15:55:50 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Sun, 01 Dec 2024 01:55:26 +0200
Subject: [PATCH 09/10] drm/sti: hdmi: use eld_mutex to protect access to
 connector->eld
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241201-drm-connector-eld-mutex-v1-9-ba56a6545c03@linaro.org>
References: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
In-Reply-To: <20241201-drm-connector-eld-mutex-v1-0-ba56a6545c03@linaro.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
 Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
 Alex Deucher <alexander.deucher@amd.com>, 
 =?utf-8?q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
 Xinhui Pan <Xinhui.Pan@amd.com>, Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Phong LE <ple@baylibre.com>, Inki Dae <inki.dae@samsung.com>, 
 Seung-Woo Kim <sw0312.kim@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Rob Clark <robdclark@gmail.com>, 
 Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>, 
 Marijn Suijten <marijn.suijten@somainline.org>, 
 Alain Volmat <alain.volmat@foss.st.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 amd-gfx@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
 freedreno@lists.freedesktop.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=962;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=d3Sl+FXytgREFItAwcczh3Q1vneGssZw9wmeXf8zqcs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBnS6Xuuw73RrqNIAMj0Vd/VMNJk3KOMIlLIxeOc
 0MnV4M5vNuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZ0ul7gAKCRCLPIo+Aiko
 1Qv/B/4/5rLxZCjkqK+Zdlhp2+yqWP4ISG1uXt/zd2hXrjtxgOkih9U6WKdNa6Xoz/QuAEp+lKl
 oVznmDwzY+sTM1b4PwOdG5DBpKIgyXf5k7n1y/cyABsH0BdP5Tzn74sUaSZBQgnUGSYhGgKdDc/
 YAAgPkbRyOmTtniJolkAmqMYl0NihkgeU26RZ+pfNtFLhks7GHDURf3XLOq7x45EuwGaROru3jt
 SmIhwz9wcEA5r2kDJq5DDr04T/9Y0XgMWhQKi1kbsG7wK9OJlgiYKe7dSOEQ94g/A4Aet9kG185
 zd4yXm2idTSpwhIe2gyR7gCJgHyrA/FNOXXul+pcZq+liRGD
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
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

Reading access to connector->eld can happen at the same time the
drm_edid_to_eld() updates the data. Take the newly added eld_mutex in
order to protect connector->eld from concurrent access.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/sti/sti_hdmi.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/sti/sti_hdmi.c b/drivers/gpu/drm/sti/sti_hdmi.c
index 847470f747c0efad61c2ebdc3fb3746a7a13a863..3c8f3532c79723e7b1a720c855c90e40584cc6ca 100644
--- a/drivers/gpu/drm/sti/sti_hdmi.c
+++ b/drivers/gpu/drm/sti/sti_hdmi.c
@@ -1225,7 +1225,9 @@ static int hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf, size
 	struct drm_connector *connector = hdmi->drm_connector;
 
 	DRM_DEBUG_DRIVER("\n");
+	mutex_lock(&connector->eld_mutex);
 	memcpy(buf, connector->eld, min(sizeof(connector->eld), len));
+	mutex_unlock(&connector->eld_mutex);
 
 	return 0;
 }

-- 
2.39.5

