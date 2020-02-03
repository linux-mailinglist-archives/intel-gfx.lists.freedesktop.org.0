Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C26D6150973
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2020 16:14:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB13F6EC22;
	Mon,  3 Feb 2020 15:14:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D5A56EC22;
 Mon,  3 Feb 2020 15:14:32 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Feb 2020 07:14:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,398,1574150400"; d="scan'208";a="278765682"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 03 Feb 2020 07:14:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 03 Feb 2020 17:14:29 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon,  3 Feb 2020 17:13:32 +0200
Message-Id: <20200203151343.14378-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
References: <20200203151343.14378-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 15/26] drm/dp: Add drm_dp_downstream_{min,
 max}_tmds_clock()
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkFk
ZCBoZWxwZXJzIHRvIGdldCB0aGUgVE1EUyBjbG9jayBsaW1pdHMgZm9yIEhETUkvRFZJIGRvd25z
dHJlYW0KZmFjaW5nIHBvcnRzLgoKU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vZHJtX2RwX2hl
bHBlci5jIHwgMTE2ICsrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrCiBpbmNsdWRlL2Ry
bS9kcm1fZHBfaGVscGVyLmggICAgIHwgICA2ICsrCiAyIGZpbGVzIGNoYW5nZWQsIDEyMiBpbnNl
cnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKaW5kZXggMGFlNjg0OTc0NGMyLi4zMWNh
NTUwNDY3ZWQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfaGVscGVyLmMKKysr
IGIvZHJpdmVycy9ncHUvZHJtL2RybV9kcF9oZWxwZXIuYwpAQCAtNDUwLDYgKzQ1MCwxMTQgQEAg
aW50IGRybV9kcF9kb3duc3RyZWFtX21heF9kb3RjbG9jayhjb25zdCB1OCBkcGNkW0RQX1JFQ0VJ
VkVSX0NBUF9TSVpFXSwKIH0KIEVYUE9SVF9TWU1CT0woZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2Rv
dGNsb2NrKTsKIAorLyoqCisgKiBkcm1fZHBfZG93bnN0cmVhbV9tYXhfdG1kc19jbG9jaygpIC0g
ZXh0cmFjdCBkb3duc3RyZWFtIGZhY2luZyBwb3J0IG1heCBUTURTIGNsb2NrCisgKiBAZHBjZDog
RGlzcGxheVBvcnQgY29uZmlndXJhdGlvbiBkYXRhCisgKiBAcG9ydF9jYXA6IHBvcnQgY2FwYWJp
bGl0aWVzCisgKiBAZWRpZDogRURJRAorICoKKyAqIFJldHVybnMgSERNSS9EVkkgZG93bnN0cmVh
bSBmYWNpbmcgcG9ydCBtYXggVE1EUyBjbG9jayBpbiBrSHogb24gc3VjY2VzcywKKyAqIG9yIDAg
aWYgbWF4IFRNRFMgY2xvY2sgbm90IGRlZmluZWQKKyAqLworaW50IGRybV9kcF9kb3duc3RyZWFt
X21heF90bWRzX2Nsb2NrKGNvbnN0IHU4IGRwY2RbRFBfUkVDRUlWRVJfQ0FQX1NJWkVdLAorCQkJ
CSAgICAgY29uc3QgdTggcG9ydF9jYXBbNF0sCisJCQkJICAgICBjb25zdCBzdHJ1Y3QgZWRpZCAq
ZWRpZCkKK3sKKwlpZiAoIWRybV9kcF9pc19icmFuY2goZHBjZCkpCisJCXJldHVybiAwOworCisJ
aWYgKGRwY2RbRFBfRFBDRF9SRVZdIDwgMHgxMSkgeworCQlzd2l0Y2ggKGRwY2RbRFBfRE9XTlNU
UkVBTVBPUlRfUFJFU0VOVF0gJiBEUF9EV05fU1RSTV9QT1JUX1RZUEVfTUFTSykgeworCQljYXNl
IERQX0RXTl9TVFJNX1BPUlRfVFlQRV9UTURTOgorCQkJcmV0dXJuIDE2NTAwMDsKKwkJZGVmYXVs
dDoKKwkJCXJldHVybiAwOworCQl9CisJfQorCisJc3dpdGNoIChwb3J0X2NhcFswXSAmIERQX0RT
X1BPUlRfVFlQRV9NQVNLKSB7CisJY2FzZSBEUF9EU19QT1JUX1RZUEVfRFBfRFVBTE1PREU6CisJ
CWlmIChpc19lZGlkX2RpZ2l0YWxfaW5wdXRfZHAoZWRpZCkpCisJCQlyZXR1cm4gMDsKKwkJLyoK
KwkJICogSXQncyBsZWZ0IHVwIHRvIHRoZSBkcml2ZXIgdG8gY2hlY2sgdGhlCisJCSAqIERQIGR1
YWwgbW9kZSBhZGFwdGVyJ3MgbWF4IFRNRFMgY2xvY2suCisJCSAqCisJCSAqIFVuZm9ydHVuYXRs
ZXkgaXQgbG9va3MgbGlrZSBicmFuY2ggZGV2aWNlcworCQkgKiBtYXkgbm90IGZvcmR3YXJkIHRo
YXQgdGhlIERQIGR1YWwgbW9kZSBpMmMKKwkJICogYWNjZXNzIHNvIHdlIGp1c3QgdXN1YWxseSBn
ZXQgaTJjIG5hayA6KAorCQkgKi8KKwkJLyogZmFsbCB0aHJvdWdoICovCisJY2FzZSBEUF9EU19Q
T1JUX1RZUEVfSERNSToKKwkJIC8qCisJCSAgKiBXZSBzaG91bGQgcGVyaGFwcyBhc3N1bWUgMTY1
IE1IeiB3aGVuIGRldGFpbGVkIGNhcAorCQkgICogaW5mbyBpcyBub3QgYXZhaWxhYmxlLiBCdXQg
bG9va3MgbGlrZSBtYW55IHR5cGljYWwKKwkJICAqIGJyYW5jaCBkZXZpY2VzIGZhbGwgaW50byB0
aGF0IGNhdGVnb3J5IGFuZCBzbyB3ZSdkCisJCSAgKiBwcm9iYWJseSBlbmQgdXAgd2l0aCB1c2Vy
cyBjb21wbGFpbmluZyB0aGF0IHRoZXkgY2FuJ3QKKwkJICAqIGdldCBoaWdoIHJlc29sdXRpb24g
bW9kZXMgd2l0aCB0aGVpciBmYXZvcml0ZSBkb25nbGUuCisJCSAgKgorCQkgICogU28gbGV0J3Mg
bGltaXQgdG8gMzAwIE1IeiBpbnN0ZWFkIHNpbmNlIERQQ0QgMS40CisJCSAgKiBIRE1JIDIuMCBE
RlBzIGFyZSByZXF1aXJlZCB0byBoYXZlIHRoZSBkZXRhaWxlZCBjYXAKKwkJICAqIGluZm8uIFNv
IGl0J3MgbW9yZSBsaWtlbHkgd2UncmUgZGVhbGluZyB3aXRoIGEgSERNSSAxLjQKKwkJICAqIGNv
bXBhdGlibGUqIGRldmljZSBoZXJlLgorCQkgICovCisJCWlmICgoZHBjZFtEUF9ET1dOU1RSRUFN
UE9SVF9QUkVTRU5UXSAmIERQX0RFVEFJTEVEX0NBUF9JTkZPX0FWQUlMQUJMRSkgPT0gMCkKKwkJ
CXJldHVybiAzMDAwMDA7CisJCXJldHVybiBwb3J0X2NhcFsxXSAqIDI1MDA7CisJY2FzZSBEUF9E
U19QT1JUX1RZUEVfRFZJOgorCQlpZiAoKGRwY2RbRFBfRE9XTlNUUkVBTVBPUlRfUFJFU0VOVF0g
JiBEUF9ERVRBSUxFRF9DQVBfSU5GT19BVkFJTEFCTEUpID09IDApCisJCQlyZXR1cm4gMTY1MDAw
OworCQkvKiBGSVhNRSB3aGF0IHRvIGRvIGFib3V0IERWSSBkdWFsIGxpbms/ICovCisJCXJldHVy
biBwb3J0X2NhcFsxXSAqIDI1MDA7CisJZGVmYXVsdDoKKwkJcmV0dXJuIDA7CisJfQorfQorRVhQ
T1JUX1NZTUJPTChkcm1fZHBfZG93bnN0cmVhbV9tYXhfdG1kc19jbG9jayk7CisKKy8qKgorICog
ZHJtX2RwX2Rvd25zdHJlYW1fbWluX3RtZHNfY2xvY2soKSAtIGV4dHJhY3QgZG93bnN0cmVhbSBm
YWNpbmcgcG9ydCBtaW4gVE1EUyBjbG9jaworICogQGRwY2Q6IERpc3BsYXlQb3J0IGNvbmZpZ3Vy
YXRpb24gZGF0YQorICogQHBvcnRfY2FwOiBwb3J0IGNhcGFiaWxpdGllcworICogQGVkaWQ6IEVE
SUQKKyAqCisgKiBSZXR1cm5zIEhETUkvRFZJIGRvd25zdHJlYW0gZmFjaW5nIHBvcnQgbWluIFRN
RFMgY2xvY2sgaW4ga0h6IG9uIHN1Y2Nlc3MsCisgKiBvciAwIGlmIG1heCBUTURTIGNsb2NrIG5v
dCBkZWZpbmVkCisgKi8KK2ludCBkcm1fZHBfZG93bnN0cmVhbV9taW5fdG1kc19jbG9jayhjb25z
dCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKKwkJCQkgICAgIGNvbnN0IHU4IHBvcnRf
Y2FwWzRdLAorCQkJCSAgICAgY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQpCit7CisJaWYgKCFkcm1f
ZHBfaXNfYnJhbmNoKGRwY2QpKQorCQlyZXR1cm4gMDsKKworCWlmIChkcGNkW0RQX0RQQ0RfUkVW
XSA8IDB4MTEpIHsKKwkJc3dpdGNoIChkcGNkW0RQX0RPV05TVFJFQU1QT1JUX1BSRVNFTlRdICYg
RFBfRFdOX1NUUk1fUE9SVF9UWVBFX01BU0spIHsKKwkJY2FzZSBEUF9EV05fU1RSTV9QT1JUX1RZ
UEVfVE1EUzoKKwkJCXJldHVybiAyNTAwMDsKKwkJZGVmYXVsdDoKKwkJCXJldHVybiAwOworCQl9
CisJfQorCisJc3dpdGNoIChwb3J0X2NhcFswXSAmIERQX0RTX1BPUlRfVFlQRV9NQVNLKSB7CisJ
Y2FzZSBEUF9EU19QT1JUX1RZUEVfRFBfRFVBTE1PREU6CisJCWlmIChpc19lZGlkX2RpZ2l0YWxf
aW5wdXRfZHAoZWRpZCkpCisJCQlyZXR1cm4gMDsKKwkJLyogZmFsbCB0aHJvdWdoICovCisJY2Fz
ZSBEUF9EU19QT1JUX1RZUEVfRFZJOgorCWNhc2UgRFBfRFNfUE9SVF9UWVBFX0hETUk6CisJCS8q
CisJCSAqIFVuY2xlYXIgd2hldGhlciB0aGUgcHJvdG9jb2wgY29udmVydGVyIGNvdWxkCisJCSAq
IHV0aWxpemUgcGl4ZWwgcmVwbGljYXRpb24uIEFzc3VtZSBpdCB3b24ndC4KKwkJICovCisJCXJl
dHVybiAyNTAwMDsKKwlkZWZhdWx0OgorCQlyZXR1cm4gMDsKKwl9Cit9CitFWFBPUlRfU1lNQk9M
KGRybV9kcF9kb3duc3RyZWFtX21pbl90bWRzX2Nsb2NrKTsKKwogLyoqCiAgICogZHJtX2RwX2Rv
d25zdHJlYW1fbWF4X2JwYygpIC0gZXh0cmFjdCBkb3duc3RyZWFtIGZhY2luZyBwb3J0IG1heAog
ICAqICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGJpdHMgcGVyIGNvbXBvbmVudApAQCAt
NTk1LDYgKzcwMywxNCBAQCB2b2lkIGRybV9kcF9kb3duc3RyZWFtX2RlYnVnKHN0cnVjdCBzZXFf
ZmlsZSAqbSwKIAkJaWYgKGNsayA+IDApCiAJCQlzZXFfcHJpbnRmKG0sICJcdFx0TWF4IGRvdCBj
bG9jazogJWQga0h6XG4iLCBjbGspOwogCisJCWNsayA9IGRybV9kcF9kb3duc3RyZWFtX21heF90
bWRzX2Nsb2NrKGRwY2QsIHBvcnRfY2FwLCBlZGlkKTsKKwkJaWYgKGNsayA+IDApCisJCQlzZXFf
cHJpbnRmKG0sICJcdFx0TWF4IFRNRFMgY2xvY2s6ICVkIGtIelxuIiwgY2xrKTsKKworCQljbGsg
PSBkcm1fZHBfZG93bnN0cmVhbV9taW5fdG1kc19jbG9jayhkcGNkLCBwb3J0X2NhcCwgZWRpZCk7
CisJCWlmIChjbGsgPiAwKQorCQkJc2VxX3ByaW50ZihtLCAiXHRcdE1pbiBUTURTIGNsb2NrOiAl
ZCBrSHpcbiIsIGNsayk7CisKIAkJYnBjID0gZHJtX2RwX2Rvd25zdHJlYW1fbWF4X2JwYyhkcGNk
LCBwb3J0X2NhcCwgZWRpZCk7CiAKIAkJaWYgKGJwYyA+IDApCmRpZmYgLS1naXQgYS9pbmNsdWRl
L2RybS9kcm1fZHBfaGVscGVyLmggYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKaW5kZXgg
MzljMWZhZjdkZWRlLi44OTY4M2EzYTlhZjEgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvZHJtL2RybV9k
cF9oZWxwZXIuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fZHBfaGVscGVyLmgKQEAgLTE0ODIsNiAr
MTQ4MiwxMiBAQCBib29sIGRybV9kcF9kb3duc3RyZWFtX2lzX3RtZHMoY29uc3QgdTggZHBjZFtE
UF9SRUNFSVZFUl9DQVBfU0laRV0sCiAJCQkgICAgICAgY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQp
OwogaW50IGRybV9kcF9kb3duc3RyZWFtX21heF9kb3RjbG9jayhjb25zdCB1OCBkcGNkW0RQX1JF
Q0VJVkVSX0NBUF9TSVpFXSwKIAkJCQkgICBjb25zdCB1OCBwb3J0X2NhcFs0XSk7CitpbnQgZHJt
X2RwX2Rvd25zdHJlYW1fbWF4X3RtZHNfY2xvY2soY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9D
QVBfU0laRV0sCisJCQkJICAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSwKKwkJCQkgICAgIGNvbnN0
IHN0cnVjdCBlZGlkICplZGlkKTsKK2ludCBkcm1fZHBfZG93bnN0cmVhbV9taW5fdG1kc19jbG9j
ayhjb25zdCB1OCBkcGNkW0RQX1JFQ0VJVkVSX0NBUF9TSVpFXSwKKwkJCQkgICAgIGNvbnN0IHU4
IHBvcnRfY2FwWzRdLAorCQkJCSAgICAgY29uc3Qgc3RydWN0IGVkaWQgKmVkaWQpOwogaW50IGRy
bV9kcF9kb3duc3RyZWFtX21heF9icGMoY29uc3QgdTggZHBjZFtEUF9SRUNFSVZFUl9DQVBfU0la
RV0sCiAJCQkgICAgICBjb25zdCB1OCBwb3J0X2NhcFs0XSwKIAkJCSAgICAgIGNvbnN0IHN0cnVj
dCBlZGlkICplZGlkKTsKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
