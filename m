Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D26D707B2E
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 09:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0F810E4E3;
	Thu, 18 May 2023 07:38:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 117B110E03F;
 Thu, 18 May 2023 07:38:33 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0850CAADE7;
 Thu, 18 May 2023 07:38:33 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Thu, 18 May 2023 07:38:33 -0000
Message-ID: <168439551300.2370.16664889796253302991@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230518063612.1044370-1-suraj.kandpal@intel.com>
In-Reply-To: <20230518063612.1044370-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_Cleanup?=
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

Series: HDCP Cleanup
URL   : https://patchwork.freedesktop.org/series/117938/
State : warning

== Summary ==

Error: dim checkpatch failed
ca74af1c86b5 drm/i915/hdcp: Rename dev_priv to i915
af1ce8f61009 drm/i915/hdcp: Move away from master naming to arbiter
-:229: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*data)...) over kzalloc(sizeof(struct i915_hdcp_arbiter)...)
#229: FILE: drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:703:
+	data = kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 297 lines checked
cb458f729465 drm/i915/hdcp: Rename comp_mutex to hdcp_mutex


