Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E108AE2D4
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 12:49:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B42810FB97;
	Tue, 23 Apr 2024 10:49:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C2C310FB97;
 Tue, 23 Apr 2024 10:49:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/xe=3A_More_fb_pi?=
 =?utf-8?q?nning_optimizations=2E?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Apr 2024 10:49:05 -0000
Message-ID: <171386934531.1607645.6688160182494753922@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240423095441.227953-1-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20240423095441.227953-1-maarten.lankhorst@linux.intel.com>
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

Series: drm/xe: More fb pinning optimizations.
URL   : https://patchwork.freedesktop.org/series/132766/
State : warning

== Summary ==

Error: dim checkpatch failed
9bb8bddcda44 drm/xe/display: Preparations for preallocating dpt bo
52c5537fc30d drm/xe: Use simple xchg to cache DPT
-:7: WARNING:COMMIT_MESSAGE: Missing commit description - Add an appropriate one

total: 0 errors, 1 warnings, 0 checks, 100 lines checked
2b7494a212ae drm/xe/display: Re-use display vmas when possible
-:180: ERROR:CODE_INDENT: code indent should use tabs where possible
#180: FILE: drivers/gpu/drm/xe/display/xe_fb_pin.c:457:
+^I            sizeof(new_plane_state->view.gtt))) {$

total: 1 errors, 0 warnings, 0 checks, 162 lines checked


