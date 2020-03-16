Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21389186FD1
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2020 17:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FAE6896A5;
	Mon, 16 Mar 2020 16:16:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 339D689458;
 Mon, 16 Mar 2020 16:16:06 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 2BD74A41FB;
 Mon, 16 Mar 2020 16:16:06 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Wambui Karuga" <wambui.karugax@gmail.com>
Date: Mon, 16 Mar 2020 16:16:06 -0000
Message-ID: <158437536617.18994.14643916973593567823@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20200314183344.17603-1-wambui.karugax@gmail.com>
In-Reply-To: <20200314183344.17603-1-wambui.karugax@gmail.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/gt=3A_convert_to_struct_drm=5Fdevice_based_logging?=
 =?utf-8?q?_macros=2E?=
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

== Series Details ==

Series: drm/i915/gt: convert to struct drm_device based logging macros.
URL   : https://patchwork.freedesktop.org/series/74707/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
6cfa7991dd93 drm/i915/ggtt: convert to drm_device based logging macros.
-:84: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#84: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 89 lines checked
0d578a154f1b drm/i915/lrc: convert to struct drm_device based logging macros.
-:14: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#14: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 44 lines checked
90332a78c06d drm/i915/rc6: convert to struct drm_device based logging macros.
-:13: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#13: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 109 lines checked
449bd50495fa drm/i915/renderstate: use struct drm_device based logging macros.
ad89d4cdd325 drm/i915/ring_submission: use drm_device based logging macros.
-:85: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#85: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 63 lines checked
e344bc88a34c drm/i915/rps: use struct drm_device based logging macros.
-:15: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#15: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 164 lines checked
8dfd9a57f09d drm/i915/workarounds: convert to drm_device based logging macros.
-:12: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#12: 
References: https://lists.freedesktop.org/archives/dri-devel/2020-January/253381.html

total: 0 errors, 1 warnings, 0 checks, 25 lines checked

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
