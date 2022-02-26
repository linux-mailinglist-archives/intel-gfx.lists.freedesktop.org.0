Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D9A4C5396
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Feb 2022 04:56:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD29110E1B5;
	Sat, 26 Feb 2022 03:56:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id AEC1810E1B5;
 Sat, 26 Feb 2022 03:56:26 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id AA84FAADD4;
 Sat, 26 Feb 2022 03:56:26 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: fei.yang@intel.com
Date: Sat, 26 Feb 2022 03:56:26 -0000
Message-ID: <164584778666.9642.10010005440437059461@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220226015049.1379347-1-fei.yang@intel.com>
In-Reply-To: <20220226015049.1379347-1-fei.yang@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_avoid_concurrent_writes_to_aux=5Finv?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915: avoid concurrent writes to aux_inv
URL   : https://patchwork.freedesktop.org/series/100772/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
2d74b0515d73 drm/i915: avoid concurrent writes to aux_inv
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
GPU hangs have been observed when multiple engines write to the same aux_inv

-:130: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#130: FILE: drivers/gpu/drm/i915/gt/intel_execlists_submission.c:1569:
+						i915_mmio_reg_offset(

total: 0 errors, 1 warnings, 1 checks, 114 lines checked


