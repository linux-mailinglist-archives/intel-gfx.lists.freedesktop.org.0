Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0006D67A8A3
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 03:16:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F80D10E292;
	Wed, 25 Jan 2023 02:16:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id EB3F610E292;
 Wed, 25 Jan 2023 02:16:01 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id E4C40AADEB;
 Wed, 25 Jan 2023 02:16:01 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Matt Roper" <matthew.d.roper@intel.com>
Date: Wed, 25 Jan 2023 02:16:01 -0000
Message-ID: <167461296193.5511.7199555915430927833@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230125011407.2821808-1-matthew.d.roper@intel.com>
In-Reply-To: <20230125011407.2821808-1-matthew.d.roper@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/2=5D_drm/i915/xehp=3A_GAM_registe?=
 =?utf-8?q?rs_don=27t_need_to_be_re-applied_on_engine_resets?=
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

Series: series starting with [1/2] drm/i915/xehp: GAM registers don't need to be re-applied on engine resets
URL   : https://patchwork.freedesktop.org/series/113298/
State : warning

== Summary ==

Error: dim checkpatch failed
96b9e69089af drm/i915/xehp: GAM registers don't need to be re-applied on engine resets
-:220: CHECK:MACRO_ARG_REUSE: Macro argument reuse '__i915' - possible side-effects?
#220: FILE: drivers/gpu/drm/i915/i915_drv.h:699:
+#define IS_MTL_MEDIA_STEP(__i915, since, until) \
+	(IS_METEORLAKE(__i915) && \
+	 IS_MEDIA_STEP(__i915, since, until))

total: 0 errors, 0 warnings, 1 checks, 173 lines checked
26af0011cd77 drm/i915/xehp: Annotate a couple more workaround registers as MCR


