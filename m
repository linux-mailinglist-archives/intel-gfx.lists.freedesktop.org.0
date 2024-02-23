Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 412588608E1
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Feb 2024 03:35:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4087A10EADE;
	Fri, 23 Feb 2024 02:35:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5477F10EAC3;
 Fri, 23 Feb 2024 02:35:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_miss?=
 =?utf-8?q?ing_=3B_to_=5F=5Fassign=5Fstr=28=29_macros_in_tracepoint_code?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Steven Rostedt" <rostedt@goodmis.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 23 Feb 2024 02:35:10 -0000
Message-ID: <170865571034.217031.11443243403541041425@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240222133057.2af72a19@gandalf.local.home>
In-Reply-To: <20240222133057.2af72a19@gandalf.local.home>
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

Series: drm/i915: Add missing ; to __assign_str() macros in tracepoint code
URL   : https://patchwork.freedesktop.org/series/130279/
State : warning

== Summary ==

Error: dim checkpatch failed
871d6a86ca24 drm/i915: Add missing ; to __assign_str() macros in tracepoint code
-:15: WARNING:BAD_FIXES_TAG: Please use correct Fixes: style 'Fixes: <12 chars of sha1> ("<title line>")' - ie: 'Fixes: 2ceea5d88048 ("drm/i915: Print plane name in fbc tracepoints")'
#15: 
Fixes: 2ceea5d88048b ("drm/i915: Print plane name in fbc tracepoints")

total: 0 errors, 1 warnings, 0 checks, 24 lines checked


