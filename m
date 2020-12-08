Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830632D3050
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 17:57:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AC436E02F;
	Tue,  8 Dec 2020 16:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 3E1506E029;
 Tue,  8 Dec 2020 16:57:14 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 35B8DA00E6;
 Tue,  8 Dec 2020 16:57:14 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Tue, 08 Dec 2020 16:57:14 -0000
Message-ID: <160744663419.9601.4942294445874010878@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1607429866.git.jani.nikula@intel.com>
In-Reply-To: <cover.1607429866.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/dsc=2C_drm/dp=2C_and_/drm/i915=3A_rc_model_size_updates?=
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

Series: drm/dsc, drm/dp, and /drm/i915: rc model size updates
URL   : https://patchwork.freedesktop.org/series/84685/
State : warning

== Summary ==

$ dim checkpatch origin/drm-tip
e40fcc2fb88c drm/dsc: use rc_model_size from DSC config for PPS
d3786025b31c drm/i915/dsc: configure hardware using specified rc_model_size
aecdbfc662d5 drm/i915/dsc: make rc_model_size an encoder defined value
-:6: WARNING:TYPO_SPELLING: 'intialization' may be misspelled - perhaps 'initialization'?
#6: 
Move the intialization of the rc_model_size from the common code into

total: 0 errors, 1 warnings, 0 checks, 31 lines checked
925c8324ea3e drm/dsc: add helper for calculating rc buffer size from DPCD
d997af2e7914 drm/i915/bios: fill in DSC rc_model_size from VBT
52414a882a77 drm/i915/dsi: use VBT data for rc_model_size


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
