Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D452651E
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 15:51:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD54C89B05;
	Wed, 22 May 2019 13:51:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 249C689AC0;
 Wed, 22 May 2019 13:51:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 06:51:17 -0700
X-ExtLoop1: 1
Received: from dmironox-mobl5.ccr.corp.intel.com (HELO localhost.localdomain)
 ([10.252.20.122])
 by fmsmga008.fm.intel.com with ESMTP; 22 May 2019 06:51:16 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Date: Wed, 22 May 2019 14:51:01 +0100
Message-Id: <20190522135104.26930-12-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
References: <20190522135104.26930-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI i-g-t 11/14] test/i915: gem_exec_parallel: use the
 gem_engine_topology library
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

RnJvbTogQW5kaSBTaHl0aSA8YW5kaS5zaHl0aUBpbnRlbC5jb20+CgpSZXBsYWNlIHRoZSBsZWdh
Y3kgZm9yX2VhY2hfZW5naW5lKiBkZWZpbmVzIHdpdGggdGhlIG9uZXMKaW1wbGVtZW50ZWQgaW4g
dGhlIGdlbV9lbmdpbmVfdG9wb2xvZ3kgbGlicmFyeS4KClNpZ25lZC1vZmYtYnk6IEFuZGkgU2h5
dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgpDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13
aWxzb24uY28udWs+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9leGVjX3BhcmFsbGVsLmMgfCAyNiArKysrKysr
KysrKysrKy0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDEy
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcGFyYWxsZWwu
YyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcGFyYWxsZWwuYwppbmRleCA3NTk3YmVmYjBiMzkuLjhh
NDQ4MmU1MmE2ZSAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19wYXJhbGxlbC5jCisr
KyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfcGFyYWxsZWwuYwpAQCAtMTQ5LDcgKzE0OSw3IEBAIHN0
YXRpYyB2b2lkICp0aHJlYWQodm9pZCAqZGF0YSkKIAlyZXR1cm4gTlVMTDsKIH0KIAotc3RhdGlj
IHZvaWQgYWxsKGludCBmZCwgdW5zaWduZWQgZW5naW5lLCB1bnNpZ25lZCBmbGFncykKK3N0YXRp
YyB2b2lkIGFsbChpbnQgZmQsIHN0cnVjdCBpbnRlbF9leGVjdXRpb25fZW5naW5lMiAqZW5naW5l
LCB1bnNpZ25lZCBmbGFncykKIHsKIAljb25zdCBpbnQgZ2VuID0gaW50ZWxfZ2VuKGludGVsX2dl
dF9kcm1fZGV2aWQoZmQpKTsKIAlwdGhyZWFkX211dGV4X3QgbXV0ZXg7CkBAIC0xNzAsMTUgKzE3
MCwxNSBAQCBzdGF0aWMgdm9pZCBhbGwoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVk
IGZsYWdzKQogCX0KIAogCW5lbmdpbmUgPSAwOwotCWlmIChlbmdpbmUgPT0gQUxMX0VOR0lORVMp
IHsKLQkJZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZkLCBlbmdpbmUpIHsKLQkJCWlmIChnZW1f
Y2FuX3N0b3JlX2R3b3JkKGZkLCBlbmdpbmUpKQotCQkJCWVuZ2luZXNbbmVuZ2luZSsrXSA9IGVu
Z2luZTsKKwlpZiAoIWVuZ2luZSkgeworCQlzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIg
KmU7CisJCV9fZm9yX2VhY2hfcGh5c2ljYWxfZW5naW5lKGZkLCBlKSB7CisJCQlpZiAoZ2VtX2Ns
YXNzX2Nhbl9zdG9yZV9kd29yZChmZCwgZS0+Y2xhc3MpKQorCQkJCWVuZ2luZXNbbmVuZ2luZSsr
XSA9IGUtPmZsYWdzOwogCQl9CiAJfSBlbHNlIHsKLQkJaWd0X3JlcXVpcmUoZ2VtX2hhc19yaW5n
KGZkLCBlbmdpbmUpKTsKLQkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5n
aW5lKSk7Ci0JCWVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsKKwkJaWd0X3JlcXVpcmUoZ2Vt
X2NsYXNzX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5naW5lLT5jbGFzcykpOworCQllbmdpbmVzW25l
bmdpbmUrK10gPSBlbmdpbmUtPmZsYWdzOwogCX0KIAlpZ3RfcmVxdWlyZShuZW5naW5lKTsKIApA
QCAtMjI5LDYgKzIyOSw4IEBAIHN0YXRpYyB2b2lkIGFsbChpbnQgZmQsIHVuc2lnbmVkIGVuZ2lu
ZSwgdW5zaWduZWQgZmxhZ3MpCiAKIGlndF9tYWluCiB7CisJc3RydWN0IGludGVsX2V4ZWN1dGlv
bl9lbmdpbmUyICplOworCiAJY29uc3Qgc3RydWN0IG1vZGUgewogCQljb25zdCBjaGFyICpuYW1l
OwogCQl1bnNpZ25lZCBmbGFnczsKQEAgLTI0OSwxNiArMjUxLDE2IEBAIGlndF9tYWluCiAKIAlm
b3IgKGNvbnN0IHN0cnVjdCBtb2RlICptID0gbW9kZXM7IG0tPm5hbWU7IG0rKykKIAkJaWd0X3N1
YnRlc3RfZigiJXMiLCAqbS0+bmFtZSA/IG0tPm5hbWUgOiAiYmFzaWMiKQotCQkJYWxsKGZkLCBB
TExfRU5HSU5FUywgbS0+ZmxhZ3MpOworCQkJLyogTlVMTCB2YWx1ZSBtZWFucyBhbGwgZW5naW5l
cyAqLworCQkJYWxsKGZkLCBOVUxMLCBtLT5mbGFncyk7CiAKLQlmb3IgKGNvbnN0IHN0cnVjdCBp
bnRlbF9leGVjdXRpb25fZW5naW5lICplID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7Ci0JICAg
ICBlLT5uYW1lOyBlKyspIHsKKwlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShmZCwgZSkgewog
CQlmb3IgKGNvbnN0IHN0cnVjdCBtb2RlICptID0gbW9kZXM7IG0tPm5hbWU7IG0rKykKIAkJCWln
dF9zdWJ0ZXN0X2YoIiVzJXMlcyIsCiAJCQkJICAgICAgZS0+bmFtZSwKIAkJCQkgICAgICAqbS0+
bmFtZSA/ICItIiA6ICIiLAogCQkJCSAgICAgIG0tPm5hbWUpCi0JCQkJYWxsKGZkLCBlLT5leGVj
X2lkIHwgZS0+ZmxhZ3MsIG0tPmZsYWdzKTsKKwkJCQlhbGwoZmQsIGUsIG0tPmZsYWdzKTsKIAl9
CiAKIAlpZ3RfZml4dHVyZSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
