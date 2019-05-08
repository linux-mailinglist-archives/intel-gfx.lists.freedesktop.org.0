Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C0C1791F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 14:11:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEA18898B7;
	Wed,  8 May 2019 12:11:13 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18120898B7;
 Wed,  8 May 2019 12:11:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 05:11:11 -0700
X-ExtLoop1: 1
Received: from jzapadkx-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.252.0.159])
 by fmsmga008.fm.intel.com with ESMTP; 08 May 2019 05:11:10 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed,  8 May 2019 13:10:43 +0100
Message-Id: <20190508121058.27038-7-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
References: <20190508121058.27038-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 06/21] gem_wsim: Use IGT uapi headers
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KCldlIGFyZSBt
b3ZpbmcgdG93YXJkcyBidW1waW5nIHRoZSB1QVBJIGhlYWRlcnMgbW9yZSBvZnRlbiBpbnN0ZWFk
IG9mIHVzaW5nCnRvbyBtdWNoIGxvY2FsIHN0cnVjdC9pb2N0bC9wYXJhbSBkZWZpbml0aW9ucyBz
aW5jZSB0aGUgbGF0dGVyIGFyZSBtb3JlCmNoYWxsZW5naW5nIGZvciByZWJhc2UgYW5kIG1haW50
ZW5hbmNlLgoKU2lnbmVkLW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4KLS0tCiBiZW5jaG1hcmtzL2dlbV93c2ltLmMgfCAxMiArKysrLS0tLS0tLS0KIDEg
ZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0
IGEvYmVuY2htYXJrcy9nZW1fd3NpbS5jIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCmluZGV4IDEw
ODRlOTVmYThkZi4uNjA5ZTY0ZjNkOWM4IDEwMDY0NAotLS0gYS9iZW5jaG1hcmtzL2dlbV93c2lt
LmMKKysrIGIvYmVuY2htYXJrcy9nZW1fd3NpbS5jCkBAIC00MSw3ICs0MSw2IEBACiAjaW5jbHVk
ZSA8bGltaXRzLmg+CiAjaW5jbHVkZSA8cHRocmVhZC5oPgogCi0KICNpbmNsdWRlICJpbnRlbF9j
aGlwc2V0LmgiCiAjaW5jbHVkZSAiaW50ZWxfcmVnLmgiCiAjaW5jbHVkZSAiZHJtLmgiCkBAIC01
Nyw5ICs1Niw2IEBACiAKICNpbmNsdWRlICJld21hLmgiCiAKLSNkZWZpbmUgTE9DQUxfSTkxNV9F
WEVDX0ZFTkNFX0lOICAgICAgICAgICAgICAoMTw8MTYpCi0jZGVmaW5lIExPQ0FMX0k5MTVfRVhF
Q19GRU5DRV9PVVQgICAgICAgICAgICAgKDE8PDE3KQotCiBlbnVtIGludGVsX2VuZ2luZV9pZCB7
CiAJUkNTLAogCUJDUywKQEAgLTg2NCw3ICs4NjAsNyBAQCBlYl91cGRhdGVfZmxhZ3Moc3RydWN0
IHdfc3RlcCAqdywgZW51bSBpbnRlbF9lbmdpbmVfaWQgZW5naW5lLAogCiAJaWd0X2Fzc2VydCh3
LT5lbWl0X2ZlbmNlIDw9IDApOwogCWlmICh3LT5lbWl0X2ZlbmNlKQotCQl3LT5lYi5mbGFncyB8
PSBMT0NBTF9JOTE1X0VYRUNfRkVOQ0VfT1VUOworCQl3LT5lYi5mbGFncyB8PSBJOTE1X0VYRUNf
RkVOQ0VfT1VUOwogfQogCiBzdGF0aWMgc3RydWN0IGRybV9pOTE1X2dlbV9leGVjX29iamVjdDIg
KgpAQCAtMTk5MywxNiArMTk4OSwxNiBAQCBkb19lYihzdHJ1Y3Qgd29ya2xvYWQgKndyaywgc3Ry
dWN0IHdfc3RlcCAqdywgZW51bSBpbnRlbF9lbmdpbmVfaWQgZW5naW5lLAogCQlpZ3RfYXNzZXJ0
KHRndCA+PSAwICYmIHRndCA8IHctPmlkeCk7CiAJCWlndF9hc3NlcnQod3JrLT5zdGVwc1t0Z3Rd
LmVtaXRfZmVuY2UgPiAwKTsKIAotCQl3LT5lYi5mbGFncyB8PSBMT0NBTF9JOTE1X0VYRUNfRkVO
Q0VfSU47CisJCXctPmViLmZsYWdzIHw9IEk5MTVfRVhFQ19GRU5DRV9JTjsKIAkJdy0+ZWIucnN2
ZDIgPSB3cmstPnN0ZXBzW3RndF0uZW1pdF9mZW5jZTsKIAl9CiAKLQlpZiAody0+ZWIuZmxhZ3Mg
JiBMT0NBTF9JOTE1X0VYRUNfRkVOQ0VfT1VUKQorCWlmICh3LT5lYi5mbGFncyAmIEk5MTVfRVhF
Q19GRU5DRV9PVVQpCiAJCWdlbV9leGVjYnVmX3dyKGZkLCAmdy0+ZWIpOwogCWVsc2UKIAkJZ2Vt
X2V4ZWNidWYoZmQsICZ3LT5lYik7CiAKLQlpZiAody0+ZWIuZmxhZ3MgJiBMT0NBTF9JOTE1X0VY
RUNfRkVOQ0VfT1VUKSB7CisJaWYgKHctPmViLmZsYWdzICYgSTkxNV9FWEVDX0ZFTkNFX09VVCkg
ewogCQl3LT5lbWl0X2ZlbmNlID0gdy0+ZWIucnN2ZDIgPj4gMzI7CiAJCWlndF9hc3NlcnQody0+
ZW1pdF9mZW5jZSA+IDApOwogCX0KLS0gCjIuMTkuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4
