Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA93A7613D
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Mar 2025 10:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7BFE10E0D8;
	Mon, 31 Mar 2025 08:19:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from e6b6f09ec485 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7863B10E00F;
 Mon, 31 Mar 2025 08:19:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/psr=3A_Add_?=
 =?utf-8?q?PSR_pause/resume_reference_count_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 31 Mar 2025 08:19:01 -0000
Message-ID: <174340914148.19321.11825543545729322573@e6b6f09ec485>
X-Patchwork-Hint: ignore
References: <20250328080623.1183669-1-jouni.hogander@intel.com>
In-Reply-To: <20250328080623.1183669-1-jouni.hogander@intel.com>
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

Series: drm/i915/psr: Add PSR pause/resume reference count (rev4)
URL   : https://patchwork.freedesktop.org/series/146286/
State : warning

== Summary ==

Error: dim checkpatch failed
343b888ef7c8 drm/i915/psr: Add PSR pause/resume reference count
-:12: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#12: 
<4> [2120.434196] WARNING: CPU: 3 PID: 4430 at drivers/gpu/drm/i915/display/intel_psr.c:2227 intel_psr_pause+0x16e/0x180 [i915]

total: 0 errors, 1 warnings, 0 checks, 77 lines checked


