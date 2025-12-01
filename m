Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09793C97780
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 14:06:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FA1910E0CE;
	Mon,  1 Dec 2025 13:06:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="j1AB0LB0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com
 [209.85.215.177])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE3610E097
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Dec 2025 13:06:09 +0000 (UTC)
Received: by mail-pg1-f177.google.com with SMTP id
 41be03b00d2f7-bde0f62468cso4338972a12.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 01 Dec 2025 05:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764594369; x=1765199169; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=bL9TJHO12DwBaROAsnsHF4RaQCqCy2sz/2ZymZK86YE=;
 b=j1AB0LB0pvJHljlVOc/oayJl4yovddy8BfWU8CxeyKu1xEnK1ksuoH4YSoH8sIamp3
 1DdsXGyylHfQ4cUAEwvjPyNxFfm9aHbzDP7PRriEKm8QVRZo/7+uZqK9EGwBNAZi2o+e
 IRHiVe7t4Sn8l14mGA7BscNALGAFcwWvzxjPRL8M2OsRyGAWa3AQvCd/ef9wW68hB1u3
 vfumjPKhgWA8Au+76/Gs0748isWnEs9wdvC2XWEuBuav0UpoPBS+l6S2h8k3A5DnCZet
 VS5LeK1PmSRCHSe6Dw27FYsVHYpP3gjuZqO+30gAsmZ1YUnsVid5qAR2V9lA7HuUkq5p
 01VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764594369; x=1765199169;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=bL9TJHO12DwBaROAsnsHF4RaQCqCy2sz/2ZymZK86YE=;
 b=FTkVBQlkwJaFFbk/Wvydv/gF1NC6QSrNWSmqlZbwOCPxblplt5jfGxhZ/HjtqVogbF
 2rN1gi2swY10oxm+nxR41R/hwViw6x/EJqRhb8QdxhHXPhEO6hdIW7j4tfv8JV/tTy5U
 57PxhcH09oTjbJawTW+W1Gkwtj0rCMw/w8+R+7Pls+v6NXGjJj2cLwLHCIACxSEvcPxl
 ETsDyyWSnqcMIVAiPudUlf35cdnji2akAJMUF0UTO7lY0dqfeUHtUZZAi+JSEUUJVV8y
 PQyQkDJ4c2cBD3DMwrJtnlpUWn+D3ByuP98+UGwwMdwze0oiDvqXrv6xN8md55Ir0MFW
 PCFQ==
X-Gm-Message-State: AOJu0YyTq2hVLUR4EjO+Y12OR/382uBQTCBL826UJk2NnfoJ9k286xtJ
 yEvFVKNBeeqE1zG8S551+oly4IiVIjJm89p5JNUJsNJ23/DSqbDAXKzVVe1/DikP
X-Gm-Gg: ASbGncvEfHPvzAEcUFGKTeOJoJjFvDNNjzpE/WX1Yv4Sk2oO2Q0WUYvXcI/FC1uIU+5
 YTzcKotBd9OQYP+ZeExM8JClJZUrhZHH2vHQTDic25PnttDxVLOat1NysXBSmpLIUu7sEsRyBQg
 Fpd+M0cFlYNg7KfALDsFPJ+NyTfSFQkyaLJwD15l4W3Jgu24NDHo8xjiElbvQvwKkwNx7YMszl4
 B7kIuaJ8y/F8PiL/fUnGsQrHoKsT8sHyX1MjPEy4kwjsKuYryHzG+VhV8QiNFhipKQNMu8uvmTd
 /59W1mXDFy2YomhGeqG5DBsK34VxgRNi04VLjmoZg7nCiRLR5uhvWYKnjjzSbbevvuG/TcWNZv1
 jCPnN+3B0JZQxc2jzWx09jKUhdxCdNNw6SMD9xobTh/E8JYkOsisxEpzrNkdLL++JfQEvrYa//Q
 X9B2N2KFWRP052dJTSR9Yh+yvK9DP+OubRVzbPFZyQsRq265t+ucMTwuDDxA==
X-Google-Smtp-Source: AGHT+IHxRYtdyZDcWfbmdxwzxr+ViF9Xn/q6Kgw0v0OynWsvCkqFj0NBR0zTmMMmoIEM8qTjdv5lBQ==
X-Received: by 2002:a05:7300:2323:b0:2a9:573a:4a74 with SMTP id
 5a478bee46e88-2a9573a5065mr13205471eec.9.1764594368766; 
 Mon, 01 Dec 2025 05:06:08 -0800 (PST)
Received: from localhost ([192.55.54.43]) by smtp.gmail.com with ESMTPSA id
 5a478bee46e88-2a9655ceb04sm43002802eec.1.2025.12.01.05.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 01 Dec 2025 05:06:08 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Subject: [PATCH 0/2] switch to use kernel standard fault injection in i915
Date: Mon,  1 Dec 2025 15:05:57 +0200
Message-ID: <20251201130559.731361-1-juhapekka.heikkila@gmail.com>
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

Here taken out calls to i915_inject_probe_failure and changed to use
ALLOW_ERROR_INJECTION for the same functions.

Below functions are dropped from testing since I couldn't hit those
at module bind time, testing these would just fail the tests.
To include these in test would need to find way to cause resetting in i915
which would trigger these:

intel_gvt_init
intel_wopcm_init
intel_uc_fw_upload
intel_gt_init with expected -EIO (-EINVAL is tested)
lrc_init_wa_ctx
intel_huc_auth
guc_check_version_range
intel_uc_fw_fetch
uc_fw_xfer
__intel_uc_reset_hw
guc_enable_communication
uc_init_wopcm
..and all stages of __force_fw_fetch_failures


Also here added intel_gvt_driver_remove to error recovery path.

/Juha-Pekka

Juha-Pekka Heikkila (2):
  drm/i915: switch to use kernel standard error injection
  drm/i915: Add intel_gvt_driver_remove() onto error cleanup path

 .../gpu/drm/i915/display/intel_connector.c    | 14 +----
 .../drm/i915/display/intel_display_driver.c   |  5 +-
 drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  4 +-
 drivers/gpu/drm/i915/gt/intel_gt.c            |  9 +--
 drivers/gpu/drm/i915/gt/intel_gt_print.h      |  5 +-
 drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 --
 drivers/gpu/drm/i915/gt/intel_wopcm.c         |  3 -
 drivers/gpu/drm/i915/gt/intel_wopcm.h         |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c     |  8 +--
 drivers/gpu/drm/i915/gt/uc/intel_huc.c        |  4 --
 drivers/gpu/drm/i915/gt/uc/intel_uc.c         | 17 +-----
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c      | 60 +------------------
 drivers/gpu/drm/i915/i915_driver.c            | 13 ++--
 drivers/gpu/drm/i915/i915_params.c            |  5 --
 drivers/gpu/drm/i915/i915_params.h            |  1 -
 drivers/gpu/drm/i915/i915_pci.c               |  6 +-
 drivers/gpu/drm/i915/i915_utils.c             | 30 +---------
 drivers/gpu/drm/i915/i915_utils.h             | 22 +------
 drivers/gpu/drm/i915/intel_gvt.c              |  3 -
 drivers/gpu/drm/i915/intel_uncore.c           |  4 +-
 20 files changed, 19 insertions(+), 199 deletions(-)

-- 
2.43.0

