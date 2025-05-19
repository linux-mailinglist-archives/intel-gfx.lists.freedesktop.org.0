Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB311ABC4D2
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 18:43:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3436210E3D2;
	Mon, 19 May 2025 16:43:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 1538d3639d33 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E22FC10E3D2;
 Mon, 19 May 2025 16:43:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_Introduce_a_sysfs_in?=
 =?utf-8?q?terface_for_lmem_information?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Krzysztof Niemiec" <krzysztof.niemiec@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 19 May 2025 16:43:34 -0000
Message-ID: <174767301491.664.6266484798681673851@1538d3639d33>
X-Patchwork-Hint: ignore
References: <20250519153418.44543-1-krzysztof.niemiec@intel.com>
In-Reply-To: <20250519153418.44543-1-krzysztof.niemiec@intel.com>
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

Series: Introduce a sysfs interface for lmem information
URL   : https://patchwork.freedesktop.org/series/149193/
State : warning

== Summary ==

Error: dim checkpatch failed
91c2eb3567a7 drm/i915: Expose local memory information via sysfs
-:112: CHECK:LINE_SPACING: Please don't use multiple blank lines
#112: FILE: drivers/gpu/drm/i915/intel_memory_region.c:462:
+
+

-:157: ERROR:SPACING: space required before the open parenthesis '('
#157: FILE: drivers/gpu/drm/i915/intel_memory_region.c:507:
+	if(!intel_memory_region_by_type(i915, INTEL_MEMORY_LOCAL))

total: 1 errors, 0 warnings, 1 checks, 157 lines checked
19ba8dc0e159 drm/i915: Add protections to sysfs local memory information


