Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A73B36709E
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Apr 2021 18:49:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 654F66E9E6;
	Wed, 21 Apr 2021 16:49:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 211F06E9E6
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Apr 2021 16:49:45 +0000 (UTC)
IronPort-SDR: zfhBk1ty5015pG4NQ8lnaFnJw5oVugRigBDeXVHk677x6w8L+4FwoZmhLexLcSi8K6GOR9JdjN
 kVC0NNwbuedg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="195758982"
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="195758982"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2021 09:49:44 -0700
IronPort-SDR: ZVN6zlwdO7mwGjV1mAZ2WNFjZoDtuZeXsdO1Pb0xIav1izVm4oO/3h/PHEpIl+Y96dUjtHWIK0
 V9Si1y4AoN9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,240,1613462400"; d="scan'208";a="524353962"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga001.fm.intel.com with SMTP; 21 Apr 2021 09:49:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 Apr 2021 19:49:41 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 21 Apr 2021 19:48:49 +0300
Message-Id: <20210421164849.12806-18-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.3
In-Reply-To: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
References: <20210421164849.12806-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 17/17] drm/i915: Add the missing adls vswing
 tables
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCmFk
bHMgaXMgc3VwcG9zZWQgdG8gdXNlIHNwZWNpYWwgYnVmIHRyYW5zIHRhYmxlcy4gQWRkIHdoYXQn
cwptaXNzaW5nLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KLS0tCiAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMgICAgfCAxMjIgKysrKysrKysrKysrKysrKystCiAxIGZpbGUgY2hhbmdlZCwgMTIx
IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jCmluZGV4IGM1YjdjZTc0NjRiYy4uN2Fj
YjI0YTU1NzM4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaV9idWZfdHJhbnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RkaV9idWZfdHJhbnMuYwpAQCAtOTk5LDYgKzk5OSw4MiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2RkaV9idWZfdHJhbnMgcmtsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hi
cjJfaAogCS5udW1fZW50cmllcyA9IEFSUkFZX1NJWkUoX3JrbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19kcF9oYnIyX2hicjMpLAogfTsKIAorc3RhdGljIGNvbnN0IHVuaW9uIGludGVsX2Rk
aV9idWZfdHJhbnNfZW50cnkgX2FkbHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfcmJy
X2hicltdID0geworCQkJCQkJCS8qIE5UIG1WIFRyYW5zIG1WIGRiICAgICovCisJeyAuY25sID0g
eyAweEEsIDB4MzIsIDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAg
ICAqLworCXsgLmNubCA9IHsgMHhBLCAweDRGLCAweDM3LCAweDAwLCAweDA4IH0gfSwJLyogMzUw
ICAgNTAwICAgICAgMy4xICAgKi8KKwl7IC5jbmwgPSB7IDB4QywgMHg3MSwgMHgyRiwgMHgwMCwg
MHgxMCB9IH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovCisJeyAuY25sID0geyAweDYsIDB4
N0QsIDB4MkIsIDB4MDAsIDB4MTQgfSB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLworCXsg
LmNubCA9IHsgMHhBLCAweDRDLCAweDNGLCAweDAwLCAweDAwIH0gfSwJLyogNTAwICAgNTAwICAg
ICAgMC4wICAgKi8KKwl7IC5jbmwgPSB7IDB4QywgMHg3MywgMHgzNCwgMHgwMCwgMHgwQiB9IH0s
CS8qIDUwMCAgIDcwMCAgICAgIDIuOSAgICovCisJeyAuY25sID0geyAweDYsIDB4N0YsIDB4MkYs
IDB4MDAsIDB4MTAgfSB9LAkvKiA1MDAgICA5MDAgICAgICA1LjEgICAqLworCXsgLmNubCA9IHsg
MHhDLCAweDZDLCAweDNDLCAweDAwLCAweDAzIH0gfSwJLyogNjUwICAgNzAwICAgICAgMC42ICAg
Ki8KKwl7IC5jbmwgPSB7IDB4NiwgMHg3RiwgMHgzNSwgMHgwMCwgMHgwQSB9IH0sCS8qIDYwMCAg
IDkwMCAgICAgIDMuNSAgICovCisJeyAuY25sID0geyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4
MDAgfSB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKworc3RhdGljIGNvbnN0IHN0
cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zIGFkbHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNf
ZHBfcmJyX2hiciA9IHsKKwkuZW50cmllcyA9IF9hZGxzX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2RwX3Jicl9oYnIsCisJLm51bV9lbnRyaWVzID0gQVJSQVlfU0laRShfYWRsc19jb21ib19w
aHlfZGRpX3RyYW5zbGF0aW9uc19kcF9yYnJfaGJyKSwKK307CisKK3N0YXRpYyBjb25zdCB1bmlv
biBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5IF9hZGxzX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2RwX2hicjJfaGJyM1tdID0geworCQkJCQkJCS8qIE5UIG1WIFRyYW5zIG1WIGRiICAgICov
CisJeyAuY25sID0geyAweEEsIDB4MzUsIDB4M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiAzNTAgICAz
NTAgICAgICAwLjAgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDRGLCAweDM3LCAweDAwLCAweDA4
IH0gfSwJLyogMzUwICAgNTAwICAgICAgMy4xICAgKi8KKwl7IC5jbmwgPSB7IDB4QywgMHg2Mywg
MHgzMCwgMHgwMCwgMHgwRiB9IH0sCS8qIDM1MCAgIDcwMCAgICAgIDYuMCAgICovCisJeyAuY25s
ID0geyAweDYsIDB4N0YsIDB4MkIsIDB4MDAsIDB4MTQgfSB9LAkvKiAzNTAgICA5MDAgICAgICA4
LjIgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDQ3LCAweDNGLCAweDAwLCAweDAwIH0gfSwJLyog
NTAwICAgNTAwICAgICAgMC4wICAgKi8KKwl7IC5jbmwgPSB7IDB4QywgMHg2MywgMHgzNywgMHgw
MCwgMHgwOCB9IH0sCS8qIDUwMCAgIDcwMCAgICAgIDIuOSAgICovCisJeyAuY25sID0geyAweDYs
IDB4N0YsIDB4MzEsIDB4MDAsIDB4MEUgfSB9LAkvKiA1MDAgICA5MDAgICAgICA1LjEgICAqLwor
CXsgLmNubCA9IHsgMHhDLCAweDYxLCAweDNDLCAweDAwLCAweDAzIH0gfSwJLyogNjUwICAgNzAw
ICAgICAgMC42ICAgKi8KKwl7IC5jbmwgPSB7IDB4NiwgMHg3QiwgMHgzNSwgMHgwMCwgMHgwQSB9
IH0sCS8qIDYwMCAgIDkwMCAgICAgIDMuNSAgICovCisJeyAuY25sID0geyAweDYsIDB4N0YsIDB4
M0YsIDB4MDAsIDB4MDAgfSB9LAkvKiA5MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKworc3Rh
dGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zIGFkbHNfY29tYm9fcGh5X2RkaV90
cmFuc2xhdGlvbnNfZHBfaGJyMl9oYnIzID0geworCS5lbnRyaWVzID0gX2FkbHNfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMl9oYnIzLAorCS5udW1fZW50cmllcyA9IEFSUkFZX1NJ
WkUoX2FkbHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMl9oYnIzKSwKK307CisK
K3N0YXRpYyBjb25zdCB1bmlvbiBpbnRlbF9kZGlfYnVmX3RyYW5zX2VudHJ5IF9hZGxzX2NvbWJv
X3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyW10gPSB7CisJCQkJCQkJLyogTlQgbVYgVHJh
bnMgbVYgZGIgICAgKi8KKwl7IC5jbmwgPSB7IDB4OSwgMHg3MCwgMHgzQywgMHgwMCwgMHgwMyB9
IH0sCS8qIDIwMCAgIDIwMCAgICAgIDAuMCAgICovCisJeyAuY25sID0geyAweDksIDB4NkQsIDB4
M0EsIDB4MDAsIDB4MDUgfSB9LAkvKiAyMDAgICAyNTAgICAgICAxLjkgICAqLworCXsgLmNubCA9
IHsgMHg5LCAweDdGLCAweDM2LCAweDAwLCAweDA5IH0gfSwJLyogMjAwICAgMzAwICAgICAgMy41
ICAgKi8KKwl7IC5jbmwgPSB7IDB4NCwgMHg1OSwgMHgzMiwgMHgwMCwgMHgwRCB9IH0sCS8qIDIw
MCAgIDM1MCAgICAgIDQuOSAgICovCisJeyAuY25sID0geyAweDIsIDB4NzcsIDB4M0EsIDB4MDAs
IDB4MDUgfSB9LAkvKiAyNTAgICAyNTAgICAgICAwLjAgICAqLworCXsgLmNubCA9IHsgMHgyLCAw
eDdGLCAweDM4LCAweDAwLCAweDA3IH0gfSwJLyogMjUwICAgMzAwICAgICAgMS42ICAgKi8KKwl7
IC5jbmwgPSB7IDB4NCwgMHg1QSwgMHgzNiwgMHgwMCwgMHgwOSB9IH0sCS8qIDI1MCAgIDM1MCAg
ICAgIDIuOSAgICovCisJeyAuY25sID0geyAweDQsIDB4NUUsIDB4M0QsIDB4MDAsIDB4MDQgfSB9
LAkvKiAzMDAgICAzMDAgICAgICAwLjAgICAqLworCXsgLmNubCA9IHsgMHg0LCAweDY1LCAweDM4
LCAweDAwLCAweDA3IH0gfSwJLyogMzAwICAgMzUwICAgICAgMS4zICAgKi8KKwl7IC5jbmwgPSB7
IDB4NCwgMHg2RiwgMHgzQSwgMHgwMCwgMHgwNSB9IH0sCS8qIDM1MCAgIDM1MCAgICAgIDAuMCAg
ICovCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgYWRsc19j
b21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMiA9IHsKKwkuZW50cmllcyA9IF9hZGxz
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyLAorCS5udW1fZW50cmllcyA9IEFS
UkFZX1NJWkUoX2FkbHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjIpLAorfTsK
Kworc3RhdGljIGNvbnN0IHVuaW9uIGludGVsX2RkaV9idWZfdHJhbnNfZW50cnkgX2FkbHNfY29t
Ym9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjNbXSA9IHsKKwkJCQkJCQkvKiBOVCBtViBU
cmFucyBtViBkYiAgICAqLworCXsgLmNubCA9IHsgMHhBLCAweDVFLCAweDM0LCAweDAwLCAweDBC
IH0gfSwJLyogMzUwICAgMzUwICAgICAgMC4wICAgKi8KKwl7IC5jbmwgPSB7IDB4QSwgMHg2OSwg
MHgzMiwgMHgwMCwgMHgwRCB9IH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCisJeyAuY25s
ID0geyAweEMsIDB4NzQsIDB4MzEsIDB4MDAsIDB4MEUgfSB9LAkvKiAzNTAgICA3MDAgICAgICA2
LjAgICAqLworCXsgLmNubCA9IHsgMHg2LCAweDdGLCAweDJFLCAweDAwLCAweDExIH0gfSwJLyog
MzUwICAgOTAwICAgICAgOC4yICAgKi8KKwl7IC5jbmwgPSB7IDB4QSwgMHg1QywgMHgzRiwgMHgw
MCwgMHgwMCB9IH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovCisJeyAuY25sID0geyAweEMs
IDB4N0YsIDB4MzQsIDB4MDAsIDB4MEIgfSB9LAkvKiA1MDAgICA3MDAgICAgICAyLjkgICAqLwor
CXsgLmNubCA9IHsgMHg2LCAweDdGLCAweDMzLCAweDAwLCAweDBDIH0gfSwJLyogNTAwICAgOTAw
ICAgICAgNS4xICAgKi8KKwl7IC5jbmwgPSB7IDB4QywgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9
IH0sCS8qIDY1MCAgIDcwMCAgICAgIDAuNiAgICovCisJeyAuY25sID0geyAweDYsIDB4N0YsIDB4
M0MsIDB4MDAsIDB4MDMgfSB9LAkvKiA2MDAgICA5MDAgICAgICAzLjUgICAqLworCXsgLmNubCA9
IHsgMHg2LCAweDdGLCAweDNGLCAweDAwLCAweDAwIH0gfSwJLyogOTAwICAgOTAwICAgICAgMC4w
ICAgKi8KK307CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyBhZGxz
X2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzID0geworCS5lbnRyaWVzID0gX2Fk
bHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjMsCisJLm51bV9lbnRyaWVzID0g
QVJSQVlfU0laRShfYWRsc19jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19lZHBfaGJyMyksCit9
OworCiBib29sIGlzX2hvYmxfYnVmX3RyYW5zKGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3Ry
YW5zICp0YWJsZSkKIHsKIAlyZXR1cm4gdGFibGUgPT0gJnRnbF9jb21ib19waHlfZGRpX3RyYW5z
bGF0aW9uc19lZHBfaGJyMl9ob2JsOwpAQCAtMTUyMCw2ICsxNTk2LDQ4IEBAIHJrbF9nZXRfY29t
Ym9fYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQlyZXR1cm4gcmts
X2dldF9jb21ib19idWZfdHJhbnNfZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRyaWVzKTsK
IH0KIAorc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKK2FkbHNfZ2V0
X2NvbWJvX2J1Zl90cmFuc19kcChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCSAg
ICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSAgICBpbnQg
Km5fZW50cmllcykKK3sKKwlpZiAoY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA+IDI3MDAwMCkKKwkJ
cmV0dXJuIGludGVsX2dldF9idWZfdHJhbnMoJmFkbHNfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlv
bnNfZHBfaGJyMl9oYnIzLCBuX2VudHJpZXMpOworCWVsc2UKKwkJcmV0dXJuIGludGVsX2dldF9i
dWZfdHJhbnMoJnRnbF9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIsIG5fZW50cmll
cyk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqCithZGxz
X2dldF9jb21ib19idWZfdHJhbnNfZWRwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAor
CQkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSAg
ICAgaW50ICpuX2VudHJpZXMpCit7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwID0g
ZW5jX3RvX2ludGVsX2RwKGVuY29kZXIpOworCisJaWYgKGNydGNfc3RhdGUtPnBvcnRfY2xvY2sg
PiA1NDAwMDApCisJCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZhZGxzX2NvbWJvX3BoeV9k
ZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIzLCBuX2VudHJpZXMpOworCWVsc2UgaWYgKGk5MTUtPnZi
dC5lZHAuaG9ibCAmJiAhaW50ZWxfZHAtPmhvYmxfZmFpbGVkKQorCQlyZXR1cm4gaW50ZWxfZ2V0
X2J1Zl90cmFucygmdGdsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2VkcF9oYnIyX2hvYmws
IG5fZW50cmllcyk7CisJZWxzZSBpZiAoaTkxNS0+dmJ0LmVkcC5sb3dfdnN3aW5nKQorCQlyZXR1
cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmYWRsc19jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19l
ZHBfaGJyMiwgbl9lbnRyaWVzKTsKKwllbHNlCisJCXJldHVybiBhZGxzX2dldF9jb21ib19idWZf
dHJhbnNfZHAoZW5jb2RlciwgY3J0Y19zdGF0ZSwgbl9lbnRyaWVzKTsKK30KKworc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoKK2FkbHNfZ2V0X2NvbWJvX2J1Zl90cmFu
cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKKwkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxf
Y3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKKwkJCSBpbnQgKm5fZW50cmllcykKK3sKKwlpZiAoaW50
ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfSERNSSkpCisJCXJldHVy
biBpbnRlbF9nZXRfYnVmX3RyYW5zKCZpY2xfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfaGRt
aSwgbl9lbnRyaWVzKTsKKwllbHNlIGlmIChpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUs
IElOVEVMX09VVFBVVF9FRFApKQorCQlyZXR1cm4gYWRsc19nZXRfY29tYm9fYnVmX3RyYW5zX2Vk
cChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOworCWVsc2UKKwkJcmV0dXJuIGFkbHNf
Z2V0X2NvbWJvX2J1Zl90cmFuc19kcChlbmNvZGVyLCBjcnRjX3N0YXRlLCBuX2VudHJpZXMpOwor
fQorCiBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2RkaV9idWZfdHJhbnMgKgogdGdsX2dldF9k
a2xfYnVmX3RyYW5zX2RwKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAogCQkJIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLApAQCAtMTU3MCw3ICsxNjg4LDkg
QEAgdm9pZCBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVu
Y29kZXIpCiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGVuY29kZXIt
PmJhc2UuZGV2KTsKIAllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBlbmNv
ZGVyLT5wb3J0KTsKIAotCWlmIChJU19ST0NLRVRMQUtFKGk5MTUpKSB7CisJaWYgKElTX0FMREVS
TEFLRV9TKGk5MTUpKSB7CisJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBhZGxzX2dldF9jb21i
b19idWZfdHJhbnM7CisJfSBlbHNlIGlmIChJU19ST0NLRVRMQUtFKGk5MTUpKSB7CiAJCWVuY29k
ZXItPmdldF9idWZfdHJhbnMgPSBya2xfZ2V0X2NvbWJvX2J1Zl90cmFuczsKIAl9IGVsc2UgaWYg
KElTX0RHMShpOTE1KSkgewogCQllbmNvZGVyLT5nZXRfYnVmX3RyYW5zID0gZGcxX2dldF9jb21i
b19idWZfdHJhbnM7Ci0tIAoyLjI2LjMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
