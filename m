Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1FE966A3A
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2024 22:09:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 244DC10E17E;
	Fri, 30 Aug 2024 20:09:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from 2413ebb6fbb6 (emeril.freedesktop.org [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D812210E17E;
 Fri, 30 Aug 2024 20:09:51 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: =?utf-8?q?=E2=9C=97_Fi=2ECI=2ECHECKPATCH=3A_warning_for_series_starting_with?=
 =?utf-8?q?_=5B1/2=5D_drm/xe=3A_Add_missing_runtime_reference_to_wedged_upon?=
 =?utf-8?q?_gt=5Freset?=
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Rodrigo Vivi" <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Aug 2024 20:09:51 -0000
Message-ID: <172504859188.855855.12617877309144734620@2413ebb6fbb6>
X-Patchwork-Hint: ignore
References: <20240830183507.298351-1-rodrigo.vivi@intel.com>
In-Reply-To: <20240830183507.298351-1-rodrigo.vivi@intel.com>
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

Series: series starting with [1/2] drm/xe: Add missing runtime reference to wedged upon gt_reset
URL   : https://patchwork.freedesktop.org/series/138033/
State : warning

== Summary ==

Error: dim checkpatch failed
c3554c812920 drm/xe: Add missing runtime reference to wedged upon gt_reset
6f9bf7b09e2d drm/xe/display: Avoid encoder_suspend at runtime suspend
-:13: WARNING:COMMIT_LOG_LONG_LINE: Prefer a maximum 75 chars per line (possible unwrapped commit description?)
#13: 
<4> [74.952226] ffff888120548488 (&dev->mode_config.mutex){+.+.}-{3:3}, at: drm_modeset_lock_all+0x40/0x1e0 [drm]

-:20: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit b1d90a862c89 ("drm/xe: Use the encoder suspend helper also used by the i915 driver")'
#20: 
The commit b1d90a86 ("drm/xe: Use the encoder suspend helper also used
by the i915 driver") didn't do anything wrong. It actually fixed a

total: 1 errors, 1 warnings, 0 checks, 13 lines checked


