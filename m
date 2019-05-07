Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC6D1624D
	for <lists+intel-gfx@lfdr.de>; Tue,  7 May 2019 12:56:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8AA289FCC;
	Tue,  7 May 2019 10:56:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53C8C89FC5
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 May 2019 10:56:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 May 2019 03:56:00 -0700
X-ExtLoop1: 1
Received: from awilczyn-mobl2.ger.corp.intel.com (HELO
 mwahaha.ger.corp.intel.com) ([10.252.19.76])
 by fmsmga005.fm.intel.com with ESMTP; 07 May 2019 03:55:58 -0700
From: Matthew Auld <matthew.auld@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  7 May 2019 11:55:57 +0100
Message-Id: <20190507105557.5385-2-matthew.auld@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190507105557.5385-1-matthew.auld@intel.com>
References: <20190507105557.5385-1-matthew.auld@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 2/2] drm/i915: add in-kernel blitter client
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIHBsYW4gaXMgdG8gdXNlIHRoZSBibGl0dGVyIGVuZ2luZSBmb3IgYXN5bmMgb2JqZWN0IGNs
ZWFyaW5nIHdoZW4KdXNpbmcgbG9jYWwgbWVtb3J5LCBidXQgYmVmb3JlIHdlIGNhbiBtb3ZlIHRo
ZSB3b3JrZXIgdG8gZ2V0X3BhZ2VzKCkgd2UKaGF2ZSB0byBmaXJzdCB0YW1lIHNvbWUgbW9yZSBv
ZiBvdXIgc3RydWN0X211dGV4IHVzYWdlLiBXaXRoIHRoaXMgaW4KbWluZCB3ZSBzaG91bGQgYmUg
YWJsZSB0byB1cHN0cmVhbSB0aGUgb2JqZWN0IGNsZWFyaW5nIGFzIHNvbWUKc2VsZnRlc3RzLCB3
aGljaCBzaG91bGQgc2VydmUgYXMgYSBndWluZWEgcGlnIGZvciB0aGUgb25nb2luZyBsb2NraW5n
CnJld29yayBhbmQgdXBjb21pbmcgYXN5YyBnZXRfcGFnZXMoKSBmcmFtZXdvcmsuCgpTaWduZWQt
b2ZmLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Ci0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgICAgICAgICAgICAgICAgIHwgICAyICsKIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5oICB8ICAgMSArCiBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9jbGllbnRfYmx0LmMgICAgfCAyOTcgKysrKysrKysrKysrKysr
KysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jbGllbnRfYmx0LmggICAgfCAgMjEg
KysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdF9ibHQuYyAgICB8IDEwMyAr
KysrKysKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX29iamVjdF9ibHQuaCAgICB8ICAy
NCArKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmMgIHwgMTMx
ICsrKysrKysrCiAuLi4vZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYyAg
fCAxMTQgKysrKysrKwogLi4uL2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3Rz
LmggIHwgICAyICsKIDkgZmlsZXMgY2hhbmdlZCwgNjk1IGluc2VydGlvbnMoKykKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9jbGllbnRfYmx0
LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbV9vYmpl
Y3RfYmx0LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dl
bV9vYmplY3RfYmx0LmgKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9z
ZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2JsdC5jCiBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYwoKZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
TWFrZWZpbGUKaW5kZXggNjgxMDZmZTM1YTA0Li5hMTY5MGFhZGUyNzMgMTAwNjQ0Ci0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01h
a2VmaWxlCkBAIC05MCw2ICs5MCw3IEBAIGk5MTUteSArPSBcCiAJICBpOTE1X2NtZF9wYXJzZXIu
byBcCiAJICBpOTE1X2dlbV9iYXRjaF9wb29sLm8gXAogCSAgaTkxNV9nZW1fY2xmbHVzaC5vIFwK
KwkgIGk5MTVfZ2VtX2NsaWVudF9ibHQubyBcCiAJICBpOTE1X2dlbV9jb250ZXh0Lm8gXAogCSAg
aTkxNV9nZW1fZG1hYnVmLm8gXAogCSAgaTkxNV9nZW1fZXZpY3QubyBcCkBAIC05OSw2ICsxMDAs
NyBAQCBpOTE1LXkgKz0gXAogCSAgaTkxNV9nZW1faW50ZXJuYWwubyBcCiAJICBpOTE1X2dlbS5v
IFwKIAkgIGk5MTVfZ2VtX29iamVjdC5vIFwKKwkgIGk5MTVfZ2VtX29iamVjdF9ibHQubyBcCiAJ
ICBpOTE1X2dlbV9wbS5vIFwKIAkgIGk5MTVfZ2VtX3JlbmRlcl9zdGF0ZS5vIFwKIAkgIGk5MTVf
Z2VtX3Nocmlua2VyLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3B1X2NvbW1hbmRzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29t
bWFuZHMuaAppbmRleCBhMzRlY2U1M2E3NzEuLjdlOTU4MjdiMDcyNiAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmgKQEAgLTE4MCw2ICsxODAsNyBAQAog
I2RlZmluZSBHRlhfT1BfRFJBV1JFQ1RfSU5GT19JOTY1ICAoKDB4NzkwMDw8MTYpfDB4MikKIAog
I2RlZmluZSBDT0xPUl9CTFRfQ01ECQkJKDI8PDI5IHwgMHg0MDw8MjIgfCAoNS0yKSkKKyNkZWZp
bmUgWFlfQ09MT1JfQkxUX0NNRAkJKDI8PDI5IHwgMHg1MDw8MjIpCiAjZGVmaW5lIFNSQ19DT1BZ
X0JMVF9DTUQJCSgoMjw8MjkpfCgweDQzPDwyMil8NCkKICNkZWZpbmUgWFlfU1JDX0NPUFlfQkxU
X0NNRAkJKCgyPDwyOSl8KDB4NTM8PDIyKXw2KQogI2RlZmluZSBYWV9NT05PX1NSQ19DT1BZX0lN
TV9CTFQJKCgyPDwyOSl8KDB4NzE8PDIyKXw1KQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW1fY2xpZW50X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9n
ZW1fY2xpZW50X2JsdC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4u
MGEyNWRmOGQ1NjdhCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9nZW1fY2xpZW50X2JsdC5jCkBAIC0wLDAgKzEsMjk3IEBACisvLyBTUERYLUxpY2Vuc2UtSWRl
bnRpZmllcjogTUlUCisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24K
KyAqLworI2luY2x1ZGUgImk5MTVfZ2VtX2NsaWVudF9ibHQuaCIKKworI2luY2x1ZGUgImk5MTVf
Z2VtX29iamVjdF9ibHQuaCIKKyNpbmNsdWRlICJpbnRlbF9kcnYuaCIKKworc3RydWN0IGk5MTVf
c2xlZXZlIHsKKwlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqOworCXN0cnVjdCBzZ190YWJsZSAqcGFnZXM7CisJc3RydWN0IGk5MTVfcGFnZV9z
aXplcyBwYWdlX3NpemVzOworfTsKKworc3RhdGljIGludCB2bWFfc2V0X3BhZ2VzKHN0cnVjdCBp
OTE1X3ZtYSAqdm1hKQoreworCXN0cnVjdCBpOTE1X3NsZWV2ZSAqc2xlZXZlID0gdm1hLT5wcml2
YXRlOworCisJdm1hLT5wYWdlcyA9IHNsZWV2ZS0+cGFnZXM7CisJdm1hLT5wYWdlX3NpemVzID0g
c2xlZXZlLT5wYWdlX3NpemVzOworCisJcmV0dXJuIDA7Cit9CisKK3N0YXRpYyB2b2lkIHZtYV9j
bGVhcl9wYWdlcyhzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKK3sKKwlHRU1fQlVHX09OKCF2bWEtPnBh
Z2VzKTsKKwl2bWEtPnBhZ2VzID0gTlVMTDsKK30KKworc3RhdGljIGludCB2bWFfYmluZChzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwKKwkJICAgIGVudW0gaTkxNV9jYWNoZV9sZXZlbCBjYWNoZV9sZXZl
bCwKKwkJICAgIHUzMiBmbGFncykKK3sKKwlyZXR1cm4gdm1hLT52bS0+dm1hX29wcy5iaW5kX3Zt
YSh2bWEsIGNhY2hlX2xldmVsLCBmbGFncyk7Cit9CisKK3N0YXRpYyB2b2lkIHZtYV91bmJpbmQo
c3RydWN0IGk5MTVfdm1hICp2bWEpCit7CisJdm1hLT52bS0+dm1hX29wcy51bmJpbmRfdm1hKHZt
YSk7Cit9CisKK3N0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV92bWFfb3BzIHByb3h5X3ZtYV9vcHMg
PSB7CisJLnNldF9wYWdlcyA9IHZtYV9zZXRfcGFnZXMsCisJLmNsZWFyX3BhZ2VzID0gdm1hX2Ns
ZWFyX3BhZ2VzLAorCS5iaW5kX3ZtYSA9IHZtYV9iaW5kLAorCS51bmJpbmRfdm1hID0gdm1hX3Vu
YmluZCwKK307CisKK3N0YXRpYyBzdHJ1Y3QgaTkxNV9zbGVldmUgKmNyZWF0ZV9zbGVldmUoc3Ry
dWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCisJCQkJCSBzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29i
amVjdCAqb2JqLAorCQkJCQkgc3RydWN0IHNnX3RhYmxlICpwYWdlcywKKwkJCQkJIHN0cnVjdCBp
OTE1X3BhZ2Vfc2l6ZXMgKnBhZ2Vfc2l6ZXMpCit7CisJc3RydWN0IGk5MTVfc2xlZXZlICpzbGVl
dmU7CisJc3RydWN0IGk5MTVfdm1hICp2bWE7CisJaW50IGVycjsKKworCXNsZWV2ZSA9IGt6YWxs
b2Moc2l6ZW9mKCpzbGVldmUpLCBHRlBfS0VSTkVMKTsKKwlpZiAoIXNsZWV2ZSkKKwkJcmV0dXJu
IEVSUl9QVFIoLUVOT01FTSk7CisKKwl2bWEgPSBpOTE1X3ZtYV9pbnN0YW5jZShvYmosIHZtLCBO
VUxMKTsKKwlpZiAoSVNfRVJSKHZtYSkpIHsKKwkJZXJyID0gUFRSX0VSUih2bWEpOworCQlnb3Rv
IGVycl9mcmVlOworCX0KKworCXZtYS0+cHJpdmF0ZSA9IHNsZWV2ZTsKKwl2bWEtPm9wcyA9ICZw
cm94eV92bWFfb3BzOworCisJc2xlZXZlLT52bWEgPSB2bWE7CisJc2xlZXZlLT5vYmogPSBpOTE1
X2dlbV9vYmplY3RfZ2V0KG9iaik7CisJc2xlZXZlLT5wYWdlcyA9IHBhZ2VzOworCXNsZWV2ZS0+
cGFnZV9zaXplcyA9ICpwYWdlX3NpemVzOworCisJcmV0dXJuIHNsZWV2ZTsKKworZXJyX2ZyZWU6
CisJa2ZyZWUoc2xlZXZlKTsKKwlyZXR1cm4gRVJSX1BUUihlcnIpOworfQorCitzdGF0aWMgdm9p
ZCBkZXN0cm95X3NsZWV2ZShzdHJ1Y3QgaTkxNV9zbGVldmUgKnNsZWV2ZSkKK3sKKwlpOTE1X2dl
bV9vYmplY3RfcHV0KHNsZWV2ZS0+b2JqKTsKKwlrZnJlZShzbGVldmUpOworfQorCitzdHJ1Y3Qg
Y2xlYXJfcGFnZXNfd29yayB7CisJc3RydWN0IGRtYV9mZW5jZSBkbWE7CisJc3RydWN0IGRtYV9m
ZW5jZV9jYiBjYjsKKwlzdHJ1Y3QgaTkxNV9zd19mZW5jZSB3YWl0OworCXN0cnVjdCB3b3JrX3N0
cnVjdCB3b3JrOworCXN0cnVjdCBpcnFfd29yayBpcnFfd29yazsKKwlzdHJ1Y3QgaTkxNV9zbGVl
dmUgKnNsZWV2ZTsKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisJdTMyIHZhbHVlOworfTsK
Kworc3RhdGljIGNvbnN0IGNoYXIgKmNsZWFyX3BhZ2VzX3dvcmtfZHJpdmVyX25hbWUoc3RydWN0
IGRtYV9mZW5jZSAqZmVuY2UpCit7CisJcmV0dXJuIERSSVZFUl9OQU1FOworfQorCitzdGF0aWMg
Y29uc3QgY2hhciAqY2xlYXJfcGFnZXNfd29ya190aW1lbGluZV9uYW1lKHN0cnVjdCBkbWFfZmVu
Y2UgKmZlbmNlKQoreworCXJldHVybiAiY2xlYXIiOworfQorCitzdGF0aWMgdm9pZCBjbGVhcl9w
YWdlc193b3JrX3JlbGVhc2Uoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCit7CisJc3RydWN0IGNs
ZWFyX3BhZ2VzX3dvcmsgKncgPSBjb250YWluZXJfb2YoZmVuY2UsIHR5cGVvZigqdyksIGRtYSk7
CisKKwlkZXN0cm95X3NsZWV2ZSh3LT5zbGVldmUpOworCisJaTkxNV9zd19mZW5jZV9maW5pKCZ3
LT53YWl0KTsKKworCUJVSUxEX0JVR19PTihvZmZzZXRvZih0eXBlb2YoKncpLCBkbWEpKTsKKwlk
bWFfZmVuY2VfZnJlZSgmdy0+ZG1hKTsKK30KKworc3RhdGljIGNvbnN0IHN0cnVjdCBkbWFfZmVu
Y2Vfb3BzIGNsZWFyX3BhZ2VzX3dvcmtfb3BzID0geworCS5nZXRfZHJpdmVyX25hbWUgPSBjbGVh
cl9wYWdlc193b3JrX2RyaXZlcl9uYW1lLAorCS5nZXRfdGltZWxpbmVfbmFtZSA9IGNsZWFyX3Bh
Z2VzX3dvcmtfdGltZWxpbmVfbmFtZSwKKwkucmVsZWFzZSA9IGNsZWFyX3BhZ2VzX3dvcmtfcmVs
ZWFzZSwKK307CisKK3N0YXRpYyB2b2lkIGNsZWFyX3BhZ2VzX3NpZ25hbF9pcnFfd29ya2VyKHN0
cnVjdCBpcnFfd29yayAqd29yaykKK3sKKwlzdHJ1Y3QgY2xlYXJfcGFnZXNfd29yayAqdyA9IGNv
bnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKncpLCBpcnFfd29yayk7CisKKwlkbWFfZmVuY2Vfc2ln
bmFsKCZ3LT5kbWEpOworCWRtYV9mZW5jZV9wdXQoJnctPmRtYSk7Cit9CisKK3N0YXRpYyB2b2lk
IGNsZWFyX3BhZ2VzX2RtYV9mZW5jZV9jYihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKKwkJCQkg
ICAgIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNiKQoreworCXN0cnVjdCBjbGVhcl9wYWdlc193b3Jr
ICp3ID0gY29udGFpbmVyX29mKGNiLCB0eXBlb2YoKncpLCBjYik7CisKKwkvKgorCSAqIFB1c2gg
dGhlIHNpZ25hbGxpbmcgb2YgdGhlIGZlbmNlIGludG8geWV0IGFub3RoZXIgd29ya2VyIHRvIGF2
b2lkCisJICogdGhlIG5pZ2h0bWFyZSBsb2NraW5nIGFyb3VuZCB0aGUgZmVuY2Ugc3BpbmxvY2su
CisJICovCisJaXJxX3dvcmtfcXVldWUoJnctPmlycV93b3JrKTsKK30KKworc3RhdGljIHZvaWQg
Y2xlYXJfcGFnZXNfd29ya2VyKHN0cnVjdCB3b3JrX3N0cnVjdCAqd29yaykKK3sKKwlzdHJ1Y3Qg
Y2xlYXJfcGFnZXNfd29yayAqdyA9IGNvbnRhaW5lcl9vZih3b3JrLCB0eXBlb2YoKncpLCB3b3Jr
KTsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHctPmNlLT5nZW1fY29udGV4dC0+
aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqID0gdy0+c2xlZXZlLT5vYmo7
CisJc3RydWN0IGk5MTVfdm1hICp2bWEgPSB3LT5zbGVldmUtPnZtYTsKKwlzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycTsKKwlpbnQgZXJyOworCisJaWYgKHctPmRtYS5lcnJvcikKKwkJZ290byBvdXRf
c2lnbmFsOworCisJaWYgKG9iai0+Y2FjaGVfZGlydHkpIHsKKwkJb2JqLT53cml0ZV9kb21haW4g
PSAwOworCQlpZiAoaTkxNV9nZW1fb2JqZWN0X2hhc19zdHJ1Y3RfcGFnZShvYmopKQorCQkJZHJt
X2NsZmx1c2hfc2cody0+c2xlZXZlLT5wYWdlcyk7CisJCW9iai0+Y2FjaGVfZGlydHkgPSBmYWxz
ZTsKKwl9CisKKwltdXRleF9sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwllcnIgPSBp
OTE1X3ZtYV9waW4odm1hLCAwLCAwLCBQSU5fVVNFUik7CisJaWYgKHVubGlrZWx5KGVycikpIHsK
KwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwkJZG1hX2ZlbmNlX3Nl
dF9lcnJvcigmdy0+ZG1hLCBlcnIpOworCQlnb3RvIG91dF9zaWduYWw7CisJfQorCisJcnEgPSBp
OTE1X3JlcXVlc3RfY3JlYXRlKHctPmNlKTsKKwlpZiAoSVNfRVJSKHJxKSkgeworCQllcnIgPSBQ
VFJfRVJSKHJxKTsKKwkJZ290byBvdXRfdW5waW47CisJfQorCisJZXJyID0gaW50ZWxfZW1pdF92
bWFfZmlsbF9ibHQocnEsIHZtYSwgdy0+dmFsdWUpOworCWlmICh1bmxpa2VseShlcnIpKQorCQln
b3RvIG91dF9yZXF1ZXN0OworCisJZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3RpdmUodm1hLCBy
cSwgRVhFQ19PQkpFQ1RfV1JJVEUpOworb3V0X3JlcXVlc3Q6CisJaWYgKHVubGlrZWx5KGVycikp
CisJCWk5MTVfcmVxdWVzdF9za2lwKHJxLCBlcnIpOworCWVsc2UKKwkJaTkxNV9yZXF1ZXN0X2dl
dChycSk7CisKKwlpOTE1X3JlcXVlc3RfYWRkKHJxKTsKK291dF91bnBpbjoKKwlpOTE1X3ZtYV91
bnBpbih2bWEpOworCisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwor
CWlmICghZXJyKSB7CisJCWVyciA9IGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soJnJxLT5mZW5jZSwg
JnctPmNiLAorCQkJCQkgICAgIGNsZWFyX3BhZ2VzX2RtYV9mZW5jZV9jYik7CisJCWk5MTVfcmVx
dWVzdF9wdXQocnEpOworCQlpZiAoIWVycikKKwkJCXJldHVybjsKKwl9IGVsc2UgeworCQlkbWFf
ZmVuY2Vfc2V0X2Vycm9yKCZ3LT5kbWEsIGVycik7CisJfQorb3V0X3NpZ25hbDoKKwlkbWFfZmVu
Y2Vfc2lnbmFsKCZ3LT5kbWEpOworCWRtYV9mZW5jZV9wdXQoJnctPmRtYSk7Cit9CisKK3N0YXRp
YyBpbnQgX19pOTE1X3N3X2ZlbmNlX2NhbGwKK2NsZWFyX3BhZ2VzX3dvcmtfbm90aWZ5KHN0cnVj
dCBpOTE1X3N3X2ZlbmNlICpmZW5jZSwKKwkJCWVudW0gaTkxNV9zd19mZW5jZV9ub3RpZnkgc3Rh
dGUpCit7CisJc3RydWN0IGNsZWFyX3BhZ2VzX3dvcmsgKncgPSBjb250YWluZXJfb2YoZmVuY2Us
IHR5cGVvZigqdyksIHdhaXQpOworCisJc3dpdGNoIChzdGF0ZSkgeworCWNhc2UgRkVOQ0VfQ09N
UExFVEU6CisJCXNjaGVkdWxlX3dvcmsoJnctPndvcmspOworCQlicmVhazsKKworCWNhc2UgRkVO
Q0VfRlJFRToKKwkJZG1hX2ZlbmNlX3B1dCgmdy0+ZG1hKTsKKwkJYnJlYWs7CisJfQorCisJcmV0
dXJuIE5PVElGWV9ET05FOworfQorCitzdGF0aWMgREVGSU5FX1NQSU5MT0NLKGZlbmNlX2xvY2sp
OworCitpbnQgaTkxNV9nZW1fc2NoZWR1bGVfZmlsbF9wYWdlc19ibHQoc3RydWN0IGRybV9pOTE1
X2dlbV9vYmplY3QgKm9iaiwKKwkJCQkgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJ
CQkgICAgIHN0cnVjdCBzZ190YWJsZSAqcGFnZXMsCisJCQkJICAgICBzdHJ1Y3QgaTkxNV9wYWdl
X3NpemVzICpwYWdlX3NpemVzLAorCQkJCSAgICAgdTMyIHZhbHVlKQoreworCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShvYmotPmJhc2UuZGV2KTsKKwlzdHJ1Y3QgaTkx
NV9nZW1fY29udGV4dCAqY3R4ID0gY2UtPmdlbV9jb250ZXh0OworCXN0cnVjdCBpOTE1X2FkZHJl
c3Nfc3BhY2UgKnZtOworCXN0cnVjdCBjbGVhcl9wYWdlc193b3JrICp3b3JrOworCXN0cnVjdCBp
OTE1X3NsZWV2ZSAqc2xlZXZlOworCWludCBlcnI7CisKKwl2bSA9IGN0eC0+cHBndHQgPyAmY3R4
LT5wcGd0dC0+dm0gOiAmaTkxNS0+Z2d0dC52bTsKKworCXNsZWV2ZSA9IGNyZWF0ZV9zbGVldmUo
dm0sIG9iaiwgcGFnZXMsIHBhZ2Vfc2l6ZXMpOworCWlmIChJU19FUlIoc2xlZXZlKSkKKwkJcmV0
dXJuIFBUUl9FUlIoc2xlZXZlKTsKKworCXdvcmsgPSBrbWFsbG9jKHNpemVvZigqd29yayksIEdG
UF9LRVJORUwpOworCWlmICh3b3JrID09IE5VTEwpIHsKKwkJZGVzdHJveV9zbGVldmUoc2xlZXZl
KTsKKwkJcmV0dXJuIC1FTk9NRU07CisJfQorCisJd29yay0+dmFsdWUgPSB2YWx1ZTsKKwl3b3Jr
LT5zbGVldmUgPSBzbGVldmU7CisJd29yay0+Y2UgPSBjZTsKKworCUlOSVRfV09SSygmd29yay0+
d29yaywgY2xlYXJfcGFnZXNfd29ya2VyKTsKKworCWluaXRfaXJxX3dvcmsoJndvcmstPmlycV93
b3JrLCBjbGVhcl9wYWdlc19zaWduYWxfaXJxX3dvcmtlcik7CisKKwlkbWFfZmVuY2VfaW5pdCgm
d29yay0+ZG1hLAorCQkgICAgICAgJmNsZWFyX3BhZ2VzX3dvcmtfb3BzLAorCQkgICAgICAgJmZl
bmNlX2xvY2ssCisJCSAgICAgICBpOTE1LT5tbS51bm9yZGVyZWRfdGltZWxpbmUsCisJCSAgICAg
ICAwKTsKKwlpOTE1X3N3X2ZlbmNlX2luaXQoJndvcmstPndhaXQsIGNsZWFyX3BhZ2VzX3dvcmtf
bm90aWZ5KTsKKworCWk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaik7CisJZXJyID0gaTkxNV9zd19m
ZW5jZV9hd2FpdF9yZXNlcnZhdGlvbigmd29yay0+d2FpdCwKKwkJCQkJICAgICAgb2JqLT5yZXN2
LCBOVUxMLAorCQkJCQkgICAgICB0cnVlLCBJOTE1X0ZFTkNFX1RJTUVPVVQsCisJCQkJCSAgICAg
IEk5MTVfRkVOQ0VfR0ZQKTsKKwlpZiAoZXJyIDwgMCkgeworCQlkbWFfZmVuY2Vfc2V0X2Vycm9y
KCZ3b3JrLT5kbWEsIGVycik7CisJfSBlbHNlIHsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9l
eGNsX2ZlbmNlKG9iai0+cmVzdiwgJndvcmstPmRtYSk7CisJCWVyciA9IDA7CisJfQorCWk5MTVf
Z2VtX29iamVjdF91bmxvY2sob2JqKTsKKworCWRtYV9mZW5jZV9nZXQoJndvcmstPmRtYSk7CisJ
aTkxNV9zd19mZW5jZV9jb21taXQoJndvcmstPndhaXQpOworCisJcmV0dXJuIGVycjsKK30KKwor
I2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQorI2luY2x1ZGUgInNlbGZ0
ZXN0cy9pOTE1X2dlbV9jbGllbnRfYmx0LmMiCisjZW5kaWYKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2NsaWVudF9ibHQuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZ2VtX2NsaWVudF9ibHQuaApuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAw
MDAwMDAuLmE3MDgwNjIzZTc0MQotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfZ2VtX2NsaWVudF9ibHQuaApAQCAtMCwwICsxLDIxIEBACisvKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogTUlUICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29y
cG9yYXRpb24KKyAqLworI2lmbmRlZiBfX0k5MTVfR0VNX0NMSUVOVF9CTFRfSF9fCisjZGVmaW5l
IF9fSTkxNV9HRU1fQ0xJRU5UX0JMVF9IX18KKworI2luY2x1ZGUgPGxpbnV4L3R5cGVzLmg+CisK
K3N0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0Oworc3RydWN0IGludGVsX2NvbnRleHQgY2U7Citz
dHJ1Y3QgaTkxNV9wYWdlX3NpemVzOworc3RydWN0IHNnX3RhYmxlOworCitpbnQgaTkxNV9nZW1f
c2NoZWR1bGVfZmlsbF9wYWdlc19ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwK
KwkJCQkgICAgIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKKwkJCQkgICAgIHN0cnVjdCBzZ190
YWJsZSAqcGFnZXMsCisJCQkJICAgICBzdHJ1Y3QgaTkxNV9wYWdlX3NpemVzICpwYWdlX3NpemVz
LAorCQkJCSAgICAgdTMyIHZhbHVlKTsKKworI2VuZGlmCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2dlbV9vYmplY3RfYmx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X2dlbV9vYmplY3RfYmx0LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAw
MDAwLi4zZmRhMzNlNWRjZjUKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTAsMCArMSwxMDMgQEAKKy8vIFNQRFgtTGljZW5z
ZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3Jh
dGlvbgorICovCisKKyNpbmNsdWRlICJpOTE1X2dlbV9vYmplY3RfYmx0LmgiCisKKyNpbmNsdWRl
ICJpOTE1X2dlbV9jbGZsdXNoLmgiCisjaW5jbHVkZSAiaW50ZWxfZHJ2LmgiCisKK2ludCBpbnRl
bF9lbWl0X3ZtYV9maWxsX2JsdChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwKKwkJCSAgICBzdHJ1
Y3QgaTkxNV92bWEgKnZtYSwKKwkJCSAgICB1MzIgdmFsdWUpCit7CisJc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlID0gcnEtPmh3X2NvbnRleHQ7CisJdTMyICpjczsKKwlpbnQgZXJyOworCisJaWYg
KGNlLT5lbmdpbmUtPmVtaXRfaW5pdF9icmVhZGNydW1iKSB7CisJCWVyciA9IGNlLT5lbmdpbmUt
PmVtaXRfaW5pdF9icmVhZGNydW1iKHJxKTsKKwkJaWYgKHVubGlrZWx5KGVycikpCisJCQlyZXR1
cm4gZXJyOworCX0KKworCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgOCk7CisKKwlpZiAoSU5U
RUxfR0VOKHJxLT5pOTE1KSA+PSA4KSB7CisJCSpjcysrID0gWFlfQ09MT1JfQkxUX0NNRCB8IEJM
VF9XUklURV9SR0JBIHwgKDctMik7CisJCSpjcysrID0gQkxUX0RFUFRIXzMyIHwgQkxUX1JPUF9D
T0xPUl9DT1BZIHwgUEFHRV9TSVpFOworCQkqY3MrKyA9IDA7CisJCSpjcysrID0gdm1hLT5zaXpl
ID4+IFBBR0VfU0hJRlQgPDwgMTYgfCBQQUdFX1NJWkUgLyA0OworCQkqY3MrKyA9IGxvd2VyXzMy
X2JpdHModm1hLT5ub2RlLnN0YXJ0KTsKKwkJKmNzKysgPSB1cHBlcl8zMl9iaXRzKHZtYS0+bm9k
ZS5zdGFydCk7CisJCSpjcysrID0gdmFsdWU7CisJCSpjcysrID0gTUlfTk9PUDsKKwl9IGVsc2Ug
eworCQkqY3MrKyA9IFhZX0NPTE9SX0JMVF9DTUQgfCBCTFRfV1JJVEVfUkdCQSB8ICg2LTIpOwor
CQkqY3MrKyA9IEJMVF9ERVBUSF8zMiB8IEJMVF9ST1BfQ09MT1JfQ09QWSB8IFBBR0VfU0laRTsK
KwkJKmNzKysgPSAwOworCQkqY3MrKyA9IHZtYS0+c2l6ZSA+PiBQQUdFX1NISUZUIDw8IDE2IHwg
UEFHRV9TSVpFIC8gNDsKKwkJKmNzKysgPSB2bWEtPm5vZGUuc3RhcnQ7CisJCSpjcysrID0gdmFs
dWU7CisJCSpjcysrID0gTUlfTk9PUDsKKwkJKmNzKysgPSBNSV9OT09QOworCX0KKworCWludGVs
X3JpbmdfYWR2YW5jZShycSwgY3MpOworCisJcmV0dXJuIDA7Cit9CisKK2ludCBpOTE1X2dlbV9v
YmplY3RfZmlsbF9ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSAgICAg
c3RydWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJICAgICB1MzIgdmFsdWUpCit7CisJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOworCXN0cnVj
dCBpOTE1X2dlbV9jb250ZXh0ICpjdHggPSBjZS0+Z2VtX2NvbnRleHQ7CisJc3RydWN0IGk5MTVf
YWRkcmVzc19zcGFjZSAqdm07CisJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CisJc3RydWN0IGk5
MTVfdm1hICp2bWE7CisJaW50IGVycjsKKworCXZtID0gY3R4LT5wcGd0dCA/ICZjdHgtPnBwZ3R0
LT52bSA6ICZpOTE1LT5nZ3R0LnZtOworCisJdm1hID0gaTkxNV92bWFfaW5zdGFuY2Uob2JqLCB2
bSwgTlVMTCk7CisJaWYgKElTX0VSUih2bWEpKQorCQlyZXR1cm4gUFRSX0VSUih2bWEpOworCisJ
ZXJyID0gaTkxNV92bWFfcGluKHZtYSwgMCwgMCwgUElOX1VTRVIpOworCWlmICh1bmxpa2VseShl
cnIpKQorCQlyZXR1cm4gZXJyOworCisJaWYgKG9iai0+Y2FjaGVfZGlydHkpCisJCWk5MTVfZ2Vt
X2NsZmx1c2hfb2JqZWN0KG9iaiwgMCk7CisKKwlycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2Up
OworCWlmIChJU19FUlIocnEpKSB7CisJCWVyciA9IFBUUl9FUlIocnEpOworCQlnb3RvIG91dF91
bnBpbjsKKwl9CisKKwllcnIgPSBpOTE1X3JlcXVlc3RfYXdhaXRfb2JqZWN0KHJxLCBvYmosIHRy
dWUpOworCWlmICh1bmxpa2VseShlcnIpKQorCQlnb3RvIG91dF9yZXF1ZXN0OworCisJZXJyID0g
aW50ZWxfZW1pdF92bWFfZmlsbF9ibHQocnEsIHZtYSwgdmFsdWUpOworCWlmICh1bmxpa2VseShl
cnIpKQorCQlnb3RvIG91dF9yZXF1ZXN0OworCisJZXJyID0gaTkxNV92bWFfbW92ZV90b19hY3Rp
dmUodm1hLCBycSwgRVhFQ19PQkpFQ1RfV1JJVEUpOworb3V0X3JlcXVlc3Q6CisJaWYgKHVubGlr
ZWx5KGVycikpCisJCWk5MTVfcmVxdWVzdF9za2lwKHJxLCBlcnIpOworCisJaTkxNV9yZXF1ZXN0
X2FkZChycSk7CitvdXRfdW5waW46CisJaTkxNV92bWFfdW5waW4odm1hKTsKKwlyZXR1cm4gZXJy
OworfQorCisjaWYgSVNfRU5BQkxFRChDT05GSUdfRFJNX0k5MTVfU0VMRlRFU1QpCisjaW5jbHVk
ZSAic2VsZnRlc3RzL2k5MTVfZ2VtX29iamVjdF9ibHQuYyIKKyNlbmRpZgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fb2JqZWN0X2JsdC5oIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9nZW1fb2JqZWN0X2JsdC5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4
IDAwMDAwMDAwMDAwMC4uN2VjN2RlNmFjMGMwCi0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9nZW1fb2JqZWN0X2JsdC5oCkBAIC0wLDAgKzEsMjQgQEAKKy8qIFNQ
RFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJ
bnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX19JOTE1X0dFTV9PQkpFQ1RfQkxUX0hf
XworI2RlZmluZSBfX0k5MTVfR0VNX09CSkVDVF9CTFRfSF9fCisKKyNpbmNsdWRlIDxsaW51eC90
eXBlcy5oPgorCitzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdDsKK3N0cnVjdCBpbnRlbF9jb250
ZXh0Oworc3RydWN0IGk5MTVfcmVxdWVzdDsKK3N0cnVjdCBpOTE1X3ZtYTsKKworaW50IGludGVs
X2VtaXRfdm1hX2ZpbGxfYmx0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLAorCQkJICAgIHN0cnVj
dCBpOTE1X3ZtYSAqdm1hLAorCQkJICAgIHUzMiB2YWx1ZSk7CisKK2ludCBpOTE1X2dlbV9vYmpl
Y3RfZmlsbF9ibHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiwKKwkJCSAgICAgc3Ry
dWN0IGludGVsX2NvbnRleHQgKmNlLAorCQkJICAgICB1MzIgdmFsdWUpOworCisjZW5kaWYKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9jbGllbnRf
Ymx0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fY2xpZW50X2Js
dC5jCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uNTRiMTVkMjJlMzEw
Ci0tLSAvZGV2L251bGwKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVf
Z2VtX2NsaWVudF9ibHQuYwpAQCAtMCwwICsxLDEzMSBAQAorLy8gU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAorLyoKKyAqIENvcHlyaWdodCDCqSAyMDE5IEludGVsIENvcnBvcmF0aW9uCisg
Ki8KKworI2luY2x1ZGUgIi4uL2k5MTVfc2VsZnRlc3QuaCIKKworI2luY2x1ZGUgImlndF9mbHVz
aF90ZXN0LmgiCisjaW5jbHVkZSAibW9ja19kcm0uaCIKKyNpbmNsdWRlICJtb2NrX2NvbnRleHQu
aCIKKworc3RhdGljIGludCBpZ3RfY2xpZW50X2ZpbGwodm9pZCAqYXJnKQoreworCXN0cnVjdCBp
bnRlbF9jb250ZXh0ICpjZSA9IGFyZzsKKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9
IGNlLT5nZW1fY29udGV4dC0+aTkxNTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2Jq
OworCXN0cnVjdCBybmRfc3RhdGUgcHJuZzsKKwlJR1RfVElNRU9VVChlbmQpOworCXUzMiAqdmFk
ZHI7CisJaW50IGVyciA9IDA7CisKKwlwcmFuZG9tX3NlZWRfc3RhdGUoJnBybmcsIGk5MTVfc2Vs
ZnRlc3QucmFuZG9tX3NlZWQpOworCisJZG8geworCQl1MzIgc3ogPSBwcmFuZG9tX3UzMl9zdGF0
ZSgmcHJuZykgJSBTWl8zMk07CisJCXUzMiB2YWwgPSBwcmFuZG9tX3UzMl9zdGF0ZSgmcHJuZyk7
CisJCXUzMiBpOworCisJCXN6ID0gcm91bmRfdXAoc3osIFBBR0VfU0laRSk7CisKKwkJcHJfaW5m
bygiJXMgd2l0aCBzej0leCwgdmFsPSV4XG4iLCBfX2Z1bmNfXywgc3osIHZhbCk7CisKKwkJb2Jq
ID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9pbnRlcm5hbChpOTE1LCBzeik7CisJCWlmIChJU19F
UlIob2JqKSkgeworCQkJZXJyID0gUFRSX0VSUihvYmopOworCQkJZ290byBlcnJfZmx1c2g7CisJ
CX0KKworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBfV0Ip
OworCQlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQkJZXJyID0gUFRSX0VSUih2YWRkcik7CisJCQln
b3RvIGVycl9wdXQ7CisJCX0KKworCQkvKgorCQkgKiBYWFg6IFRoZSBnb2FsIGlzIG1vdmUgdGhp
cyB0byBnZXRfcGFnZXMsIHNvIHRyeSB0byBkaXJ0eSB0aGUKKwkJICogQ1BVIGNhY2hlIGZpcnN0
IHRvIGNoZWNrIHRoYXQgd2UgZG8gdGhlIHJlcXVpcmVkIGNsZmx1c2gKKwkJICogYmVmb3JlIHNj
aGVkdWxpbmcgdGhlIGJsdCBmb3IgIWxsYyBwbGF0Zm9ybXMuIFRoaXMgbWF0Y2hlcworCQkgKiBz
b21lIHZlcnNpb24gb2YgcmVhbGl0eSB3aGVyZSBhdCBnZXRfcGFnZXMgdGhlIHBhZ2VzCisJCSAq
IHRoZW1zZWx2ZXMgbWF5IG5vdCB5ZXQgYmUgY29oZXJlbnQgd2l0aCB0aGUgR1BVKHN3YXAtaW4p
LiBJZgorCQkgKiB3ZSBhcmUgbWlzc2luZyB0aGUgZmx1c2ggdGhlbiB3ZSBzaG91bGQgc2VlIHRo
ZSBzdGFsZSBjYWNoZQorCQkgKiB2YWx1ZXMgYWZ0ZXIgd2UgZG8gdGhlIHNldF90b19jcHVfZG9t
YWluIGFuZCBwaWNrIGl0IHVwIGFzIGEKKwkJICogdGVzdCBmYWlsdXJlLgorCQkgKi8KKwkJbWVt
c2V0MzIodmFkZHIsIHZhbCBeIDB4ZGVhZGJlYWYsIG9iai0+YmFzZS5zaXplIC8gc2l6ZW9mKHUz
MikpOworCisJCWlmICghKG9iai0+Y2FjaGVfY29oZXJlbnQgJiBJOTE1X0JPX0NBQ0hFX0NPSEVS
RU5UX0ZPUl9XUklURSkpCisJCQlvYmotPmNhY2hlX2RpcnR5ID0gdHJ1ZTsKKworCQllcnIgPSBp
OTE1X2dlbV9zY2hlZHVsZV9maWxsX3BhZ2VzX2JsdChvYmosIGNlLCBvYmotPm1tLnBhZ2VzLAor
CQkJCQkJICAgICAgICZvYmotPm1tLnBhZ2Vfc2l6ZXMsCisJCQkJCQkgICAgICAgdmFsKTsKKwkJ
aWYgKGVycikKKwkJCWdvdG8gZXJyX3VucGluOworCisJCS8qCisJCSAqIFhYWDogRm9yIG5vdyBk
byB0aGUgd2FpdCB3aXRob3V0IHRoZSBCS0wgdG8gZW5zdXJlIHdlIGRvbid0CisJCSAqIGRlYWRs
b2NrLgorCQkgKi8KKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X3dhaXQob2JqLAorCQkJCQkgICBJ
OTE1X1dBSVRfSU5URVJSVVBUSUJMRSB8CisJCQkJCSAgIEk5MTVfV0FJVF9BTEwsCisJCQkJCSAg
IE1BWF9TQ0hFRFVMRV9USU1FT1VUKTsKKwkJaWYgKGVycikKKwkJCWdvdG8gZXJyX3VucGluOwor
CisJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCQllcnIgPSBpOTE1X2dl
bV9vYmplY3Rfc2V0X3RvX2NwdV9kb21haW4ob2JqLCBmYWxzZSk7CisJCW11dGV4X3VubG9jaygm
aTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCWlmIChlcnIpCisJCQlnb3RvIGVycl91bnBpbjsK
KworCQlmb3IgKGkgPSAwOyBpIDwgb2JqLT5iYXNlLnNpemUgLyBzaXplb2YodTMyKTsgKytpKSB7
CisJCQlpZiAodmFkZHJbaV0gIT0gdmFsKSB7CisJCQkJcHJfZXJyKCJ2YWRkclsldV09JXgsIGV4
cGVjdGVkPSV4XG4iLCBpLAorCQkJCSAgICAgICB2YWRkcltpXSwgdmFsKTsKKwkJCQllcnIgPSAt
RUlOVkFMOworCQkJCWdvdG8gZXJyX3VucGluOworCQkJfQorCQl9CisKKwkJaTkxNV9nZW1fb2Jq
ZWN0X3VucGluX21hcChvYmopOworCisJCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0
ZXgpOworCQlfX2k5MTVfZ2VtX29iamVjdF9yZWxlYXNlX3VubGVzc19hY3RpdmUob2JqKTsKKwkJ
bXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwl9IHdoaWxlICghdGltZV9h
ZnRlcihqaWZmaWVzLCBlbmQpKTsKKworCWdvdG8gZXJyX2ZsdXNoOworCitlcnJfdW5waW46CisJ
aTkxNV9nZW1fb2JqZWN0X3VucGluX21hcChvYmopOworZXJyX3B1dDoKKwltdXRleF9sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKKwlfX2k5MTVfZ2VtX29iamVjdF9yZWxlYXNlX3VubGVz
c19hY3RpdmUob2JqKTsKKwltdXRleF91bmxvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOwor
ZXJyX2ZsdXNoOgorCW11dGV4X2xvY2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCWlndF9m
bHVzaF90ZXN0KGk5MTUsIEk5MTVfV0FJVF9MT0NLRUQpOworCW11dGV4X3VubG9jaygmaTkxNS0+
ZHJtLnN0cnVjdF9tdXRleCk7CisKKwlpZiAoZXJyID09IC1FTk9NRU0pCisJCWVyciA9IDA7CisK
KwlyZXR1cm4gZXJyOworfQorCitpbnQgaTkxNV9nZW1fY2xpZW50X2JsdF9saXZlX3NlbGZ0ZXN0
cyhzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKK3sKKwlzdGF0aWMgY29uc3Qgc3RydWN0
IGk5MTVfc3VidGVzdCB0ZXN0c1tdID0geworCQlTVUJURVNUKGlndF9jbGllbnRfZmlsbCksCisJ
fTsKKworCWlmIChpOTE1X3Rlcm1pbmFsbHlfd2VkZ2VkKGk5MTUpKQorCQlyZXR1cm4gMDsKKwor
CWlmICghSEFTX0VOR0lORShpOTE1LCBCQ1MwKSkKKwkJcmV0dXJuIDA7CisKKwlyZXR1cm4gaTkx
NV9zdWJ0ZXN0cyh0ZXN0cywgaTkxNS0+ZW5naW5lW0JDUzBdLT5rZXJuZWxfY29udGV4dCk7Cit9
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fb2Jq
ZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX29iamVj
dF9ibHQuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjkyMTZmMjRj
N2M4ZgotLS0gL2Rldi9udWxsCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9p
OTE1X2dlbV9vYmplY3RfYmx0LmMKQEAgLTAsMCArMSwxMTQgQEAKKy8vIFNQRFgtTGljZW5zZS1J
ZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBDb3Jwb3JhdGlv
bgorICovCisKKyNpbmNsdWRlICIuLi9pOTE1X3NlbGZ0ZXN0LmgiCisKKyNpbmNsdWRlICJpZ3Rf
Zmx1c2hfdGVzdC5oIgorI2luY2x1ZGUgIm1vY2tfZHJtLmgiCisjaW5jbHVkZSAibW9ja19jb250
ZXh0LmgiCisKK3N0YXRpYyBpbnQgaWd0X2ZpbGxfYmx0KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UgPSBhcmc7CisJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSBjZS0+Z2VtX2NvbnRleHQtPmk5MTU7CisJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9i
ajsKKwlzdHJ1Y3Qgcm5kX3N0YXRlIHBybmc7CisJSUdUX1RJTUVPVVQoZW5kKTsKKwl1MzIgKnZh
ZGRyOworCWludCBlcnIgPSAwOworCisJcHJhbmRvbV9zZWVkX3N0YXRlKCZwcm5nLCBpOTE1X3Nl
bGZ0ZXN0LnJhbmRvbV9zZWVkKTsKKworCWRvIHsKKwkJdTMyIHN6ID0gcHJhbmRvbV91MzJfc3Rh
dGUoJnBybmcpICUgU1pfMzJNOworCQl1MzIgdmFsID0gcHJhbmRvbV91MzJfc3RhdGUoJnBybmcp
OworCQl1MzIgaTsKKworCQlzeiA9IHJvdW5kX3VwKHN6LCBQQUdFX1NJWkUpOworCisJCXByX2lu
Zm8oIiVzIHdpdGggc3o9JXgsIHZhbD0leFxuIiwgX19mdW5jX18sIHN6LCB2YWwpOworCisJCW9i
aiA9IGk5MTVfZ2VtX29iamVjdF9jcmVhdGVfaW50ZXJuYWwoaTkxNSwgc3opOworCQlpZiAoSVNf
RVJSKG9iaikpIHsKKwkJCWVyciA9IFBUUl9FUlIodmFkZHIpOworCQkJZ290byBlcnJfZmx1c2g7
CisJCX0KKworCQl2YWRkciA9IGk5MTVfZ2VtX29iamVjdF9waW5fbWFwKG9iaiwgSTkxNV9NQVBf
V0IpOworCQlpZiAoSVNfRVJSKHZhZGRyKSkgeworCQkJZXJyID0gUFRSX0VSUih2YWRkcik7CisJ
CQlnb3RvIGVycl9wdXQ7CisJCX0KKworCQkvKgorCQkgKiBNYWtlIHN1cmUgdGhlIHBvdGVudGlh
bGx5IGFzeW5jIGNsZmx1c2ggZG9lcyBpdHMgam9iLCBpZgorCQkgKiByZXF1aXJlZC4KKwkJICov
CisJCW1lbXNldDMyKHZhZGRyLCB2YWwgXiAweGRlYWRiZWFmLCBvYmotPmJhc2Uuc2l6ZSAvIHNp
emVvZih1MzIpKTsKKworCQlpZiAoIShvYmotPmNhY2hlX2NvaGVyZW50ICYgSTkxNV9CT19DQUNI
RV9DT0hFUkVOVF9GT1JfV1JJVEUpKQorCQkJb2JqLT5jYWNoZV9kaXJ0eSA9IHRydWU7CisKKwkJ
bXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCWVyciA9IGk5MTVfZ2VtX29i
amVjdF9maWxsX2JsdChvYmosIGNlLCB2YWwpOworCQltdXRleF91bmxvY2soJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfdW5waW47CisKKwkJbXV0ZXhf
bG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9z
ZXRfdG9fY3B1X2RvbWFpbihvYmosIGZhbHNlKTsKKwkJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0u
c3RydWN0X211dGV4KTsKKwkJaWYgKGVycikKKwkJCWdvdG8gZXJyX3VucGluOworCisJCWZvciAo
aSA9IDA7IGkgPCBvYmotPmJhc2Uuc2l6ZSAvIHNpemVvZih1MzIpOyArK2kpIHsKKwkJCWlmICh2
YWRkcltpXSAhPSB2YWwpIHsKKwkJCQlwcl9lcnIoInZhZGRyWyV1XT0leCwgZXhwZWN0ZWQ9JXhc
biIsIGksCisJCQkJICAgICAgIHZhZGRyW2ldLCB2YWwpOworCQkJCWVyciA9IC1FSU5WQUw7CisJ
CQkJZ290byBlcnJfdW5waW47CisJCQl9CisJCX0KKworCQlpOTE1X2dlbV9vYmplY3RfdW5waW5f
bWFwKG9iaik7CisKKwkJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJCV9f
aTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfdW5sZXNzX2FjdGl2ZShvYmopOworCQltdXRleF91bmxv
Y2soJmk5MTUtPmRybS5zdHJ1Y3RfbXV0ZXgpOworCX0gd2hpbGUgKCF0aW1lX2FmdGVyKGppZmZp
ZXMsIGVuZCkpOworCisJZ290byBlcnJfZmx1c2g7CisKK2Vycl91bnBpbjoKKwlpOTE1X2dlbV9v
YmplY3RfdW5waW5fbWFwKG9iaik7CitlcnJfcHV0OgorCW11dGV4X2xvY2soJmk5MTUtPmRybS5z
dHJ1Y3RfbXV0ZXgpOworCV9faTkxNV9nZW1fb2JqZWN0X3JlbGVhc2VfdW5sZXNzX2FjdGl2ZShv
YmopOworCW11dGV4X3VubG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CitlcnJfZmx1c2g6
CisJbXV0ZXhfbG9jaygmaTkxNS0+ZHJtLnN0cnVjdF9tdXRleCk7CisJaWd0X2ZsdXNoX3Rlc3Qo
aTkxNSwgSTkxNV9XQUlUX0xPQ0tFRCk7CisJbXV0ZXhfdW5sb2NrKCZpOTE1LT5kcm0uc3RydWN0
X211dGV4KTsKKworCWlmIChlcnIgPT0gLUVOT01FTSkKKwkJZXJyID0gMDsKKworCXJldHVybiBl
cnI7Cit9CisKK2ludCBpOTE1X2dlbV9vYmplY3RfYmx0X2xpdmVfc2VsZnRlc3RzKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQoreworCXN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9zdWJ0
ZXN0IHRlc3RzW10gPSB7CisJCVNVQlRFU1QoaWd0X2ZpbGxfYmx0KSwKKwl9OworCisJaWYgKGk5
MTVfdGVybWluYWxseV93ZWRnZWQoaTkxNSkpCisJCXJldHVybiAwOworCisJaWYgKCFIQVNfRU5H
SU5FKGk5MTUsIEJDUzApKQorCQlyZXR1cm4gMDsKKworCXJldHVybiBpOTE1X3N1YnRlc3RzKHRl
c3RzLCBpOTE1LT5lbmdpbmVbQkNTMF0tPmtlcm5lbF9jb250ZXh0KTsKK30KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmggYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCmluZGV4
IDZkNzY2OTI1YWQwNC4uMzc5NzU3NGUxOTg0IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaTkxNV9saXZlX3NlbGZ0ZXN0cy5oCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2xpdmVfc2VsZnRlc3RzLmgKQEAgLTIzLDYgKzIzLDggQEAg
c2VsZnRlc3QoZ2VtLCBpOTE1X2dlbV9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGV2aWN0LCBp
OTE1X2dlbV9ldmljdF9saXZlX3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGh1Z2VwYWdlcywgaTkxNV9n
ZW1faHVnZV9wYWdlX2xpdmVfc2VsZnRlc3RzKQogc2VsZnRlc3QoY29udGV4dHMsIGk5MTVfZ2Vt
X2NvbnRleHRfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVzdChibHQsIGk5MTVfZ2VtX29iamVjdF9i
bHRfbGl2ZV9zZWxmdGVzdHMpCitzZWxmdGVzdChjbGllbnQsIGk5MTVfZ2VtX2NsaWVudF9ibHRf
bGl2ZV9zZWxmdGVzdHMpCiBzZWxmdGVzdChoYW5nY2hlY2ssIGludGVsX2hhbmdjaGVja19saXZl
X3NlbGZ0ZXN0cykKIHNlbGZ0ZXN0KGV4ZWNsaXN0cywgaW50ZWxfZXhlY2xpc3RzX2xpdmVfc2Vs
ZnRlc3RzKQogc2VsZnRlc3QoZ3VjLCBpbnRlbF9ndWNfbGl2ZV9zZWxmdGVzdCkKLS0gCjIuMjAu
MQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
