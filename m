Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E402A0BB0
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 17:50:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63ADE6E9D4;
	Fri, 30 Oct 2020 16:50:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CE736E9D4
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 16:50:51 +0000 (UTC)
IronPort-SDR: aZayJgASuzT5rDMytfHic4CHzutRXMJj/wqpalZOlBKeeqf1Af2+YY1DvPSGNpDRSmbZjbVZV/
 XKdK4cZOKbSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="167851615"
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="167851615"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 09:50:51 -0700
IronPort-SDR: 1ANN2jO28UiB7mTojyActfcs6w5GAHtn7nvkz/tBRjo+ZA/OLRbYAI/yU4oc86h/zmA+gKKW1D
 GTniRoQNUMRw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,434,1596524400"; d="scan'208";a="362498296"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 30 Oct 2020 09:50:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 Oct 2020 18:50:48 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 30 Oct 2020 18:50:36 +0200
Message-Id: <20201030165045.5000-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
References: <20201030165045.5000-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 01/10] drm/i915: s/USHRT_MAX/U16_MAX/
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCldl
IHVzZSB1MTYgZm9yIHRoZSB3YXRlcm1hcmtzIHNvIGxldCdzIHN3aXRjaCBmcm9tClVTSFJUX01B
WCB0byBVMTZfTUFYIGZvciBjb25zaXN0ZW5jeS4KClNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfcG0uYyB8IDQ0ICsrKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDIyIGRlbGV0aW9ucygtKQoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pbnRlbF9wbS5jCmluZGV4IGY1NDM3NWIxMTk2NC4uNzVkMjMyMmNkNDU2IDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMKQEAgLTExNDEsNyArMTE0MSw3IEBAIHN0YXRpYyB1MTYgZzR4X2Nv
bXB1dGVfd20oY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJdW5z
aWduZWQgaW50IGNsb2NrLCBodG90YWwsIGNwcCwgd2lkdGgsIHdtOwogCiAJaWYgKGxhdGVuY3kg
PT0gMCkKLQkJcmV0dXJuIFVTSFJUX01BWDsKKwkJcmV0dXJuIFUxNl9NQVg7CiAKIAlpZiAoIWlu
dGVsX3dtX3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUpKQogCQlyZXR1cm4g
MDsKQEAgLTExODcsNyArMTE4Nyw3IEBAIHN0YXRpYyB1MTYgZzR4X2NvbXB1dGVfd20oY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAKIAl3bSA9IERJVl9ST1VORF9V
UCh3bSwgNjQpICsgMjsKIAotCXJldHVybiBtaW5fdCh1bnNpZ25lZCBpbnQsIHdtLCBVU0hSVF9N
QVgpOworCXJldHVybiBtaW5fdCh1bnNpZ25lZCBpbnQsIHdtLCBVMTZfTUFYKTsKIH0KIAogc3Rh
dGljIGJvb2wgZzR4X3Jhd19wbGFuZV93bV9zZXQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUsCkBAIC0xMjcyLDE3ICsxMjcyLDE3IEBAIHN0YXRpYyBib29sIGc0eF9yYXdfcGxh
bmVfd21fY29tcHV0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwKIAkJICog
Y2FuIGFsd2F5cyBqdXN0IGRpc2FibGUgaXRzIHVzZS4KIAkJICovCiAJCWlmICh3bSA+IG1heF93
bSkKLQkJCXdtID0gVVNIUlRfTUFYOworCQkJd20gPSBVMTZfTUFYOwogCiAJCWRpcnR5IHw9IHJh
dy0+ZmJjICE9IHdtOwogCQlyYXctPmZiYyA9IHdtOwogCX0KIAogCS8qIG1hcmsgd2F0ZXJtYXJr
cyBhcyBpbnZhbGlkICovCi0JZGlydHkgfD0gZzR4X3Jhd19wbGFuZV93bV9zZXQoY3J0Y19zdGF0
ZSwgbGV2ZWwsIHBsYW5lX2lkLCBVU0hSVF9NQVgpOworCWRpcnR5IHw9IGc0eF9yYXdfcGxhbmVf
d21fc2V0KGNydGNfc3RhdGUsIGxldmVsLCBwbGFuZV9pZCwgVTE2X01BWCk7CiAKIAlpZiAocGxh
bmVfaWQgPT0gUExBTkVfUFJJTUFSWSkKLQkJZGlydHkgfD0gZzR4X3Jhd19mYmNfd21fc2V0KGNy
dGNfc3RhdGUsIGxldmVsLCBVU0hSVF9NQVgpOworCQlkaXJ0eSB8PSBnNHhfcmF3X2ZiY193bV9z
ZXQoY3J0Y19zdGF0ZSwgbGV2ZWwsIFUxNl9NQVgpOwogCiAgb3V0OgogCWlmIChkaXJ0eSkgewpA
QCAtMTMzMiwyMSArMTMzMiwyMSBAQCBzdGF0aWMgdm9pZCBnNHhfaW52YWxpZGF0ZV93bXMoc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCiAJCWVudW0gcGxhbmVfaWQgcGxhbmVfaWQ7CiAKIAkJZm9y
X2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkKLQkJCXdtX3N0YXRlLT53bS5w
bGFuZVtwbGFuZV9pZF0gPSBVU0hSVF9NQVg7CisJCQl3bV9zdGF0ZS0+d20ucGxhbmVbcGxhbmVf
aWRdID0gVTE2X01BWDsKIAl9CiAKIAlpZiAobGV2ZWwgPD0gRzRYX1dNX0xFVkVMX1NSKSB7CiAJ
CXdtX3N0YXRlLT5jeHNyID0gZmFsc2U7Ci0JCXdtX3N0YXRlLT5zci5jdXJzb3IgPSBVU0hSVF9N
QVg7Ci0JCXdtX3N0YXRlLT5zci5wbGFuZSA9IFVTSFJUX01BWDsKLQkJd21fc3RhdGUtPnNyLmZi
YyA9IFVTSFJUX01BWDsKKwkJd21fc3RhdGUtPnNyLmN1cnNvciA9IFUxNl9NQVg7CisJCXdtX3N0
YXRlLT5zci5wbGFuZSA9IFUxNl9NQVg7CisJCXdtX3N0YXRlLT5zci5mYmMgPSBVMTZfTUFYOwog
CX0KIAogCWlmIChsZXZlbCA8PSBHNFhfV01fTEVWRUxfSFBMTCkgewogCQl3bV9zdGF0ZS0+aHBs
bF9lbiA9IGZhbHNlOwotCQl3bV9zdGF0ZS0+aHBsbC5jdXJzb3IgPSBVU0hSVF9NQVg7Ci0JCXdt
X3N0YXRlLT5ocGxsLnBsYW5lID0gVVNIUlRfTUFYOwotCQl3bV9zdGF0ZS0+aHBsbC5mYmMgPSBV
U0hSVF9NQVg7CisJCXdtX3N0YXRlLT5ocGxsLmN1cnNvciA9IFUxNl9NQVg7CisJCXdtX3N0YXRl
LT5ocGxsLnBsYW5lID0gVTE2X01BWDsKKwkJd21fc3RhdGUtPmhwbGwuZmJjID0gVTE2X01BWDsK
IAl9CiB9CiAKQEAgLTE2NjUsNyArMTY2NSw3IEBAIHN0YXRpYyB1MTYgdmx2X2NvbXB1dGVfd21f
bGV2ZWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsCiAJdW5zaWdu
ZWQgaW50IGNsb2NrLCBodG90YWwsIGNwcCwgd2lkdGgsIHdtOwogCiAJaWYgKGRldl9wcml2LT53
bS5wcmlfbGF0ZW5jeVtsZXZlbF0gPT0gMCkKLQkJcmV0dXJuIFVTSFJUX01BWDsKKwkJcmV0dXJu
IFUxNl9NQVg7CiAKIAlpZiAoIWludGVsX3dtX3BsYW5lX3Zpc2libGUoY3J0Y19zdGF0ZSwgcGxh
bmVfc3RhdGUpKQogCQlyZXR1cm4gMDsKQEAgLTE2ODgsNyArMTY4OCw3IEBAIHN0YXRpYyB1MTYg
dmx2X2NvbXB1dGVfd21fbGV2ZWwoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNf
c3RhdGUsCiAJCQkJICAgIGRldl9wcml2LT53bS5wcmlfbGF0ZW5jeVtsZXZlbF0gKiAxMCk7CiAJ
fQogCi0JcmV0dXJuIG1pbl90KHVuc2lnbmVkIGludCwgd20sIFVTSFJUX01BWCk7CisJcmV0dXJu
IG1pbl90KHVuc2lnbmVkIGludCwgd20sIFUxNl9NQVgpOwogfQogCiBzdGF0aWMgYm9vbCB2bHZf
bmVlZF9zcHJpdGUwX2ZpZm9fd29ya2Fyb3VuZCh1bnNpZ25lZCBpbnQgYWN0aXZlX3BsYW5lcykK
QEAgLTE3OTAsMTcgKzE3OTAsMTcgQEAgc3RhdGljIHZvaWQgdmx2X2ludmFsaWRhdGVfd21zKHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjLAogCQllbnVtIHBsYW5lX2lkIHBsYW5lX2lkOwogCiAJCWZv
cl9lYWNoX3BsYW5lX2lkX29uX2NydGMoY3J0YywgcGxhbmVfaWQpCi0JCQl3bV9zdGF0ZS0+d21b
bGV2ZWxdLnBsYW5lW3BsYW5lX2lkXSA9IFVTSFJUX01BWDsKKwkJCXdtX3N0YXRlLT53bVtsZXZl
bF0ucGxhbmVbcGxhbmVfaWRdID0gVTE2X01BWDsKIAotCQl3bV9zdGF0ZS0+c3JbbGV2ZWxdLmN1
cnNvciA9IFVTSFJUX01BWDsKLQkJd21fc3RhdGUtPnNyW2xldmVsXS5wbGFuZSA9IFVTSFJUX01B
WDsKKwkJd21fc3RhdGUtPnNyW2xldmVsXS5jdXJzb3IgPSBVMTZfTUFYOworCQl3bV9zdGF0ZS0+
c3JbbGV2ZWxdLnBsYW5lID0gVTE2X01BWDsKIAl9CiB9CiAKIHN0YXRpYyB1MTYgdmx2X2ludmVy
dF93bV92YWx1ZSh1MTYgd20sIHUxNiBmaWZvX3NpemUpCiB7CiAJaWYgKHdtID4gZmlmb19zaXpl
KQotCQlyZXR1cm4gVVNIUlRfTUFYOworCQlyZXR1cm4gVTE2X01BWDsKIAllbHNlCiAJCXJldHVy
biBmaWZvX3NpemUgLSB3bTsKIH0KQEAgLTE4NTQsNyArMTg1NCw3IEBAIHN0YXRpYyBib29sIHZs
dl9yYXdfcGxhbmVfd21fY29tcHV0ZShzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0
ZSwKIAl9CiAKIAkvKiBtYXJrIGFsbCBoaWdoZXIgbGV2ZWxzIGFzIGludmFsaWQgKi8KLQlkaXJ0
eSB8PSB2bHZfcmF3X3BsYW5lX3dtX3NldChjcnRjX3N0YXRlLCBsZXZlbCwgcGxhbmVfaWQsIFVT
SFJUX01BWCk7CisJZGlydHkgfD0gdmx2X3Jhd19wbGFuZV93bV9zZXQoY3J0Y19zdGF0ZSwgbGV2
ZWwsIHBsYW5lX2lkLCBVMTZfTUFYKTsKIAogb3V0OgogCWlmIChkaXJ0eSkKQEAgLTY0OTIsOCAr
NjQ5Miw4IEBAIHZvaWQgZzR4X3dtX2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYpCiAJb3V0OgogCQlmb3JfZWFjaF9wbGFuZV9pZF9vbl9jcnRjKGNydGMsIHBs
YW5lX2lkKQogCQkJZzR4X3Jhd19wbGFuZV93bV9zZXQoY3J0Y19zdGF0ZSwgbGV2ZWwsCi0JCQkJ
CSAgICAgcGxhbmVfaWQsIFVTSFJUX01BWCk7Ci0JCWc0eF9yYXdfZmJjX3dtX3NldChjcnRjX3N0
YXRlLCBsZXZlbCwgVVNIUlRfTUFYKTsKKwkJCQkJICAgICBwbGFuZV9pZCwgVTE2X01BWCk7CisJ
CWc0eF9yYXdfZmJjX3dtX3NldChjcnRjX3N0YXRlLCBsZXZlbCwgVTE2X01BWCk7CiAKIAkJY3J0
Y19zdGF0ZS0+d20uZzR4Lm9wdGltYWwgPSAqYWN0aXZlOwogCQljcnRjX3N0YXRlLT53bS5nNHgu
aW50ZXJtZWRpYXRlID0gKmFjdGl2ZTsKQEAgLTY2NTIsNyArNjY1Miw3IEBAIHZvaWQgdmx2X3dt
X2dldF9od19zdGF0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCiAKIAkJZm9y
X2VhY2hfcGxhbmVfaWRfb25fY3J0YyhjcnRjLCBwbGFuZV9pZCkKIAkJCXZsdl9yYXdfcGxhbmVf
d21fc2V0KGNydGNfc3RhdGUsIGxldmVsLAotCQkJCQkgICAgIHBsYW5lX2lkLCBVU0hSVF9NQVgp
OworCQkJCQkgICAgIHBsYW5lX2lkLCBVMTZfTUFYKTsKIAkJdmx2X2ludmFsaWRhdGVfd21zKGNy
dGMsIGFjdGl2ZSwgbGV2ZWwpOwogCiAJCWNydGNfc3RhdGUtPndtLnZsdi5vcHRpbWFsID0gKmFj
dGl2ZTsKLS0gCjIuMjYuMgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
