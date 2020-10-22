Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C048E296723
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 00:25:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26B716E419;
	Thu, 22 Oct 2020 22:25:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B0A16E40B
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Oct 2020 22:25:44 +0000 (UTC)
IronPort-SDR: QAsgWNVtY58OnG05e8DCVr6gp4uem/XgpVAIAdPv0a3MBvPeRDrMWLA9b7DMP0qsUBhnm/KQEp
 r6b6v0PnqElQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9782"; a="155386822"
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="155386822"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2020 15:25:42 -0700
IronPort-SDR: 2tFFJEBaqdC33r/fZ0Itzsc9BItUiyCmqEDz1+ctFDttMH0Gk+25doHIRHWPc0wvSJI4Gqlcp3
 ON+6+zUcZuBw==
X-IronPort-AV: E=Sophos;i="5.77,404,1596524400"; d="scan'208";a="534153973"
Received: from labuser-z97x-ud5h.jf.intel.com ([10.165.21.211])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-SHA;
 22 Oct 2020 15:25:42 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 22 Oct 2020 15:27:08 -0700
Message-Id: <20201022222709.29386-11-manasi.d.navare@intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20201022222709.29386-1-manasi.d.navare@intel.com>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 10/11] drm/i915/display/vrr: Set IGNORE_MSA_PAR
 state in DP Sink
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

SWYgVlJSIGlzIGVuYWJsZWQsIHRoZSBzaW5rIHNob3VsZCBpZ25vcmUgTVNBIHBhcmFtZXRlcnMK
YW5kIHJlZ2VuZXJhdGUgaW5jb21pbmcgdmlkZW8gc3RyZWFtIHdpdGhvdXQgZGVwZW5kaW5nCm9u
IHRoZXNlIHBhcmFtZXRlcnMuIEhlbmNlIHNldCB0aGUgTVNBX1RJTUlOR19QQVJfSUdOT1JFX0VO
CmJpdCBpZiBWUlIgaXMgZW5hYmxlZC4KUmVzZXQgdGhpcyBiaXQgb24gVlJSIGRpc2FibGUuCgpD
YzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+ClNpZ25lZC1vZmYtYnk6IE1h
bmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDI1ICsrKysrKysrKysrKysrKysrKysrKysr
KwogMSBmaWxlIGNoYW5nZWQsIDI1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kZGkuYwppbmRleCA1NjUxNTVhZjNmYjkuLjE5NTQ0OWRmZWMxZSAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYworKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jCkBAIC0zMzIyLDYgKzMzMjIs
MjIgQEAgaTkxNV9yZWdfdCBkcF90cF9zdGF0dXNfcmVnKHN0cnVjdCBpbnRlbF9lbmNvZGVyICpl
bmNvZGVyLAogCQlyZXR1cm4gRFBfVFBfU1RBVFVTKGVuY29kZXItPnBvcnQpOwogfQogCitzdGF0
aWMgdm9pZCBpbnRlbF9kcF9zaW5rX3NldF9tc2FfdGltaW5nX3Bhcl9pZ25vcmVfc3RhdGUoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCwKKwkJCQkJCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpjcnRjX3N0YXRlLAorCQkJCQkJCSAgYm9vbCBlbmFibGUpCit7CisJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsKKworCWlmICghY3J0
Y19zdGF0ZS0+dnJyLmVuYWJsZSkKKwkJcmV0dXJuOworCisJaWYgKGRybV9kcF9kcGNkX3dyaXRl
YigmaW50ZWxfZHAtPmF1eCwgRFBfRE9XTlNQUkVBRF9DVFJMLAorCQkJICAgICAgIGVuYWJsZSA/
IERQX01TQV9USU1JTkdfUEFSX0lHTk9SRV9FTiA6IDApIDw9IDApCisJCWRybV9kYmdfa21zKCZp
OTE1LT5kcm0sCisJCQkgICAgIkZhaWxlZCB0byBzZXQgTVNBX1RJTUlOR19QQVJfSUdOT1JFICVz
IGluIHRoZSBzaW5rXG4iLAorCQkJICAgIGVuYWJsZSA/ICJlbmFibGUiIDogImRpc2FibGUiKTsK
K30KKwogc3RhdGljIHZvaWQgaW50ZWxfZHBfc2lua19zZXRfZmVjX3JlYWR5KHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsCiAJCQkJCWNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKQogewpAQCAtMzQ5Myw2ICszNTA5LDEyIEBAIHN0YXRpYyB2b2lkIHRnbF9kZGlfcHJl
X2VuYWJsZV9kcChzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKIAkgKi8KIAlpbnRl
bF9kcF9zaW5rX3NldF9mZWNfcmVhZHkoaW50ZWxfZHAsIGNydGNfc3RhdGUpOwogCisJLyoKKwkg
KiBTaW5rIGRldmljZSBzaG91bGQgaWdub3JlIE1TQSBwYXJhbWV0ZXJzIGFuZCByZWdlbmVyYXRl
CisJICogaW5jb21pbmcgdmlkZW8gc3RyZWFtIGluIGNhc2Ugb2YgVlJSL0FkYXB0aXZlIFN5bmMK
KwkgKi8KKwlpbnRlbF9kcF9zaW5rX3NldF9tc2FfdGltaW5nX3Bhcl9pZ25vcmVfc3RhdGUoaW50
ZWxfZHAsIGNydGNfc3RhdGUsIHRydWUpOworCiAJLyoKIAkgKiA3LmkgRm9sbG93IERpc3BsYXlQ
b3J0IHNwZWNpZmljYXRpb24gdHJhaW5pbmcgc2VxdWVuY2UgKHNlZSBub3RlcyBmb3IKIAkgKiAg
ICAgZmFpbHVyZSBoYW5kbGluZykKQEAgLTQwODksNiArNDExMSw5IEBAIHN0YXRpYyB2b2lkIGlu
dGVsX2Rpc2FibGVfZGRpX2RwKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAogCS8q
IERpc2FibGUgdGhlIGRlY29tcHJlc3Npb24gaW4gRFAgU2luayAqLwogCWludGVsX2RwX3Npbmtf
c2V0X2RlY29tcHJlc3Npb25fc3RhdGUoaW50ZWxfZHAsIG9sZF9jcnRjX3N0YXRlLAogCQkJCQkg
ICAgICBmYWxzZSk7CisJLyogRGlzYWJsZSBJZ25vcmVfTVNBIGJpdCBpbiBEUCBTaW5rICovCisJ
aW50ZWxfZHBfc2lua19zZXRfbXNhX3RpbWluZ19wYXJfaWdub3JlX3N0YXRlKGludGVsX2RwLCBv
bGRfY3J0Y19zdGF0ZSwKKwkJCQkJCSAgICAgIGZhbHNlKTsKIH0KIAogc3RhdGljIHZvaWQgaW50
ZWxfZGlzYWJsZV9kZGlfaGRtaShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKLS0g
CjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
