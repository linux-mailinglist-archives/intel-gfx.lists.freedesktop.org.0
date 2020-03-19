Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F7E18C3E0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 00:40:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F7C6EAA2;
	Thu, 19 Mar 2020 23:40:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id F20086EAA2;
 Thu, 19 Mar 2020 23:40:40 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id EB75FA0009;
 Thu, 19 Mar 2020 23:40:40 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lionel Landwerlin" <lionel.g.landwerlin@intel.com>
Date: Thu, 19 Mar 2020 23:40:40 -0000
Message-ID: <158466124093.17933.17700798133468580880@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20200319225203.29679-1-umesh.nerlige.ramappa@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/perf=3A_add_OA_interrupt_support_=28rev7=29?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/perf: add OA interrupt support (rev7)
URL   : https://patchwork.freedesktop.org/series/54280/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
d7bd4aaf5bf3 drm/i915/perf: rework aging tail workaround
-:125: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
#125: FILE: drivers/gpu/drm/i915/i915_perf.c:481:
+	if (hw_tail == stream->oa_buffer.aging_tail &&
+	   (now - stream->oa_buffer.aging_timestamp) > OA_TAIL_MARGIN_NSEC) {

total: 0 errors, 0 warnings, 1 checks, 350 lines checked
3874f27479a6 drm/i915/perf: move pollin setup to non hw specific code
4bfbbb959b1f drm/i915/perf: add new open param to configure polling of OA buffer

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
