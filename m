Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 927A1A36244
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 16:52:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0B8710ECF8;
	Fri, 14 Feb 2025 15:52:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GI5wpja4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF96910ECF8
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 15:52:22 +0000 (UTC)
Received: by mail-pj1-f45.google.com with SMTP id
 98e67ed59e1d1-2fc292b3570so2019857a91.1
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2025 07:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1739548342; x=1740153142; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=UZ9lZbWIIiVUfyrbUJ4DjeIZeoHDdtGrzHZBqVMPuos=;
 b=GI5wpja4YkWFgOGe2CnS4favZxJ+v4xCUkFfp03PV9vuuLgzBlsRyMMrBibj9UC+z5
 4oTmjUi2AvS3E+GaW9qagiB4oCF5iOnVB2hMIFNCAcQ9pEVhJ8G/tfDMhXH2o586petu
 G9roYYJx+RGkOce1IsRQlF+T6O8F7QlMJY4aK/4AMcGCUVtq4a91m6wtznCHkG1s3qDy
 UWuR7ChMWybYv31UlljrEerKNBwGdjTPCfnX5035L2/NHiIEcIpZtUHGYuBaEtk1ZRMq
 zklW2F3cXc+e0m7Dw8Vn7OkD1g2wamik6Bz+oTwwcRJLU7tbZaelqMj8GhcFr3DkkNP6
 VyTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1739548342; x=1740153142;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=UZ9lZbWIIiVUfyrbUJ4DjeIZeoHDdtGrzHZBqVMPuos=;
 b=FfcPvY0Yj+fGPRsI4GLVL7Tk5mMW00uN2+Uw/aVT9N5Bcu/mLNQZWf77eCjR1li+lu
 5Y+x9VS9kXBo3qLo+K8dmzJsoW21q29/QucTK86ldgRmzXH4HayWq0giPNvMBu9tMSGK
 /Lqfaoh+3cHh0njHI81Y1dT7T4ltg7ZHaWPZ+U7FVbn1fe1QjYM37Al6tQWmbUIT0uxp
 CAtXiKnc9fTwwD6eQx8gSwap+npHt8wrEofUM5RfimTWr96MG1mYTsV316scU+4p1FS7
 Bg+AZ3rcvIEhDD94T/mI/znDikZ8SULRadj9j3WTyFzR/yLS8bLVFgnNJaMqVQRGafm1
 pmmQ==
X-Gm-Message-State: AOJu0Ywkl7z1iOuP0zunso1ZEnrnIz638tvmNkAIByV2GF2cUmjP4aVu
 nl5RdRXb697OEPDQgPsvavwfoLUBxe4+WwCMGWSvnC/0y2DpQd/4eHShsjC/aGc=
X-Gm-Gg: ASbGncsRVW0z5yB+VfggAIxhF6wFgZLv5g3BnEuI4iSuBmGptvIOxpSd4K6ZbkYe2Sr
 nUBgMF+rudfcm6357xdoFl1VrDynLh/H9YHIjUzA4SZ4LnzsyrPQo8lVhViOwLvUbOszv7Dx1gV
 Om/fE2dVGv9KRimFh1noY7zRcMtKUgoYBj5A9AUHcQyquWTDuwqHYW0hYzc8w/jQScplcBaZDhI
 MGPtzzhNNWrsYE4wuNu42ch3GzVw9+XY5FK5nC9Ru/380WIBksZdpW0ONxM4cSbwSj++enJPoER
 XFG/kr7fDchIwQfz31Vx
X-Google-Smtp-Source: AGHT+IGO1VOsPbvtIW3nvG/4L5kMrolmfnCuMGLeiSsb81yUoYjZ0TskL82qcHuoWo1lAXHC7ijxwg==
X-Received: by 2002:a17:90b:3c48:b0:2fa:1a23:c01d with SMTP id
 98e67ed59e1d1-2fc0ea881c9mr10686237a91.21.1739548341902; 
 Fri, 14 Feb 2025 07:52:21 -0800 (PST)
Received: from localhost ([192.55.55.44]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-220d558ee0bsm30737705ad.236.2025.02.14.07.52.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2025 07:52:21 -0800 (PST)
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
To: intel-gfx@lists.freedesktop.org
Cc: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>,
	andi.shyti@intel.com
Subject: [PATCH v2 0/1] Add writing of WAIT_ON_DEPTH_STALL_DONE_DISABLE for
 gen12
Date: Fri, 14 Feb 2025 17:57:10 +0200
Message-ID: <20250214155712.2849848-1-juhapekka.heikkila@gmail.com>
X-Mailer: git-send-email 2.45.2
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

I put writing of this bit in gt_tuning_settings(). Not sure if it is correct
place or should this be in gen12_gt_workarounds_init()..or somewhere
totally different place.

v2: move writing of bit to gen12_ctx_workarounds_init() where it seems to
fit better. Renamed register from XEHP_* to GEN8_*

/Juha-Pekka

Juha-Pekka Heikkila (1):
  drm/i915/xehp: add wait on depth stall done bit handling

 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 3 +++
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 ++++++
 2 files changed, 9 insertions(+)

-- 
2.45.2

