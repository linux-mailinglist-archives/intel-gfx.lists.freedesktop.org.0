Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BCA389CA
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Jun 2019 14:08:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 471F789B65;
	Fri,  7 Jun 2019 12:08:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16C9A89B65
 for <Intel-gfx@lists.freedesktop.org>; Fri,  7 Jun 2019 12:08:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jun 2019 05:08:42 -0700
X-ExtLoop1: 1
Received: from ssirotki-mobl3.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.93.246])
 by fmsmga007.fm.intel.com with ESMTP; 07 Jun 2019 05:08:41 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri,  7 Jun 2019 13:08:26 +0100
Message-Id: <20190607120838.20514-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 00/12] Legacy mmio accessor macro pruning
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClNpbmNlIHdl
IHdhbnQgdG8gc3RvcCB1c2luZyB0aGUgbGVnYWN5IG1taW8gYWNjZXNzb3JzICh0aGUgb25lcyB3
aGljaCBjcmVhdGUgYQpoaWRkZW4gZGVwZW5kZW5jeSB0byBoYXZpbmcgYSBkZXZfcHJpdiBsb2Nh
bCkgdGhpcyBzZXJpZXMgcmVtb3ZlcyBhbGwgb2YgdGhlCm1vcmUgZXhvdGljIG9uZXMgYnkgY29u
dmVydGluZyB0aGUgY2FsbCBzaXRlcyB0byB1c2UgdGhlIG5ldyB1bmNvcmUgYWNjZXNzb3JzLgoK
VGhlIG9uZXMgbGVmdCBhcmUgb25seSB0aGUgc3RhbmRhcmQgMzItYml0IG9uZXMgYW5kIHRoZSBf
Rlcgc3VmZml4IGZsYXZvdXIuIEl0CndpbGwgYmUgYSBtdWNoIGJpZ2dlciAobW9yZSBpbnZhc2l2
ZSkgdGFzayB0byBnZXQgcmlkIG9mIHRob3NlLgoKQnV0IGV2ZW4gdGhvdWdoIHRoaXMgc2VyaWVz
IG9ubHkgcmVzdWx0cyBpbiBhIHBhcnRpYWwgY29udmVyc2lvbiwgYmVuZWZpdCBpcwp0aGF0IHdp
dGggcmVtb3ZlZCBtYWNyb3MgdGhlcmUgaXMgbm8gY2hhbmNlIHRvIHVzZSB0aGVtIGJ5IGFjY2lk
ZW50IGluIG5ldyBjb2RlLgoKVHZydGtvIFVyc3VsaW4gKDEyKToKICBkcm0vaTkxNTogRWxpbWlu
YXRlIHVudXNlZCBtbWlvIGFjY2Vzc29ycwogIGRybS9pOTE1OiBDb252ZXJ0IGk5MTVfcmVnX3Jl
YWRfaW9jdGwgdG8gdXNlIGV4cGxpY2l0IG1taW8gYWNjZXNzb3JzCiAgZHJtL2k5MTU6IENvbnZl
cnQgaWNsX2dldF9zdG9sZW5fcmVzZXJ2ZWQgdG8gdW5jb3JlIG1taW8gYWNjZXNzb3JzCiAgZHJt
L2k5MTU6IENvbnZlcnQgZ2VtX3JlY29yZF9mZW5jZXMgdG8gdW5jb3JlIG1taW8gYWNjZXNzb3Jz
CiAgZHJtL2k5MTU6IENvbnZlcnQgaW50ZWxfcmVhZF93bV9sYXRlbmN5IHRvIHVuY29yZSBtbWlv
IGFjY2Vzc29ycwogIGRybS9pOTE1OiBSZW1vdmUgSTkxNV9SRUFENjQgYW5kIEk5MTVfUkVBRDY0
XzMyeDIKICBkcm0vaTkxNTogUmVtb3ZlIEk5MTVfUkVBRDgKICBkcm0vaTkxNTogUmVtb3ZlIEk5
MTVfUE9TVElOR19SRUFEX0ZXCiAgZHJtL2k5MTU6IFJlbW92ZSBQT1NUSU5HX1JFQUQxNgogIGRy
bS9pOTE1OiBSZW1vdmUgSTkxNV9XUklURV9OT1RSQUNFCiAgZHJtL2k5MTU6IFJlbW92ZSBJOTE1
X1JFQURfTk9UUkFDRQogIGRybS9pOTE1OiBSZW1vdmUgSTkxNV9SRUFEMTYgYW5kIEk5MTVfV1JJ
VEUxNgoKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9zdG9sZW4uYyAgfCAgIDQg
Ky0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZS5oICAgICAgfCAgIDEgKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ2J1ZmZlci5jICB8ICAxNCArLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2RlYnVnZnMuYyAgICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Z0L2Zpcm13YXJlLmMgICAgICAgICB8ICAgNSArLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMgICAgICAgICB8ICAzNyArKy0tLQogZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9kcnYuYyAgICAgICAgICAgICB8ICAgNiArLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICB8ICAzMSAtLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X2dlbS5jICAgICAgICAgICAgIHwgICA5ICstCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2dwdV9lcnJvci5jICAgICAgIHwgMTE2ICsrKysrKysrLS0tLS0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9pcnEuYyAgICAgICAgICAgICB8ICA0MiArKystLS0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMgICAgICAgICAgICAgfCAgIDggKy0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX2NydC5jICAgICAgICAgICAgfCAgNDEgKysrLS0tCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9kcC5jICAgICAgICAgICAgIHwgIDQzICsrKy0tLQogZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfZ21idXMuYyAgICAgICAgICB8ICA1MyArKysrLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jIHwgICA0ICstCiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jICAgICAgICAgICAgIHwgMTQ5ICsrKysrKysrKysrLS0t
LS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYyAgICAgICAgIHwgIDIz
ICstLQogMTggZmlsZXMgY2hhbmdlZCwgMzIyIGluc2VydGlvbnMoKyksIDI2OCBkZWxldGlvbnMo
LSkKCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
