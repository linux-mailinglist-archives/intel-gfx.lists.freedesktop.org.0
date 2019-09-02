Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95430A4E42
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 06:16:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031B789B69;
	Mon,  2 Sep 2019 04:15:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A52689B70;
 Mon,  2 Sep 2019 04:15:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18339104-1500050 
 for multiple; Mon, 02 Sep 2019 05:15:49 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  2 Sep 2019 05:15:47 +0100
Message-Id: <20190902041548.14919-5-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190902041548.14919-1-chris@chris-wilson.co.uk>
References: <20190902041548.14919-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 5/6] i915/gem_mocs_settings: Fudge
 gen11:vcs2 mocs register base
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

T24gZ2VuMTEgQ0ksIHdlIGhhdmUgdmNzMiBhdmFpbGFibGUgd2hpY2ggaGFzIGEgZGlmZmVyZW50
IGJhc2UgdG8gZ2VuOQp2Y3MxLiBHbG9zcyBvdmVyIHRoZSBkaXNjcmVwYW5jeSB3aGlsZSBhIHBy
b3BlciBmaXggaXMgc291Z2h0LgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5v
cmcvc2hvd19idWcuY2dpP2lkPTExMTMzMApTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiB0ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdz
LmMgfCAyOCArKysrKysrKysrKysrKysrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgMjIg
aW5zZXJ0aW9ucygrKSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS90ZXN0cy9pOTE1L2dl
bV9tb2NzX3NldHRpbmdzLmMgYi90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMKaW5kZXgg
M2FkOTQxNDkxLi4wNjI0MDg3N2UgMTAwNjQ0Ci0tLSBhL3Rlc3RzL2k5MTUvZ2VtX21vY3Nfc2V0
dGluZ3MuYworKysgYi90ZXN0cy9pOTE1L2dlbV9tb2NzX3NldHRpbmdzLmMKQEAgLTYyLDYgKzYy
LDcgQEAgc3RhdGljIGNvbnN0IGNoYXIgKiBjb25zdCB0ZXN0X21vZGVzW10gPSB7CiAjZGVmaW5l
IEdFTjlfTUZYMF9NT0NTXzAJKDB4YzkwMCkJLyogTWVkaWEgMCBNT0NTIGJhc2UgcmVnaXN0ZXIq
LwogI2RlZmluZSBHRU45X01GWDFfTU9DU18wCSgweGNBMDApCS8qIE1lZGlhIDEgTU9DUyBiYXNl
IHJlZ2lzdGVyKi8KICNkZWZpbmUgR0VOOV9WRUJPWF9NT0NTXzAJKDB4Y0IwMCkJLyogVmlkZW8g
TU9DUyBiYXNlIHJlZ2lzdGVyKi8KKyNkZWZpbmUgR0VOMTFfTUZYMl9NT0NTXzAJKDB4MTAwMDAp
CiAjZGVmaW5lIEdFTjlfQkxUX01PQ1NfMAkJKDB4Y2MwMCkJLyogQmxpdHRlciBNT0NTIGJhc2Ug
cmVnaXN0ZXIqLwogI2RlZmluZSBHRU4xMl9HTE9CQUxfTU9DUwkoMHg0MDAwKQogI2RlZmluZSBJ
Q0VMQUtFX01PQ1NfUFRFCXsweDAwMDAwMDA0LCAweDAwMzAsIDB4MX0KQEAgLTIxNiwxMiArMjE3
LDI3IEBAIHN0YXRpYyB1aW50MzJfdCBnZXRfZW5naW5lX2Jhc2UoaW50IGZkLCB1aW50MzJfdCBl
bmdpbmUpCiAJCXJldHVybiBHRU4xMl9HTE9CQUxfTU9DUzsKIAogCXN3aXRjaCAoZW5naW5lKSB7
Ci0JY2FzZSBMT0NBTF9JOTE1X0VYRUNfQlNEMToJcmV0dXJuIEdFTjlfTUZYMF9NT0NTXzA7Ci0J
Y2FzZSBMT0NBTF9JOTE1X0VYRUNfQlNEMjoJcmV0dXJuIEdFTjlfTUZYMV9NT0NTXzA7Ci0JY2Fz
ZSBJOTE1X0VYRUNfUkVOREVSOgkJcmV0dXJuIEdFTjlfR0ZYX01PQ1NfMDsKLQljYXNlIEk5MTVf
RVhFQ19CTFQ6CQlyZXR1cm4gR0VOOV9CTFRfTU9DU18wOwotCWNhc2UgSTkxNV9FWEVDX1ZFQk9Y
OgkJcmV0dXJuIEdFTjlfVkVCT1hfTU9DU18wOwotCWRlZmF1bHQ6CQkJcmV0dXJuIDA7CisJY2Fz
ZSBMT0NBTF9JOTE1X0VYRUNfQlNEMToKKwkJcmV0dXJuIEdFTjlfTUZYMF9NT0NTXzA7CisKKwlj
YXNlIExPQ0FMX0k5MTVfRVhFQ19CU0QyOgorCQlpZiAoaW50ZWxfZ2VuKGludGVsX2dldF9kcm1f
ZGV2aWQoZmQpKSA+PSAxMSkKKwkJCS8qIGk5MTVfcXVlcnkgdG8gZmluZCBjb3JyZWN0IEhXIGJh
c2UgKi8KKwkJCXJldHVybiBHRU4xMV9NRlgyX01PQ1NfMDsKKwkJZWxzZQorCQkJcmV0dXJuIEdF
TjlfTUZYMV9NT0NTXzA7CisKKwljYXNlIEk5MTVfRVhFQ19SRU5ERVI6CisJCXJldHVybiBHRU45
X0dGWF9NT0NTXzA7CisKKwljYXNlIEk5MTVfRVhFQ19CTFQ6CisJCXJldHVybiBHRU45X0JMVF9N
T0NTXzA7CisKKwljYXNlIEk5MTVfRVhFQ19WRUJPWDoKKwkJcmV0dXJuIEdFTjlfVkVCT1hfTU9D
U18wOworCisJZGVmYXVsdDoKKwkJcmV0dXJuIDA7CiAJfQogfQogCi0tIAoyLjIzLjAKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
