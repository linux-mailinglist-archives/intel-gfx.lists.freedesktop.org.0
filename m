Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E14B21B471
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jul 2020 13:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28C7C6EBF1;
	Fri, 10 Jul 2020 11:59:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 030476EBF1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jul 2020 11:59:55 +0000 (UTC)
IronPort-SDR: eJixCEmSgVPIrccBU6N7klUku+yz2Z4oRuFQ3L5HgX+Gt63vLOHL3o/RbmGREjlMuR+KGAJAC+
 v8ZYSpgksyNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9677"; a="149653706"
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="149653706"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:55 -0700
IronPort-SDR: XHMf7tQ1Eh5yS1j3RyeL1gM8CPNoPaC8yRnhVYqKrVTaweqHEiHKMHgUq50rahXR4rbWgnM4av
 kc4D4jK4yXLA==
X-IronPort-AV: E=Sophos;i="5.75,335,1589266800"; d="scan'208";a="458257500"
Received: from nmartino-mobl1.ger.corp.intel.com (HELO
 mwahaha-bdw.ger.corp.intel.com) ([10.255.207.224])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2020 04:59:52 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 10 Jul 2020 12:57:18 +0100
Message-Id: <20200710115757.290984-22-matthew.auld@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200710115757.290984-1-matthew.auld@intel.com>
References: <20200710115757.290984-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 21/60] drm/i915/dg1: Update voltage swing tables
 for DP
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KCkRHMSdzIHZzd2lu
ZyB0YWJsZXMgYXJlIHRoZSBzYW1lIGZvciBlRFAgYW5kIEhETUkgYnV0IGhhdmUgc2xpZ2h0CmRp
ZmZlcmVuY2VzIGZyb20gSUNML1RHTCBmb3IgRFAuCgpCc3BlYzogNDkyOTEKQ2M6IENsaW50b24g
VGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpDYzogUmFkaGFrcmlzaG5hIFNyaXBhZGEgPHJh
ZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hp
IDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kZGkuYyB8IDM0ICsrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNo
YW5nZWQsIDM0IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGkuYwppbmRleCAyYzQ4NGI1NWJjZGYuLjRhMWE4OTYwOThmOSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC01ODIsNiArNTgyLDM0IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgY25sX2RkaV9idWZfdHJhbnMgZWhsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2RwW10gPSB7CiAJeyAweDYsIDB4N0YsIDB4M0YsIDB4MDAsIDB4MDAgfSwJLyogOTAwICAg
OTAwICAgICAgMC4wICAgKi8KIH07CiAKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgY25sX2RkaV9idWZf
dHJhbnMgZGcxX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRpb25zX2RwX2hicltdID0geworCQkJCQkJ
LyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KKwl7IDB4QSwgMHgzMiwgMHgzRiwgMHgwMCwgMHgw
MCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLworCXsgMHhBLCAweDQ4LCAweDM1LCAweDAw
LCAweDBBIH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCisJeyAweEMsIDB4NjMsIDB4MkYs
IDB4MDAsIDB4MTAgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAgKi8KKwl7IDB4NiwgMHg3Riwg
MHgyQywgMHgwMCwgMHgxMyB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLworCXsgMHhBLCAw
eDQzLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovCisJeyAw
eEMsIDB4NjAsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAwICAgNzAwICAgICAgMi45ICAgKi8K
Kwl7IDB4NiwgMHg3RiwgMHgzMCwgMHgwMCwgMHgwRiB9LAkvKiA1MDAgICA5MDAgICAgICA1LjEg
ICAqLworCXsgMHhDLCAweDYwLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDY1MCAgIDcwMCAgICAg
IDAuNiAgICovCisJeyAweDYsIDB4N0YsIDB4MzcsIDB4MDAsIDB4MDggfSwJLyogNjAwICAgOTAw
ICAgICAgMy41ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5MDAg
ICA5MDAgICAgICAwLjAgICAqLworfTsKKworc3RhdGljIGNvbnN0IHN0cnVjdCBjbmxfZGRpX2J1
Zl90cmFucyBkZzFfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBfaGJyMltdID0geworCQkJ
CQkJLyogTlQgbVYgVHJhbnMgbVYgZGIgICAgKi8KKwl7IDB4QSwgMHgzMiwgMHgzRiwgMHgwMCwg
MHgwMCB9LAkvKiAzNTAgICAzNTAgICAgICAwLjAgICAqLworCXsgMHhBLCAweDQ4LCAweDM1LCAw
eDAwLCAweDBBIH0sCS8qIDM1MCAgIDUwMCAgICAgIDMuMSAgICovCisJeyAweEMsIDB4NjMsIDB4
MkYsIDB4MDAsIDB4MTAgfSwJLyogMzUwICAgNzAwICAgICAgNi4wICAgKi8KKwl7IDB4NiwgMHg3
RiwgMHgyQywgMHgwMCwgMHgxMyB9LAkvKiAzNTAgICA5MDAgICAgICA4LjIgICAqLworCXsgMHhB
LCAweDQzLCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDUwMCAgIDUwMCAgICAgIDAuMCAgICovCisJ
eyAweEMsIDB4NjAsIDB4MzYsIDB4MDAsIDB4MDkgfSwJLyogNTAwICAgNzAwICAgICAgMi45ICAg
Ki8KKwl7IDB4NiwgMHg3RiwgMHgzMCwgMHgwMCwgMHgwRiB9LAkvKiA1MDAgICA5MDAgICAgICA1
LjEgICAqLworCXsgMHhDLCAweDU4LCAweDNGLCAweDAwLCAweDAwIH0sCS8qIDY1MCAgIDcwMCAg
ICAgIDAuNiAgICovCisJeyAweDYsIDB4N0YsIDB4MzUsIDB4MDAsIDB4MEEgfSwJLyogNjAwICAg
OTAwICAgICAgMy41ICAgKi8KKwl7IDB4NiwgMHg3RiwgMHgzRiwgMHgwMCwgMHgwMCB9LAkvKiA5
MDAgICA5MDAgICAgICAwLjAgICAqLworfTsKKwogc3RydWN0IGljbF9tZ19waHlfZGRpX2J1Zl90
cmFucyB7CiAJdTMyIGNyaV90eGRlZW1waF9vdmVycmlkZV8xMV82OwogCXUzMiBjcmlfdHhkZWVt
cGhfb3ZlcnJpZGVfNV8wOwpAQCAtMTAxMiw2ICsxMDQwLDEyIEBAIGljbF9nZXRfY29tYm9fYnVm
X3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLCBpbnQgdHlwZSwgaW50IHJhdGUs
CiAJfSBlbHNlIGlmICh0eXBlID09IElOVEVMX09VVFBVVF9FRFAgJiYgZGV2X3ByaXYtPnZidC5l
ZHAubG93X3Zzd2luZykgewogCQkqbl9lbnRyaWVzID0gQVJSQVlfU0laRShpY2xfY29tYm9fcGh5
X2RkaV90cmFuc2xhdGlvbnNfZWRwX2hicjIpOwogCQlyZXR1cm4gaWNsX2NvbWJvX3BoeV9kZGlf
dHJhbnNsYXRpb25zX2VkcF9oYnIyOworCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSAmJiBy
YXRlID4gMjcwMDAwKSB7CisJCSpuX2VudHJpZXMgPSBBUlJBWV9TSVpFKGRnMV9jb21ib19waHlf
ZGRpX3RyYW5zbGF0aW9uc19kcF9oYnIyKTsKKwkJcmV0dXJuIGRnMV9jb21ib19waHlfZGRpX3Ry
YW5zbGF0aW9uc19kcF9oYnIyOworCX0gZWxzZSBpZiAoSVNfREcxKGRldl9wcml2KSkgeworCQkq
bl9lbnRyaWVzID0gQVJSQVlfU0laRShkZzFfY29tYm9fcGh5X2RkaV90cmFuc2xhdGlvbnNfZHBf
aGJyKTsKKwkJcmV0dXJuIGRnMV9jb21ib19waHlfZGRpX3RyYW5zbGF0aW9uc19kcF9oYnI7CiAJ
fQogCiAJKm5fZW50cmllcyA9IEFSUkFZX1NJWkUoaWNsX2NvbWJvX3BoeV9kZGlfdHJhbnNsYXRp
b25zX2RwX2hicjIpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZngK
