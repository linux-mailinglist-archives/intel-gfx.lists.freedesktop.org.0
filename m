Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9330A56EE7
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 18:18:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67A1A10E1C2;
	Fri,  7 Mar 2025 17:18:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 18a75f3d1eae (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81EA710E1C2;
 Fri,  7 Mar 2025 17:18:34 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915=3A_Increase?=
 =?utf-8?q?_I915=5FPARAM=5FMMAP=5FGTT=5FVERSION_version_to_indicate_support_?=
 =?utf-8?q?for_partial_mmaps_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Mar 2025 17:18:34 -0000
Message-ID: <174136791452.3577.3228244952216319701@18a75f3d1eae>
X-Patchwork-Hint: ignore
References: <20250306210827.171147-1-jose.souza@intel.com>
In-Reply-To: <20250306210827.171147-1-jose.souza@intel.com>
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

Series: drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version to indicate support for partial mmaps (rev2)
URL   : https://patchwork.freedesktop.org/series/145945/
State : warning

== Summary ==

Error: dim checkpatch failed
9631f5af88ec drm/i915: Increase I915_PARAM_MMAP_GTT_VERSION version to indicate support for partial mmaps
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
Commit 255fc1703e42 ("drm/i915/gem: Calculate object page offset for partial memory mapping")

total: 0 errors, 1 warnings, 0 checks, 17 lines checked


