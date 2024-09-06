Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EEB96EC01
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAD7010E108;
	Fri,  6 Sep 2024 07:32:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B05710E116;
 Fri,  6 Sep 2024 07:32:05 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Workaround_for_odd_panning_for_planar_yuv_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Nemesa Garg" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 06 Sep 2024 07:32:05 -0000
Message-ID: <172560792556.953152.7444737871519581497@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240906070040.3843091-1-nemesa.garg@intel.com>
In-Reply-To: <20240906070040.3843091-1-nemesa.garg@intel.com>
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

Series: drm/i915/display: Workaround for odd panning for planar yuv (rev2)
URL   : https://patchwork.freedesktop.org/series/136416/
State : warning

== Summary ==

Error: dim checkpatch failed
611bd4367e03 drm/i915/display: Workaround for odd panning for planar yuv
-:27: CHECK:LINE_SPACING: Please don't use multiple blank lines
#27: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:57:
 
+

-:60: WARNING:LONG_LINE: line length of 102 exceeds 100 columns
#60: FILE: drivers/gpu/drm/i915/display/intel_display_wa.h:17:
+static inline bool intel_display_needs_wa_16023981245(struct drm_i915_private *i915) { return false; }

total: 0 errors, 1 warnings, 1 checks, 51 lines checked


