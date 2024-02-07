Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4A3684CE6F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Feb 2024 16:54:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16C8C10E800;
	Wed,  7 Feb 2024 15:54:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 5338d5abeb45 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB1EF10E800;
 Wed,  7 Feb 2024 15:54:10 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Add_GuC_?=
 =?utf-8?q?submission_interface_version_query?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Tvrtko Ursulin" <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Wed, 07 Feb 2024 15:54:10 -0000
Message-ID: <170732125070.1072169.6932182069788288196@5338d5abeb45>
X-Patchwork-Hint: ignore
References: <20240207115612.1322778-1-tvrtko.ursulin@linux.intel.com>
In-Reply-To: <20240207115612.1322778-1-tvrtko.ursulin@linux.intel.com>
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

Series: drm/i915: Add GuC submission interface version query
URL   : https://patchwork.freedesktop.org/series/129627/
State : warning

== Summary ==

Error: dim checkpatch failed
b1fb7e21feba drm/i915: Add GuC submission interface version query
-:105: WARNING:LONG_LINE_COMMENT: line length of 103 exceeds 100 columns
#105: FILE: include/uapi/drm/i915_drm.h:3016:
+	 *  - %DRM_I915_QUERY_GUC_SUBMISSION_VERSION (see struct drm_i915_query_guc_submission_version)

-:122: WARNING:BLOCK_COMMENT_STYLE: Block comments should align the * on each line
#122: FILE: include/uapi/drm/i915_drm.h:3572:
+/**
+* struct drm_i915_query_guc_submission_version - query GuC submission interface version

total: 0 errors, 2 warnings, 0 checks, 73 lines checked


