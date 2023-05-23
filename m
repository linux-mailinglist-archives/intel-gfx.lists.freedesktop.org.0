Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD32F70D093
	for <lists+intel-gfx@lfdr.de>; Tue, 23 May 2023 03:35:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3103B10E3B5;
	Tue, 23 May 2023 01:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id A06CD10E306;
 Tue, 23 May 2023 01:35:47 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DC47AADD8;
 Tue, 23 May 2023 01:35:47 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>
Date: Tue, 23 May 2023 01:35:47 -0000
Message-ID: <168480574731.14424.7663247732710021605@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230523004455.1206533-1-suraj.kandpal@intel.com>
In-Reply-To: <20230523004455.1206533-1-suraj.kandpal@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_HDCP_Cleanup_=28rev2=29?=
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

Series: HDCP Cleanup (rev2)
URL   : https://patchwork.freedesktop.org/series/117938/
State : warning

== Summary ==

Error: dim checkpatch failed
92c1f45f306c drm/i915/hdcp: Rename dev_priv to i915
b217dfe92986 drm/i915/hdcp: Move away from master naming to arbiter
-:242: CHECK:ALLOC_SIZEOF_STRUCT: Prefer kzalloc(sizeof(*data)...) over kzalloc(sizeof(struct i915_hdcp_arbiter)...)
#242: FILE: drivers/gpu/drm/i915/display/intel_hdcp_gsc.c:703:
+	data = kzalloc(sizeof(struct i915_hdcp_arbiter), GFP_KERNEL);

total: 0 errors, 0 warnings, 1 checks, 304 lines checked
465547e061ca drm/i915/hdcp: Rename comp_mutex to hdcp_mutex


