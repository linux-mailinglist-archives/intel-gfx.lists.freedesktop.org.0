Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9617889D21A
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Apr 2024 08:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEDAA10E888;
	Tue,  9 Apr 2024 06:04:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 8e613ede5ea5 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E99BF112680;
 Tue,  9 Apr 2024 06:04:13 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_drm/i915/audio=3A_?=
 =?utf-8?q?=27scheduling_while_atomic=27_during_system_resume?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Brent Lu" <brent.lu@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Tue, 09 Apr 2024 06:04:13 -0000
Message-ID: <171264265395.1300821.16015598254420845420@8e613ede5ea5>
X-Patchwork-Hint: ignore
References: <20240409130113.3081587-1-brent.lu@intel.com>
In-Reply-To: <20240409130113.3081587-1-brent.lu@intel.com>
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

Series: drm/i915/audio: 'scheduling while atomic' during system resume
URL   : https://patchwork.freedesktop.org/series/132187/
State : warning

== Summary ==

Error: dim checkpatch failed
f51aab733cbc drm/i915/audio: 'scheduling while atomic' during system resume
-:41: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#41: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1123:
+	udelay(1000);

-:47: CHECK:USLEEP_RANGE: usleep_range is preferred over udelay; see Documentation/timers/timers-howto.rst
#47: FILE: drivers/gpu/drm/i915/display/intel_audio.c:1128:
+		udelay(1000);

total: 0 errors, 0 warnings, 2 checks, 14 lines checked


