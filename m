Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FD4A797231
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 14:14:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B646D10E7BD;
	Thu,  7 Sep 2023 12:14:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from emeril.freedesktop.org (emeril.freedesktop.org
 [131.252.210.167])
 by gabe.freedesktop.org (Postfix) with ESMTP id 6462110E7C0;
 Thu,  7 Sep 2023 12:14:35 +0000 (UTC)
Received: from emeril.freedesktop.org (localhost [127.0.0.1])
 by emeril.freedesktop.org (Postfix) with ESMTP id 5DE5BAADF2;
 Thu,  7 Sep 2023 12:14:35 +0000 (UTC)
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
From: Patchwork <patchwork@emeril.freedesktop.org>
To: "Jani Nikula" <jani.nikula@intel.com>
Date: Thu, 07 Sep 2023 12:14:35 -0000
Message-ID: <169408887538.17900.5891321810958493033@emeril.freedesktop.org>
X-Patchwork-Hint: ignore
References: <cover.1694078430.git.jani.nikula@intel.com>
In-Reply-To: <cover.1694078430.git.jani.nikula@intel.com>
Subject: [Intel-gfx] =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/edid=3A_split_out_drm=5Feld=2E=5Bch=5D=2C_add_some_SAD_?=
 =?utf-8?q?helpers?=
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

Series: drm/edid: split out drm_eld.[ch], add some SAD helpers
URL   : https://patchwork.freedesktop.org/series/123384/
State : warning

== Summary ==

Error: dim checkpatch failed
940b009582a3 drm/edid: split out drm_eld.h from drm_edid.h
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:205: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#205: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 335 lines checked
bfb13c1d78fa drm/eld: replace uint8_t with u8
1458d514001c drm/edid: include drm_eld.h only where required
814b0bb13735 drm/edid: use a temp variable for sads to drop one level of dereferences
078b4dda5ca5 drm/edid: add helpers to get/set struct cea_sad from/to 3-byte sad
0c4ecf16ece2 drm/eld: add helpers to modify the SADs of an ELD
Traceback (most recent call last):
  File "scripts/spdxcheck.py", line 6, in <module>
    from ply import lex, yacc
ModuleNotFoundError: No module named 'ply'
-:42: WARNING:FILE_PATH_CHANGES: added, moved or deleted file(s), does MAINTAINERS need updating?
#42: 
new file mode 100644

total: 0 errors, 1 warnings, 0 checks, 88 lines checked


