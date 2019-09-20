Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 237A5B8F29
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 13:43:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1F4F6FCA9;
	Fri, 20 Sep 2019 11:43:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mblankhorst.nl (mblankhorst.nl [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A87756FC98
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 11:42:40 +0000 (UTC)
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 13:42:14 +0200
Message-Id: <20190920114235.22411-2-maarten.lankhorst@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 02/23] HAX drm/i915: Disable FEC entirely for now
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBnZXQgYSBwZXJtYW5lbnQgRklGTyB1bmRlcnJ1biB3aGVuIGVuYWJsaW5nIEZFQyB3aXRoIGJp
ZyBqb2luZXIsCnNvIGZvciBub3cgZGlzYWJsZSBpdC4KCkl0IHNlZW1zIHRoYXQgZXZlbiBhdCAx
MDI0eDc2OCByZXNvbHV0aW9uIHdpdGhvdXQgYmlnam9pbmVyIHdlIGRvbid0CmdldCBhIHdvcmtp
bmcgY29uZmlndXJhdGlvbi4gRmxhZyBpcyBzZXQgYnV0IHZibGFuayB0aW1pbmcgc2hvd3MgdGhh
dAp2YmxhbmtzIGFyZSBkZWxpdmVyZWQgc2xpZ2h0bHkgZmFzdGVyLCBzbyB0aGUgZXh0cmEgb3Zl
cmhlYWQgd2UKY2FsY3VsYXRlZCBmb3IgZGF0YSBNL04gZ29lcyB1bnVzZWQuCgpOb3QtU2lnbmVk
LW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVs
LmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCA2ICsr
KystLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKaW5kZXggNGRmYjc4ZGM3ZmEyLi4w
MjI0MmExNjY0MGIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKQEAg
LTE4NzcsNyArMTg3Nyw4IEBAIHN0YXRpYyBib29sIGludGVsX2RwX3NvdXJjZV9zdXBwb3J0c19k
c2Moc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIHN0YXRpYyBib29sIGludGVsX2RwX3N1cHBv
cnRzX2RzYyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCQkJCSAgY29uc3Qgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKnBpcGVfY29uZmlnKQogewotCWlmICghaW50ZWxfZHBfaXNfZWRwKGlu
dGVsX2RwKSAmJiAhcGlwZV9jb25maWctPmZlY19lbmFibGUpCisJLyogSEFDSzogRGlzYWJsZSBG
RUMgdW50aWwgd2Ugc29sdmVkIEZJRk8gdW5kZXJydW5zICovCisJaWYgKCFpbnRlbF9kcF9pc19l
ZHAoaW50ZWxfZHApICYmICFwaXBlX2NvbmZpZy0+ZmVjX2VuYWJsZSAmJiAwKQogCQlyZXR1cm4g
ZmFsc2U7CiAKIAlyZXR1cm4gaW50ZWxfZHBfc291cmNlX3N1cHBvcnRzX2RzYyhpbnRlbF9kcCwg
cGlwZV9jb25maWcpICYmCkBAIC0yMDI0LDggKzIwMjUsOSBAQCBzdGF0aWMgaW50IGludGVsX2Rw
X2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCWludCBwaXBl
X2JwcDsKIAlpbnQgcmV0OwogCisJLyogSEFDSzogRGlzYWJsZSBGRUMgdW50aWwgd2Ugc29sdmVk
IEZJRk8gdW5kZXJydW5zICovCiAJcGlwZV9jb25maWctPmZlY19lbmFibGUgPSAhaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSAmJgotCQlpbnRlbF9kcF9zdXBwb3J0c19mZWMoaW50ZWxfZHAsIHBp
cGVfY29uZmlnKTsKKwkJaW50ZWxfZHBfc3VwcG9ydHNfZmVjKGludGVsX2RwLCBwaXBlX2NvbmZp
ZykgJiYgMDsKIAogCWlmICghaW50ZWxfZHBfc3VwcG9ydHNfZHNjKGludGVsX2RwLCBwaXBlX2Nv
bmZpZykpCiAJCXJldHVybiAtRUlOVkFMOwotLSAKMi4yMC4xCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
