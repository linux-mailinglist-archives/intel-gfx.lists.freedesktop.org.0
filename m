Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54192A4EFE6
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 23:08:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B208710E472;
	Tue,  4 Mar 2025 22:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959AC10E472;
 Tue,  4 Mar 2025 22:08:02 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/xe3lpd=3A_P?=
 =?utf-8?q?rune_modes_for_YUV420?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Atwood" <matthew.s.atwood@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 04 Mar 2025 22:08:02 -0000
Message-ID: <174112608260.788605.16595777504342008509@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20250304200032.68292-1-matthew.s.atwood@intel.com>
In-Reply-To: <20250304200032.68292-1-matthew.s.atwood@intel.com>
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

Series: drm/i915/xe3lpd: Prune modes for YUV420
URL   : https://patchwork.freedesktop.org/series/145801/
State : warning

== Summary ==

Error: dim checkpatch failed
85a77b13b4f6 drm/i915/xe3lpd: Prune modes for YUV420
-:6: WARNING:TYPO_SPELLING: 'upto' may be misspelled - perhaps 'up to'?
#6: 
We only support resolution upto 4k for single pipe when using
                           ^^^^

total: 0 errors, 1 warnings, 0 checks, 31 lines checked


