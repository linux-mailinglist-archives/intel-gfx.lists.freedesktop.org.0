Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C80E7837
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 19:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5985E6E9B8;
	Mon, 28 Oct 2019 18:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8E2E6E9B8
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 18:16:49 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 11:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="202586384"
Received: from ideak-desk.fi.intel.com ([10.237.68.142])
 by orsmga003.jf.intel.com with ESMTP; 28 Oct 2019 11:16:47 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 28 Oct 2019 20:15:17 +0200
Message-Id: <20191028181517.22602-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028110031.29616-1-imre.deak@intel.com>
References: <20191028110031.29616-1-imre.deak@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915: Avoid HPD poll detect triggering a
 new detect cycle
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
Cc: Val Kulkov <val.kulkov@gmail.com>, wangqr <wqr.prg@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Rm9yIHRoZSBIUEQgaW50ZXJydXB0IGZ1bmN0aW9uYWxpdHkgdGhlIEhXIGRlcGVuZHMgb24gcG93
ZXIgd2VsbHMgaW4gdGhlCmRpc3BsYXkgY29yZSBkb21haW4gdG8gYmUgb24uIEFjY29yZGluZ2x5
IHdoZW4gZW5hYmxpbmcgdGhlc2UgcG93ZXIKd2VsbHMgdGhlIEhQRCBwb2xsaW5nIGxvZ2ljIHdp
bGwgZm9yY2UgYW4gSFBEIGRldGVjdGlvbiBjeWNsZSB0byBhY2NvdW50CmZvciBob3RwbHVnIGV2
ZW50cyB0aGF0IG1heSBoYXZlIGhhcHBlbmVkIHdoZW4gc3VjaCBhIHBvd2VyIHdlbGwgd2FzCm9m
Zi4KClRodXMgYSBkZXRlY3QgY3ljbGUgc3RhcnRlZCBieSBwb2xsaW5nIGNvdWxkIHN0YXJ0IGEg
bmV3IGRldGVjdCBjeWNsZSBpZgphIHBvd2VyIHdlbGwgaW4gdGhlIGRpc3BsYXkgY29yZSBkb21h
aW4gZ2V0cyBlbmFibGVkIGR1cmluZyBkZXRlY3QgYW5kCnN0YXlzIGVuYWJsZWQgYWZ0ZXIgZGV0
ZWN0IGNvbXBsZXRlcy4gVGhhdCBpbiB0dXJuIGNhbiBsZWFkIHRvIGEKZGV0ZWN0aW9uIGN5Y2xl
IHJ1bmF3YXkuCgpUbyBwcmV2ZW50IHJlLXRyaWdnZXJpbmcgYSBwb2xsLWRldGVjdCBjeWNsZSBt
YWtlIHN1cmUgd2UgZHJvcCBhbGwgcG93ZXIKcmVmZXJlbmNlcyB3ZSBhY3F1aXJlZCBkdXJpbmcg
ZGV0ZWN0IHN5bmNocm9ub3VzbHkgYnkgdGhlIGVuZCBvZiBkZXRlY3QuClRoaXMgd2lsbCBsZXQg
dGhlIHBvbGwtZGV0ZWN0IGxvZ2ljIGNvbnRpbnVlIHdpdGggcG9sbGluZyAobWF0Y2hpbmcgdGhl
Cm9mZiBzdGF0ZSBvZiB0aGUgY29ycmVzcG9uZGluZyBwb3dlciB3ZWxscykgaW5zdGVhZCBvZiBz
Y2hlZHVsaW5nIGEgbmV3CmRldGVjdGlvbiBjeWNsZS4KCkZpeGVzOiA2Y2ZlN2VjMDJlODUgKCJk
cm0vaTkxNTogUmVtb3ZlIHRoZSB1bm5lZWRlZCBBVVggcG93ZXIgcmVmIGZyb20gaW50ZWxfZHBf
ZGV0ZWN0KCkiKQpCdWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1
Zy5jZ2k/aWQ9MTEyMTI1ClJlcG9ydGVkLWFuZC10ZXN0ZWQtYnk6IFZhbCBLdWxrb3YgPHZhbC5r
dWxrb3ZAZ21haWwuY29tPgpSZXBvcnRlZC1hbmQtdGVzdGVkLWJ5OiB3YW5ncXIgPHdxci5wcmdA
Z21haWwuY29tPgpDYzogVmFsIEt1bGtvdiA8dmFsLmt1bGtvdkBnbWFpbC5jb20+CkNjOiB3YW5n
cXIgPHdxci5wcmdAZ21haWwuY29tPgpDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0LmMgIHwg
NyArKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICB8IDYg
KysrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYyB8IDYgKysr
KysrCiAzIGZpbGVzIGNoYW5nZWQsIDE5IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jcnQuYwppbmRleCBmZjYxMjZlYTc5M2MuLjgzNGJmMWQ0M2JiOCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnQuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jCkBAIC04NjQsNiArODY0
LDEzIEBAIGludGVsX2NydF9kZXRlY3Qoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwK
IAogb3V0OgogCWludGVsX2Rpc3BsYXlfcG93ZXJfcHV0KGRldl9wcml2LCBpbnRlbF9lbmNvZGVy
LT5wb3dlcl9kb21haW4sIHdha2VyZWYpOworCisJLyoKKwkgKiBNYWtlIHN1cmUgdGhlIHJlZnMg
Zm9yIHBvd2VyIHdlbGxzIGVuYWJsZWQgZHVyaW5nIGRldGVjdCBhcmUKKwkgKiBkcm9wcGVkIHRv
IGF2b2lkIGEgbmV3IGRldGVjdCBjeWNsZSB0cmlnZ2VyZWQgYnkgSFBEIHBvbGxpbmcuCisJICov
CisJaW50ZWxfZGlzcGxheV9wb3dlcl9mbHVzaF93b3JrKGRldl9wcml2KTsKKwogCXJldHVybiBz
dGF0dXM7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwppbmRleCA4
Njk4OWVjMjViYzYuLjQ4NmZlMjAzZjU2YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHAuYwpAQCAtNTY4OCw2ICs1Njg4LDEyIEBAIGludGVsX2RwX2RldGVjdChzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yLAogCWlmIChzdGF0dXMgIT0gY29ubmVjdG9yX3N0YXR1
c19jb25uZWN0ZWQgJiYgIWludGVsX2RwLT5pc19tc3QpCiAJCWludGVsX2RwX3Vuc2V0X2VkaWQo
aW50ZWxfZHApOwogCisJLyoKKwkgKiBNYWtlIHN1cmUgdGhlIHJlZnMgZm9yIHBvd2VyIHdlbGxz
IGVuYWJsZWQgZHVyaW5nIGRldGVjdCBhcmUKKwkgKiBkcm9wcGVkIHRvIGF2b2lkIGEgbmV3IGRl
dGVjdCBjeWNsZSB0cmlnZ2VyZWQgYnkgSFBEIHBvbGxpbmcuCisJICovCisJaW50ZWxfZGlzcGxh
eV9wb3dlcl9mbHVzaF93b3JrKGRldl9wcml2KTsKKwogCXJldHVybiBzdGF0dXM7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMKaW5kZXggYjU0Y2NiYjVhYWQ1
Li5mZjcxYTRkYTNkMDAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfaGRtaS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRt
aS5jCkBAIC0yNjI2LDYgKzI2MjYsMTIgQEAgaW50ZWxfaGRtaV9kZXRlY3Qoc3RydWN0IGRybV9j
b25uZWN0b3IgKmNvbm5lY3RvciwgYm9vbCBmb3JjZSkKIAlpZiAoc3RhdHVzICE9IGNvbm5lY3Rv
cl9zdGF0dXNfY29ubmVjdGVkKQogCQljZWNfbm90aWZpZXJfcGh5c19hZGRyX2ludmFsaWRhdGUo
aW50ZWxfaGRtaS0+Y2VjX25vdGlmaWVyKTsKIAorCS8qCisJICogTWFrZSBzdXJlIHRoZSByZWZz
IGZvciBwb3dlciB3ZWxscyBlbmFibGVkIGR1cmluZyBkZXRlY3QgYXJlCisJICogZHJvcHBlZCB0
byBhdm9pZCBhIG5ldyBkZXRlY3QgY3ljbGUgdHJpZ2dlcmVkIGJ5IEhQRCBwb2xsaW5nLgorCSAq
LworCWludGVsX2Rpc3BsYXlfcG93ZXJfZmx1c2hfd29yayhkZXZfcHJpdik7CisKIAlyZXR1cm4g
c3RhdHVzOwogfQogCi0tIAoyLjE3LjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
