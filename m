Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19905196070
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 22:32:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E9D86EA8C;
	Fri, 27 Mar 2020 21:32:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0711F6E046
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 21:32:52 +0000 (UTC)
IronPort-SDR: 8w4TzEVRceQ1y87t1FBxYEb+ZbOLgUoUBwXOFiixgKI+blfvmFv+V5+a4YhY6Y2FnrhJZIMVgO
 7T79G+aCD92g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2020 14:32:51 -0700
IronPort-SDR: Uk+25kyDMrq7fUeekHmy7IUySOsEfIrAw3md6CU09XF1MvGTxtitZHpBgYPDKobnxOXgOC8C3Z
 iaeiOBu3JM+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,313,1580803200"; d="scan'208";a="271709638"
Received: from josouza-mobl2.jf.intel.com (HELO josouza-MOBL2.intel.com)
 ([10.24.15.8])
 by fmsmga004.fm.intel.com with ESMTP; 27 Mar 2020 14:32:51 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 Mar 2020 14:34:13 -0700
Message-Id: <20200327213413.166623-3-jose.souza@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200327213413.166623-1-jose.souza@intel.com>
References: <20200327213413.166623-1-jose.souza@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/tc/icl: Update TC vswing tables
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

U3BlY2lmaWNhdGlvbiB3YXMgdXBkYXRlZCB3aXRoIHZzd2luZyB0YWJsZXMgZm9yIGRpZmZlcmVu
dApjb25maWd1cmF0aW9ucy4KQWxzbyByZW9yZGVyaW5nIGljbF9tZ19waHlfZGRpX2J1Zl90cmFu
cyBzdHJ1Y3QgdG8gbWF0Y2ggdGFibGUgb3JkZXIuCgpCU3BlYzogMjE3MzUKU2lnbmVkLW9mZi1i
eTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDkzICsrKysrKysrKysrKysr
KysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDczIGluc2VydGlvbnMoKyksIDIwIGRlbGV0aW9u
cygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCmluZGV4IGUxYTll
MTRmNDZlOC4uYWQxMTA5ZjlhMjk4IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RkaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMKQEAgLTU4MywyMyArNTgzLDUxIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2Rk
aV9idWZfdHJhbnMgZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwW10gPSB7CiB9Owog
CiBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zIHsKLQl1MzIgY3JpX3R4ZGVlbXBoX292
ZXJyaWRlXzVfMDsKIAl1MzIgY3JpX3R4ZGVlbXBoX292ZXJyaWRlXzExXzY7CisJdTMyIGNyaV90
eGRlZW1waF9vdmVycmlkZV81XzA7CiAJdTMyIGNyaV90eGRlZW1waF9vdmVycmlkZV8xN18xMjsK
IH07CiAKLXN0YXRpYyBjb25zdCBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zIGljbF9t
Z19waHlfZGRpX3RyYW5zbGF0aW9uc1tdID0geworc3RhdGljIGNvbnN0IHN0cnVjdCBpY2xfbWdf
cGh5X2RkaV9idWZfdHJhbnMgaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zX3Jicl9oYnJbXSA9
IHsKKwkJCQkvKiBWb2x0YWdlIHN3aW5nICBwcmUtZW1waGFzaXMgKi8KKwl7IDB4MTgsIDB4MDAs
IDB4MDAgfSwJLyogMCAgICAgICAgICAgICAgMCAgICovCisJeyAweDFELCAweDAwLCAweDA1IH0s
CS8qIDAgICAgICAgICAgICAgIDEgICAqLworCXsgMHgyNCwgMHgwMCwgMHgwQyB9LAkvKiAwICAg
ICAgICAgICAgICAyICAgKi8KKwl7IDB4MkIsIDB4MDAsIDB4MTQgfSwJLyogMCAgICAgICAgICAg
ICAgMyAgICovCisJeyAweDIxLCAweDAwLCAweDAwIH0sCS8qIDEgICAgICAgICAgICAgIDAgICAq
LworCXsgMHgyQiwgMHgwMCwgMHgwOCB9LAkvKiAxICAgICAgICAgICAgICAxICAgKi8KKwl7IDB4
MzAsIDB4MDAsIDB4MEYgfSwJLyogMSAgICAgICAgICAgICAgMiAgICovCisJeyAweDMxLCAweDAw
LCAweDAzIH0sCS8qIDIgICAgICAgICAgICAgIDAgICAqLworCXsgMHgzNCwgMHgwMCwgMHgwQiB9
LAkvKiAyICAgICAgICAgICAgICAxICAgKi8KKwl7IDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogMyAg
ICAgICAgICAgICAgMCAgICovCit9OworCitzdGF0aWMgY29uc3Qgc3RydWN0IGljbF9tZ19waHlf
ZGRpX2J1Zl90cmFucyBpY2xfbWdfcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzW10gPSB7
CiAJCQkJLyogVm9sdGFnZSBzd2luZyAgcHJlLWVtcGhhc2lzICovCi0JeyAweDAsIDB4MUIsIDB4
MDAgfSwJLyogMCAgICAgICAgICAgICAgMCAgICovCi0JeyAweDAsIDB4MjMsIDB4MDggfSwJLyog
MCAgICAgICAgICAgICAgMSAgICovCi0JeyAweDAsIDB4MkQsIDB4MTIgfSwJLyogMCAgICAgICAg
ICAgICAgMiAgICovCi0JeyAweDAsIDB4MDAsIDB4MDAgfSwJLyogMCAgICAgICAgICAgICAgMyAg
ICovCi0JeyAweDAsIDB4MjMsIDB4MDAgfSwJLyogMSAgICAgICAgICAgICAgMCAgICovCi0JeyAw
eDAsIDB4MkIsIDB4MDkgfSwJLyogMSAgICAgICAgICAgICAgMSAgICovCi0JeyAweDAsIDB4MkUs
IDB4MTEgfSwJLyogMSAgICAgICAgICAgICAgMiAgICovCi0JeyAweDAsIDB4MkYsIDB4MDAgfSwJ
LyogMiAgICAgICAgICAgICAgMCAgICovCi0JeyAweDAsIDB4MzMsIDB4MEMgfSwJLyogMiAgICAg
ICAgICAgICAgMSAgICovCi0JeyAweDAsIDB4MDAsIDB4MDAgfSwJLyogMyAgICAgICAgICAgICAg
MCAgICovCisJeyAweDE4LCAweDAwLCAweDAwIH0sCS8qIDAgICAgICAgICAgICAgIDAgICAqLwor
CXsgMHgxRCwgMHgwMCwgMHgwNSB9LAkvKiAwICAgICAgICAgICAgICAxICAgKi8KKwl7IDB4MjQs
IDB4MDAsIDB4MEMgfSwJLyogMCAgICAgICAgICAgICAgMiAgICovCisJeyAweDJCLCAweDAwLCAw
eDE0IH0sCS8qIDAgICAgICAgICAgICAgIDMgICAqLworCXsgMHgyNiwgMHgwMCwgMHgwMCB9LAkv
KiAxICAgICAgICAgICAgICAwICAgKi8KKwl7IDB4MkMsIDB4MDAsIDB4MDcgfSwJLyogMSAgICAg
ICAgICAgICAgMSAgICovCisJeyAweDMzLCAweDAwLCAweDBDIH0sCS8qIDEgICAgICAgICAgICAg
IDIgICAqLworCXsgMHgyRSwgMHgwMCwgMHgwMCB9LAkvKiAyICAgICAgICAgICAgICAwICAgKi8K
Kwl7IDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogMiAgICAgICAgICAgICAgMSAgICovCisJeyAweDNG
LCAweDAwLCAweDAwIH0sCS8qIDMgICAgICAgICAgICAgIDAgICAqLworfTsKKworc3RhdGljIGNv
bnN0IHN0cnVjdCBpY2xfbWdfcGh5X2RkaV9idWZfdHJhbnMgaWNsX21nX3BoeV9kZGlfdHJhbnNs
YXRpb25zX2hkbWlbXSA9IHsKKwkJCQkvKiBIRE1JIFByZXNldAlWUwlQcmUtZW1waCAqLworCXsg
MHgxQSwgMHgwLCAweDAgfSwJLyogMQkJNDAwbVYJMGRCICovCisJeyAweDIwLCAweDAsIDB4MCB9
LAkvKiAyCQk1MDBtVgkwZEIgKi8KKwl7IDB4MjksIDB4MCwgMHgwIH0sCS8qIDMJCTY1MG1WCTBk
QiAqLworCXsgMHgzMiwgMHgwLCAweDAgfSwJLyogNAkJODAwbVYJMGRCICovCisJeyAweDNGLCAw
eDAsIDB4MCB9LAkvKiA1CQkxMDAwbVYJMGRCICovCisJeyAweDNBLCAweDAsIDB4NSB9LAkvKiA2
CQlGdWxsCS0xLjUgZEIgKi8KKwl7IDB4MzksIDB4MCwgMHg2IH0sCS8qIDcJCUZ1bGwJLTEuOCBk
QiAqLworCXsgMHgzOCwgMHgwLCAweDcgfSwJLyogOAkJRnVsbAktMiBkQiAqLworCXsgMHgzNywg
MHgwLCAweDggfSwJLyogOQkJRnVsbAktMi41IGRCICovCisJeyAweDM2LCAweDAsIDB4OSB9LAkv
KiAxMAkJRnVsbAktMyBkQiAqLwogfTsKIAogc3RydWN0IHRnbF9ka2xfcGh5X2RkaV9idWZfdHJh
bnMgewpAQCAtOTQzLDYgKzk3MSwyMiBAQCBpY2xfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3Qg
ZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAlyZXR1cm4g
aWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicjI7CiB9CiAKK3N0YXRpYyBjb25z
dCBzdHJ1Y3QgaWNsX21nX3BoeV9kZGlfYnVmX3RyYW5zICoKK2ljbF9nZXRfbWdfYnVmX3RyYW5z
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgaW50IHR5cGUsIGludCByYXRlLAor
CQkgICAgIGludCAqbl9lbnRyaWVzKQoreworCWlmICh0eXBlID09IElOVEVMX09VVFBVVF9IRE1J
KSB7CisJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9u
c19oZG1pKTsKKwkJcmV0dXJuIGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9uc19oZG1pOworCX0g
ZWxzZSBpZiAocmF0ZSA+IDI3MDAwMCkgeworCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xf
bWdfcGh5X2RkaV90cmFuc2xhdGlvbnNfaGJyMl9oYnIzKTsKKwkJcmV0dXJuIGljbF9tZ19waHlf
ZGRpX3RyYW5zbGF0aW9uc19oYnIyX2hicjM7CisJfQorCisJKm5fZW50cmllcyA9IEFSUkFZX1NJ
WkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zX3Jicl9oYnIpOworCXJldHVybiBpY2xfbWdf
cGh5X2RkaV90cmFuc2xhdGlvbnNfcmJyX2hicjsKK30KKwogc3RhdGljIGNvbnN0IHN0cnVjdCBj
bmxfZGRpX2J1Zl90cmFucyAqCiBlaGxfZ2V0X2NvbWJvX2J1Zl90cmFucyhzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYsIGludCB0eXBlLCBpbnQgcmF0ZSwKIAkJCWludCAqbl9lbnRy
aWVzKQpAQCAtOTg4LDcgKzEwMzIsOCBAQCBzdGF0aWMgaW50IGludGVsX2RkaV9oZG1pX2xldmVs
KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQogCQkJaWNsX2dldF9jb21ib19idWZfdHJh
bnMoZGV2X3ByaXYsIElOVEVMX09VVFBVVF9IRE1JLAogCQkJCQkJMCwgJm5fZW50cmllcyk7CiAJ
CWVsc2UKLQkJCW5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRp
b25zKTsKKwkJCWljbF9nZXRfbWdfYnVmX3RyYW5zKGRldl9wcml2LCBJTlRFTF9PVVRQVVRfSERN
SSwgMCwKKwkJCQkJICAgICAmbl9lbnRyaWVzKTsKIAkJZGVmYXVsdF9lbnRyeSA9IG5fZW50cmll
cyAtIDE7CiAJfSBlbHNlIGlmIChJU19DQU5OT05MQUtFKGRldl9wcml2KSkgewogCQljbmxfZ2V0
X2J1Zl90cmFuc19oZG1pKGRldl9wcml2LCAmbl9lbnRyaWVzKTsKQEAgLTIwNjIsNyArMjEwNyw4
IEBAIHU4IGludGVsX2RkaV9kcF92b2x0YWdlX21heChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlcikKIAkJCWljbF9nZXRfY29tYm9fYnVmX3RyYW5zKGRldl9wcml2LCBlbmNvZGVyLT50eXBl
LAogCQkJCQkJaW50ZWxfZHAtPmxpbmtfcmF0ZSwgJm5fZW50cmllcyk7CiAJCWVsc2UKLQkJCW5f
ZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX21nX3BoeV9kZGlfdHJhbnNsYXRpb25zKTsKKwkJCWlj
bF9nZXRfbWdfYnVmX3RyYW5zKGRldl9wcml2LCBlbmNvZGVyLT50eXBlLAorCQkJCQkgICAgIGlu
dGVsX2RwLT5saW5rX3JhdGUsICZuX2VudHJpZXMpOwogCX0gZWxzZSBpZiAoSVNfQ0FOTk9OTEFL
RShkZXZfcHJpdikpIHsKIAkJaWYgKGVuY29kZXItPnR5cGUgPT0gSU5URUxfT1VUUFVUX0VEUCkK
IAkJCWNubF9nZXRfYnVmX3RyYW5zX2VkcChkZXZfcHJpdiwgJm5fZW50cmllcyk7CkBAIC0yMzc3
LDE3ICsyNDIzLDIzIEBAIHN0YXRpYyB2b2lkIGljbF9jb21ib19waHlfZGRpX3Zzd2luZ19zZXF1
ZW5jZShzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKIH0KIAogc3RhdGljIHZvaWQgaWNs
X21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
LAotCQkJCQkgICBpbnQgbGlua19jbG9jaywKLQkJCQkJICAgdTMyIGxldmVsKQorCQkJCQkgICBp
bnQgbGlua19jbG9jaywgdTMyIGxldmVsLAorCQkJCQkgICBlbnVtIGludGVsX291dHB1dF90eXBl
IHR5cGUpCiB7CiAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShl
bmNvZGVyLT5iYXNlLmRldik7CiAJZW51bSB0Y19wb3J0IHRjX3BvcnQgPSBpbnRlbF9wb3J0X3Rv
X3RjKGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKIAljb25zdCBzdHJ1Y3QgaWNsX21nX3BoeV9k
ZGlfYnVmX3RyYW5zICpkZGlfdHJhbnNsYXRpb25zOwogCXUzMiBuX2VudHJpZXMsIHZhbDsKLQlp
bnQgbG47CisJaW50IGxuLCByYXRlID0gMDsKKworCWlmICh0eXBlID09IElOVEVMX09VVFBVVF9E
REkpIHsKKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNv
ZGVyKTsKKworCQlyYXRlID0gaW50ZWxfZHAtPmxpbmtfcmF0ZTsKKwl9CiAKLQluX2VudHJpZXMg
PSBBUlJBWV9TSVpFKGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9ucyk7Ci0JZGRpX3RyYW5zbGF0
aW9ucyA9IGljbF9tZ19waHlfZGRpX3RyYW5zbGF0aW9uczsKKwlkZGlfdHJhbnNsYXRpb25zID0g
aWNsX2dldF9tZ19idWZfdHJhbnMoZGV2X3ByaXYsIHR5cGUsIHJhdGUsCisJCQkJCQkmbl9lbnRy
aWVzKTsKIAkvKiBUaGUgdGFibGUgZG9lcyBub3QgaGF2ZSB2YWx1ZXMgZm9yIGxldmVsIDMgYW5k
IGxldmVsIDkuICovCiAJaWYgKGxldmVsID49IG5fZW50cmllcyB8fCBsZXZlbCA9PSAzIHx8IGxl
dmVsID09IDkpIHsKIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCkBAIC0yNTExLDcgKzI1
NjMsOCBAQCBzdGF0aWMgdm9pZCBpY2xfZGRpX3Zzd2luZ19zZXF1ZW5jZShzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwKIAlpZiAoaW50ZWxfcGh5X2lzX2NvbWJvKGRldl9wcml2LCBwaHkp
KQogCQlpY2xfY29tYm9fcGh5X2RkaV92c3dpbmdfc2VxdWVuY2UoZW5jb2RlciwgbGV2ZWwsIHR5
cGUpOwogCWVsc2UKLQkJaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29kZXIsIGxp
bmtfY2xvY2ssIGxldmVsKTsKKwkJaWNsX21nX3BoeV9kZGlfdnN3aW5nX3NlcXVlbmNlKGVuY29k
ZXIsIGxpbmtfY2xvY2ssIGxldmVsLAorCQkJCQkgICAgICAgdHlwZSk7CiB9CiAKIHN0YXRpYyB2
b2lkCi0tIAoyLjI2LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeAo=
