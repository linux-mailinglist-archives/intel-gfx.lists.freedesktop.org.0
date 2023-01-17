Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4902670C33
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 23:55:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBE9210E5EF;
	Tue, 17 Jan 2023 22:55:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5FA4110E5F1;
 Tue, 17 Jan 2023 22:55:00 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 48D34AAA91;
 Tue, 17 Jan 2023 22:55:00 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: john.c.harrison@intel.com
Date: Tue, 17 Jan 2023 22:55:00 -0000
Message-ID: <167399610026.21230.5244263116309589403@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230117213630.2897570-1-John.C.Harrison@Intel.com>
In-Reply-To: <20230117213630.2897570-1-John.C.Harrison@Intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Allow_error_capture_without_a_request_/_on_reset_failure_?=
 =?utf-8?b?KHJldjMp?=
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

Series: Allow error capture without a request / on reset failure (rev3)
URL   : https://patchwork.freedesktop.org/series/111454/
State : warning

== Summary ==

Error: dim checkpatch failed
79d89c5b0cf9 drm/i915: Fix request locking during error capture & debugfs dump
-:26: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: 98df76aeb29b ("drm/i915/guc: Add a debug print on GuC triggered reset")'
#26: 
Fixes: dc0dad365c5e ("drm/i915/guc: Fix for error capture after full GPU reset

total: 0 errors, 1 warnings, 0 checks, 83 lines checked
6ad402b58742 drm/i915: Allow error capture without a request
f5f448ea38a4 drm/i915: Allow error capture of a pending request
43da516a0b97 drm/i915/guc: Look for a guilty context when an engine reset fails
98df76aeb29b drm/i915/guc: Add a debug print on GuC triggered reset


