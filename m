Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EA4A2159B08
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2020 22:23:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 088BE6E393;
	Tue, 11 Feb 2020 21:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A46316E393;
 Tue, 11 Feb 2020 21:23:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Feb 2020 13:23:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="433818947"
Received: from jhli-desk1.jf.intel.com ([10.54.74.178])
 by fmsmga006.fm.intel.com with ESMTP; 11 Feb 2020 13:23:07 -0800
From: Juston Li <juston.li@intel.com>
To: igt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 11 Feb 2020 13:22:37 -0800
Message-Id: <20200211212237.1269-2-juston.li@intel.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200211212237.1269-1-juston.li@intel.com>
References: <20200211212237.1269-1-juston.li@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 i-g-t 2/2] tests/kms_getfb: Add getfb2 tests
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
Cc: daniel.vetter@ffwll.ch, daniels@collabora.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogRGFuaWVsIFN0b25lIDxkYW5pZWxzQGNvbGxhYm9yYS5jb20+CgpNaXJyb3JpbmcgYWRk
ZmIyLCBhZGQgdGVzdHMgZm9yIHRoZSBuZXcgaW9jdGwgd2hpY2ggd2lsbCByZXR1cm4gdXMKaW5m
b3JtYXRpb24gYWJvdXQgZnJhbWVidWZmZXJzIGNvbnRhaW5pbmcgbXVsdGlwbGUgYnVmZmVycywg
YXMgd2VsbCBhcwptb2RpZmllcnMuCgpDaGFuZ2VzIHNpbmNlIHY1OgotIEFkZCBkb2N1bWVudGF0
aW9uCgpDaGFuZ2VzIHNpbmNlIHY0OgotIFJlbW92ZSB1bm5lY2Vzc2FyeSBibyBjcmVhdGlvbiBm
b3IgZ2V0ZmIyLWhhbmRsZS1jbG9zZWQgc3VidGVzdAoKQ2hhbmdlcyBzaW5jZSB2MzoKLSBBZGQg
c3VidGVzdHMgdG8gZW5zdXJlIGhhbmRsZXMgYXJlbid0IHJldHVybmVkIGZvciBub24tcm9vdCBh
bmQKICBub24tbWFzdGVyIGNhbGxlcnMKCkNoYW5nZXMgc2luY2UgdjE6Ci0gQWRkIHRlc3QgdGhh
dCB1c2VzIGdldGZiMiBvdXRwdXQgdG8gY2FsbCBhZGRmYjIgYXMgc3VnZ2VzdGVkIGJ5IFZpbGxl
CgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgU3RvbmUgPGRhbmllbHNAY29sbGFib3JhLmNvbT4KU2ln
bmVkLW9mZi1ieTogSnVzdG9uIExpIDxqdXN0b24ubGlAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KLS0tCiB0ZXN0
cy9rbXNfZ2V0ZmIuYyB8IDE3MSArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTcxIGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQg
YS90ZXN0cy9rbXNfZ2V0ZmIuYyBiL3Rlc3RzL2ttc19nZXRmYi5jCmluZGV4IDI5MjY3OWFkM2Vi
OS4uYzNkM2M5MzA3MGNkIDEwMDY0NAotLS0gYS90ZXN0cy9rbXNfZ2V0ZmIuYworKysgYi90ZXN0
cy9rbXNfZ2V0ZmIuYwpAQCAtNDAsNiArNDAsMTAgQEAKICNpbmNsdWRlICJkcm0uaCIKICNpbmNs
dWRlICJkcm1fZm91cmNjLmgiCiAKKyNpbmNsdWRlICJpZ3RfZGV2aWNlLmgiCisKK0lHVF9URVNU
X0RFU0NSSVBUSU9OKCJUZXN0cyBHRVRGQiBhbmQgR0VURkIyIGlvY3Rscy4iKTsKKwogc3RhdGlj
IGJvb2wgaGFzX2dldGZiX2lmYWNlKGludCBmZCkKIHsKIAlzdHJ1Y3QgZHJtX21vZGVfZmJfY21k
IGFyZyA9IHsgfTsKQEAgLTI1Miw2ICsyNTYsMTY3IEBAIHN0YXRpYyB2b2lkIHRlc3RfZHVwbGlj
YXRlX2hhbmRsZXMoaW50IGZkKQogCX0KIH0KIAorc3RhdGljIHZvaWQgdGVzdF9nZXRmYjIoaW50
IGZkKQoreworCXN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyIGFkZF9iYXNpYyA9IHt9OworCisJaWd0
X2ZpeHR1cmUgeworCQlzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiBnZXQgPSB7fTsKKworCQlhZGRf
YmFzaWMud2lkdGggPSAxMDI0OworCQlhZGRfYmFzaWMuaGVpZ2h0ID0gMTAyNDsKKwkJYWRkX2Jh
c2ljLnBpeGVsX2Zvcm1hdCA9IERSTV9GT1JNQVRfWFJHQjg4ODg7CisJCWFkZF9iYXNpYy5waXRj
aGVzWzBdID0gMTAyNCo0OworCQlhZGRfYmFzaWMuaGFuZGxlc1swXSA9IGlndF9jcmVhdGVfYm9f
d2l0aF9kaW1lbnNpb25zKGZkLCAxMDI0LCAxMDI0LAorCQkJRFJNX0ZPUk1BVF9YUkdCODg4OCwg
MCwgMCwgTlVMTCwgTlVMTCwgTlVMTCk7CisJCWlndF9hc3NlcnQoYWRkX2Jhc2ljLmhhbmRsZXNb
MF0pOworCQlkb19pb2N0bChmZCwgRFJNX0lPQ1RMX01PREVfQURERkIyLCAmYWRkX2Jhc2ljKTsK
KworCQlnZXQuZmJfaWQgPSBhZGRfYmFzaWMuZmJfaWQ7CisJCWRvX2lvY3RsKGZkLCBEUk1fSU9D
VExfTU9ERV9HRVRGQjIsICZnZXQpOworCQlpZ3RfYXNzZXJ0X25lcV91MzIoZ2V0LmhhbmRsZXNb
MF0sIDApOworCQlnZW1fY2xvc2UoZmQsIGdldC5oYW5kbGVzWzBdKTsKKwl9CisKKwlpZ3RfZGVz
Y3JpYmUoIlRlc3RzIGVycm9yIGhhbmRsaW5nIGZvciBhIHplcm8nZCBpbnB1dC4iKTsKKwlpZ3Rf
c3VidGVzdCgiZ2V0ZmIyLWhhbmRsZS16ZXJvIikgeworCQlzdHJ1Y3QgZHJtX21vZGVfZmJfY21k
MiBnZXQgPSB7fTsKKwkJZG9faW9jdGxfZXJyKGZkLCBEUk1fSU9DVExfTU9ERV9HRVRGQjIsICZn
ZXQsIEVOT0VOVCk7CisJfQorCisJaWd0X2Rlc2NyaWJlKCJUZXN0cyBlcnJvciBoYW5kbGluZyB3
aGVuIHBhc3NpbmcgYSBoYW5kbGUgdGhhdCAiCisJCSAgICAgImhhcyBiZWVuIGNsb3NlZC4iKTsK
KwlpZ3Rfc3VidGVzdCgiZ2V0ZmIyLWhhbmRsZS1jbG9zZWQiKSB7CisJCXN0cnVjdCBkcm1fbW9k
ZV9mYl9jbWQyIGFkZCA9IGFkZF9iYXNpYzsKKwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZDIgZ2V0
ID0geyB9OworCisJCWRvX2lvY3RsKGZkLCBEUk1fSU9DVExfTU9ERV9BRERGQjIsICZhZGQpOwor
CQlkb19pb2N0bChmZCwgRFJNX0lPQ1RMX01PREVfUk1GQiwgJmFkZC5mYl9pZCk7CisKKwkJZ2V0
LmZiX2lkID0gYWRkLmZiX2lkOworCQlkb19pb2N0bF9lcnIoZmQsIERSTV9JT0NUTF9NT0RFX0dF
VEZCMiwgJmdldCwgRU5PRU5UKTsKKwl9CisKKwlpZ3RfZGVzY3JpYmUoIlRlc3RzIGVycm9yIGhh
bmRsaW5nIHdoZW4gcGFzc2luZyBhbiBpbnZhbGlkICIKKwkJICAgICAiaGFuZGxlLiIpOworCWln
dF9zdWJ0ZXN0KCJnZXRmYjItaGFuZGxlLW5vdC1mYiIpIHsKKwkJc3RydWN0IGRybV9tb2RlX2Zi
X2NtZDIgZ2V0ID0geyAuZmJfaWQgPSBnZXRfYW55X3Byb3BfaWQoZmQpIH07CisJCWlndF9yZXF1
aXJlKGdldC5mYl9pZCA+IDApOworCQlkb19pb2N0bF9lcnIoZmQsIERSTV9JT0NUTF9NT0RFX0dF
VEZCMiwgJmdldCwgRU5PRU5UKTsKKwl9CisKKwlpZ3RfZGVzY3JpYmUoIlRlc3RzIG91dHB1dHMg
YXJlIGNvcnJlY3Qgd2hlbiByZXRyaWV2aW5nIGEgIgorCQkgICAgICJDQ1MgZnJhbWVidWZmZXIu
Iik7CisJaWd0X3N1YnRlc3QoImdldGZiMi1hY2NlcHQtY2NzIikgeworCQlzdHJ1Y3QgZHJtX21v
ZGVfZmJfY21kMiBhZGRfY2NzID0geyB9OworCQlzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiBnZXQg
PSB7IH07CisJCWludCBpOworCisJCWdldF9jY3NfZmIoZmQsICZhZGRfY2NzKTsKKwkJaWd0X3Jl
cXVpcmUoYWRkX2Njcy5mYl9pZCAhPSAwKTsKKwkJZ2V0LmZiX2lkID0gYWRkX2Njcy5mYl9pZDsK
KwkJZG9faW9jdGwoZmQsIERSTV9JT0NUTF9NT0RFX0dFVEZCMiwgJmdldCk7CisKKwkJaWd0X2Fz
c2VydF9lcV91MzIoZ2V0LndpZHRoLCBhZGRfY2NzLndpZHRoKTsKKwkJaWd0X2Fzc2VydF9lcV91
MzIoZ2V0LmhlaWdodCwgYWRkX2Njcy5oZWlnaHQpOworCQlpZ3RfYXNzZXJ0KGdldC5mbGFncyAm
IERSTV9NT0RFX0ZCX01PRElGSUVSUyk7CisKKwkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJWkUo
Z2V0LmhhbmRsZXMpOyBpKyspIHsKKwkJCWlndF9hc3NlcnRfZXFfdTMyKGdldC5waXRjaGVzW2ld
LCBhZGRfY2NzLnBpdGNoZXNbaV0pOworCQkJaWd0X2Fzc2VydF9lcV91MzIoZ2V0Lm9mZnNldHNb
aV0sIGFkZF9jY3Mub2Zmc2V0c1tpXSk7CisJCQlpZiAoYWRkX2Njcy5oYW5kbGVzW2ldICE9IDAp
IHsKKwkJCQlpZ3RfYXNzZXJ0X25lcV91MzIoZ2V0LmhhbmRsZXNbaV0sIDApOworCQkJCWlndF9h
c3NlcnRfbmVxX3UzMihnZXQuaGFuZGxlc1tpXSwKKwkJCQkJCSAgIGFkZF9jY3MuaGFuZGxlc1tp
XSk7CisJCQkJaWd0X2Fzc2VydF9lcV91NjQoZ2V0Lm1vZGlmaWVyW2ldLAorCQkJCQkJICBhZGRf
Y2NzLm1vZGlmaWVyW2ldKTsKKwkJCX0gZWxzZSB7CisJCQkJaWd0X2Fzc2VydF9lcV91MzIoZ2V0
LmhhbmRsZXNbaV0sIDApOworCQkJCWlndF9hc3NlcnRfZXFfdTY0KGdldC5tb2RpZmllcltpXSwg
MCk7CisJCQl9CisJCX0KKwkJaWd0X2Fzc2VydF9lcV91MzIoZ2V0LmhhbmRsZXNbMF0sIGdldC5o
YW5kbGVzWzFdKTsKKworCQlkb19pb2N0bChmZCwgRFJNX0lPQ1RMX01PREVfUk1GQiwgJmdldC5m
Yl9pZCk7CisJCWdlbV9jbG9zZShmZCwgYWRkX2Njcy5oYW5kbGVzWzBdKTsKKwkJZ2VtX2Nsb3Nl
KGZkLCBnZXQuaGFuZGxlc1swXSk7CisJfQorCisJaWd0X2Rlc2NyaWJlKCJPdXRwdXQgY2hlY2sg
YnkgcGFzc2luZyB0aGUgb3V0cHV0IG9mIEdFVEZCMiAiCisJCSAgICAgImludG8gQURERkIyLiIp
OworCWlndF9zdWJ0ZXN0KCJnZXRmYjItaW50by1hZGRmYjIiKSB7CisJCXN0cnVjdCBkcm1fbW9k
ZV9mYl9jbWQyIGNtZCA9IHsgfTsKKworCQljbWQuZmJfaWQgPSBhZGRfYmFzaWMuZmJfaWQ7CisJ
CWRvX2lvY3RsKGZkLCBEUk1fSU9DVExfTU9ERV9HRVRGQjIsICZjbWQpOworCQlkb19pb2N0bChm
ZCwgRFJNX0lPQ1RMX01PREVfQURERkIyLCAmY21kKTsKKworCQlkb19pb2N0bChmZCwgRFJNX0lP
Q1RMX01PREVfUk1GQiwgJmNtZC5mYl9pZCk7CisJCWdlbV9jbG9zZShmZCwgY21kLmhhbmRsZXNb
MF0pOworCX0KKworCWlndF9maXh0dXJlIHsKKwkJZG9faW9jdGwoZmQsIERSTV9JT0NUTF9NT0RF
X1JNRkIsICZhZGRfYmFzaWMuZmJfaWQpOworCQlnZW1fY2xvc2UoZmQsIGFkZF9iYXNpYy5oYW5k
bGVzWzBdKTsKKwl9Cit9CisKK3N0YXRpYyB2b2lkIHRlc3RfaGFuZGxlX3Byb3RlY3Rpb24odm9p
ZCkgeworCWludCBub25fbWFzdGVyX2ZkOworCXN0cnVjdCBkcm1fbW9kZV9mYl9jbWQyIG5vbl9t
YXN0ZXJfYWRkID0ge307CisKKwlpZ3RfZml4dHVyZSB7CisJCW5vbl9tYXN0ZXJfZmQgPSBkcm1f
b3Blbl9kcml2ZXIoRFJJVkVSX0FOWSk7CisKKwkJbm9uX21hc3Rlcl9hZGQud2lkdGggPSAxMDI0
OworCQlub25fbWFzdGVyX2FkZC5oZWlnaHQgPSAxMDI0OworCQlub25fbWFzdGVyX2FkZC5waXhl
bF9mb3JtYXQgPSBEUk1fRk9STUFUX1hSR0I4ODg4OworCQlub25fbWFzdGVyX2FkZC5waXRjaGVz
WzBdID0gMTAyNCo0OworCQlub25fbWFzdGVyX2FkZC5oYW5kbGVzWzBdID0gaWd0X2NyZWF0ZV9i
b193aXRoX2RpbWVuc2lvbnMobm9uX21hc3Rlcl9mZCwgMTAyNCwgMTAyNCwKKwkJCURSTV9GT1JN
QVRfWFJHQjg4ODgsIDAsIDAsIE5VTEwsIE5VTEwsIE5VTEwpOworCQlpZ3RfcmVxdWlyZShub25f
bWFzdGVyX2FkZC5oYW5kbGVzWzBdICE9IDApOworCQlkb19pb2N0bChub25fbWFzdGVyX2ZkLCBE
Uk1fSU9DVExfTU9ERV9BRERGQjIsICZub25fbWFzdGVyX2FkZCk7CisJfQorCisJaWd0X2Rlc2Ny
aWJlKCJNYWtlIHN1cmUgR0VURkIgZG9lc24ndCByZXR1cm4gaGFuZGxlcyBpZiBjYWxsZXIgIgor
CQkgICAgICJpcyBub24tcm9vdCBvciBub24tbWFzdGVyLiIpOworCWlndF9zdWJ0ZXN0KCJnZXRm
Yi1oYW5kbGUtcHJvdGVjdGlvbiIpIHsKKwkJc3RydWN0IGRybV9tb2RlX2ZiX2NtZCBnZXQgPSB7
IC5mYl9pZCA9IG5vbl9tYXN0ZXJfYWRkLmZiX2lkfTsKKworCQlpZ3RfZm9yayhjaGlsZCwgMSkg
eworCQkJaWd0X2Ryb3Bfcm9vdCgpOworCisJCQlkb19pb2N0bChub25fbWFzdGVyX2ZkLCBEUk1f
SU9DVExfTU9ERV9HRVRGQiwgJmdldCk7CisJCQkvKiBpb2N0bCBzdWNjZWVkcyBidXQgaGFuZGxl
IHNob3VsZCBiZSAwICovCisJCQlpZ3RfYXNzZXJ0X2VxX3UzMihnZXQuaGFuZGxlLCAwKTsKKwkJ
fQorCQlpZ3Rfd2FpdGNoaWxkcmVuKCk7CisJfQorCisJaWd0X2Rlc2NyaWJlKCJNYWtlIHN1cmUg
R0VURkIyIGRvZXNuJ3QgcmV0dXJuIGhhbmRsZXMgaWYgY2FsbGVyICIKKwkJICAgICAiaXMgbm9u
LXJvb3Qgb3Igbm9uLW1hc3Rlci4iKTsKKwlpZ3Rfc3VidGVzdCgiZ2V0ZmIyLWhhbmRsZS1wcm90
ZWN0aW9uIikgeworCQlzdHJ1Y3QgZHJtX21vZGVfZmJfY21kMiBnZXQgPSB7IC5mYl9pZCA9IG5v
bl9tYXN0ZXJfYWRkLmZiX2lkfTsKKwkJaW50IGk7CisKKwkJaWd0X2ZvcmsoY2hpbGQsIDEpIHsK
KwkJCWlndF9kcm9wX3Jvb3QoKTsKKworCQkJZG9faW9jdGwobm9uX21hc3Rlcl9mZCwgRFJNX0lP
Q1RMX01PREVfR0VURkIyLCAmZ2V0KTsKKwkJCS8qIGlvY3RsIHN1Y2NlZWRzIGJ1dCBoYW5kbGVz
IHNob3VsZCBiZSAwICovCisJCQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShnZXQuaGFuZGxl
cyk7IGkrKykgeworCQkJCWlndF9hc3NlcnRfZXFfdTMyKGdldC5oYW5kbGVzW2ldLCAwKTsKKwkJ
CX0KKwkJfQorCQlpZ3Rfd2FpdGNoaWxkcmVuKCk7CisJfQorCisJaWd0X2ZpeHR1cmUgeworCQlk
b19pb2N0bChub25fbWFzdGVyX2ZkLCBEUk1fSU9DVExfTU9ERV9STUZCLCAmbm9uX21hc3Rlcl9h
ZGQuZmJfaWQpOworCQlnZW1fY2xvc2Uobm9uX21hc3Rlcl9mZCwgbm9uX21hc3Rlcl9hZGQuaGFu
ZGxlc1swXSk7CisJfQorfQorCiBpZ3RfbWFpbgogewogCWludCBmZDsKQEAgLTI2Nyw2ICs0MzIs
MTIgQEAgaWd0X21haW4KIAlpZ3Rfc3VidGVzdF9ncm91cAogCQl0ZXN0X2R1cGxpY2F0ZV9oYW5k
bGVzKGZkKTsKIAorCWlndF9zdWJ0ZXN0X2dyb3VwCisJCXRlc3RfZ2V0ZmIyKGZkKTsKKworCWln
dF9zdWJ0ZXN0X2dyb3VwCisJCXRlc3RfaGFuZGxlX3Byb3RlY3Rpb24oKTsKKwogCWlndF9maXh0
dXJlCiAJCWNsb3NlKGZkKTsKIH0KLS0gCjIuMjEuMQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
