Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 142DA30284C
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 17:59:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFCF6E2D1;
	Mon, 25 Jan 2021 16:59:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id B7FBF6E28A;
 Mon, 25 Jan 2021 16:59:27 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id B52D0AB524;
 Mon, 25 Jan 2021 16:59:27 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Chris Wilson" <chris@chris-wilson.co.uk>
Date: Mon, 25 Jan 2021 16:59:27 -0000
Message-ID: <161159396773.3416.244498403138668295@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <20210125132158.2402159-1-chris@chris-wilson.co.uk>
In-Reply-To: <20210125132158.2402159-1-chris@chris-wilson.co.uk>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gem=3A_Drop_lru_bumping_on_display_unpinning?=
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
Content-Type: multipart/mixed; boundary="===============1863587294=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============1863587294==
Content-Type: multipart/alternative;
 boundary="===============0984135633740128435=="

--===============0984135633740128435==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gem: Drop lru bumping on display unpinning
URL   : https://patchwork.freedesktop.org/series/86254/
State : failure

== Summary ==

Applying: drm/i915/gem: Drop lru bumping on display unpinning
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/display/intel_display.c
M	drivers/gpu/drm/i915/display/intel_overlay.c
M	drivers/gpu/drm/i915/gem/i915_gem_domain.c
M	drivers/gpu/drm/i915/gem/i915_gem_object.h
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object.h
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_domain.c
Auto-merging drivers/gpu/drm/i915/display/intel_overlay.c
Auto-merging drivers/gpu/drm/i915/display/intel_display.c
No changes -- Patch already applied.



--===============0984135633740128435==
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
<tr><td><b>Series:</b></td><td>drm/i915/gem: Drop lru bumping on display unpinning</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86254/">https://patchwork.freedesktop.org/series/86254/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

</table>


    <p>Applying: drm/i915/gem: Drop lru bumping on display unpinning<br />
Using index info to reconstruct a base tree...<br />
M   drivers/gpu/drm/i915/display/intel_display.c<br />
M   drivers/gpu/drm/i915/display/intel_overlay.c<br />
M   drivers/gpu/drm/i915/gem/i915_gem_domain.c<br />
M   drivers/gpu/drm/i915/gem/i915_gem_object.h<br />
Falling back to patching base and 3-way merge...<br />
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_object.h<br />
Auto-merging drivers/gpu/drm/i915/gem/i915_gem_domain.c<br />
Auto-merging drivers/gpu/drm/i915/display/intel_overlay.c<br />
Auto-merging drivers/gpu/drm/i915/display/intel_display.c<br />
No changes -- Patch already applied.</p>

</body>
</html>

--===============0984135633740128435==--

--===============1863587294==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============1863587294==--
