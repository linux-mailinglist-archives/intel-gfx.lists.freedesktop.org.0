Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FFED4C3D68
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Feb 2022 05:46:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A8AE10E6E8;
	Fri, 25 Feb 2022 04:46:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 75FD010E6E8;
 Fri, 25 Feb 2022 04:46:53 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 73AD8A77A5;
 Fri, 25 Feb 2022 04:46:53 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Fri, 25 Feb 2022 04:46:53 -0000
Message-ID: <164576441347.6271.14584466162436980124@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220225013055.9282-1-manasi.d.navare@intel.com>
In-Reply-To: <20220225013055.9282-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_series_starting_with_=5Bv6=2C1/2=5D_drm/vrr=3A_Set_VRR_capa?=
 =?utf-8?q?ble_prop_only_if_it_is_attached_to_connector?=
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

Series: series starting with [v6,1/2] drm/vrr: Set VRR capable prop only if it is attached to connector
URL   : https://patchwork.freedesktop.org/series/100712/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
783e65f81a2e drm/vrr: Set VRR capable prop only if it is attached to connector
b22db1344f58 drm/i915/display/vrr: Reset VRR capable property on a long hpd
-:10: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#10: 
With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.

-:22: WARNING:TYPO_SPELLING: 'reseting' may be misspelled - perhaps 'resetting'?
#22: 
v5: Fixes the regression on older platforms by reseting the VRR
                                               ^^^^^^^^

total: 0 errors, 2 warnings, 0 checks, 32 lines checked


