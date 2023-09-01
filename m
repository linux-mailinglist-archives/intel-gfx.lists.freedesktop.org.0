Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA1DF7902FE
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Sep 2023 22:55:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2448410E061;
	Fri,  1 Sep 2023 20:55:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 588AC10E061;
 Fri,  1 Sep 2023 20:55:28 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 4DF0CAADE1;
 Fri,  1 Sep 2023 20:55:28 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: =?utf-8?b?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 01 Sep 2023 20:55:28 -0000
Message-ID: <169360172829.9816.17205299104991920085@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230829113920.13713-1-ville.syrjala@linux.intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Populate_connector-=3Eddc_always_=28rev3=29?=
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

Series: drm/i915: Populate connector->ddc always (rev3)
URL   : https://patchwork.freedesktop.org/series/123006/
State : warning

== Summary ==

Error: dim checkpatch failed
8fd33ded9c0a drm: Reorder drm_sysfs_connector_remove() vs. drm_debugfs_connector_remove()
9d98e3e1192d drm/sysfs: Register "ddc" symlink later
43a5972c2fd2 drm/i915: Call the DDC bus i2c adapter "ddc"
cd42facac809 drm/i915/lvds: Populate connector->ddc
ca1925da6c86 drm/i915/crt: Populate connector->ddc
b52d2d5d1b57 drm/i915/dvo: Populate connector->ddc
8edec4121630 drm/i915/dp: Populate connector->ddc
507739d7918d drm/i915/mst: Populate connector->ddc
-:14: WARNING:COMMIT_LOG_USE_LINK: Unknown link reference 'References:', use 'Link:' or 'Closes:' instead
#14: 
References: https://gitlab.freedesktop.org/drm/intel/-/issues/3605

total: 0 errors, 1 warnings, 0 checks, 12 lines checked
843595ccb212 drm/i915/hdmi: Use connector->ddc everwhere
c07e4ad9fca3 drm/i915/hdmi: Nuke hdmi->ddc_bus
3e29633c760c drm/i915/hdmi: Remove old i2c symlink
a22e722eba15 drm/i915/sdvo: Constify mapping structs


