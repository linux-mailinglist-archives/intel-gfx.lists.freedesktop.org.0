Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8087987F1A2
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Mar 2024 22:00:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB4C511216A;
	Mon, 18 Mar 2024 21:00:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9374311216A;
 Mon, 18 Mar 2024 21:00:36 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe/display=3A_fi?=
 =?utf-8?q?x_potential_overflow_when_multiplying_2_u32_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arun R Murthy" <arun.r.murthy@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 18 Mar 2024 21:00:36 -0000
Message-ID: <171079563660.886732.12923408488924410944@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240318110103.3872169-1-arun.r.murthy@intel.com>
In-Reply-To: <20240318110103.3872169-1-arun.r.murthy@intel.com>
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
Reply-To: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/xe/display: fix potential overflow when multiplying 2 u32 (rev2)
URL   : https://patchwork.freedesktop.org/series/131014/
State : warning

== Summary ==

Error: dim checkpatch failed
8f904ca289af drm/xe/display: fix potential overflow when multiplying 2 u32
-:20: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#20: FILE: drivers/gpu/drm/xe/display/xe_fb_pin.c:32:
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),

-:30: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#30: FILE: drivers/gpu/drm/xe/display/xe_fb_pin.c:65:
+				     pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),
 				     xe->pat.idx[XE_CACHE_WB]));

-:47: WARNING:LONG_LINE: line length of 101 exceeds 100 columns
#47: FILE: drivers/gpu/drm/xe/display/xe_fb_pin.c:167:
+			u64 pte = ggtt->pt_ops->pte_encode_bo(bo, mul_u32_u32(src_idx, XE_PAGE_SIZE),

total: 0 errors, 2 warnings, 1 checks, 38 lines checked


