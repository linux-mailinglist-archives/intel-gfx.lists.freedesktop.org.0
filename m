Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 458DD9FD3D1
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 12:20:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD2CC10E3A8;
	Fri, 27 Dec 2024 11:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from b555e5b46a47 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED7FE10E3A8;
 Fri, 27 Dec 2024 11:20:20 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Add_G?=
 =?utf-8?q?EM=5FBUG=5FON_to_ensure_at_least_one_engine_supports_migration?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: apoorva.singh@intel.com
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Dec 2024 11:20:20 -0000
Message-ID: <173529842097.3829129.981407257686717127@b555e5b46a47>
X-Patchwork-Hint: ignore
References: <20241227111128.1546618-1-apoorva.singh@intel.com>
In-Reply-To: <20241227111128.1546618-1-apoorva.singh@intel.com>
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

Series: drm/i915/gt: Add GEM_BUG_ON to ensure at least one engine supports migration
URL   : https://patchwork.freedesktop.org/series/142984/
State : warning

== Summary ==

Error: dim checkpatch failed
d2a2617f19e9 drm/i915/gt: Add GEM_BUG_ON to ensure at least one engine supports migration
-:23: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#23: FILE: drivers/gpu/drm/i915/gt/intel_migrate.c:300:
+	GEM_BUG_ON(!count);

total: 0 errors, 1 warnings, 0 checks, 9 lines checked


