Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C71340C86
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 19:10:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5ED236E945;
	Thu, 18 Mar 2021 18:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 365E46E945
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 18:10:43 +0000 (UTC)
IronPort-SDR: 1qGFmE9yFUvodjPI1+JhX2R+8TNAKRFyq7Q2E3HYGGPh99IdtEh2+ENIr7ebOfq+HEBopsAVwR
 A/3XXisUiNHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9927"; a="176875298"
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="176875298"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2021 11:10:42 -0700
IronPort-SDR: qkpyZ9QBwb9H3ecVDRAoYNiJdZ1xqtGpAiezS/R/b7AHxSAHXMs5sk8U8AUJrz5G9Vn5luqBbR
 H6BvO59EXsaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,259,1610438400"; d="scan'208";a="379855472"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 18 Mar 2021 11:10:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Mar 2021 20:10:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 20:10:38 +0200
Message-Id: <20210318181039.17260-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Fix pre-skl DP AUX precharge
 length
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

RnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KCkRQ
IHYxLjErIHNheXM6CiJUaGUgRGlzcGxheVBvcnQgdHJhbnNtaXR0ZXIsIHdoaWNoIGlzIHRoZSBk
cml2aW5nIGVuZCBmb3IgYSByZXF1ZXN0CiB0cmFuc2FjdGlvbiwgcHJlLWNoYXJnZXMgdGhlIEFV
WC1DSCsgYW5kIEFVWC1DSC0gdG8gYSBjb21tb24gbW9kZQogdm9sdGFnZSBieSB0cmFuc21pdHRp
bmcgMTAgdG8gMTYgY29uc2VjdXRpdmUgMOKAmXMgaW4gTWFuY2hlc3RlciBJSSBjb2RlLgogQWZ0
ZXIgdGhlIGFjdGl2ZSBwcmUtY2hhcmdlLCB0aGUgdHJhbnNtaXR0ZXIgc2VuZHMgYW4gQVVYIFN5
bmMgcGF0dGVybi4KIFRoZSBBVVggU3luYyBwYXR0ZXJuIG11c3QgYmUgYXMgZm9sbG93czoKIFN0
YXJ0IHdpdGggMTYgY29uc2VjdXRpdmUgMHMgaW4gTWFuY2hlc3Rlci1JSSBjb2RlLCB3aGljaCBy
ZXN1bHRzIGluCiBhIHRyYW5zaXRpb24gZnJvbSBsb3cgdG8gaGlnaCBpbiB0aGUgbWlkZGxlIG9m
IGVhY2ggYml0IHBlcmlvZC4KIEluY2x1ZGluZyBhY3RpdmUgcHJlLWNoYXJnZSBwdWxzZXMsIHRo
ZXJlIHNoYWxsIGJlIDI2IHRvIDMyCiBjb25zZWN1dGl2ZSAwcyBiZWZvcmUgdGhlIGVuZCBvZiB0
aGUgQVVYX1NZTkMgcGF0dGVybi4iCgpCRFcgYnNwZWMgc2F5czoKIlVzZWQgdG8gZGV0ZXJtaW5l
IHRoZSBwcmVjaGFyZ2UgdGltZSBmb3IgdGhlIEF1eCBDaGFubmVsLiBEdXJpbmcgdGhpcwogdGlt
ZSB0aGUgQXV4IENoYW5uZWwgd2lsbCBkcml2ZSB0aGUgU1lOQyBwYXR0ZXJuLiBFdmVyeSBtaWNy
b3NlY29uZAogZ2l2ZXMgb25lIGFkZGl0aW9uYWwgU1lOQyBwdWxzZSBiZXlvbmQgdGhlIGhhcmQg
Y29kZWQgMjYgU1lOQyBwdWxzZXMuCiBUaGUgdmFsdWUgaXMgdGhlIG51bWJlciBvZiBtaWNyb3Nl
Y29uZHMgdGltZXMgMi4gRGVmYXVsdCBpcyAzIGRlY2ltYWwKIHdoaWNoIGdpdmVzIDZ1cyBvZiBw
cmVjaGFyZ2Ugd2hpY2ggaXMgNiBleHRyYSBTWU4gcHVsc2VzIGZvciBhIHRvdGFsCiBvZiAzMi4i
CgpDUFQgYnNwZWMgc2F5cyB0aGUgc2FtZSB0aGluZyBhcGFydCBmcm9tOgoiLi4uIERlZmF1bHQg
aXMgNSBkZWNpbWFsIHdoaWNoIGdpdmVzIDEwdXMgb2YgcHJlY2hhcmdlIHdoaWNoIGlzIDEwCiBl
eHRyYSBTWU5DIHB1bHNlcyBmb3IgYSB0b3RhbCBvZiAzNi4iCgpTbyBpdCBsb29rcyBsaWtlIHRv
IG1hdGNoIHRoZSBtYXggb2YgMzIgb2YgdGhlIERQIHNwZWMgd2Ugc2hvdWxkIGp1c3QKYWx3YXlz
IHByb2dyYW0gdGhpcyBleHRyYSBwcmVjaGFyZ2UgdGltZSB0byAzLgoKVW5mb3J0dW5hdGVseSBn
NHgvaWJ4IGJzcGVjIGRvZXNuJ3QgaGF2ZSB0aGlzIGNsYXJpZmljYXRpb24sIGJ1dApzaW5jZSB0
aGUgY3B0IGRlZmF1bHQgd2FzIHN0aWxsIHRoZSBzYW1lIDUgYXMgZm9yIGc0eC9pYnggbGV0J3MK
YXNzdW1lIHRoZSBiZWhhdmlvdXIgd2FzIGFsd2F5cyB0aGUgc2FtZS4KClNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYyB8IDkgKystLS0tLS0tCiAx
IGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jCmluZGV4IGVhZWJmMTIzMzEwYS4u
ZDU0NDNkNmQ2MTIzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2F1eC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
YXV4LmMKQEAgLTEyNiwxMiArMTI2LDcgQEAgc3RhdGljIHUzMiBnNHhfZ2V0X2F1eF9zZW5kX2N0
bChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAogCXN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQg
KmRpZ19wb3J0ID0gZHBfdG9fZGlnX3BvcnQoaW50ZWxfZHApOwogCXN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICpkZXZfcHJpdiA9CiAJCQl0b19pOTE1KGRpZ19wb3J0LT5iYXNlLmJhc2UuZGV2KTsK
LQl1MzIgcHJlY2hhcmdlLCB0aW1lb3V0OwotCi0JaWYgKElTX0dFTihkZXZfcHJpdiwgNikpCi0J
CXByZWNoYXJnZSA9IDM7Ci0JZWxzZQotCQlwcmVjaGFyZ2UgPSA1OworCXUzMiB0aW1lb3V0Owog
CiAJaWYgKElTX0JST0FEV0VMTChkZXZfcHJpdikpCiAJCXRpbWVvdXQgPSBEUF9BVVhfQ0hfQ1RM
X1RJTUVfT1VUXzYwMHVzOwpAQCAtMTQ1LDcgKzE0MCw3IEBAIHN0YXRpYyB1MzIgZzR4X2dldF9h
dXhfc2VuZF9jdGwoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwKIAkgICAgICAgdGltZW91dCB8
CiAJICAgICAgIERQX0FVWF9DSF9DVExfUkVDRUlWRV9FUlJPUiB8CiAJICAgICAgIChzZW5kX2J5
dGVzIDw8IERQX0FVWF9DSF9DVExfTUVTU0FHRV9TSVpFX1NISUZUKSB8Ci0JICAgICAgIChwcmVj
aGFyZ2UgPDwgRFBfQVVYX0NIX0NUTF9QUkVDSEFSR0VfMlVTX1NISUZUKSB8CisJICAgICAgICgz
IDw8IERQX0FVWF9DSF9DVExfUFJFQ0hBUkdFXzJVU19TSElGVCkgfAogCSAgICAgICAoYXV4X2Ns
b2NrX2RpdmlkZXIgPDwgRFBfQVVYX0NIX0NUTF9CSVRfQ0xPQ0tfMlhfU0hJRlQpOwogfQogCi0t
IAoyLjI2LjIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
