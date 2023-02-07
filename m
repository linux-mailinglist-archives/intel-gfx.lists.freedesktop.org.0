Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C5D68DCC7
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 16:20:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7699610E1C5;
	Tue,  7 Feb 2023 15:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 626AF10E1B1;
 Tue,  7 Feb 2023 15:20:44 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4C3ABAADD1;
 Tue,  7 Feb 2023 15:20:44 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 07 Feb 2023 15:20:44 -0000
Message-ID: <167578324430.13142.7234522727236618332@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230207124026.2105442-1-jani.nikula@intel.com>
In-Reply-To: <20230207124026.2105442-1-jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5B1/4=5D_drm/i915/gt=3A_add_sparse_lo?=
 =?utf-8?q?ck_annotation_to_avoid_warnings_=28rev2=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: series starting with [1/4] drm/i915/gt: add sparse lock annotation to avoid warnings (rev2)
URL   : https://patchwork.freedesktop.org/series/113738/
State : warning

== Summary ==

Error: dim checkpatch failed
8edcb86cabc5 drm/i915/gt: add sparse lock annotation to avoid warnings
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/gt: add sparse lock annotation to avoid warnings

total: 0 errors, 1 warnings, 0 checks, 14 lines checked
696eed2f8526 drm/i915/uncore: cast iomem to avoid sparse warning
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/uncore: cast iomem to avoid sparse warning

total: 0 errors, 1 warnings, 0 checks, 17 lines checked
d59ef2d2dff8 drm/i915/syncmap: squelch a sparse warning
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/syncmap: squelch a sparse warning

total: 0 errors, 1 warnings, 0 checks, 8 lines checked
bc636b1cb3b3 drm/i915/pxp: fix __le64 access to get rid of sparse warning
-:4: WARNING:EMAIL_SUBJECT: A patch subject line should describe the change not the tool that found it
#4: 
Subject: [PATCH] drm/i915/pxp: fix __le64 access to get rid of sparse warning

total: 0 errors, 1 warnings, 0 checks, 8 lines checked


