Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F5DE3F8C59
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 18:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 87E716E871;
	Thu, 26 Aug 2021 16:40:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id E3A5F6E030;
 Thu, 26 Aug 2021 16:40:54 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id D0A14AA914;
 Thu, 26 Aug 2021 16:40:54 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Aug 2021 16:40:54 -0000
Message-ID: <162999605485.15049.13746422156342475265@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210826141830.889-1-jani.nikula@intel.com>
In-Reply-To: <20210826141830.889-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_remove_unused_i915-=3Eactive=5Fpipes?=
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

Series: drm/i915: remove unused i915->active_pipes
URL   : https://patchwork.freedesktop.org/series/94076/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e8c9a5aa908f drm/i915: remove unused i915->active_pipes
-:10: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit ef79d62b5ce5 ("drm/i915: Encapsulate dbuf state handling harder")'
#10: 
ef79d62b5ce5 ("drm/i915: Encapsulate dbuf state handling harder"), and

-:35: CHECK:MULTIPLE_ASSIGNMENTS: multiple assignments should be avoided
#35: FILE: drivers/gpu/drm/i915/display/intel_display.c:12353:
+	cdclk_state->active_pipes = dbuf_state->active_pipes = active_pipes;

total: 1 errors, 0 warnings, 1 checks, 28 lines checked


