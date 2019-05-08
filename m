Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DC8175AC
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 12:10:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA563896B5;
	Wed,  8 May 2019 10:10:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A786F895C3;
 Wed,  8 May 2019 10:10:24 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16487697-1500050 
 for multiple; Wed, 08 May 2019 11:10:13 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 11:09:52 +0100
Message-Id: <20190508100958.32637-10-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508100958.32637-1-chris@chris-wilson.co.uk>
References: <20190508100958.32637-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 10/16] i915/gem_exec_whisper: Fork
 all-engine tests one-per-engine
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
Cc: igt-dev@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWRkIGEgbmV3IG1vZGUgZm9yIHNvbWUgbW9yZSBzdHJlc3MsIHN1Ym1pdCB0aGUgYWxsLWVuZ2lu
ZXMgdGVzdHMKc2ltdWx0YW5lb3VzbHksIGEgc3RyZWFtIHBlciBlbmdpbmUuCgpTaWduZWQtb2Zm
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9p
OTE1L2dlbV9leGVjX3doaXNwZXIuYyB8IDI3ICsrKysrKysrKysrKysrKysrKysrKystLS0tLQog
MSBmaWxlIGNoYW5nZWQsIDIyIGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0t
Z2l0IGEvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVyLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVj
X3doaXNwZXIuYwppbmRleCBkM2UwYjBiYTIuLmQ1YWZjODExOSAxMDA2NDQKLS0tIGEvdGVzdHMv
aTkxNS9nZW1fZXhlY193aGlzcGVyLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fZXhlY193aGlzcGVy
LmMKQEAgLTg4LDYgKzg4LDcgQEAgc3RhdGljIHZvaWQgdmVyaWZ5X3JlbG9jKGludCBmZCwgdWlu
dDMyX3QgaGFuZGxlLAogI2RlZmluZSBTWU5DIDB4NDAKICNkZWZpbmUgUFJJT1JJVFkgMHg4MAog
I2RlZmluZSBRVUVVRVMgMHgxMDAKKyNkZWZpbmUgQUxMIDB4MjAwCiAKIHN0cnVjdCBoYW5nIHsK
IAlzdHJ1Y3QgZHJtX2k5MTVfZ2VtX2V4ZWNfb2JqZWN0MiBvYmo7CkBAIC0xOTksNiArMjAwLDcg
QEAgc3RhdGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQg
ZmxhZ3MpCiAJdWludDY0X3Qgb2xkX29mZnNldDsKIAlpbnQgaSwgbiwgbG9jOwogCWludCBkZWJ1
Z2ZzOworCWludCBuY2hpbGQ7CiAKIAlpZiAoZmxhZ3MgJiBQUklPUklUWSkgewogCQlpZ3RfcmVx
dWlyZShnZW1fc2NoZWR1bGVyX2VuYWJsZWQoZmQpKTsKQEAgLTIxNSw2ICsyMTcsNyBAQCBzdGF0
aWMgdm9pZCB3aGlzcGVyKGludCBmZCwgdW5zaWduZWQgZW5naW5lLCB1bnNpZ25lZCBmbGFncykK
IAkJCQllbmdpbmVzW25lbmdpbmUrK10gPSBlbmdpbmU7CiAJCX0KIAl9IGVsc2UgeworCQlpZ3Rf
YXNzZXJ0KCEoZmxhZ3MgJiBBTEwpKTsKIAkJaWd0X3JlcXVpcmUoZ2VtX2hhc19yaW5nKGZkLCBl
bmdpbmUpKTsKIAkJaWd0X3JlcXVpcmUoZ2VtX2Nhbl9zdG9yZV9kd29yZChmZCwgZW5naW5lKSk7
CiAJCWVuZ2luZXNbbmVuZ2luZSsrXSA9IGVuZ2luZTsKQEAgLTIzMywxMSArMjM2LDIyIEBAIHN0
YXRpYyB2b2lkIHdoaXNwZXIoaW50IGZkLCB1bnNpZ25lZCBlbmdpbmUsIHVuc2lnbmVkIGZsYWdz
KQogCWlmIChmbGFncyAmIEhBTkcpCiAJCWluaXRfaGFuZygmaGFuZyk7CiAKKwluY2hpbGQgPSAx
OworCWlmIChmbGFncyAmIEZPUktFRCkKKwkJbmNoaWxkICo9IHN5c2NvbmYoX1NDX05QUk9DRVNT
T1JTX09OTE4pOworCWlmIChmbGFncyAmIEFMTCkKKwkJbmNoaWxkICo9IG5lbmdpbmU7CisKIAlp
bnRlbF9kZXRlY3RfYW5kX2NsZWFyX21pc3NlZF9pbnRlcnJ1cHRzKGZkKTsKIAlncHVfcG93ZXJf
cmVhZCgmcG93ZXIsICZzYW1wbGVbMF0pOwotCWlndF9mb3JrKGNoaWxkLCBmbGFncyAmIEZPUktF
RCA/IHN5c2NvbmYoX1NDX05QUk9DRVNTT1JTX09OTE4pIDogMSkgIHsKKwlpZ3RfZm9yayhjaGls
ZCwgbmNoaWxkKSB7CiAJCXVuc2lnbmVkIGludCBwYXNzOwogCisJCWlmIChmbGFncyAmIEFMTCkg
eworCQkJZW5naW5lc1swXSA9IGVuZ2luZXNbY2hpbGQgJSBuZW5naW5lXTsKKwkJCW5lbmdpbmUg
PSAxOworCQl9CisKIAkJbWVtc2V0KCZzY3JhdGNoLCAwLCBzaXplb2Yoc2NyYXRjaCkpOwogCQlz
Y3JhdGNoLmhhbmRsZSA9IGdlbV9jcmVhdGUoZmQsIDQwOTYpOwogCQlzY3JhdGNoLmZsYWdzID0g
RVhFQ19PQkpFQ1RfV1JJVEU7CkBAIC0zNDEsNyArMzU1LDcgQEAgc3RhdGljIHZvaWQgd2hpc3Bl
cihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3MpCiAJCQlpZ3RfdW50aWxf
dGltZW91dCgxNTApIHsKIAkJCQl1aW50NjRfdCBvZmZzZXQ7CiAKLQkJCQlpZiAoIShmbGFncyAm
IEZPUktFRCkpCisJCQkJaWYgKG5jaGlsZCA9PSAxKQogCQkJCQl3cml0ZV9zZXFubyhkZWJ1Z2Zz
LCBwYXNzKTsKIAogCQkJCWlmIChmbGFncyAmIEhBTkcpCkBAIC0zODIsOCArMzk2LDggQEAgc3Rh
dGljIHZvaWQgd2hpc3BlcihpbnQgZmQsIHVuc2lnbmVkIGVuZ2luZSwgdW5zaWduZWQgZmxhZ3Mp
CiAKIAkJCQlnZW1fd3JpdGUoZmQsIGJhdGNoZXNbMTAyM10uaGFuZGxlLCBsb2MsICZwYXNzLCBz
aXplb2YocGFzcykpOwogCQkJCWZvciAobiA9IDEwMjQ7IC0tbiA+PSAxOyApIHsKKwkJCQkJdWlu
dDMyX3QgaGFuZGxlWzJdID0ge307CiAJCQkJCWludCB0aGlzX2ZkID0gZmQ7Ci0JCQkJCXVpbnQz
Ml90IGhhbmRsZVsyXTsKIAogCQkJCQlleGVjYnVmLmJ1ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2lu
dGVyKCZiYXRjaGVzW24tMV0pOwogCQkJCQlyZWxvY19taWdyYXRpb25zICs9IGJhdGNoZXNbbi0x
XS5vZmZzZXQgIT0gaW50ZXJbbl0ucHJlc3VtZWRfb2Zmc2V0OwpAQCAtNTUwLDcgKzU2NCw3IEBA
IGlndF9tYWluCiAJCXsgInF1ZXVlcy1zeW5jIiwgUVVFVUVTIHwgU1lOQyB9LAogCQl7IE5VTEwg
fQogCX07Ci0JaW50IGZkOworCWludCBmZCA9IC0xOwogCiAJaWd0X2ZpeHR1cmUgewogCQlmZCA9
IGRybV9vcGVuX2RyaXZlcl9tYXN0ZXIoRFJJVkVSX0lOVEVMKTsKQEAgLTU2MSw5ICs1NzUsMTIg
QEAgaWd0X21haW4KIAkJaWd0X2ZvcmtfaGFuZ19kZXRlY3RvcihmZCk7CiAJfQogCi0JZm9yIChj
b25zdCBzdHJ1Y3QgbW9kZSAqbSA9IG1vZGVzOyBtLT5uYW1lOyBtKyspCisJZm9yIChjb25zdCBz
dHJ1Y3QgbW9kZSAqbSA9IG1vZGVzOyBtLT5uYW1lOyBtKyspIHsKIAkJaWd0X3N1YnRlc3RfZigi
JXMiLCBtLT5uYW1lKQogCQkJd2hpc3BlcihmZCwgQUxMX0VOR0lORVMsIG0tPmZsYWdzKTsKKwkJ
aWd0X3N1YnRlc3RfZigiJXMtYWxsIiwgbS0+bmFtZSkKKwkJCXdoaXNwZXIoZmQsIEFMTF9FTkdJ
TkVTLCBtLT5mbGFncyB8IEFMTCk7CisJfQogCiAJZm9yIChjb25zdCBzdHJ1Y3QgaW50ZWxfZXhl
Y3V0aW9uX2VuZ2luZSAqZSA9IGludGVsX2V4ZWN1dGlvbl9lbmdpbmVzOwogCSAgICAgZS0+bmFt
ZTsgZSsrKSB7Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
