Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE6C49D598
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Jan 2022 23:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555FB10E984;
	Wed, 26 Jan 2022 22:42:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 5647B10E983;
 Wed, 26 Jan 2022 22:42:30 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 50F66A73C7;
 Wed, 26 Jan 2022 22:42:30 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Manasi Navare" <manasi.d.navare@intel.com>
Date: Wed, 26 Jan 2022 22:42:30 -0000
Message-ID: <164323695029.25407.16901737586900322286@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20220126195304.8262-1-manasi.d.navare@intel.com>
In-Reply-To: <20220126195304.8262-1-manasi.d.navare@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/display/vrr=3A_Reset_VRR_capable_property_on_a_lon?=
 =?utf-8?q?g_hpd_=28rev2=29?=
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

Series: drm/i915/display/vrr: Reset VRR capable property on a long hpd (rev2)
URL   : https://patchwork.freedesktop.org/series/98801/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
071c4ebbb036 drm/i915/display/vrr: Reset VRR capable property on a long hpd
-:7: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
#7: 
With some VRR panels, user can turn VRR ON/OFF on the fly from the panel settings.

total: 0 errors, 1 warnings, 0 checks, 33 lines checked


