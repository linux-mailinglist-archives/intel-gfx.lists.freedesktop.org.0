Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A36A2C727
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 16:30:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 633E110EB49;
	Fri,  7 Feb 2025 15:30:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1D8610EB41;
 Fri,  7 Feb 2025 15:28:43 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pch=3A_smal?=
 =?utf-8?q?l_cleanups=2C_refactors?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 07 Feb 2025 15:28:43 -0000
Message-ID: <173894212378.2696878.15721333392864269301@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <cover.1738923308.git.jani.nikula@intel.com>
In-Reply-To: <cover.1738923308.git.jani.nikula@intel.com>
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

Series: drm/i915/pch: small cleanups, refactors
URL   : https://patchwork.freedesktop.org/series/144489/
State : warning

== Summary ==

Error: dim checkpatch failed
7bc5fca8d7b8 drm/i915/pch: Make LPT LP a dedicated PCH type
-:92: CHECK:MACRO_ARG_REUSE: Macro argument reuse 'dev_priv' - possible side-effects?
#92: FILE: drivers/gpu/drm/i915/soc/intel_pch.h:78:
+#define HAS_PCH_LPT(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LPT_H || \
+						 INTEL_PCH_TYPE(dev_priv) == PCH_LPT_LP)

total: 0 errors, 0 warnings, 1 checks, 66 lines checked
560b81a36580 drm/i915/pch: Hide PCH device IDs
949b38b157d3 drm/i915/pch: Remove unused i915->pch_id


