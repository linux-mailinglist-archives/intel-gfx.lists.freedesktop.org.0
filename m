Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3994B9E1C3A
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 13:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0B6610E449;
	Tue,  3 Dec 2024 12:33:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75F3110E449;
 Tue,  3 Dec 2024 12:33:22 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Fix_NULL?=
 =?utf-8?q?_pointer_dereference_in_capture=5Fengine_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Eugene Kobyak" <eugene.kobyak@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 03 Dec 2024 12:33:22 -0000
Message-ID: <173322920247.2005293.15973320232526711922@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
In-Reply-To: <4yfdzisxkb3j3tig2astee5zd46ppt2jwhqffkhes2dwm3g5nb@snadyfwzl7g4>
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

Series: drm/i915: Fix NULL pointer dereference in capture_engine (rev2)
URL   : https://patchwork.freedesktop.org/series/141903/
State : warning

== Summary ==

Error: dim checkpatch failed
5e923c864f1a drm/i915: Fix NULL pointer dereference in capture_engine
-:26: ERROR:CODE_INDENT: code indent should use tabs where possible
#26: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1647:
+^I        char guc_id[11];$

-:27: WARNING:LONG_LINE: line length of 123 exceeds 100 columns
#27: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1648:
+		ce ? snprintf(guc_id, sizeof(guc_id), " [0x%04x] ", ce->guc_id.id) : snprintf(guc_id, sizeof(guc_id), " ");

-:28: ERROR:CODE_INDENT: code indent should use tabs where possible
#28: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1649:
+^I        drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld%snot yet started\n",$

-:29: ERROR:CODE_INDENT: code indent should use tabs where possible
#29: FILE: drivers/gpu/drm/i915/i915_gpu_error.c:1650:
+^I                 engine->name, rq->fence.context, rq->fence.seqno, guc_id);$

total: 3 errors, 1 warnings, 0 checks, 15 lines checked


