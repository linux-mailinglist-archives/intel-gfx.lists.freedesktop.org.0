Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A485439E9B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Oct 2021 20:36:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958FB6E1CF;
	Mon, 25 Oct 2021 18:36:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 1E7D06E1BE;
 Mon, 25 Oct 2021 18:36:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 158A7A363C;
 Mon, 25 Oct 2021 18:36:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matthew Brost" <matthew.brost@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Oct 2021 18:36:53 -0000
Message-ID: <163518701307.17090.15753977270503778233@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211025163404.2774-1-matthew.brost@intel.com>
In-Reply-To: <20211025163404.2774-1-matthew.brost@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/trace=3A_Hide_backend_specific_fields_behind_Kconf?=
 =?utf-8?q?ig?=
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

Series: drm/i915/trace: Hide backend specific fields behind Kconfig
URL   : https://patchwork.freedesktop.org/series/96258/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
621c2565d8e5 drm/i915/trace: Hide backend specific fields behind Kconfig
-:31: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#31: FILE: drivers/gpu/drm/i915/i915_trace.h:822:
+DECLARE_EVENT_CLASS(i915_request,
+	    TP_PROTO(struct i915_request *rq),

-:34: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#34: FILE: drivers/gpu/drm/i915/i915_trace.h:825:
+	    TP_STRUCT__entry(

-:42: CHECK:OPEN_ENDED_LINE: Lines should not end with a '('
#42: FILE: drivers/gpu/drm/i915/i915_trace.h:833:
+	    TP_fast_assign(

total: 0 errors, 0 warnings, 3 checks, 39 lines checked


