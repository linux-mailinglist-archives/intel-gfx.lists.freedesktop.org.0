Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581C9BD5DCA
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 21:04:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E945510E4E9;
	Mon, 13 Oct 2025 19:04:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="TkMkbUJx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
 [209.85.128.54])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD4B10E070
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Oct 2025 12:49:27 +0000 (UTC)
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-46e6674caa5so14717385e9.0
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Oct 2025 05:49:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760186966; x=1760791766; darn=lists.freedesktop.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=XyfGQY2LePMu13FoufhKbLjnwELjszWS2B5wGZ1sKQw=;
 b=TkMkbUJxSp7o9xZoHhSPpfdXQL2x37FusLzUFcf78SuwcCkNMgjzFo0AuTJM1vp9Tt
 yX577UtHqMR56Rsc2XrIQT3/zrDOgZUJSRTRoUDYokIBMw9p4ZSL+Wun44syD5NyoVFZ
 cip/FN7ueJsXNaZIHe9UwaCD5AaqZerll6UAvrH/3cGN6A1KNUJyQO8oqLSC3Hl8KXGT
 cTpVRfHqNxdSIt7VB6zQrwPh7qrgykFI2pLGflitwSvPFR/WYKNQKu0euZ6lD7g3YM/p
 lnzaFqeDpAc14dWsuln9gDOgakmdaol+a4NSu0t0H3E9Ou102r96xxmZ8OF6QN2h0WtV
 PPcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760186966; x=1760791766;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=XyfGQY2LePMu13FoufhKbLjnwELjszWS2B5wGZ1sKQw=;
 b=X5RdwSMl8nuACvqtr8rjKlkJGpw4S1d9oXxvRXtyHC5bnQtSdamWNnmwfUOQ2oU4C7
 +X0u5WJmEGh482q2tVwcZKsIUTaH/5DDfCf3QroEEZZYOoXFFKADm4XEJgzEEqtthOI1
 fbU4kz3+H0N9WoUi5nL8jwiB/N472IqZWqfc1jJEhuowtOtHfx7VV7yHiZYRTCMOojFO
 tSMLlTz/pc+TRr+NTH/et0lrRLpIGpP/gaBweDddgljFb7oCUvzvaOwozxMnVsG82GEk
 Yjczz3VuMw9lYBQwSiAxn+3bi3VgRnp85whQOCmwQyNNGAEweyFd8FCiY7MZf3lawuyJ
 ManQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVWwhDrz3s7YzqX6of+BR+AXCaT4JiR0HLXBOPOJR2q5ANaEcj7uK4ckDCAmdm+qvfRZTERbQiKS5o=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YxAPaYZHJECUlGEuPcTp56DdhiBVWgH/3UKdsf80sFL2UOsbgS5
 H6yZhCjIaVFib2xYR3mA8sqSvXAC/8cQ4xe05UiTXmfRzdArxByajpjt
X-Gm-Gg: ASbGnctY9/1afBmexi+qXqQ0HQ2eUf6POni8s9DrVuM/tR3AQlNSFoDQ/YTupJqPe+t
 BQ2BwJ3GXsN5adVn4MeB0A3MEMGQGE+8Jf2r3QXHSP9lbaBSkaoBR5CC0QjFS3ZqZFlEwXkYb0n
 HYjDLSbLXkZfCQS4Ndx4r6UB1Q50QAQIaZ/bqRPZ1z55MwbBb33VhO8bNKtPrt/04s4Iih3TXz2
 Pfnx7AvqsOybBURHI2uj0RydewtvKAbFUVi4UNM14JTg9vP/gMxx0YeP14m2no5CA5ZwClhuv7l
 nprYC07y37puUZ2E5UxK7EG0omhPJcXI+n0tiPqGzUPgMKy9but7IwCuNZ787qARWbyt1MT/y1W
 VdcGwizuruFyWKF2m0PfwoVfNuwxsRUnMdGYweBEvn+8CifIK
X-Google-Smtp-Source: AGHT+IGOL/iGOOiJ0W1rg32u+UUi5UBjVVyHo3vcBAdJR9e/rc/aSoT32KkemcPLLP9ISEkRMT06zA==
X-Received: by 2002:a05:600c:2287:b0:45d:d86b:b386 with SMTP id
 5b1f17b1804b1-46fa29f13dfmr99087265e9.14.1760186965844; 
 Sat, 11 Oct 2025 05:49:25 -0700 (PDT)
Received: from localhost ([212.73.77.104]) by smtp.gmail.com with UTF8SMTPSA id
 ffacd0b85a97d-426ce57d49bsm9156274f8f.10.2025.10.11.05.49.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 11 Oct 2025 05:49:25 -0700 (PDT)
From: Askar Safin <safinaskar@gmail.com>
To: ville.syrjala@linux.intel.com
Cc: alex.zuo@intel.com, chris.p.wilson@linux.intel.com,
 intel-gfx@lists.freedesktop.org, jia.yao@intel.com, piliu@redhat.com,
 shuicheng.lin@intel.com
Subject: Re: [PATCH v2] drm/i915: Setting/clearing the memory access bit when
 en/disabling i915
Date: Sat, 11 Oct 2025 15:49:19 +0300
Message-ID: <20251011124920.2857-1-safinaskar@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <aOaOJ1YI-NgTloIy@intel.com>
References: <aOaOJ1YI-NgTloIy@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 13 Oct 2025 19:04:11 +0000
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

Also, I just tested opposite thing. I. e. I tested v2 patch, but without
intel_pxp_fini(i915) line. And the patch worked.
I. e. intel_pxp_fini(i915) line is not needed for fix to work.

-- 
Askar Safin
