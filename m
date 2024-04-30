Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F4918B7F8D
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 20:15:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 085A6112DF3;
	Tue, 30 Apr 2024 18:15:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C886112DF3;
 Tue, 30 Apr 2024 18:15:32 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/guc=3A_avoi?=
 =?utf-8?q?d_FIELD=5FPREP_warning_=28rev2=29?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Arnd Bergmann" <arnd@kernel.org>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 30 Apr 2024 18:15:32 -0000
Message-ID: <171450093257.1793102.16602232326534977@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240430164809.482131-1-julia.filipchuk@intel.com>
In-Reply-To: <20240430164809.482131-1-julia.filipchuk@intel.com>
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

Series: drm/i915/guc: avoid FIELD_PREP warning (rev2)
URL   : https://patchwork.freedesktop.org/series/114145/
State : warning

== Summary ==

Error: dim checkpatch failed
313ad2270b44 drm/i915/guc: avoid FIELD_PREP warning
-:10: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#10: 
    inlined from '__guc_context_set_prio.isra.67' at drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c:3292:3,

total: 0 errors, 1 warnings, 0 checks, 12 lines checked


