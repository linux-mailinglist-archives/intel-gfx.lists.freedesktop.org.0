Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EC311BEDB
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 22:12:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0BF626EBE1;
	Wed, 11 Dec 2019 21:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 402986EBD7
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 21:12:44 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 13:12:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,303,1571727600"; d="scan'208";a="215904965"
Received: from dceraolo-linux.fm.intel.com ([10.1.27.145])
 by orsmga006.jf.intel.com with ESMTP; 11 Dec 2019 13:12:43 -0800
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 11 Dec 2019 13:12:41 -0800
Message-Id: <20191211211244.7831-3-daniele.ceraolospurio@intel.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
References: <20191211211244.7831-1-daniele.ceraolospurio@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC 2/5] drm/i915: Move struct intel_virtual_engine to
 its own header
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

RnJvbTogTWF0dGhldyBCcm9zdCA8bWF0dGhldy5icm9zdEBpbnRlbC5jb20+CgpUaGUgdXBjb21p
bmcgR3VDIHN1Ym1pc3Npb24gY29kZSB3aWxsIG5lZWQgdG8gdXNlIHRoZSBzdHJ1Y3R1cmUsIHNv
CnNwbGl0IGl0IHRvIGl0cyBvd24gZmlsZS4KClNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQnJvc3Qg
PG1hdHRoZXcuYnJvc3RAaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWxlIENlcmFvbG8g
U3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogSm9obiBIYXJyaXNv
biA8am9obi5jLmhhcnJpc29uQGludGVsLmNvbT4KQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hy
aXMtd2lsc29uLmNvLnVrPgpDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4
LmludGVsLmNvbT4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyAgICAg
ICAgICAgfCAxMDMgKysrKysrLS0tLS0tLS0tLS0tCiAuLi4vZHJtL2k5MTUvZ3QvaW50ZWxfdmly
dHVhbF9lbmdpbmVfdHlwZXMuaCAgfCAgNTcgKysrKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCA5
MiBpbnNlcnRpb25zKCspLCA2OCBkZWxldGlvbnMoLSkKIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF92aXJ0dWFsX2VuZ2luZV90eXBlcy5oCgpkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwppbmRleCA2ZDYxNDhlMTFmZDAuLmU2ZGVhMmQzYTVjMCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKQEAgLTE0Nyw2ICsxNDcsNyBAQAogI2lu
Y2x1ZGUgImludGVsX21vY3MuaCIKICNpbmNsdWRlICJpbnRlbF9yZXNldC5oIgogI2luY2x1ZGUg
ImludGVsX3JpbmcuaCIKKyNpbmNsdWRlICJpbnRlbF92aXJ0dWFsX2VuZ2luZV90eXBlcy5oIgog
I2luY2x1ZGUgImludGVsX3dvcmthcm91bmRzLmgiCiAKICNkZWZpbmUgUklOR19FWEVDTElTVF9R
RlVMTAkJKDEgPDwgMHgyKQpAQCAtMTgwLDUyICsxODEsMTEgQEAKICNkZWZpbmUgV0FfVEFJTF9E
V09SRFMgMgogI2RlZmluZSBXQV9UQUlMX0JZVEVTIChzaXplb2YodTMyKSAqIFdBX1RBSUxfRFdP
UkRTKQogCi1zdHJ1Y3QgdmlydHVhbF9lbmdpbmUgewotCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3Mg
YmFzZTsKLQlzdHJ1Y3QgaW50ZWxfY29udGV4dCBjb250ZXh0OwotCi0JLyoKLQkgKiBXZSBhbGxv
dyBvbmx5IGEgc2luZ2xlIHJlcXVlc3QgdGhyb3VnaCB0aGUgdmlydHVhbCBlbmdpbmUgYXQgYSB0
aW1lCi0JICogKGVhY2ggcmVxdWVzdCBpbiB0aGUgdGltZWxpbmUgd2FpdHMgZm9yIHRoZSBjb21w
bGV0aW9uIGZlbmNlIG9mCi0JICogdGhlIHByZXZpb3VzIGJlZm9yZSBiZWluZyBzdWJtaXR0ZWQp
LiBCeSByZXN0cmljdGluZyBvdXJzZWx2ZXMgdG8KLQkgKiBvbmx5IHN1Ym1pdHRpbmcgYSBzaW5n
bGUgcmVxdWVzdCwgZWFjaCByZXF1ZXN0IGlzIHBsYWNlZCBvbiB0byBhCi0JICogcGh5c2ljYWwg
dG8gbWF4aW1pc2UgbG9hZCBzcHJlYWRpbmcgKGJ5IHZpcnR1ZSBvZiB0aGUgbGF0ZSBncmVlZHkK
LQkgKiBzY2hlZHVsaW5nIC0tIGVhY2ggcmVhbCBlbmdpbmUgdGFrZXMgdGhlIG5leHQgYXZhaWxh
YmxlIHJlcXVlc3QKLQkgKiB1cG9uIGlkbGluZykuCi0JICovCi0Jc3RydWN0IGk5MTVfcmVxdWVz
dCAqcmVxdWVzdDsKLQotCS8qCi0JICogV2Uga2VlcCBhIHJidHJlZSBvZiBhdmFpbGFibGUgdmly
dHVhbCBlbmdpbmVzIGluc2lkZSBlYWNoIHBoeXNpY2FsCi0JICogZW5naW5lLCBzb3J0ZWQgYnkg
cHJpb3JpdHkuIEhlcmUgd2UgcHJlYWxsb2NhdGUgdGhlIG5vZGVzIHdlIG5lZWQKLQkgKiBmb3Ig
dGhlIHZpcnR1YWwgZW5naW5lLCBpbmRleGVkIGJ5IHBoeXNpY2FsX2VuZ2luZS0+aWQuCi0JICov
Ci0Jc3RydWN0IHZlX25vZGUgewotCQlzdHJ1Y3QgcmJfbm9kZSByYjsKLQkJaW50IHByaW87Ci0J
fSBub2Rlc1tJOTE1X05VTV9FTkdJTkVTXTsKLQotCS8qCi0JICogS2VlcCB0cmFjayBvZiBib25k
ZWQgcGFpcnMgLS0gcmVzdHJpY3Rpb25zIHVwb24gb24gb3VyIHNlbGVjdGlvbgotCSAqIG9mIHBo
eXNpY2FsIGVuZ2luZXMgYW55IHBhcnRpY3VsYXIgcmVxdWVzdCBtYXkgYmUgc3VibWl0dGVkIHRv
LgotCSAqIElmIHdlIHJlY2VpdmUgYSBzdWJtaXQtZmVuY2UgZnJvbSBhIG1hc3RlciBlbmdpbmUs
IHdlIHdpbGwgb25seQotCSAqIHVzZSBvbmUgb2Ygc2libGluZ19tYXNrIHBoeXNpY2FsIGVuZ2lu
ZXMuCi0JICovCi0Jc3RydWN0IHZlX2JvbmQgewotCQljb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICptYXN0ZXI7Ci0JCWludGVsX2VuZ2luZV9tYXNrX3Qgc2libGluZ19tYXNrOwotCX0gKmJv
bmRzOwotCXVuc2lnbmVkIGludCBudW1fYm9uZHM7Ci0KLQkvKiBBbmQgZmluYWxseSwgd2hpY2gg
cGh5c2ljYWwgZW5naW5lcyB0aGlzIHZpcnR1YWwgZW5naW5lIG1hcHMgb250by4gKi8KLQl1bnNp
Z25lZCBpbnQgbnVtX3NpYmxpbmdzOwotCXN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKnNpYmxpbmdz
WzBdOwotfTsKLQotc3RhdGljIHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdG9fdmlydHVhbF9lbmdp
bmUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQorc3RhdGljIHN0cnVjdCBpbnRlbF92
aXJ0dWFsX2VuZ2luZSAqCit0b192aXJ0dWFsX2VuZ2luZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICplbmdpbmUpCiB7CiAJR0VNX0JVR19PTighaW50ZWxfZW5naW5lX2lzX3ZpcnR1YWwoZW5naW5l
KSk7Ci0JcmV0dXJuIGNvbnRhaW5lcl9vZihlbmdpbmUsIHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSwg
YmFzZSk7CisJcmV0dXJuIGNvbnRhaW5lcl9vZihlbmdpbmUsIHN0cnVjdCBpbnRlbF92aXJ0dWFs
X2VuZ2luZSwgYmFzZSk7CiB9CiAKIHN0YXRpYyBpbnQgbHJfY29udGV4dF9hbGxvYyhzdHJ1Y3Qg
aW50ZWxfY29udGV4dCAqY2UsCkBAIC0zODQsNyArMzQ0LDcgQEAgc3RhdGljIGlubGluZSBib29s
IG5lZWRfcHJlZW1wdChjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCXJl
dHVybiB0cnVlOwogCiAJaWYgKHJiKSB7Ci0JCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPQor
CQlzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlID0KIAkJCXJiX2VudHJ5KHJiLCB0eXBl
b2YoKnZlKSwgbm9kZXNbZW5naW5lLT5pZF0ucmIpOwogCQlib29sIHByZWVtcHQgPSBmYWxzZTsK
IApAQCAtMTE0NCw3ICsxMTA0LDggQEAgZXhlY2xpc3RzX3NjaGVkdWxlX2luKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLCBpbnQgaWR4KQogCiBzdGF0aWMgdm9pZCBraWNrX3NpYmxpbmdzKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCiB7Ci0Jc3RydWN0
IHZpcnR1YWxfZW5naW5lICp2ZSA9IGNvbnRhaW5lcl9vZihjZSwgdHlwZW9mKCp2ZSksIGNvbnRl
eHQpOworCXN0cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAqdmUgPQorCQljb250YWluZXJfb2Yo
Y2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpuZXh0ID0g
UkVBRF9PTkNFKHZlLT5yZXF1ZXN0KTsKIAogCWlmIChuZXh0ICYmIG5leHQtPmV4ZWN1dGlvbl9t
YXNrICYgfnJxLT5leGVjdXRpb25fbWFzaykKQEAgLTE0NDgsNyArMTQwOSw3IEBAIHN0YXRpYyB2
b2lkIHZpcnR1YWxfdXBkYXRlX3JlZ2lzdGVyX29mZnNldHModTMyICpyZWdzLAogCXNldF9vZmZz
ZXRzKHJlZ3MsIHJlZ19vZmZzZXRzKGVuZ2luZSksIGVuZ2luZSk7CiB9CiAKLXN0YXRpYyBib29s
IHZpcnR1YWxfbWF0Y2hlcyhjb25zdCBzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlLAorc3RhdGlj
IGJvb2wgdmlydHVhbF9tYXRjaGVzKGNvbnN0IHN0cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAq
dmUsCiAJCQkgICAgY29uc3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEsCiAJCQkgICAgY29uc3Qg
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogewpAQCAtMTQ3Myw3ICsxNDM0LDcgQEAg
c3RhdGljIGJvb2wgdmlydHVhbF9tYXRjaGVzKGNvbnN0IHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAq
dmUsCiAJcmV0dXJuIHRydWU7CiB9CiAKLXN0YXRpYyB2b2lkIHZpcnR1YWxfeGZlcl9icmVhZGNy
dW1icyhzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlLAorc3RhdGljIHZvaWQgdmlydHVhbF94ZmVy
X2JyZWFkY3J1bWJzKHN0cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAqdmUsCiAJCQkJICAgICBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqb2xkID0gdmUtPnNpYmxpbmdzWzBdOwpAQCAtMTY3MCw3ICsxNjMxLDcgQEAgc3RhdGljIHZv
aWQgZXhlY2xpc3RzX2RlcXVldWUoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCSAq
LwogCiAJZm9yIChyYiA9IHJiX2ZpcnN0X2NhY2hlZCgmZXhlY2xpc3RzLT52aXJ0dWFsKTsgcmI7
ICkgewotCQlzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0KKwkJc3RydWN0IGludGVsX3ZpcnR1
YWxfZW5naW5lICp2ZSA9CiAJCQlyYl9lbnRyeShyYiwgdHlwZW9mKCp2ZSksIG5vZGVzW2VuZ2lu
ZS0+aWRdLnJiKTsKIAkJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEgPSBSRUFEX09OQ0UodmUtPnJl
cXVlc3QpOwogCkBAIC0xNzg2LDcgKzE3NDcsNyBAQCBzdGF0aWMgdm9pZCBleGVjbGlzdHNfZGVx
dWV1ZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJfQogCiAJd2hpbGUgKHJiKSB7
IC8qIFhYWCB2aXJ0dWFsIGlzIGFsd2F5cyB0YWtpbmcgcHJlY2VkZW5jZSAqLwotCQlzdHJ1Y3Qg
dmlydHVhbF9lbmdpbmUgKnZlID0KKwkJc3RydWN0IGludGVsX3ZpcnR1YWxfZW5naW5lICp2ZSA9
CiAJCQlyYl9lbnRyeShyYiwgdHlwZW9mKCp2ZSksIG5vZGVzW2VuZ2luZS0+aWRdLnJiKTsKIAkJ
c3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAKQEAgLTMyMzcsNyArMzE5OCw3IEBAIHN0YXRpYyB2
b2lkIGV4ZWNsaXN0c19jYW5jZWxfcmVxdWVzdHMoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQogCiAJLyogQ2FuY2VsIGFsbCBhdHRhY2hlZCB2aXJ0dWFsIGVuZ2luZXMgKi8KIAl3aGls
ZSAoKHJiID0gcmJfZmlyc3RfY2FjaGVkKCZleGVjbGlzdHMtPnZpcnR1YWwpKSkgewotCQlzdHJ1
Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0KKwkJc3RydWN0IGludGVsX3ZpcnR1YWxfZW5naW5lICp2
ZSA9CiAJCQlyYl9lbnRyeShyYiwgdHlwZW9mKCp2ZSksIG5vZGVzW2VuZ2luZS0+aWRdLnJiKTsK
IAogCQlyYl9lcmFzZV9jYWNoZWQocmIsICZleGVjbGlzdHMtPnZpcnR1YWwpOwpAQCAtNDE5OCwx
NCArNDE1OSwxNCBAQCBzdGF0aWMgaW50IGxyX2NvbnRleHRfYWxsb2Moc3RydWN0IGludGVsX2Nv
bnRleHQgKmNlLAogCXJldHVybiByZXQ7CiB9CiAKLXN0YXRpYyBzdHJ1Y3QgbGlzdF9oZWFkICp2
aXJ0dWFsX3F1ZXVlKHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUpCitzdGF0aWMgc3RydWN0IGxp
c3RfaGVhZCAqdmlydHVhbF9xdWV1ZShzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlKQog
ewogCXJldHVybiAmdmUtPmJhc2UuZXhlY2xpc3RzLmRlZmF1bHRfcHJpb2xpc3QucmVxdWVzdHNb
MF07CiB9CiAKIHN0YXRpYyB2b2lkIHZpcnR1YWxfY29udGV4dF9kZXN0cm95KHN0cnVjdCBrcmVm
ICprcmVmKQogewotCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPQorCXN0cnVjdCBpbnRlbF92
aXJ0dWFsX2VuZ2luZSAqdmUgPQogCQljb250YWluZXJfb2Yoa3JlZiwgdHlwZW9mKCp2ZSksIGNv
bnRleHQucmVmKTsKIAl1bnNpZ25lZCBpbnQgbjsKIApAQCAtNDIzOSw3ICs0MjAwLDcgQEAgc3Rh
dGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2Rlc3Ryb3koc3RydWN0IGtyZWYgKmtyZWYpCiAJa2Zy
ZWUodmUpOwogfQogCi1zdGF0aWMgdm9pZCB2aXJ0dWFsX2VuZ2luZV9pbml0aWFsX2hpbnQoc3Ry
dWN0IHZpcnR1YWxfZW5naW5lICp2ZSkKK3N0YXRpYyB2b2lkIHZpcnR1YWxfZW5naW5lX2luaXRp
YWxfaGludChzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlKQogewogCWludCBzd3A7CiAK
QEAgLTQyNjgsNyArNDIyOSw4IEBAIHN0YXRpYyB2b2lkIHZpcnR1YWxfZW5naW5lX2luaXRpYWxf
aGludChzdHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlKQogCiBzdGF0aWMgaW50IHZpcnR1YWxfY29u
dGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogewotCXN0cnVjdCB2aXJ0dWFsX2Vu
Z2luZSAqdmUgPSBjb250YWluZXJfb2YoY2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKKwlzdHJ1
Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlID0KKwkJY29udGFpbmVyX29mKGNlLCB0eXBlb2Yo
KnZlKSwgY29udGV4dCk7CiAJaW50IGVycjsKIAogCS8qIE5vdGU6IHdlIG11c3QgdXNlIGEgcmVh
bCBlbmdpbmUgY2xhc3MgZm9yIHNldHRpbmcgdXAgcmVnIHN0YXRlICovCkBAIC00MjgyLDcgKzQy
NDQsOCBAQCBzdGF0aWMgaW50IHZpcnR1YWxfY29udGV4dF9waW4oc3RydWN0IGludGVsX2NvbnRl
eHQgKmNlKQogCiBzdGF0aWMgdm9pZCB2aXJ0dWFsX2NvbnRleHRfZW50ZXIoc3RydWN0IGludGVs
X2NvbnRleHQgKmNlKQogewotCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSBjb250YWluZXJf
b2YoY2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKKwlzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdp
bmUgKnZlID0KKwkJY29udGFpbmVyX29mKGNlLCB0eXBlb2YoKnZlKSwgY29udGV4dCk7CiAJdW5z
aWduZWQgaW50IG47CiAKIAlmb3IgKG4gPSAwOyBuIDwgdmUtPm51bV9zaWJsaW5nczsgbisrKQpA
QCAtNDI5Myw3ICs0MjU2LDggQEAgc3RhdGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2VudGVyKHN0
cnVjdCBpbnRlbF9jb250ZXh0ICpjZSkKIAogc3RhdGljIHZvaWQgdmlydHVhbF9jb250ZXh0X2V4
aXQoc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQogewotCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAq
dmUgPSBjb250YWluZXJfb2YoY2UsIHR5cGVvZigqdmUpLCBjb250ZXh0KTsKKwlzdHJ1Y3QgaW50
ZWxfdmlydHVhbF9lbmdpbmUgKnZlID0KKwkJY29udGFpbmVyX29mKGNlLCB0eXBlb2YoKnZlKSwg
Y29udGV4dCk7CiAJdW5zaWduZWQgaW50IG47CiAKIAlpbnRlbF90aW1lbGluZV9leGl0KGNlLT50
aW1lbGluZSk7CkBAIC00MzEyLDcgKzQyNzYsOCBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVs
X2NvbnRleHRfb3BzIHZpcnR1YWxfY29udGV4dF9vcHMgPSB7CiAJLmRlc3Ryb3kgPSB2aXJ0dWFs
X2NvbnRleHRfZGVzdHJveSwKIH07CiAKLXN0YXRpYyBpbnRlbF9lbmdpbmVfbWFza190IHZpcnR1
YWxfc3VibWlzc2lvbl9tYXNrKHN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUpCitzdGF0aWMgaW50
ZWxfZW5naW5lX21hc2tfdAordmlydHVhbF9zdWJtaXNzaW9uX21hc2soc3RydWN0IGludGVsX3Zp
cnR1YWxfZW5naW5lICp2ZSkKIHsKIAlzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycTsKIAlpbnRlbF9l
bmdpbmVfbWFza190IG1hc2s7CkBAIC00MzM5LDcgKzQzMDQsOCBAQCBzdGF0aWMgaW50ZWxfZW5n
aW5lX21hc2tfdCB2aXJ0dWFsX3N1Ym1pc3Npb25fbWFzayhzdHJ1Y3QgdmlydHVhbF9lbmdpbmUg
KnZlKQogCiBzdGF0aWMgdm9pZCB2aXJ0dWFsX3N1Ym1pc3Npb25fdGFza2xldCh1bnNpZ25lZCBs
b25nIGRhdGEpCiB7Ci0Jc3RydWN0IHZpcnR1YWxfZW5naW5lICogY29uc3QgdmUgPSAoc3RydWN0
IHZpcnR1YWxfZW5naW5lICopZGF0YTsKKwlzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKiBj
b25zdCB2ZSA9CisJCShzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKilkYXRhOwogCWNvbnN0
IGludCBwcmlvID0gdmUtPmJhc2UuZXhlY2xpc3RzLnF1ZXVlX3ByaW9yaXR5X2hpbnQ7CiAJaW50
ZWxfZW5naW5lX21hc2tfdCBtYXNrOwogCXVuc2lnbmVkIGludCBuOwpAQCAtNDQxOSw3ICs0Mzg1
LDcgQEAgc3RhdGljIHZvaWQgdmlydHVhbF9zdWJtaXNzaW9uX3Rhc2tsZXQodW5zaWduZWQgbG9u
ZyBkYXRhKQogCiBzdGF0aWMgdm9pZCB2aXJ0dWFsX3N1Ym1pdF9yZXF1ZXN0KHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxKQogewotCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFs
X2VuZ2luZShycS0+ZW5naW5lKTsKKwlzdHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlID0g
dG9fdmlydHVhbF9lbmdpbmUocnEtPmVuZ2luZSk7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqb2xk
OwogCXVuc2lnbmVkIGxvbmcgZmxhZ3M7CiAKQEAgLTQ0NTgsNyArNDQyNCw3IEBAIHN0YXRpYyB2
b2lkIHZpcnR1YWxfc3VibWl0X3JlcXVlc3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB9CiAK
IHN0YXRpYyBzdHJ1Y3QgdmVfYm9uZCAqCi12aXJ0dWFsX2ZpbmRfYm9uZChzdHJ1Y3QgdmlydHVh
bF9lbmdpbmUgKnZlLAordmlydHVhbF9maW5kX2JvbmQoc3RydWN0IGludGVsX3ZpcnR1YWxfZW5n
aW5lICp2ZSwKIAkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICptYXN0ZXIpCiB7CiAJ
aW50IGk7CkBAIC00NDc0LDcgKzQ0NDAsNyBAQCB2aXJ0dWFsX2ZpbmRfYm9uZChzdHJ1Y3Qgdmly
dHVhbF9lbmdpbmUgKnZlLAogc3RhdGljIHZvaWQKIHZpcnR1YWxfYm9uZF9leGVjdXRlKHN0cnVj
dCBpOTE1X3JlcXVlc3QgKnJxLCBzdHJ1Y3QgZG1hX2ZlbmNlICpzaWduYWwpCiB7Ci0Jc3RydWN0
IHZpcnR1YWxfZW5naW5lICp2ZSA9IHRvX3ZpcnR1YWxfZW5naW5lKHJxLT5lbmdpbmUpOworCXN0
cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFsX2VuZ2luZShycS0+ZW5n
aW5lKTsKIAlpbnRlbF9lbmdpbmVfbWFza190IGFsbG93ZWQsIGV4ZWM7CiAJc3RydWN0IHZlX2Jv
bmQgKmJvbmQ7CiAKQEAgLTQ0OTgsNyArNDQ2NCw3IEBAIGludGVsX2V4ZWNsaXN0c19jcmVhdGVf
dmlydHVhbChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4LAogCQkJICAgICAgIHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKipzaWJsaW5ncywKIAkJCSAgICAgICB1bnNpZ25lZCBpbnQgY291bnQp
CiB7Ci0Jc3RydWN0IHZpcnR1YWxfZW5naW5lICp2ZTsKKwlzdHJ1Y3QgaW50ZWxfdmlydHVhbF9l
bmdpbmUgKnZlOwogCXVuc2lnbmVkIGludCBuOwogCWludCBlcnI7CiAKQEAgLTQ2MzksNyArNDYw
NSw3IEBAIHN0cnVjdCBpbnRlbF9jb250ZXh0ICoKIGludGVsX2V4ZWNsaXN0c19jbG9uZV92aXJ0
dWFsKHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgsCiAJCQkgICAgICBzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICpzcmMpCiB7Ci0Jc3RydWN0IHZpcnR1YWxfZW5naW5lICpzZSA9IHRvX3ZpcnR1
YWxfZW5naW5lKHNyYyk7CisJc3RydWN0IGludGVsX3ZpcnR1YWxfZW5naW5lICpzZSA9IHRvX3Zp
cnR1YWxfZW5naW5lKHNyYyk7CiAJc3RydWN0IGludGVsX2NvbnRleHQgKmRzdDsKIAogCWRzdCA9
IGludGVsX2V4ZWNsaXN0c19jcmVhdGVfdmlydHVhbChjdHgsCkBAIC00NjQ5LDcgKzQ2MTUsOCBA
QCBpbnRlbF9leGVjbGlzdHNfY2xvbmVfdmlydHVhbChzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAq
Y3R4LAogCQlyZXR1cm4gZHN0OwogCiAJaWYgKHNlLT5udW1fYm9uZHMpIHsKLQkJc3RydWN0IHZp
cnR1YWxfZW5naW5lICpkZSA9IHRvX3ZpcnR1YWxfZW5naW5lKGRzdC0+ZW5naW5lKTsKKwkJc3Ry
dWN0IGludGVsX3ZpcnR1YWxfZW5naW5lICpkZSA9CisJCQl0b192aXJ0dWFsX2VuZ2luZShkc3Qt
PmVuZ2luZSk7CiAKIAkJZGUtPmJvbmRzID0ga21lbWR1cChzZS0+Ym9uZHMsCiAJCQkJICAgIHNp
emVvZigqc2UtPmJvbmRzKSAqIHNlLT5udW1fYm9uZHMsCkBAIC00NjY5LDcgKzQ2MzYsNyBAQCBp
bnQgaW50ZWxfdmlydHVhbF9lbmdpbmVfYXR0YWNoX2JvbmQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lLAogCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqbWFzdGVy
LAogCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqc2libGluZykKIHsKLQlz
dHJ1Y3QgdmlydHVhbF9lbmdpbmUgKnZlID0gdG9fdmlydHVhbF9lbmdpbmUoZW5naW5lKTsKKwlz
dHJ1Y3QgaW50ZWxfdmlydHVhbF9lbmdpbmUgKnZlID0gdG9fdmlydHVhbF9lbmdpbmUoZW5naW5l
KTsKIAlzdHJ1Y3QgdmVfYm9uZCAqYm9uZDsKIAlpbnQgbjsKIApAQCAtNDcwNSw3ICs0NjcyLDcg
QEAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqCiBpbnRlbF92aXJ0dWFsX2VuZ2luZV9nZXRfc2li
bGluZyhzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsCiAJCQkJIHVuc2lnbmVkIGludCBz
aWJsaW5nKQogewotCXN0cnVjdCB2aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFsX2VuZ2lu
ZShlbmdpbmUpOworCXN0cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAqdmUgPSB0b192aXJ0dWFs
X2VuZ2luZShlbmdpbmUpOwogCiAJaWYgKHNpYmxpbmcgPj0gdmUtPm51bV9zaWJsaW5ncykKIAkJ
cmV0dXJuIE5VTEw7CkBAIC00NzczLDcgKzQ3NDAsNyBAQCB2b2lkIGludGVsX2V4ZWNsaXN0c19z
aG93X3JlcXVlc3RzKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKIAlsYXN0ID0gTlVM
TDsKIAljb3VudCA9IDA7CiAJZm9yIChyYiA9IHJiX2ZpcnN0X2NhY2hlZCgmZXhlY2xpc3RzLT52
aXJ0dWFsKTsgcmI7IHJiID0gcmJfbmV4dChyYikpIHsKLQkJc3RydWN0IHZpcnR1YWxfZW5naW5l
ICp2ZSA9CisJCXN0cnVjdCBpbnRlbF92aXJ0dWFsX2VuZ2luZSAqdmUgPQogCQkJcmJfZW50cnko
cmIsIHR5cGVvZigqdmUpLCBub2Rlc1tlbmdpbmUtPmlkXS5yYik7CiAJCXN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxID0gUkVBRF9PTkNFKHZlLT5yZXF1ZXN0KTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfdmlydHVhbF9lbmdpbmVfdHlwZXMuaCBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3ZpcnR1YWxfZW5naW5lX3R5cGVzLmgKbmV3IGZpbGUgbW9k
ZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi45YmE1ZjBlNmUzOTUKLS0tIC9kZXYvbnVsbAor
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF92aXJ0dWFsX2VuZ2luZV90eXBlcy5o
CkBAIC0wLDAgKzEsNTcgQEAKKy8qCisgKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisg
KgorICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaWZuZGVm
IF9fSU5URUxfVklSVFVBTF9FTkdJTkVfVFlQRVNfXworI2RlZmluZSBfX0lOVEVMX1ZJUlRVQUxf
RU5HSU5FX1RZUEVTX18KKworI2luY2x1ZGUgImludGVsX2NvbnRleHRfdHlwZXMuaCIKKyNpbmNs
dWRlICJpbnRlbF9lbmdpbmVfdHlwZXMuaCIKKworc3RydWN0IGk5MTVfcmVxdWVzdDsKKworc3Ry
dWN0IGludGVsX3ZpcnR1YWxfZW5naW5lIHsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzIGJhc2U7
CisJc3RydWN0IGludGVsX2NvbnRleHQgY29udGV4dDsKKworCS8qCisJICogV2UgYWxsb3cgb25s
eSBhIHNpbmdsZSByZXF1ZXN0IHRocm91Z2ggdGhlIHZpcnR1YWwgZW5naW5lIGF0IGEgdGltZQor
CSAqIChlYWNoIHJlcXVlc3QgaW4gdGhlIHRpbWVsaW5lIHdhaXRzIGZvciB0aGUgY29tcGxldGlv
biBmZW5jZSBvZgorCSAqIHRoZSBwcmV2aW91cyBiZWZvcmUgYmVpbmcgc3VibWl0dGVkKS4gQnkg
cmVzdHJpY3Rpbmcgb3Vyc2VsdmVzIHRvCisJICogb25seSBzdWJtaXR0aW5nIGEgc2luZ2xlIHJl
cXVlc3QsIGVhY2ggcmVxdWVzdCBpcyBwbGFjZWQgb24gdG8gYQorCSAqIHBoeXNpY2FsIHRvIG1h
eGltaXNlIGxvYWQgc3ByZWFkaW5nIChieSB2aXJ0dWUgb2YgdGhlIGxhdGUgZ3JlZWR5CisJICog
c2NoZWR1bGluZyAtLSBlYWNoIHJlYWwgZW5naW5lIHRha2VzIHRoZSBuZXh0IGF2YWlsYWJsZSBy
ZXF1ZXN0CisJICogdXBvbiBpZGxpbmcpLgorCSAqLworCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJl
cXVlc3Q7CisKKwkvKgorCSAqIFdlIGtlZXAgYSByYnRyZWUgb2YgYXZhaWxhYmxlIHZpcnR1YWwg
ZW5naW5lcyBpbnNpZGUgZWFjaCBwaHlzaWNhbAorCSAqIGVuZ2luZSwgc29ydGVkIGJ5IHByaW9y
aXR5LiBIZXJlIHdlIHByZWFsbG9jYXRlIHRoZSBub2RlcyB3ZSBuZWVkCisJICogZm9yIHRoZSB2
aXJ0dWFsIGVuZ2luZSwgaW5kZXhlZCBieSBwaHlzaWNhbF9lbmdpbmUtPmlkLgorCSAqLworCXN0
cnVjdCB2ZV9ub2RlIHsKKwkJc3RydWN0IHJiX25vZGUgcmI7CisJCWludCBwcmlvOworCX0gbm9k
ZXNbSTkxNV9OVU1fRU5HSU5FU107CisKKwkvKgorCSAqIEtlZXAgdHJhY2sgb2YgYm9uZGVkIHBh
aXJzIC0tIHJlc3RyaWN0aW9ucyB1cG9uIG9uIG91ciBzZWxlY3Rpb24KKwkgKiBvZiBwaHlzaWNh
bCBlbmdpbmVzIGFueSBwYXJ0aWN1bGFyIHJlcXVlc3QgbWF5IGJlIHN1Ym1pdHRlZCB0by4KKwkg
KiBJZiB3ZSByZWNlaXZlIGEgc3VibWl0LWZlbmNlIGZyb20gYSBtYXN0ZXIgZW5naW5lLCB3ZSB3
aWxsIG9ubHkKKwkgKiB1c2Ugb25lIG9mIHNpYmxpbmdfbWFzayBwaHlzaWNhbCBlbmdpbmVzLgor
CSAqLworCXN0cnVjdCB2ZV9ib25kIHsKKwkJY29uc3Qgc3RydWN0IGludGVsX2VuZ2luZV9jcyAq
bWFzdGVyOworCQlpbnRlbF9lbmdpbmVfbWFza190IHNpYmxpbmdfbWFzazsKKwl9ICpib25kczsK
Kwl1bnNpZ25lZCBpbnQgbnVtX2JvbmRzOworCisJLyogQW5kIGZpbmFsbHksIHdoaWNoIHBoeXNp
Y2FsIGVuZ2luZXMgdGhpcyB2aXJ0dWFsIGVuZ2luZSBtYXBzIG9udG8uICovCisJdW5zaWduZWQg
aW50IG51bV9zaWJsaW5nczsKKwlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpzaWJsaW5nc1swXTsK
K307CisKKyNlbmRpZiAvKiBfX0lOVEVMX1ZJUlRVQUxfRU5HSU5FX1RZUEVTX18gKi8KLS0gCjIu
MjMuMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
