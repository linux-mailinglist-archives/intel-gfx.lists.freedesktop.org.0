Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A268BD4EB
	for <lists+intel-gfx@lfdr.de>; Mon,  6 May 2024 20:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70ED310F283;
	Mon,  6 May 2024 18:52:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="MCcZZToh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
 [209.85.208.178])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7283210F283;
 Mon,  6 May 2024 18:52:51 +0000 (UTC)
Received: by mail-lj1-f178.google.com with SMTP id
 38308e7fff4ca-2df848f9325so27775851fa.1; 
 Mon, 06 May 2024 11:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1715021569; x=1715626369; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=sLiIknzIVMcV/RkH/nncrSGVrKPjch6sB0bbMLkCJpw=;
 b=MCcZZTohQ+fF1OFOf6Gh5/UJRrbJLbmPU+SqFtwqohhqZp+hDAixZVNbwrTiP0KIix
 w+h5R+6ODOokUPTIFDiqi3E7tedZIjrHi6Y961L/fw6Z8sOOApyczPO5i6DKJjQVGyRD
 N57S8fOqvxMifXRXxS9v8iL8+inEVdbbdJmnwp98S/py5forT/ZZC/9INk1DEXkEyl4Z
 CJDHfAJOb1waFk1ZN6UmzXzLy8Cui6pQppNI9pIZKbobsi+Gbm+47f1YUasxcdfPtX63
 CDm0nYQ/hncusZb15/jEKjgpr605KB+5nRCJxauqYK1a53Wh4w5pn/+1NhM9Hb9iamVV
 Z6vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1715021569; x=1715626369;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=sLiIknzIVMcV/RkH/nncrSGVrKPjch6sB0bbMLkCJpw=;
 b=ESd5D88l3hufVGHROAqLPBYZSAu/7y0TBn9jKcvZmlf/5VHId4X46IH6g4bS0BkHsk
 UpJpZ2MfzowEXpt+rlKB742Ih4cqRgUjr+mhcMRezBF1qv3WWvf4AXG04Y8Ae9fNzyVk
 R1KOwqjNFXeolgtyLx8pml2bBRiOJRd98Izah3howBvT5pn8HCb4TsV62NZJm/yN3HbU
 3CeDXq2udicbtBS8GBjeFzKTGrOHU+IMhaaf820IbXg+WSUa9DgtS4SyD9nTPGbPounY
 3aRqgDfhST1qRRcTzstQ2sGyfD4bnfrA9iiQKl3WIV1B0yZkUjzhlRDGHAveyppsgQ7r
 N1gQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXT3YFsq0gzo3BDyo0upcvTpnxiu5pvN5cmXyyCLrn5gl8+zSXbIE8pfIo5UnHJHumD5RT7hDzwRbkW/7M3NF2gj+tWxtGgEUSm419yRuYM
X-Gm-Message-State: AOJu0YweN8MZxyDPvliHZZ+/Iv7vyHo0Yli2nhDZePAAPpytgdQIfBo5
 dekrUzEJu8GC5W7rAAJHXguRfGIXmYH5u14O/D2HQmLNai9JtdLJ8slRbwVEeKmOBQ==
X-Google-Smtp-Source: AGHT+IEMXIvDfGes+jfCFmVyhYb30kSA7XTe+0DM89X0xn9e5M+qzgxtsxVVQbpak60BdFgqgQtZVw==
X-Received: by 2002:a05:651c:604:b0:2e1:c5d2:b338 with SMTP id
 k4-20020a05651c060400b002e1c5d2b338mr6121810lje.24.1715021568706; 
 Mon, 06 May 2024 11:52:48 -0700 (PDT)
Received: from jheikkil-mobl1.. (91-156-196-125.elisa-laajakaista.fi.
 [91.156.196.125]) by smtp.gmail.com with ESMTPSA id
 c11-20020a05651c014b00b002dcdeb98653sm1673945ljd.8.2024.05.06.11.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 May 2024 11:52:47 -0700 (PDT)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
 "Chery, Nanley G" <nanley.g.chery@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Graunke, Kenneth W" <kenneth.w.graunke@intel.com>,
 "Souza, Jose" <jose.souza@intel.com>,
 "Mathew, Alwin" <alwin.mathew@intel.com>,
 "Zhang, Jianxun" <jianxun.zhang@intel.com>,
 "Syrjala, Ville" <ville.syrjala@linux.intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: [RFC PATCH 0/3] Introducing I915_FORMAT_MOD_4_TILED_XE2_CCS Modifier
 for Xe2
Date: Mon,  6 May 2024 21:52:35 +0300
Message-Id: <20240506185238.364539-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.34.1
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

These patches introduce I915_FORMAT_MOD_4_TILED_XE2_CCS modifier, which,
from the kernel's perspective, behaves similarly to `I915_FORMAT_MOD_4_TILED`.
This new modifier is primarily intended for user space to effectively monitor
compression status, especially when dealing with a mix of compressed and
uncompressed buffers.

The addition of this modifier facilitates user space in managing compression
status, particularly when utilizing both compressed and uncompressed buffers
concurrently. To leverage compression for these buffers, user space
applications must configure the appropriate Page Attribute Table (PAT) index.
Display engine will treat all Tile4 as if it were compressed under all
circumstances on Xe2 architecture.

Notably, this patch series omits support for X-tiled CCS and linear CCS
for Xe2, neither of which is supported by display engine. X-tiled CCS
offers stateless compression making it less likely to be extensively
utilized. Linear CCS does possess state, but currently lacks expected users.

These patches aim to enhance the flexibility and efficiency of handling
compressed and uncompressed buffers in Xe driver, particularly
catering to the specific requirements of the Xe2 architecture.

Juha-Pekka Heikkila (3):
  drm/fourcc: define Intel Xe2 related tile4 ccs modifier
  drm/xe/display: allow creation of case I915_FORMAT_MOD_4_TILED_XE2_CCS
    type framebuffer
  drm/i915/display: allow creation of case
    I915_FORMAT_MOD_4_TILED_XE2_CCS type framebuffer

 drivers/gpu/drm/i915/display/intel_display.c       |  1 +
 drivers/gpu/drm/i915/display/intel_fb.c            | 10 ++++++++++
 drivers/gpu/drm/i915/display/skl_universal_plane.c |  4 +++-
 drivers/gpu/drm/xe/display/xe_plane_initial.c      |  1 +
 include/uapi/drm/drm_fourcc.h                      | 12 ++++++++++++
 5 files changed, 27 insertions(+), 1 deletion(-)

-- 
2.43.2

