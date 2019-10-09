Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B49D1C60
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 01:04:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8376EA6B;
	Wed,  9 Oct 2019 23:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EDF9C6EA6B
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 23:04:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 16:04:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,277,1566889200"; d="scan'208";a="200284116"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by FMSMGA003.fm.intel.com with ESMTP; 09 Oct 2019 16:04:37 -0700
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Oct 2019 16:04:24 -0700
Message-Id: <20191009230424.6507-2-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
References: <20191009230424.6507-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/tgl: simplify the lrc register
 list for !RCS
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

VGhlcmUgYXJlIHNtYWxsIGRpZmZlcmVuY2VzIGJldHdlZW4gdGhlIGJsaXR0ZXIgYW5kIHRoZSB2
aWRlbyBlbmdpbmVzIGluCnRoZSB4Y3MgY29udGV4dCBpbWFnZSAoZS5nLiByZWdpc3RlcnMgMHgy
MDAgYW5kIDB4MjA0IG9ubHkgZXhpc3Qgb24gdGhlCmJsaXR0ZXIpLiBTaW5jZSB3ZSBuZXZlciBl
eHBsaWNpdGx5IHNldCBhIHZhbHVlIGZvciB0aG9zZSByZWdpc3RlciBhbmQKZ2l2ZW4gdGhhdCB3
ZSBkb24ndCBuZWVkIHRvIHVwZGF0ZSB0aGUgb2Zmc2V0cyBpbiB0aGUgbHJjIGltYWdlIHdoZW4g
d2UKY2hhbmdlIGVuZ2luZSB3aXRoaW4gdGhlIGNsYXNzIGZvciB2aXJ0dWFsIGVuZ2luZSBiZWNh
dXNlIHRoZSBIVyBjYW4KaGFuZGxlIHRoYXQsIGluc3RlYWQgb2YgaGF2aW5nIGEgc2VwYXJhdGUg
ZGVmaW5lIGZvciB0aGUgQkNTIHdlIGNhbgpqdXN0IHJlc3RyaWN0IHRoZSBwcm9ncmFtbWluZyB0
byB0aGUgcGFydCB3ZSdyZSBpbnRlcmVzdGVkIGluLCB3aGljaCBpcwpjb21tb24gYWNyb3NzIHRo
ZSBlbmdpbmVzLgoKQnNwZWM6IDQ1NTg0ClNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+CkNjOiBDaHJpcyBXaWxzb24g
PGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBh
bGFAbGludXguaW50ZWwuY29tPgpDYzogU3R1YXJ0IFN1bW1lcnMgPHN0dWFydC5zdW1tZXJzQGlu
dGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDY2ICsr
KystLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25z
KCspLCA1OCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCmluZGV4
IDc4YTEzNmMxMjM4NS4uNDg4YTE5YWI5MDhkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwpAQCAtNjY5LDY0ICs2NjksNiBAQCBzdGF0aWMgY29uc3QgdTggZ2VuMTJfeGNzX29mZnNl
dHNbXSA9IHsKIAlSRUcxNigweDI3NCksCiAJUkVHMTYoMHgyNzApLAogCi0JTk9QKDEzKSwKLQlM
UkkoMiwgUE9TVEVEKSwKLQlSRUcxNigweDIwMCksCi0JUkVHMTYoMHgyMDQpLAotCi0JTk9QKDEx
KSwKLQlMUkkoNTAsIFBPU1RFRCksCi0JUkVHMTYoMHg1ODgpLAotCVJFRzE2KDB4NTg4KSwKLQlS
RUcxNigweDU4OCksCi0JUkVHMTYoMHg1ODgpLAotCVJFRzE2KDB4NTg4KSwKLQlSRUcxNigweDU4
OCksCi0JUkVHKDB4MDI4KSwKLQlSRUcoMHgwOWMpLAotCVJFRygweDBjMCksCi0JUkVHKDB4MTc4
KSwKLQlSRUcoMHgxN2MpLAotCVJFRzE2KDB4MzU4KSwKLQlSRUcoMHgxNzApLAotCVJFRygweDE1
MCksCi0JUkVHKDB4MTU0KSwKLQlSRUcoMHgxNTgpLAotCVJFRzE2KDB4NDFjKSwKLQlSRUcxNigw
eDYwMCksCi0JUkVHMTYoMHg2MDQpLAotCVJFRzE2KDB4NjA4KSwKLQlSRUcxNigweDYwYyksCi0J
UkVHMTYoMHg2MTApLAotCVJFRzE2KDB4NjE0KSwKLQlSRUcxNigweDYxOCksCi0JUkVHMTYoMHg2
MWMpLAotCVJFRzE2KDB4NjIwKSwKLQlSRUcxNigweDYyNCksCi0JUkVHMTYoMHg2MjgpLAotCVJF
RzE2KDB4NjJjKSwKLQlSRUcxNigweDYzMCksCi0JUkVHMTYoMHg2MzQpLAotCVJFRzE2KDB4NjM4
KSwKLQlSRUcxNigweDYzYyksCi0JUkVHMTYoMHg2NDApLAotCVJFRzE2KDB4NjQ0KSwKLQlSRUcx
NigweDY0OCksCi0JUkVHMTYoMHg2NGMpLAotCVJFRzE2KDB4NjUwKSwKLQlSRUcxNigweDY1NCks
Ci0JUkVHMTYoMHg2NTgpLAotCVJFRzE2KDB4NjVjKSwKLQlSRUcxNigweDY2MCksCi0JUkVHMTYo
MHg2NjQpLAotCVJFRzE2KDB4NjY4KSwKLQlSRUcxNigweDY2YyksCi0JUkVHMTYoMHg2NzApLAot
CVJFRzE2KDB4Njc0KSwKLQlSRUcxNigweDY3OCksCi0JUkVHMTYoMHg2N2MpLAotCVJFRygweDA2
OCksCi0KIAlFTkQoKSwKIH07CiAKQEAgLTg1Nyw2ICs3OTksMTQgQEAgc3RhdGljIGNvbnN0IHU4
IGdlbjEyX3Jjc19vZmZzZXRzW10gPSB7CiAKIHN0YXRpYyBjb25zdCB1OCAqcmVnX29mZnNldHMo
Y29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogeworCS8qCisJICogdGhlIGdl
bjEyKyBsaXN0cyBvbmx5IGhhdmUgdGhlIHJlZ2lzdGVyIHdlIHByb2dyYW0gaW4gdGhlIGRlZmF1
bHQKKwkgKiBzdGF0ZSBiZWNhdXNlIHdlIGRvbid0IG5lZWQgdG8gdXBkYXRlIHRoZSBvZmZzZXRz
IHdoZW4gdXNpbmcgYQorCSAqIHZpcnR1YWwgZW5naW5lLgorCSAqLworCUdFTV9CVUdfT04oSU5U
RUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIgJiYKKwkJICAgIWludGVsX2VuZ2luZV9oYXNfcmVs
YXRpdmVfbW1pbyhlbmdpbmUpKTsKKwogCWlmIChlbmdpbmUtPmNsYXNzID09IFJFTkRFUl9DTEFT
UykgewogCQlpZiAoSU5URUxfR0VOKGVuZ2luZS0+aTkxNSkgPj0gMTIpCiAJCQlyZXR1cm4gZ2Vu
MTJfcmNzX29mZnNldHM7Ci0tIAoyLjIzLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
