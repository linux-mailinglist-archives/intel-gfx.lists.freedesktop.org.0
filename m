Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 781DE5FB737
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 17:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F40310E31D;
	Tue, 11 Oct 2022 15:30:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6904D10E31D;
 Tue, 11 Oct 2022 15:30:42 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 6220BA7DFF;
 Tue, 11 Oct 2022 15:30:42 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 11 Oct 2022 15:30:42 -0000
Message-ID: <166550224239.5542.3793410932213823353@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1665496046.git.jani.nikula@intel.com>
In-Reply-To: <cover.1665496046.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_EDID_override_refactoring_and_fixes?=
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

Series: drm/edid: EDID override refactoring and fixes
URL   : https://patchwork.freedesktop.org/series/109579/
State : warning

== Summary ==

Error: dim checkpatch failed
29415aa4021f drm/i915/hdmi: do dual mode detect only if connected
-:20: WARNING:TYPO_SPELLING: 'firmare' may be misspelled - perhaps 'firmware'?
#20: 
or override/firmare or b) there's EDID but it does not indicate
            ^^^^^^^

total: 0 errors, 1 warnings, 0 checks, 48 lines checked
fd95a97d5e15 drm/i915/hdmi: stop using connector->override_edid
32546b908649 drm/amd/display: stop using connector->override_edid
a1cbfbaab17b drm/edid: debug log EDID override set/reset
35654a174a5f drm/edid: abstract debugfs override EDID show better
1226808b8f4f drm/edid: rename drm_add_override_edid_modes() to drm_edid_override_connector_update()
0a70e6d97015 drm/edid: split drm_edid block count helper
82e9ad9126c8 drm/edid: add function for checking drm_edid validity
fae9eeeeef1c drm/edid: detach debugfs EDID override from EDID property update
165bff9f8cf4 drm/edid/firmware: drop redundant connector_name variable/parameter
8d56fe1341fb drm/edid/firmware: rename drm_load_edid_firmware() to drm_edid_load_firmware()
cee3395c3b41 drm/edid: use struct drm_edid for override/firmware EDID
ea688362f034 drm/edid: move edid load declarations to internal header
352c59ad14d2 drm/edid/firmware: convert to drm device specific logging
9ba65a382c1b drm/edid: convert to device specific logging


