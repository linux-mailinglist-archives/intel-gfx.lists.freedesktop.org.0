Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EEE5BACB
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Jul 2019 13:34:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C091889CB3;
	Mon,  1 Jul 2019 11:34:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DF5289CBA
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Jul 2019 11:34:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Jul 2019 04:34:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,439,1557212400"; d="scan'208";a="186455091"
Received: from unknown (HELO delly.ger.corp.intel.com) ([10.249.141.63])
 by fmsmga004.fm.intel.com with ESMTP; 01 Jul 2019 04:34:54 -0700
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  1 Jul 2019 14:34:34 +0300
Message-Id: <20190701113437.4043-9-lionel.g.landwerlin@intel.com>
X-Mailer: git-send-email 2.21.0.392.gf8f6787159e
In-Reply-To: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
References: <20190701113437.4043-1-lionel.g.landwerlin@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 08/11] drm/i915: add a new perf configuration
 execbuf parameter
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

V2Ugd2FudCB0aGUgYWJpbGl0eSB0byBkaXNwYXRjaCBhIHNldCBvZiBjb21tYW5kIGJ1ZmZlciB0
byB0aGUKaGFyZHdhcmUsIGVhY2ggd2l0aCBhIGRpZmZlcmVudCBPQSBjb25maWd1cmF0aW9uLiBU
byBhY2hpZXZlIHRoaXMsIHdlCnJldXNlIGEgY291cGxlIG9mIGZpZWxkcyBmcm9tIHRoZSBleGVj
YnVmMiBzdHJ1Y3QgKEkgQ0FOIEhBWgpleGVjYnVmMz8pIHRvIG5vdGlmeSB3aGF0IE9BIGNvbmZp
Z3VyYXRpb24gc2hvdWxkIGJlIHVzZWQgZm9yIGEgYmF0Y2gKYnVmZmVyLiBUaGlzIHJlcXVpcmVz
IHRoZSBwcm9jZXNzIG1ha2luZyB0aGUgZXhlY2J1ZiB3aXRoIHRoaXMgZmxhZyB0bwphbHNvIG93
biB0aGUgcGVyZiBmZCBhdCB0aGUgdGltZSBvZiBleGVjYnVmLgoKdjI6IEFkZCBhIGVtaXRfb2Ff
Y29uZmlnKCkgdmZ1bmMgaW4gdGhlIGludGVsX2VuZ2luZV9jcyAoQ2hyaXMpCiAgICBNb3ZlIG9h
X2NvbmZpZyB2bWEgdG8gYWN0aXZlIChDaHJpcykKCnYzOiBEb24ndCBkcm9wIHRoZSBsb2NrIGZv
ciBlbmdpbmUgbG9va3VwIChDaHJpcykKICAgIE1vdmUgT0EgY29uZmlnIHZtYSB0byBhY3RpdmUg
YmVmb3JlIHdyaXRpbmcgdGhlIHJpbmdidWZmZXIgKENocmlzKQoKdjQ6IFJldXNlIGk5MTVfdXNl
cl9leHRlbnNpb25fZm4KICAgIFNlcmlhbGl6ZSByZXF1ZXN0cyB3aXRoIE9BIGNvbmZpZyB1cGRh
dGVzCgp2NTogQ2hlY2sgdGhhdCB0aGUgY2hhaW5lZCBleHRlbnNpb24gaXMgb25seSBwcmVzZW50
IG9uY2UgKENocmlzKQogICAgVW5waW4gb2Ffdm1hIGluIG1haW4gcGF0aCAoQ2hyaXMpCgpTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+Ci0tLQogLi4uL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jICAgIHwg
MTI0ICsrKysrKysrKysrKysrKysrLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5n
aW5lX2NzLmMgICAgIHwgICAyICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV90eXBlcy5oICB8ICAgOSArKwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMg
ICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZm
ZXIuYyAgICB8ICAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAg
ICAgICAgIHwgICA0ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmggICAgICAgICAg
ICAgICB8ICAgOCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wZXJmLmMgICAgICAgICAg
ICAgIHwgIDIzICsrLS0KIGluY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaCAgICAgICAgICAgICAg
ICAgICB8ICAzNyArKysrKysKIDkgZmlsZXMgY2hhbmdlZCwgMTk2IGluc2VydGlvbnMoKyksIDE2
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9leGVjYnVmZmVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCmluZGV4IGQzMDA0ZmMxZjk5NS4uZjkyYmFjZTljYWZmIDEwMDY0NAotLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMKQEAgLTI4Myw3ICsyODMs
MTIgQEAgc3RydWN0IGk5MTVfZXhlY2J1ZmZlciB7CiAJc3RydWN0IHsKIAkJdTY0IGZsYWdzOyAv
KiogQXZhaWxhYmxlIGV4dGVuc2lvbnMgcGFyYW1ldGVycyAqLwogCQlzdHJ1Y3QgZHJtX2k5MTVf
Z2VtX2V4ZWNidWZmZXJfZXh0X3RpbWVsaW5lX2ZlbmNlcyB0aW1lbGluZV9mZW5jZXM7CisJCXN0
cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9leHRfcGVyZiBwZXJmX2NvbmZpZzsKIAl9IGV4
dGVuc2lvbnM7CisKKwlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZzsgLyoqIEhXIGNv
bmZpZ3VyYXRpb24gZm9yIE9BLCBOVUxMIGlzIG5vdCBuZWVkZWQuICovCisJc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9hX2JvOworCXN0cnVjdCBpOTE1X3ZtYSAqb2Ffdm1hOwogfTsKIAog
I2RlZmluZSBleGVjX2VudHJ5KEVCLCBWTUEpICgmKEVCKS0+ZXhlY1soVk1BKS0+ZXhlY19mbGFn
cyAtIChFQiktPmZsYWdzXSkKQEAgLTEyMTAsNiArMTIxNSwyMSBAQCBzdGF0aWMgaW50IHJlbG9j
X21vdmVfdG9fZ3B1KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaTkxNV92bWEgKnZt
YSkKIAlyZXR1cm4gZXJyOwogfQogCisKK3N0YXRpYyBpbnQKK2dldF9leGVjYnVmX29hX2NvbmZp
ZyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYikKK3sKKwllYi0+b2FfY29uZmlnID0gTlVMTDsK
KwllYi0+b2Ffdm1hID0gTlVMTDsKKwllYi0+b2FfYm8gPSBOVUxMOworCisJaWYgKChlYi0+ZXh0
ZW5zaW9ucy5mbGFncyAmIEJJVChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVSRikpID09
IDApCisJCXJldHVybiAwOworCisJcmV0dXJuIGk5MTVfcGVyZl9nZXRfb2FfY29uZmlnKGViLT5p
OTE1LCBlYi0+ZXh0ZW5zaW9ucy5wZXJmX2NvbmZpZy5vYV9jb25maWcsCisJCQkJICAgICAgICZl
Yi0+b2FfY29uZmlnLCAmZWItPm9hX2JvKTsKK30KKwogc3RhdGljIGludCBfX3JlbG9jX2dwdV9h
bGxvYyhzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiwKIAkJCSAgICAgc3RydWN0IGk5MTVfdm1h
ICp2bWEsCiAJCQkgICAgIHVuc2lnbmVkIGludCBsZW4pCkBAIC0yMDcyLDYgKzIwOTIsNDAgQEAg
YWRkX3RvX2NsaWVudChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSwgc3RydWN0IGRybV9maWxlICpm
aWxlKQogCWxpc3RfYWRkX3RhaWwoJnJxLT5jbGllbnRfbGluaywgJnJxLT5maWxlX3ByaXYtPm1t
LnJlcXVlc3RfbGlzdCk7CiB9CiAKK3N0YXRpYyBpbnQgZWJfb2FfY29uZmlnKHN0cnVjdCBpOTE1
X2V4ZWNidWZmZXIgKmViKQoreworCWludCBlcnI7CisKKwlpZiAoIWViLT5vYV9jb25maWcpCisJ
CXJldHVybiAwOworCisJZXJyID0gaTkxNV9hY3RpdmVfcmVxdWVzdF9zZXQoJmViLT5lbmdpbmUt
Pmxhc3Rfb2FfY29uZmlnLAorCQkJCSAgICAgIGViLT5yZXF1ZXN0KTsKKwlpZiAoZXJyKQorCQly
ZXR1cm4gZXJyOworCisJLyoKKwkgKiBJZiB0aGUgY29uZmlnIGhhc24ndCBjaGFuZ2VkLCBza2lw
IHJlY29uZmlndXJpbmcgdGhlIEhXICh0aGlzIGlzCisJICogc3ViamVjdCB0byBhIGRlbGF5IHdl
IHdhbnQgdG8gYXZvaWQgaGFzIG11Y2ggYXMgcG9zc2libGUpLgorCSAqLworCWlmIChlYi0+b2Ff
Y29uZmlnID09IGViLT5pOTE1LT5wZXJmLm9hLmV4Y2x1c2l2ZV9zdHJlYW0tPm9hX2NvbmZpZykK
KwkJcmV0dXJuIDA7CisKKwllcnIgPSBpOTE1X3ZtYV9tb3ZlX3RvX2FjdGl2ZShlYi0+b2Ffdm1h
LCBlYi0+cmVxdWVzdCwgMCk7CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKworCWVyciA9IGVi
LT5lbmdpbmUtPmVtaXRfYmJfc3RhcnQoZWItPnJlcXVlc3QsCisJCQkJCWViLT5vYV92bWEtPm5v
ZGUuc3RhcnQsCisJCQkJCTAsIEk5MTVfRElTUEFUQ0hfU0VDVVJFKTsKKwlpZiAoZXJyKQorCQly
ZXR1cm4gZXJyOworCisJc3dhcChlYi0+b2FfY29uZmlnLCBlYi0+aTkxNS0+cGVyZi5vYS5leGNs
dXNpdmVfc3RyZWFtLT5vYV9jb25maWcpOworCisJcmV0dXJuIDA7Cit9CisKIHN0YXRpYyBpbnQg
ZWJfc3VibWl0KHN0cnVjdCBpOTE1X2V4ZWNidWZmZXIgKmViKQogewogCWludCBlcnI7CkBAIC0y
MDk4LDYgKzIxNTIsMTAgQEAgc3RhdGljIGludCBlYl9zdWJtaXQoc3RydWN0IGk5MTVfZXhlY2J1
ZmZlciAqZWIpCiAJCQlyZXR1cm4gZXJyOwogCX0KIAorCWVyciA9IGViX29hX2NvbmZpZyhlYik7
CisJaWYgKGVycikKKwkJcmV0dXJuIGVycjsKKwogCWVyciA9IGViLT5lbmdpbmUtPmVtaXRfYmJf
c3RhcnQoZWItPnJlcXVlc3QsCiAJCQkJCWViLT5iYXRjaC0+bm9kZS5zdGFydCArCiAJCQkJCWVi
LT5iYXRjaF9zdGFydF9vZmZzZXQsCkBAIC0yNTI4LDggKzI1ODYsMjUgQEAgc3RhdGljIGludCBw
YXJzZV90aW1lbGluZV9mZW5jZXMoc3RydWN0IGk5MTVfdXNlcl9leHRlbnNpb24gX191c2VyICpl
eHQsIHZvaWQgKmQKIAlyZXR1cm4gMDsKIH0KIAorc3RhdGljIGludCBwYXJzZV9wZXJmX2NvbmZp
ZyhzdHJ1Y3QgaTkxNV91c2VyX2V4dGVuc2lvbiBfX3VzZXIgKmV4dCwgdm9pZCAqZGF0YSkKK3sK
KwlzdHJ1Y3QgaTkxNV9leGVjYnVmZmVyICplYiA9IGRhdGE7CisKKwlpZiAoZWItPmV4dGVuc2lv
bnMuZmxhZ3MgJiBCSVQoRFJNX0k5MTVfR0VNX0VYRUNCVUZGRVJfRVhUX1BFUkYpKQorCQlyZXR1
cm4gLUVJTlZBTDsKKworCWlmIChjb3B5X2Zyb21fdXNlcigmZWItPmV4dGVuc2lvbnMucGVyZl9j
b25maWcsIGV4dCwKKwkJCSAgIHNpemVvZihlYi0+ZXh0ZW5zaW9ucy5wZXJmX2NvbmZpZykpKQor
CQlyZXR1cm4gLUVGQVVMVDsKKworCWViLT5leHRlbnNpb25zLmZsYWdzIHw9IEJJVChEUk1fSTkx
NV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVSRik7CisKKwlyZXR1cm4gMDsKK30KKwogc3RhdGljIGNv
bnN0IGk5MTVfdXNlcl9leHRlbnNpb25fZm4gZXhlY2J1Zl9leHRlbnNpb25zW10gPSB7CiAgICAg
ICAgIFtEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJTkVfRkVOQ0VTXSA9IHBhcnNl
X3RpbWVsaW5lX2ZlbmNlcywKKyAgICAgICAgW0RSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9Q
RVJGXSA9IHBhcnNlX3BlcmZfY29uZmlnLAogfTsKIAogc3RhdGljIGludApAQCAtMjYzNCw5ICsy
NzA5LDEzIEBAIGk5MTVfZ2VtX2RvX2V4ZWNidWZmZXIoc3RydWN0IGRybV9kZXZpY2UgKmRldiwK
IAkJfQogCX0KIAorCWVyciA9IGdldF9leGVjYnVmX29hX2NvbmZpZygmZWIpOworCWlmIChlcnIp
CisJCWdvdG8gZXJyX29hX2NvbmZpZzsKKwogCWVyciA9IGViX2NyZWF0ZSgmZWIpOwogCWlmIChl
cnIpCi0JCWdvdG8gZXJyX291dF9mZW5jZTsKKwkJZ290byBlcnJfb2FfY29uZmlnOwogCiAJR0VN
X0JVR19PTighZWIubHV0X3NpemUpOwogCkBAIC0yNjYxLDYgKzI3NDAsMjcgQEAgaTkxNV9nZW1f
ZG9fZXhlY2J1ZmZlcihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAogCWlmICh1bmxpa2VseShlcnIp
KQogCQlnb3RvIGVycl91bmxvY2s7CiAKKwlpZiAoZWIuZXh0ZW5zaW9ucy5mbGFncyAmIEJJVChE
Uk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVSRikpIHsKKwkJc3RydWN0IGZpbGUgKnBlcmZf
ZmlsZTsKKworCQlpZiAoIWludGVsX2VuZ2luZV9oYXNfb2EoZWIuZW5naW5lKSkgeworCQkJZXJy
ID0gLUVOT0RFVjsKKwkJCWdvdG8gZXJyX2VuZ2luZTsKKwkJfQorCisJCXBlcmZfZmlsZSA9IGZn
ZXQoZWIuZXh0ZW5zaW9ucy5wZXJmX2NvbmZpZy5wZXJmX2ZkKTsKKwkJaWYgKCFwZXJmX2ZpbGUp
CisJCQlnb3RvIGVycl9lbmdpbmU7CisKKwkJaWYgKHBlcmZfZmlsZS0+cHJpdmF0ZV9kYXRhICE9
IGViLmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0cmVhbSkKKwkJCWVyciA9IC1FSU5WQUw7CisK
KwkJZnB1dChwZXJmX2ZpbGUpOworCisJCWlmICh1bmxpa2VseShlcnIpKQorCQkJZ290byBlcnJf
ZW5naW5lOworCX0KKwogCWVyciA9IGViX3dhaXRfZm9yX3JpbmcoJmViKTsgLyogbWF5IHRlbXBv
cmFyaWx5IGRyb3Agc3RydWN0X211dGV4ICovCiAJaWYgKHVubGlrZWx5KGVycikpCiAJCWdvdG8g
ZXJyX2VuZ2luZTsKQEAgLTI3ODEsNiArMjg4MSwyMCBAQCBpOTE1X2dlbV9kb19leGVjYnVmZmVy
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJCX0KIAl9CiAKKwlpZiAoZWIuZXh0ZW5zaW9ucy5m
bGFncyAmIEJJVChEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfUEVSRikpIHsKKwkJZWIub2Ff
dm1hID0gaTkxNV92bWFfaW5zdGFuY2UoZWIub2FfYm8sCisJCQkJCSAgICAgICZlYi5lbmdpbmUt
Pmk5MTUtPmdndHQudm0sIE5VTEwpOworCQlpZiAodW5saWtlbHkoSVNfRVJSKGViLm9hX3ZtYSkp
KSB7CisJCQllcnIgPSBQVFJfRVJSKGViLm9hX3ZtYSk7CisJCQllYi5vYV92bWEgPSBOVUxMOwor
CQkJZ290byBlcnJfcmVxdWVzdDsKKwkJfQorCisJCWVyciA9IGk5MTVfdm1hX3BpbihlYi5vYV92
bWEsIDAsIDAsIFBJTl9HTE9CQUwpOworCQlpZiAoZXJyKQorCQkJZ290byBlcnJfcmVxdWVzdDsK
Kwl9CisKIAkvKgogCSAqIFdoaWxzdCB0aGlzIHJlcXVlc3QgZXhpc3RzLCBiYXRjaF9vYmogd2ls
bCBiZSBvbiB0aGUKIAkgKiBhY3RpdmVfbGlzdCwgYW5kIHNvIHdpbGwgaG9sZCB0aGUgYWN0aXZl
IHJlZmVyZW5jZS4gT25seSB3aGVuIHRoaXMKQEAgLTI4MjUsNyArMjkzOSwxMyBAQCBpOTE1X2dl
bV9kb19leGVjYnVmZmVyKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCiAJaTkxNV9nZW1fY29udGV4
dF9wdXQoZWIuZ2VtX2NvbnRleHQpOwogZXJyX2Rlc3Ryb3k6CiAJZWJfZGVzdHJveSgmZWIpOwot
ZXJyX291dF9mZW5jZToKK2Vycl9vYV9jb25maWc6CisJaWYgKGViLm9hX2NvbmZpZykgeworCQlp
OTE1X2dlbV9vYmplY3RfcHV0KGViLm9hX2JvKTsKKwkJaTkxNV9vYV9jb25maWdfcHV0KGViLm9h
X2NvbmZpZyk7CisJfQorCWlmIChlYi5vYV92bWEpCisJCWk5MTVfdm1hX3VucGluKGViLm9hX3Zt
YSk7CiAJaWYgKG91dF9mZW5jZV9mZCAhPSAtMSkKIAkJcHV0X3VudXNlZF9mZChvdXRfZmVuY2Vf
ZmQpOwogZXJyX2V4ZWNfZmVuY2U6CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2lu
ZV9jcy5jCmluZGV4IGQxNTA4ZjBiNGM4NC4uYjNlZTNlM2I1OGRkIDEwMDY0NAotLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYwpAQCAtODU5LDYgKzg1OSw4IEBAIGludCBpbnRl
bF9lbmdpbmVfaW5pdF9jb21tb24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJ
ZW5naW5lLT5zZXRfZGVmYXVsdF9zdWJtaXNzaW9uKGVuZ2luZSk7CiAKKwlJTklUX0FDVElWRV9S
RVFVRVNUKCZlbmdpbmUtPmxhc3Rfb2FfY29uZmlnKTsKKwogCXJldHVybiAwOwogCiBlcnJfdW5w
aW46CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlw
ZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV90eXBlcy5oCmluZGV4
IDdlMDU2MTE0MzQ0ZS4uMzlkYTQwOTM3ZTdmIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfdHlwZXMuaAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9lbmdpbmVfdHlwZXMuaApAQCAtMzYzLDYgKzM2Myw4IEBAIHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgewogCXN0cnVjdCBpOTE1X3dhX2xpc3Qgd2FfbGlzdDsKIAlzdHJ1Y3QgaTkxNV93
YV9saXN0IHdoaXRlbGlzdDsKIAorCXN0cnVjdCBpOTE1X2FjdGl2ZV9yZXF1ZXN0IGxhc3Rfb2Ff
Y29uZmlnOworCiAJdTMyICAgICAgICAgICAgIGlycV9rZWVwX21hc2s7IC8qIGFsd2F5cyBrZWVw
IHRoZXNlIGludGVycnVwdHMgKi8KIAl1MzIJCWlycV9lbmFibGVfbWFzazsgLyogYml0bWFzayB0
byBlbmFibGUgcmluZyBpbnRlcnJ1cHQgKi8KIAl2b2lkCQkoKmlycV9lbmFibGUpKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7CkBAIC00NDYsNiArNDQ4LDcgQEAgc3RydWN0IGludGVs
X2VuZ2luZV9jcyB7CiAjZGVmaW5lIEk5MTVfRU5HSU5FX0hBU19TRU1BUEhPUkVTICAgQklUKDMp
CiAjZGVmaW5lIEk5MTVfRU5HSU5FX05FRURTX0JSRUFEQ1JVTUJfVEFTS0xFVCBCSVQoNCkKICNk
ZWZpbmUgSTkxNV9FTkdJTkVfSVNfVklSVFVBTCAgICAgICBCSVQoNSkKKyNkZWZpbmUgSTkxNV9F
TkdJTkVfSEFTX09BICAgICAgICAgICBCSVQoNikKIAl1bnNpZ25lZCBpbnQgZmxhZ3M7CiAKIAkv
KgpAQCAtNTQxLDYgKzU0NCwxMiBAQCBpbnRlbF9lbmdpbmVfaXNfdmlydHVhbChjb25zdCBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJcmV0dXJuIGVuZ2luZS0+ZmxhZ3MgJiBJOTE1
X0VOR0lORV9JU19WSVJUVUFMOwogfQogCitzdGF0aWMgaW5saW5lIGJvb2wKK2ludGVsX2VuZ2lu
ZV9oYXNfb2EoY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCXJldHVy
biBlbmdpbmUtPmZsYWdzICYgSTkxNV9FTkdJTkVfSEFTX09BOworfQorCiAjZGVmaW5lIGluc3Rk
b25lX3NsaWNlX21hc2soZGV2X3ByaXZfXykgXAogCShJU19HRU4oZGV2X3ByaXZfXywgNykgPyBc
CiAJIDEgOiBSVU5USU1FX0lORk8oZGV2X3ByaXZfXyktPnNzZXUuc2xpY2VfbWFzaykKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKaW5kZXggY2NlODMzN2JkZjljLi4wMDFiNjk2ODM0ZjIg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCkBAIC0yNzY5LDYgKzI3NjksNyBAQCBp
bnQgaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb25fc2V0dXAoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQogCQllbmdpbmUtPmluaXRfY29udGV4dCA9IGdlbjhfaW5pdF9yY3NfY29udGV4
dDsKIAkJZW5naW5lLT5lbWl0X2ZsdXNoID0gZ2VuOF9lbWl0X2ZsdXNoX3JlbmRlcjsKIAkJZW5n
aW5lLT5lbWl0X2ZpbmlfYnJlYWRjcnVtYiA9IGdlbjhfZW1pdF9maW5pX2JyZWFkY3J1bWJfcmNz
OworCQllbmdpbmUtPmZsYWdzIHw9IEk5MTVfRU5HSU5FX0hBU19PQTsKIAl9CiAKIAlyZXR1cm4g
MDsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JpbmdidWZmZXIuYwppbmRleCAwMmE0
YTUyZTIwMTkuLjQ3NmQ0NjVmNzAxYyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfcmluZ2J1ZmZlci5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3JpbmdidWZmZXIuYwpAQCAtMjIwNiw4ICsyMjA2LDEwIEBAIHN0YXRpYyB2b2lkIHNldHVwX3Jj
cyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCWVuZ2luZS0+aXJxX2VuYWJsZV9t
YXNrID0gSTkxNV9VU0VSX0lOVEVSUlVQVDsKIAl9CiAKLQlpZiAoSVNfSEFTV0VMTChpOTE1KSkK
KwlpZiAoSVNfSEFTV0VMTChpOTE1KSkgewogCQllbmdpbmUtPmVtaXRfYmJfc3RhcnQgPSBoc3df
ZW1pdF9iYl9zdGFydDsKKwkJZW5naW5lLT5mbGFncyB8PSBJOTE1X0VOR0lORV9IQVNfT0E7CisJ
fQogCiAJZW5naW5lLT5yZXN1bWUgPSByY3NfcmVzdW1lOwogfQpkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2
LmMKaW5kZXggMDg4ZjlkMmFmM2ZhLi5hMDhjNjEyM2JmMzggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYwpAQCAtNDg3LDYgKzQ4NywxMCBAQCBzdGF0aWMgaW50IGk5MTVfZ2V0cGFyYW1faW9jdGwo
c3RydWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAljYXNlIEk5MTVfUEFSQU1fUEVS
Rl9SRVZJU0lPTjoKIAkJdmFsdWUgPSAxOwogCQlicmVhazsKKwljYXNlIEk5MTVfUEFSQU1fSEFT
X0VYRUNfUEVSRl9DT05GSUc6CisJCS8qIE9idmlvdXNseSByZXF1aXJlcyBwZXJmIHN1cHBvcnQu
ICovCisJCXZhbHVlID0gZGV2X3ByaXYtPnBlcmYuaW5pdGlhbGl6ZWQ7CisJCWJyZWFrOwogCWRl
ZmF1bHQ6CiAJCURSTV9ERUJVRygiVW5rbm93biBwYXJhbWV0ZXIgJWRcbiIsIHBhcmFtLT5wYXJh
bSk7CiAJCXJldHVybiAtRUlOVkFMOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9kcnYuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmgKaW5kZXggZmU5M2Ey
NjBiZDI4Li42NjQ1NTQxMTQ3MTggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJ2LmgKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuaApAQCAtMTExNiw3
ICsxMTE2LDcgQEAgc3RydWN0IGk5MTVfb2FfY29uZmlnIHsKIAogCXN0cnVjdCBsaXN0X2hlYWQg
dm1hX2xpbms7CiAKLQlhdG9taWNfdCByZWZfY291bnQ7CisJc3RydWN0IGtyZWYgcmVmOwogfTsK
IAogc3RydWN0IGk5MTVfcGVyZl9zdHJlYW07CkBAIC0yNjE1LDYgKzI2MTUsMTIgQEAgaW50IGk5
MTVfcGVyZl9nZXRfb2FfY29uZmlnKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LAogCQkJ
ICAgIGludCBtZXRyaWNzX3NldCwKIAkJCSAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKipvdXRf
Y29uZmlnLAogCQkJICAgIHN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICoqb3V0X29iaik7Cit2
b2lkIGk5MTVfb2FfY29uZmlnX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZik7CisKK3N0YXRpYyBp
bmxpbmUgdm9pZCBpOTE1X29hX2NvbmZpZ19wdXQoc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9j
b25maWcpCit7CisJa3JlZl9wdXQoJm9hX2NvbmZpZy0+cmVmLCBpOTE1X29hX2NvbmZpZ19yZWxl
YXNlKTsKK30KIAogLyogaTkxNV9nZW1fZXZpY3QuYyAqLwogaW50IF9fbXVzdF9jaGVjayBpOTE1
X2dlbV9ldmljdF9zb21ldGhpbmcoc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0sCmRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IDAzZTY5MDgyODJlMy4uNmI2NTliNWYxOTQ4IDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzY3LDEwICszNjcsOSBAQCBzdHJ1Y3QgcGVyZl9v
cGVuX3Byb3BlcnRpZXMgewogCWludCBvYV9wZXJpb2RfZXhwb25lbnQ7CiB9OwogCi1zdGF0aWMg
dm9pZCBwdXRfb2FfY29uZmlnKHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQordm9p
ZCBpOTE1X29hX2NvbmZpZ19yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpCiB7Ci0JaWYgKCFhdG9t
aWNfZGVjX2FuZF90ZXN0KCZvYV9jb25maWctPnJlZl9jb3VudCkpCi0JCXJldHVybjsKKwlzdHJ1
Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9IGNvbnRhaW5lcl9vZihyZWYsIHR5cGVvZigq
b2FfY29uZmlnKSwgcmVmKTsKIAogCWlmIChvYV9jb25maWctPm9iaikgewogCQlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IG9hX2NvbmZpZy0+aTkxNTsKQEAgLTQ4OCw3ICs0ODcsNyBA
QCBpbnQgaTkxNV9wZXJmX2dldF9vYV9jb25maWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsCiAJfQogCiAJaWYgKG91dF9jb25maWcpIHsKLQkJYXRvbWljX2luYygmb2FfY29uZmlnLT5y
ZWZfY291bnQpOworCQlrcmVmX2dldCgmb2FfY29uZmlnLT5yZWYpOwogCQkqb3V0X2NvbmZpZyA9
IG9hX2NvbmZpZzsKIAl9CiAKQEAgLTUxMCw3ICs1MDksNyBAQCBpbnQgaTkxNV9wZXJmX2dldF9v
YV9jb25maWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCiAJbXV0ZXhfdW5sb2NrKCZp
OTE1LT5wZXJmLm1ldHJpY3NfbG9jayk7CiAKIAlpZiAocmV0ICYmIG91dF9jb25maWcpIHsKLQkJ
cHV0X29hX2NvbmZpZyhvYV9jb25maWcpOworCQlpOTE1X29hX2NvbmZpZ19wdXQob2FfY29uZmln
KTsKIAkJKm91dF9jb25maWcgPSBOVUxMOwogCX0KIApAQCAtMTQ4NCw3ICsxNDgzLDcgQEAgc3Rh
dGljIHZvaWQgaTkxNV9vYV9zdHJlYW1fZGVzdHJveShzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAq
c3RyZWFtKQogCWlmIChzdHJlYW0tPmN0eCkKIAkJb2FfcHV0X3JlbmRlcl9jdHhfaWQoc3RyZWFt
KTsKIAotCXB1dF9vYV9jb25maWcoc3RyZWFtLT5vYV9jb25maWcpOworCWk5MTVfb2FfY29uZmln
X3B1dChzdHJlYW0tPm9hX2NvbmZpZyk7CiAKIAlpZiAoZGV2X3ByaXYtPnBlcmYub2Euc3B1cmlv
dXNfcmVwb3J0X3JzLm1pc3NlZCkgewogCQlEUk1fTk9URSgiJWQgc3B1cmlvdXMgT0EgcmVwb3J0
IG5vdGljZXMgc3VwcHJlc3NlZCBkdWUgdG8gcmF0ZWxpbWl0aW5nXG4iLApAQCAtMjQ3OSw3ICsy
NDc4LDcgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBpOTE1X3BlcmZf
c3RyZWFtICpzdHJlYW0sCiAJZnJlZV9vYV9idWZmZXIoZGV2X3ByaXYpOwogCiBlcnJfb2FfYnVm
X2FsbG9jOgotCXB1dF9vYV9jb25maWcoc3RyZWFtLT5vYV9jb25maWcpOworCWk5MTVfb2FfY29u
ZmlnX3B1dChzdHJlYW0tPm9hX2NvbmZpZyk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1
dCgmZGV2X3ByaXYtPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAJaW50ZWxfcnVudGltZV9wbV9w
dXQoJmRldl9wcml2LT5ydW50aW1lX3BtLCBzdHJlYW0tPndha2VyZWYpOwpAQCAtMzI5Niw3ICsz
Mjk1LDcgQEAgdm9pZCBpOTE1X3BlcmZfcmVnaXN0ZXIoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2KQogCQlnb3RvIHN5c2ZzX2Vycm9yOwogCiAJZGV2X3ByaXYtPnBlcmYub2EudGVz
dF9jb25maWcuaTkxNSA9IGRldl9wcml2OwotCWF0b21pY19zZXQoJmRldl9wcml2LT5wZXJmLm9h
LnRlc3RfY29uZmlnLnJlZl9jb3VudCwgMSk7CisJa3JlZl9pbml0KCZkZXZfcHJpdi0+cGVyZi5v
YS50ZXN0X2NvbmZpZy5yZWYpOwogCiAJZ290byBleGl0OwogCkBAIC0zNTUzLDcgKzM1NTIsNyBA
QCBpbnQgaTkxNV9wZXJmX2FkZF9jb25maWdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKIAl9CiAKIAlvYV9jb25maWctPmk5MTUgPSBkZXZfcHJpdjsKLQlhdG9taWNf
c2V0KCZvYV9jb25maWctPnJlZl9jb3VudCwgMSk7CisJa3JlZl9pbml0KCZvYV9jb25maWctPnJl
Zik7CiAKIAlpZiAoIXV1aWRfaXNfdmFsaWQoYXJncy0+dXVpZCkpIHsKIAkJRFJNX0RFQlVHKCJJ
bnZhbGlkIHV1aWQgZm9ybWF0IGZvciBPQSBjb25maWdcbiIpOwpAQCAtMzY1Miw3ICszNjUxLDcg
QEAgaW50IGk5MTVfcGVyZl9hZGRfY29uZmlnX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYs
IHZvaWQgKmRhdGEsCiBzeXNmc19lcnI6CiAJbXV0ZXhfdW5sb2NrKCZkZXZfcHJpdi0+cGVyZi5t
ZXRyaWNzX2xvY2spOwogcmVnX2VycjoKLQlwdXRfb2FfY29uZmlnKG9hX2NvbmZpZyk7CisJaTkx
NV9vYV9jb25maWdfcHV0KG9hX2NvbmZpZyk7CiAJRFJNX0RFQlVHKCJGYWlsZWQgdG8gYWRkIG5l
dyBPQSBjb25maWdcbiIpOwogCXJldHVybiBlcnI7CiB9CkBAIC0zNzA4LDcgKzM3MDcsNyBAQCBp
bnQgaTkxNV9wZXJmX3JlbW92ZV9jb25maWdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2UgKmRldiwg
dm9pZCAqZGF0YSwKIAogCURSTV9ERUJVRygiUmVtb3ZlZCBjb25maWcgJXMgaWQ9JWlcbiIsIG9h
X2NvbmZpZy0+dXVpZCwgb2FfY29uZmlnLT5pZCk7CiAKLQlwdXRfb2FfY29uZmlnKG9hX2NvbmZp
Zyk7CisJaTkxNV9vYV9jb25maWdfcHV0KG9hX2NvbmZpZyk7CiAKIAlyZXR1cm4gMDsKIApAQCAt
Mzg3OCw3ICszODc3LDcgQEAgc3RhdGljIGludCBkZXN0cm95X2NvbmZpZyhpbnQgaWQsIHZvaWQg
KnAsIHZvaWQgKmRhdGEpCiB7CiAJc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcgPSBw
OwogCi0JcHV0X29hX2NvbmZpZyhvYV9jb25maWcpOworCWk5MTVfb2FfY29uZmlnX3B1dChvYV9j
b25maWcpOwogCiAJcmV0dXJuIDA7CiB9CmRpZmYgLS1naXQgYS9pbmNsdWRlL3VhcGkvZHJtL2k5
MTVfZHJtLmggYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKaW5kZXggNmJkNzZhMGQyOWU1
Li45NmJjMDlhZjhjYzQgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvdWFwaS9kcm0vaTkxNV9kcm0uaAor
KysgYi9pbmNsdWRlL3VhcGkvZHJtL2k5MTVfZHJtLmgKQEAgLTYyMyw2ICs2MjMsMTYgQEAgdHlw
ZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfaXJxX3dhaXQgewogICovCiAjZGVmaW5lIEk5MTVfUEFSQU1f
SEFTX0VYRUNfVElNRUxJTkVfRkVOQ0VTIDU1CiAKKy8qCisgKiBSZXF1ZXN0IGFuIGk5MTUvcGVy
ZiBwZXJmb3JtYW5jZSBjb25maWd1cmF0aW9uIGNoYW5nZSBiZWZvcmUgcnVubmluZyB0aGUKKyAq
IGNvbW1hbmRzIGdpdmVuIGluIGFuIGV4ZWNidWYuCisgKgorICogUGVyZm9ybWFuY2UgY29uZmln
dXJhdGlvbiBJRCBhbmQgdGhlIGZpbGUgZGVzY3JpcHRvciBvZiB0aGUgaTkxNSBwZXJmCisgKiBz
dHJlYW0gYXJlIGdpdmVuIHRocm91Z2ggZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0X3BlcmYu
IFNlZQorICogSTkxNV9FWEVDX0VYVC4KKyAqLworI2RlZmluZSBJOTE1X1BBUkFNX0hBU19FWEVD
X1BFUkZfQ09ORklHIDU2CisKIC8qIE11c3QgYmUga2VwdCBjb21wYWN0IC0tIG5vIGhvbGVzIGFu
ZCB3ZWxsIGRvY3VtZW50ZWQgKi8KIAogdHlwZWRlZiBzdHJ1Y3QgZHJtX2k5MTVfZ2V0cGFyYW0g
ewpAQCAtMTAyNSw2ICsxMDM1LDEyIEBAIGVudW0gZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXJfZXh0
IHsKIAkgKi8KIAlEUk1fSTkxNV9HRU1fRVhFQ0JVRkZFUl9FWFRfVElNRUxJTkVfRkVOQ0VTID0g
MCwKIAorCS8qKgorCSAqIFRoaXMgaWRlbnRpZmllciBpcyBhc3NvY2lhdGVkIHdpdGgKKwkgKiBk
cm1faTkxNV9nZW1fZXhlY2J1ZmZlcl9wZXJmX2V4dC4KKwkgKi8KKwlEUk1fSTkxNV9HRU1fRVhF
Q0JVRkZFUl9FWFRfUEVSRiwKKwogCURSTV9JOTE1X0dFTV9FWEVDQlVGRkVSX0VYVF9NQVggLyog
bm9uLUFCSSAqLwogfTsKIApAQCAtMTA1NSw2ICsxMDcxLDI3IEBAIHN0cnVjdCBkcm1faTkxNV9n
ZW1fZXhlY2J1ZmZlcl9leHRfdGltZWxpbmVfZmVuY2VzIHsKIAlfX3U2NCB2YWx1ZXNfcHRyOwog
fTsKIAorc3RydWN0IGRybV9pOTE1X2dlbV9leGVjYnVmZmVyX2V4dF9wZXJmIHsKKwlzdHJ1Y3Qg
aTkxNV91c2VyX2V4dGVuc2lvbiBiYXNlOworCisJLyoqCisJICogUGVyZm9ybWFuY2UgZmlsZSBk
ZXNjcmlwdG9yIHJldHVybmVkIGJ5IERSTV9JT0NUTF9JOTE1X1BFUkZfT1BFTi4KKwkgKiBUaGlz
IGlzIHVzZWQgdG8gaWRlbnRpZnkgdGhhdCB0aGUgYXBwbGljYXRpb24KKwkgKi8KKwlfX3MzMiBw
ZXJmX2ZkOworCisJLyoqCisJICogVW51c2VkIGZvciBub3cuIE11c3QgYmUgY2xlYXJlZCB0byB6
ZXJvLgorCSAqLworCV9fdTMyIHBhZDsKKworCS8qKgorCSAqIE9BIGNvbmZpZ3VyYXRpb24gSUQg
dG8gc3dpdGNoIHRvIGJlZm9yZSBleGVjdXRpbmcgdGhlIGNvbW1hbmRzCisJICogYXNzb2NpYXRl
ZCB0byB0aGUgZXhlY2J1Zi4KKwkgKi8KKwlfX3U2NCBvYV9jb25maWc7Cit9OworCiBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX2V4ZWNidWZmZXIyIHsKIAkvKioKIAkgKiBMaXN0IG9mIGdlbV9leGVjX29i
amVjdDIgc3RydWN0cwotLSAKMi4yMS4wLjM5Mi5nZjhmNjc4NzE1OWUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
