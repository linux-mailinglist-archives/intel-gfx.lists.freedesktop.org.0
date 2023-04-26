Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54FA46EF9AB
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Apr 2023 19:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA28810E267;
	Wed, 26 Apr 2023 17:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 0B07710E267;
 Wed, 26 Apr 2023 17:56:25 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 0552AA7DFB;
 Wed, 26 Apr 2023 17:56:25 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Zhanjun Dong" <zhanjun.dong@intel.com>
Date: Wed, 26 Apr 2023 17:56:24 -0000
Message-ID: <168253178499.17151.2252032828496902117@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230426161133.1009519-1-zhanjun.dong@intel.com>
In-Reply-To: <20230426161133.1009519-1-zhanjun.dong@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/guc=3A_Set_wedged_if_enable_guc_communication_fail?=
 =?utf-8?q?ed?=
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

Series: drm/i915/guc: Set wedged if enable guc communication failed
URL   : https://patchwork.freedesktop.org/series/117000/
State : warning

== Summary ==

Error: dim checkpatch failed
48debe4a6caa drm/i915/guc: Set wedged if enable guc communication failed
-:6: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#6: 
Add err code check for enable_communication on resume path. When resume failed, we can no longer use the GPU, marking the GPU as wedged.

-:60: CHECK:LINE_SPACING: Please don't use multiple blank lines
#60: FILE: drivers/gpu/drm/i915/gt/intel_reset.c:1001:
 
+

total: 0 errors, 1 warnings, 1 checks, 73 lines checked


