Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BED0380D58
	for <lists+intel-gfx@lfdr.de>; Fri, 14 May 2021 17:37:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BF416F382;
	Fri, 14 May 2021 15:37:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38ED46F380
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 May 2021 15:37:21 +0000 (UTC)
IronPort-SDR: Ya672c1k9Y0yy4Z99UXodjEjvdI8H6KRV3B43kDgtTePbs99sP7hNicgIIuJkqtxkWDA4MuWmI
 LqK5JXxcaD4g==
X-IronPort-AV: E=McAfee;i="6200,9189,9984"; a="200243922"
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="200243922"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
IronPort-SDR: EDmgMHp6cv7EAUsS5E0cR5hmGuzF2/itNzTa96XmvRTFD0Xll2Z9khDQr/yJBi0sIsaAf3gWKl
 hjE9hBtEi6+w==
X-IronPort-AV: E=Sophos;i="5.82,300,1613462400"; d="scan'208";a="610796565"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 May 2021 08:37:18 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 14 May 2021 08:37:00 -0700
Message-Id: <20210514153711.2359617-9-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210514153711.2359617-1-matthew.d.roper@intel.com>
References: <20210514153711.2359617-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 08/19] drm/i915/adl_p: Add cdclk support for ADL-P
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

RnJvbTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPgoKQURMLVAg
aGFzIDMgcG9zc2libGUgcmVmY2xrIGZyZXF1ZW5jaWVzOiAxOS4yTUh6LAoyNE1IeiBhbmQgMzgu
NE1IegoKV2hpbGUgd2UncmUgYXQgaXQsIHJlbW92ZSB0aGUgZHJtX1dBUk5zLiAgVGhleSd2ZSBu
ZXZlciBhY3R1YWxseSBoZWxwZWQKdXMgY2F0Y2ggYW55IHByb2JsZW1zLCBidXQgaXQncyB2ZXJ5
IGVhc3kgdG8gZm9yZ2V0IHRvIHVwZGF0ZSB0aGVtCnByb3Blcmx5IGZvciBuZXcgcGxhdGZvcm1z
LgoKQlNwZWM6IDU1NDA5LCA0OTIwOApDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGlu
dGVsLmNvbT4KQ2M6IENsaW50b24gVGF5bG9yIDxjbGludG9uLmEudGF5bG9yQGludGVsLmNvbT4K
Q2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgpTaWduZWQt
b2ZmLWJ5OiBBbnVzaGEgU3JpdmF0c2EgPGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+ClNpZ25l
ZC1vZmYtYnk6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KU2ln
bmVkLW9mZi1ieTogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KUmV2aWV3
ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNDEgKysrKysrKysrKysrKysrLS0t
LS0tLQogMSBmaWxlIGNoYW5nZWQsIDI4IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwppbmRleCAyNWVmMDc3
ZGMzODkuLmQ0MDEyNjA2MTAzOCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jZGNsay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuYwpAQCAtMTI1Myw2ICsxMjUzLDI3IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50
ZWxfY2RjbGtfdmFscyBya2xfY2RjbGtfdGFibGVbXSA9IHsKIAl7fQogfTsKIAorc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzIGFkbHBfY2RjbGtfdGFibGVbXSA9IHsKKwl7IC5y
ZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gMTcyODAwLCAuZGl2aWRlciA9IDMsIC5yYXRpbyA9IDI3
IH0sCisJeyAucmVmY2xrID0gMTkyMDAsIC5jZGNsayA9IDE5MjAwMCwgLmRpdmlkZXIgPSAyLCAu
cmF0aW8gPSAyMCB9LAorCXsgLnJlZmNsayA9IDE5MjAwLCAuY2RjbGsgPSAzMDcyMDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gMzIgfSwKKwl7IC5yZWZjbGsgPSAxOTIwMCwgLmNkY2xrID0gNTU2
ODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDU4IH0sCisJeyAucmVmY2xrID0gMTkyMDAsIC5j
ZGNsayA9IDY1MjgwMCwgLmRpdmlkZXIgPSAyLCAucmF0aW8gPSA2OCB9LAorCisJeyAucmVmY2xr
ID0gMjQwMDAsIC5jZGNsayA9IDE3NjAwMCwgLmRpdmlkZXIgPSAzLCAucmF0aW8gPSAyMiB9LAor
CXsgLnJlZmNsayA9IDI0MDAwLCAuY2RjbGsgPSAxOTIwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlv
ID0gMTYgfSwKKwl7IC5yZWZjbGsgPSAyNDAwMCwgLmNkY2xrID0gMzEyMDAwLCAuZGl2aWRlciA9
IDIsIC5yYXRpbyA9IDI2IH0sCisJeyAucmVmY2xrID0gMjQwMDAsIC5jZGNsayA9IDU1MjAwMCwg
LmRpdmlkZXIgPSAyLCAucmF0aW8gPSA0NiB9LAorCXsgLnJlZmNsayA9IDI0NDAwLCAuY2RjbGsg
PSA2NDgwMDAsIC5kaXZpZGVyID0gMiwgLnJhdGlvID0gNTQgfSwKKworCXsgLnJlZmNsayA9IDM4
NDAwLCAuY2RjbGsgPSAxNzkyMDAsIC5kaXZpZGVyID0gMywgLnJhdGlvID0gMTQgfSwKKwl7IC5y
ZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gMTkyMDAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDEw
IH0sCisJeyAucmVmY2xrID0gMzg0MDAsIC5jZGNsayA9IDMwNzIwMCwgLmRpdmlkZXIgPSAyLCAu
cmF0aW8gPSAxNiB9LAorCXsgLnJlZmNsayA9IDM4NDAwLCAuY2RjbGsgPSA1NTY4MDAsIC5kaXZp
ZGVyID0gMiwgLnJhdGlvID0gMjkgfSwKKwl7IC5yZWZjbGsgPSAzODQwMCwgLmNkY2xrID0gNjUy
ODAwLCAuZGl2aWRlciA9IDIsIC5yYXRpbyA9IDM0IH0sCisJe30KK307CisKIHN0YXRpYyBpbnQg
Ynh0X2NhbGNfY2RjbGsoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LCBpbnQgbWlu
X2NkY2xrKQogewogCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa192YWxzICp0YWJsZSA9IGRldl9w
cml2LT5jZGNsay50YWJsZTsKQEAgLTE0MjgsMTggKzE0NDksMTIgQEAgc3RhdGljIHZvaWQgYnh0
X2dldF9jZGNsayhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsCiAJCWRpdiA9IDI7
CiAJCWJyZWFrOwogCWNhc2UgQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8xXzU6Ci0JCWRybV9XQVJO
KCZkZXZfcHJpdi0+ZHJtLAotCQkJIERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMCwKLQkJCSAi
VW5zdXBwb3J0ZWQgZGl2aWRlclxuIik7CiAJCWRpdiA9IDM7CiAJCWJyZWFrOwogCWNhc2UgQlhU
X0NEQ0xLX0NEMlhfRElWX1NFTF8yOgogCQlkaXYgPSA0OwogCQlicmVhazsKIAljYXNlIEJYVF9D
RENMS19DRDJYX0RJVl9TRUxfNDoKLQkJZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sCi0JCQkgRElT
UExBWV9WRVIoZGV2X3ByaXYpID49IDExIHx8IElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpLAotCQkJ
ICJVbnN1cHBvcnRlZCBkaXZpZGVyXG4iKTsKIAkJZGl2ID0gODsKIAkJYnJlYWs7CiAJZGVmYXVs
dDoKQEAgLTE1NTAsMTYgKzE1NjUsMTAgQEAgc3RhdGljIHUzMiBieHRfY2RjbGtfY2QyeF9kaXZf
c2VsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAljYXNlIDI6CiAJCXJldHVy
biBCWFRfQ0RDTEtfQ0QyWF9ESVZfU0VMXzE7CiAJY2FzZSAzOgotCQlkcm1fV0FSTigmZGV2X3By
aXYtPmRybSwKLQkJCSBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTAsCi0JCQkgIlVuc3VwcG9y
dGVkIGRpdmlkZXJcbiIpOwogCQlyZXR1cm4gQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8xXzU7CiAJ
Y2FzZSA0OgogCQlyZXR1cm4gQlhUX0NEQ0xLX0NEMlhfRElWX1NFTF8yOwogCWNhc2UgODoKLQkJ
ZHJtX1dBUk4oJmRldl9wcml2LT5kcm0sCi0JCQkgRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEx
IHx8IElTX0NBTk5PTkxBS0UoZGV2X3ByaXYpLAotCQkJICJVbnN1cHBvcnRlZCBkaXZpZGVyXG4i
KTsKIAkJcmV0dXJuIEJYVF9DRENMS19DRDJYX0RJVl9TRUxfNDsKIAl9CiB9CkBAIC0yODI1LDcg
KzI4MzQsMTMgQEAgdTMyIGludGVsX3JlYWRfcmF3Y2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdikKICAqLwogdm9pZCBpbnRlbF9pbml0X2NkY2xrX2hvb2tzKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikKIHsKLQlpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikp
IHsKKwlpZiAoSVNfQUxERVJMQUtFX1AoZGV2X3ByaXYpKSB7CisJCWRldl9wcml2LT5kaXNwbGF5
LnNldF9jZGNsayA9IGJ4dF9zZXRfY2RjbGs7CisJCWRldl9wcml2LT5kaXNwbGF5LmJ3X2NhbGNf
bWluX2NkY2xrID0gc2tsX2J3X2NhbGNfbWluX2NkY2xrOworCQlkZXZfcHJpdi0+ZGlzcGxheS5t
b2Rlc2V0X2NhbGNfY2RjbGsgPSBieHRfbW9kZXNldF9jYWxjX2NkY2xrOworCQlkZXZfcHJpdi0+
ZGlzcGxheS5jYWxjX3ZvbHRhZ2VfbGV2ZWwgPSB0Z2xfY2FsY192b2x0YWdlX2xldmVsOworCQlk
ZXZfcHJpdi0+Y2RjbGsudGFibGUgPSBhZGxwX2NkY2xrX3RhYmxlOworCX0gZWxzZSBpZiAoSVNf
Uk9DS0VUTEFLRShkZXZfcHJpdikpIHsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuc2V0X2NkY2xrID0g
Ynh0X3NldF9jZGNsazsKIAkJZGV2X3ByaXYtPmRpc3BsYXkuYndfY2FsY19taW5fY2RjbGsgPSBz
a2xfYndfY2FsY19taW5fY2RjbGs7CiAJCWRldl9wcml2LT5kaXNwbGF5Lm1vZGVzZXRfY2FsY19j
ZGNsayA9IGJ4dF9tb2Rlc2V0X2NhbGNfY2RjbGs7Ci0tIAoyLjI1LjQKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
