Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4F745C22E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 14:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4BDBE6E4EC;
	Wed, 24 Nov 2021 13:23:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id 45D7E6E4A5;
 Wed, 24 Nov 2021 13:23:09 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 3E6C9A01BB;
 Wed, 24 Nov 2021 13:23:09 +0000 (UTC)
Content-Type: multipart/alternative;
 boundary="===============7942567783173478323=="
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Date: Wed, 24 Nov 2021 13:23:09 -0000
Message-ID: <163776018924.25292.10938357513700133335@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20211124092355.16668-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20211124092355.16668-1-stanislav.lisovskiy@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgUmV2?=
 =?utf-8?q?ert_=22drm/i915/dg2=3A_Tile_4_plane_format_support=22?=
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

--===============7942567783173478323==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: Revert "drm/i915/dg2: Tile 4 plane format support"
URL   : https://patchwork.freedesktop.org/series/97231/
State : failure

== Summary ==

Applying: Revert "drm/i915/dg2: Tile 4 plane format support"
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_fb.c
M	drivers/gpu/drm/i915/display/intel_fbc.c
M	drivers/gpu/drm/i915/display/intel_plane_initial.c
M	drivers/gpu/drm/i915/display/skl_universal_plane.c
M	drivers/gpu/drm/i915/i915_drv.h
M	drivers/gpu/drm/i915/i915_pci.c
M	drivers/gpu/drm/i915/i915_reg.h
M	drivers/gpu/drm/i915/intel_device_info.h
M	drivers/gpu/drm/i915/intel_pm.c
M	include/uapi/drm/drm_fourcc.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
No changes -- Patch already applied.



--===============7942567783173478323==
Content-Type: text/html; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>Project List - Patchwork</title>
  <style id="css-table-select" type="text/css">
   td { padding: 2pt; }
  </style>
</head>
<body>


<b>Patch Details</b>
<table>
<tr><td><b>Series:</b></td><td>Revert &quot;drm/i915/dg2: Tile 4 plane format support&quot;</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/97231/">https://patchwork.freedesktop.org/series/97231/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

</table>


    <p>Applying: Revert "drm/i915/dg2: Tile 4 plane format support"<br />
Using index info to reconstruct a base tree...<br />
M   drivers/gpu/drm/i915/display/intel_display.c<br />
M   drivers/gpu/drm/i915/display/intel_fb.c<br />
M   drivers/gpu/drm/i915/display/intel_fbc.c<br />
M   drivers/gpu/drm/i915/display/intel_plane_initial.c<br />
M   drivers/gpu/drm/i915/display/skl_universal_plane.c<br />
M   drivers/gpu/drm/i915/i915_drv.h<br />
M   drivers/gpu/drm/i915/i915_pci.c<br />
M   drivers/gpu/drm/i915/i915_reg.h<br />
M   drivers/gpu/drm/i915/intel_device_info.h<br />
M   drivers/gpu/drm/i915/intel_pm.c<br />
M   include/uapi/drm/drm_fourcc.h<br />
Falling back to patching base and 3-way merge...<br />
Auto-merging drivers/gpu/drm/i915/display/intel_display.c<br />
No changes -- Patch already applied.</p>

</body>
</html>

--===============7942567783173478323==--
