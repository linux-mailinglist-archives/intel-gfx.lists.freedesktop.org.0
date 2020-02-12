Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B4715B0D0
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2020 20:17:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EC546E0FA;
	Wed, 12 Feb 2020 19:17:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250A26E0FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2020 19:17:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 11:17:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,433,1574150400"; d="scan'208";a="256920007"
Received: from rantogno-mobl4.jf.intel.com ([10.54.72.142])
 by fmsmga004.fm.intel.com with ESMTP; 12 Feb 2020 11:17:28 -0800
From: Rafael Antognolli <rafael.antognolli@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Feb 2020 11:17:28 -0800
Message-Id: <20200212191728.25227-1-rafael.antognolli@intel.com>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/tgl: Add Wa_1808121037 to tgl.
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBub3QgY2xlYXIgd2hldGhlciB0aGlzIHdvcmthcm91bmQgaXMgZmluYWwgeWV0LCBidXQg
dGhlIEJTcGVjCmluZGljYXRlcyB0aGF0IHVzZXJzcGFjZSBuZWVkcyB0byBzZXQgYml0IDkgb2Yg
dGhpcyByZWdpc3RlciBvbiBkZW1hbmQ6CgogICAiVG8gYXZvaWQgc3BvcmFkaWMgY29ycnVwdGlv
bnMg4oCcU2V0IDB4NzAxMFs5XSB3aGVuIERlcHRoIEJ1ZmZlcgogICBTdXJmYWNlIEZvcm1hdCBp
cyBEMTZfVU5PUk0gLCBzdXJmYWNlIHR5cGUgaXMgbm90IE5VTEwgJiAxWF9NU0FBIgoKQnVnTGlu
azogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL21lc2EvbWVzYS9pc3N1ZXMvMjUwMQpT
aWduZWQtb2ZmLWJ5OiBSYWZhZWwgQW50b2dub2xsaSA8cmFmYWVsLmFudG9nbm9sbGlAaW50ZWwu
Y29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCA2
ICsrKysrKwogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jCmluZGV4IDYyYjQzZjUzOGE1Ni4uNTdiOTY4
NWQ5MzQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJv
dW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMK
QEAgLTEyNjQsNiArMTI2NCwxMiBAQCBzdGF0aWMgdm9pZCB0Z2xfd2hpdGVsaXN0X2J1aWxkKHN0
cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJd2hpdGVsaXN0X3JlZ19leHQodywgUFNf
SU5WT0NBVElPTl9DT1VOVCwKIAkJCQkgIFJJTkdfRk9SQ0VfVE9fTk9OUFJJVl9BQ0NFU1NfUkQg
fAogCQkJCSAgUklOR19GT1JDRV9UT19OT05QUklWX1JBTkdFXzQpOworCisJCS8qIFdhXzE4MDgx
MjEwMzc6dGdsCisJCSAqCisJCSAqIEFsbG93IHVzZXJwYWNlIHRvIGltcGxlbWVudCB0aGlzIHdv
cmthcm91bmQuCisJCSAqLworCQl3aGl0ZWxpc3RfcmVnKHcsIEdFTjdfQ09NTU9OX1NMSUNFX0NI
SUNLRU4xKTsKIAkJYnJlYWs7CiAJZGVmYXVsdDoKIAkJYnJlYWs7Ci0tIAoyLjI1LjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
