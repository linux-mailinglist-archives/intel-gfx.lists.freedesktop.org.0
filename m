Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E38E8AA001
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Apr 2024 18:28:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD47810F353;
	Thu, 18 Apr 2024 16:28:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F26D610FCD8;
 Thu, 18 Apr 2024 16:28:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/gt=3A_Refac?=
 =?utf-8?q?tor_uabi_engine_class/instance_list_creation_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Andi Shyti" <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Apr 2024 16:28:30 -0000
Message-ID: <171345771098.1501116.17303549799607371741@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240416224953.385726-1-andi.shyti@linux.intel.com>
In-Reply-To: <20240416224953.385726-1-andi.shyti@linux.intel.com>
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

Series: drm/i915/gt: Refactor uabi engine class/instance list creation (rev2)
URL   : https://patchwork.freedesktop.org/series/132521/
State : warning

== Summary ==

Error: dim checkpatch failed
bf5601a7ea21 drm/i915/gt: Refactor uabi engine class/instance list creation
-:54: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#54: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:233:
+		GEM_BUG_ON(uabi_class >= ARRAY_SIZE(class_instance));

-:70: WARNING:AVOID_BUG: Do not crash the kernel unless it is absolutely unavoidable--use WARN_ON_ONCE() plus recovery code (if feasible) instead of BUG() or variants
#70: FILE: drivers/gpu/drm/i915/gt/intel_engine_user.c:247:
+		GEM_BUG_ON(uabi_class >=

total: 0 errors, 2 warnings, 0 checks, 56 lines checked


