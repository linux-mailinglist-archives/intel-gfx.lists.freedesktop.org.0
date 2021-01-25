Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 979983024F8
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 13:33:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F05D389F9F;
	Mon, 25 Jan 2021 12:33:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [IPv6:2610:10:20:722:a800:ff:feee:56cf])
 by gabe.freedesktop.org (Postfix) with ESMTP id E25A889CF8;
 Mon, 25 Jan 2021 12:33:39 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id DA977A8836;
 Mon, 25 Jan 2021 12:33:39 +0000 (UTC)
MIME-Version: 1.0
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Dan Carpenter" <dan.carpenter@oracle.com>
Date: Mon, 25 Jan 2021 12:33:39 -0000
Message-ID: <161157801986.3418.3603538991305799484@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <YA6F3oF8mRaNQWjb@mwanda>
In-Reply-To: <YA6F3oF8mRaNQWjb@mwanda>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/gvt=3A_fix_uninitialized_return_in_intel=5Fgvt=5Fupdate?=
 =?utf-8?q?=5Freg=5Fwhitelist=28=29?=
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
Content-Type: multipart/mixed; boundary="===============0107283839=="
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

--===============0107283839==
Content-Type: multipart/alternative;
 boundary="===============4855283770564247177=="

--===============4855283770564247177==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

== Series Details ==

Series: drm/i915/gvt: fix uninitialized return in intel_gvt_update_reg_whitelist()
URL   : https://patchwork.freedesktop.org/series/86235/
State : failure

== Summary ==

Applying: drm/i915/gvt: fix uninitialized return in intel_gvt_update_reg_whitelist()
Using index info to reconstruct a base tree...
M	drivers/gpu/drm/i915/gvt/cmd_parser.c
Falling back to patching base and 3-way merge...
Auto-merging drivers/gpu/drm/i915/gvt/cmd_parser.c
No changes -- Patch already applied.



--===============4855283770564247177==
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
<tr><td><b>Series:</b></td><td>drm/i915/gvt: fix uninitialized return in intel_gvt_update_reg_whitelist()</td></tr>
<tr><td><b>URL:</b></td><td><a href="https://patchwork.freedesktop.org/series/86235/">https://patchwork.freedesktop.org/series/86235/</a></td></tr>
<tr><td><b>State:</b></td><td>failure</td></tr>

</table>


    <p>Applying: drm/i915/gvt: fix uninitialized return in intel_gvt_update_reg_whitelist()<br />
Using index info to reconstruct a base tree...<br />
M   drivers/gpu/drm/i915/gvt/cmd_parser.c<br />
Falling back to patching base and 3-way merge...<br />
Auto-merging drivers/gpu/drm/i915/gvt/cmd_parser.c<br />
No changes -- Patch already applied.</p>

</body>
</html>

--===============4855283770564247177==--

--===============0107283839==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx

--===============0107283839==--
