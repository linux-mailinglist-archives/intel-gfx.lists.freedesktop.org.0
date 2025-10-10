Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EADFCBCE43C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 20:40:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2D2E10EC73;
	Fri, 10 Oct 2025 18:40:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="Udg9H1Ot";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com
 [209.85.210.175])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5DE10EC73
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 18:40:21 +0000 (UTC)
Received: by mail-pf1-f175.google.com with SMTP id
 d2e1a72fcca58-7810289cd4bso2366475b3a.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 11:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760121621; x=1760726421; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=K1qyRmYBLBJl9PWXe1heyUhTNIFi7Qo9dmpRDT+91UE=;
 b=Udg9H1Otm+4yThnA6Nqn9OzWv58jElXQdRqAUkx8LESQxEp+p/0gETR7ubFcFEfHnn
 F+O/xPC/Ih/GVJYOkaM+nJqWco0VllGPGDr0klosX7yrqZIPfPR6wjO2gPzl3Fvs2P5C
 s1TPlac3RVXaVTvfc6Pycu1imaHPCyG2Ahqlrt+g1VJwkfVZSJX4jzmr8yvTGpy0ST4V
 1/TCZfMDmctPuoWxeVvgbL2w+4a9VRKHlr2CDHczdWLUu2+DGabb9BqTeBlpQakCxSW1
 NPtEBqaa+g4ztcOAoJAPxJdiOA5iAC3yoEo/2XzEJVDTXMtdrzSLL2C4jcuBYA+Vem5O
 nm8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760121621; x=1760726421;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=K1qyRmYBLBJl9PWXe1heyUhTNIFi7Qo9dmpRDT+91UE=;
 b=CSNHTmnvR+1gKK9Co6PcRi0Cx4opQzaW3Bp3PJkyL1/9OuKSabA5llm9J4YV9NHX41
 64jZXbW7sgGVX3i8MBMdZ3ehKfvOBiGIWedzQIib5TMl53BWQ0LJ3BEHIzv2FT2b45NQ
 fEWUrpLkv63dwzyRlB9cvufYigaYO5xdhXl8Z8s8cDaSGHrvB9at0e0fk7HfnWg6jlWv
 UsGqox+GdpvT6oCpvCzYANML7LD4xOZExQuTC2Am5D5wQ3JXqkAwZ3nVqvT9myVfK+m3
 nkVv2DOK1G6bJakBt6V8fNt6BIM5H2MD10EYC3U8hXtqxUP+DWrj6hx2jVhOODZll20s
 LJ0w==
X-Gm-Message-State: AOJu0Yy4k8RHFOY2yW40a7/DxtRcj2e2S9e8r3oGUlR0Pe6QHIs20YxY
 vQnz2ZwSbgsRA16evP5GmtN8M5wWP4BKndgzY58MG5CfNjT1kmlVQNbGqN8zdcXp
X-Gm-Gg: ASbGncugm382drgXzvKaFkJ/aDv8d721XFRN8Y7SzpQWCZO1hf8fAKZw+kE7ng/zz1g
 kRRbKLTI3UaZPLVkG5LlUuwH/RZF66qzchNFqDG4VETUU9ctvxQwlHm7lSuZJhyTSebBFYXEizl
 6dHKL2ZK5vHoHyaBzFLedTIaIMrNsvaXWyHpAtMnHthVsAZEGBjiOWaIIQh8lvL8D+NE/ES5PHK
 OUn0NI9UiRm6aUx+Q/gr9I23XyNsIgH9T9FGPjKW8YRbM6g057qbhZNxewL9zF63x/UTXEhBxnt
 znkYEuLhwDAOVH7eeveW/OGLIqnBZj7iLFOX48xKvAwDusWHg350q3IesdRHiTNskgvXR+D47oK
 KeTrhLAZhSql3mqjygy/CwgfdhuDO5I2CLN+DlaHQW7+ge2b6gtQf7bITM6w=
X-Google-Smtp-Source: AGHT+IGsVAuBIidQF0IjHAeg69LU6HwHCyZFslM6ysSKeb3MXI7U0zXG/PbSmPfWLYicJUGtIHWwOQ==
X-Received: by 2002:a05:6a20:4323:b0:2c7:9cb7:e6c7 with SMTP id
 adf61e73a8af0-32da8171d03mr17029309637.27.1760121620681; 
 Fri, 10 Oct 2025 11:40:20 -0700 (PDT)
Received: from localhost ([134.134.137.76]) by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-b678ddcc68csm2938569a12.15.2025.10.10.11.40.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 10 Oct 2025 11:40:20 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Jani Nikula" <jani.nikula@intel.com>
Subject: [PATCH 0/1] [wip] Switch to use kernel standard fault injection in
 i915
Date: Fri, 10 Oct 2025 21:40:05 +0300
Message-ID: <20251010184006.1635201-1-juhapekka.heikkila@gmail.com>
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
intel_gvt_init and intel_wopcm_init are dropped from testing since
I couldn't hit those at module load time, testing these would just
fail the tests.

wip once seen what different platforms in ci say about this
to take out related i915_inject_probe_failure infra.

/Juha-Pekka

Test-with: 20251010183643.1634589-1-juhapekka.heikkila@gmail.com

Juha-Pekka Heikkila (1):
  drm/i915: switch to use kernel standard error injection

 drivers/gpu/drm/i915/display/intel_connector.c     | 14 ++------------
 .../gpu/drm/i915/display/intel_display_driver.c    |  5 +----
 drivers/gpu/drm/i915/gt/intel_engine_cs.c          |  4 +---
 drivers/gpu/drm/i915/gt/intel_wopcm.c              |  3 ---
 drivers/gpu/drm/i915/gt/intel_wopcm.h              |  1 +
 drivers/gpu/drm/i915/gt/uc/intel_uc.c              |  4 +---
 drivers/gpu/drm/i915/i915_driver.c                 | 12 +++---------
 drivers/gpu/drm/i915/i915_pci.c                    |  6 +-----
 drivers/gpu/drm/i915/intel_gvt.c                   |  3 ---
 drivers/gpu/drm/i915/intel_uncore.c                |  4 +---
 10 files changed, 11 insertions(+), 45 deletions(-)

-- 
2.43.0

