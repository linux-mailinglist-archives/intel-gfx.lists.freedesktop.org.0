Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B27BA49B02
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2025 14:53:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D299510ECAB;
	Fri, 28 Feb 2025 13:53:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2EB6B10ECAB;
 Fri, 28 Feb 2025 13:53:57 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?add_some_sub-structs_for_clarity?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 28 Feb 2025 13:53:57 -0000
Message-ID: <174075083716.3240952.11311751351754310954@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1740746939.git.jani.nikula@intel.com>
In-Reply-To: <cover.1740746939.git.jani.nikula@intel.com>
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

Series: drm/i915/display: add some sub-structs for clarity
URL   : https://patchwork.freedesktop.org/series/145641/
State : warning

== Summary ==

Error: dim checkpatch failed
c1708cdf9cd9 drm/i915/mst: add mst sub-struct to struct intel_dp
95c39d7c2118 drm/i915/mst: add mst sub-struct to struct intel_connector
-:278: WARNING:LONG_LINE: line length of 105 exceeds 100 columns
#278: FILE: drivers/gpu/drm/i915/display/intel_dp_mst.c:1216:
+				       drm_atomic_get_mst_payload_state(mst_state, connector->mst.port));

total: 0 errors, 1 warnings, 0 checks, 379 lines checked
ef6c6a3dd8a7 drm/i915/hdcp: add hdcp sub-struct to struct intel_digital_port


