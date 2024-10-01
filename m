Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1FFD98B329
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Oct 2024 06:56:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEF8810E5CF;
	Tue,  1 Oct 2024 04:56:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56A3210E285;
 Tue,  1 Oct 2024 04:56:09 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_i915=3A_Fix_HBLANK_E?=
 =?utf-8?q?xpansion_Quirk_Causing_Modeset_Failure_on_Dell_WD19TB_Dock_at_344?=
 =?utf-8?q?0x1440=40100Hz?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Benjamin Hoefs" <bendhoefs@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 01 Oct 2024 04:56:09 -0000
Message-ID: <172775856933.1140299.4296976355970906082@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240926002533.10153-2-bendhoefs@gmail.com>
In-Reply-To: <20240926002533.10153-2-bendhoefs@gmail.com>
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

Series: i915: Fix HBLANK Expansion Quirk Causing Modeset Failure on Dell WD19TB Dock at 3440x1440@100Hz
URL   : https://patchwork.freedesktop.org/series/139318/
State : warning

== Summary ==

Error: dim checkpatch failed
2be9337017fa i915: Fix HBLANK Expansion Quirk Causing Modeset Failure on Dell WD19TB Dock at 3440x1440@100Hz
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
100Hz used to work but recently I tried it again and discovered it no longer

-:14: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 55eaef164174 ("drm/i915/dp_mst: Handle the Synaptics HBlank expansion quirk")'
#14: 
55eaef164174480df6827edeac15620f3cbcd52b "Handle the Synaptics HBlank

-:56: WARNING:FROM_SIGN_OFF_MISMATCH: From:/Signed-off-by: email name mismatch: 'From: Benjamin Hoefs <bendhoefs@gmail.com>' != 'Signed-off-by: Benjamin D. Hoefs <bendhoefs@gmail.com>'

total: 1 errors, 2 warnings, 0 checks, 8 lines checked


