Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7982A873654
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:29:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C6CA5113121;
	Wed,  6 Mar 2024 12:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF09211311F;
 Wed,  6 Mar 2024 12:29:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_DSB_?=
 =?utf-8?q?vblank_waits_with_VRR?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 06 Mar 2024 12:29:42 -0000
Message-ID: <170972818291.561286.18246879741052964987@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240306040806.21697-1-ville.syrjala@linux.intel.com>
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

Series: drm/i915: Fix DSB vblank waits with VRR
URL   : https://patchwork.freedesktop.org/series/130783/
State : warning

== Summary ==

Error: dim checkpatch failed
c527f76b1196 drm/i915/vrr: Generate VRR "safe window" for DSB
75c1e2c71126 drm/i915/dsb: Fix DSB vblank waits when using VRR
-:21: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#21: 
[drm] *ERROR* [CRTC:80:pipe A] DSB 0 timed out waiting for idle (current head=0xfedf4000, head=0x0, tail=0x1080)

total: 0 errors, 1 warnings, 0 checks, 26 lines checked
ec3e4180ab20 drm/i915/dsb: Always set DSB_SKIP_WAITS_EN


