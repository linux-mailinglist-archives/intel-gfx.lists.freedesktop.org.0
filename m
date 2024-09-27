Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8999E987CEB
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 04:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE26610E33A;
	Fri, 27 Sep 2024 02:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A9DC10E33A;
 Fri, 27 Sep 2024 02:15:15 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/display=3A_?=
 =?utf-8?q?Workaround_for_odd_panning_for_planar_yuv_=28rev4=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Garg, Nemesa" <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Sep 2024 02:15:15 -0000
Message-ID: <172740331549.1109554.15530719005849970535@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240925122359.2455130-1-nemesa.garg@intel.com>
In-Reply-To: <20240925122359.2455130-1-nemesa.garg@intel.com>
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

Series: drm/i915/display: Workaround for odd panning for planar yuv (rev4)
URL   : https://patchwork.freedesktop.org/series/136416/
State : warning

== Summary ==

Error: dim checkpatch failed
154cf770d0c8 drm/i915/display: Workaround for odd panning for planar yuv
-:37: CHECK:LOGICAL_CONTINUATIONS: Logical continuations should be on the previous line
#37: FILE: drivers/gpu/drm/i915/display/intel_atomic_plane.c:1022:
+		if (IS_LUNARLAKE(i915) && fb->format->format == DRM_FORMAT_NV12
+		    && src_w % 2 == 0)

total: 0 errors, 0 warnings, 1 checks, 17 lines checked


