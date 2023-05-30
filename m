Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE31716F70
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 23:13:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078A710E42A;
	Tue, 30 May 2023 21:13:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6F90210E1A2;
 Tue, 30 May 2023 21:13:38 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6A4DAAADE3;
 Tue, 30 May 2023 21:13:38 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Suraj Kandpal" <suraj.kandpal@intel.com>
Date: Tue, 30 May 2023 21:13:38 -0000
Message-ID: <168548121843.18934.687832364373241338@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230529110740.1522985-1-suraj.kandpal@intel.com>
In-Reply-To: <20230529110740.1522985-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_Cleanup_=28rev4=29?=
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

Series: HDCP Cleanup (rev4)
URL   : https://patchwork.freedesktop.org/series/117938/
State : warning

== Summary ==

Error: dim checkpatch failed
2eb29163dd05 drm/i915/hdcp: Rename dev_priv to i915
01eb36f170a2 drm/i915/hdcp: Move away from master naming to arbiter
-:248: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*data)...) over kzalloc(sizeof(struct i915_hdcp_arbiter)...)
#248: FILE: drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:703:
+	data = kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 305 lines checked
1471bcf270af drm/i915/hdcp: Rename comp_mutex to hdcp_mutex


