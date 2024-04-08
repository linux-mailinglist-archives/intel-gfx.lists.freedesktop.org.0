Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 980F289CC49
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Apr 2024 21:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F3379112827;
	Mon,  8 Apr 2024 19:16:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A690711283F;
 Mon,  8 Apr 2024 19:16:08 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/pps=3A_move?=
 =?utf-8?q?_pps_debugfs_file_to_intel=5Fpps=2Ec?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 08 Apr 2024 19:16:08 -0000
Message-ID: <171260376868.1286971.8177443230302735748@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240408094357.3085319-1-jani.nikula@intel.com>
In-Reply-To: <20240408094357.3085319-1-jani.nikula@intel.com>
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

Series: drm/i915/pps: move pps debugfs file to intel_pps.c
URL   : https://patchwork.freedesktop.org/series/132148/
State : warning

== Summary ==

Error: dim checkpatch failed
fa41b7dd74d8 drm/i915/pps: move pps debugfs file to intel_pps.c
-:106: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
#106: FILE: drivers/gpu/drm/i915/display/intel_pps.c:1703:
+
+}

total: 0 errors, 0 warnings, 1 checks, 93 lines checked


