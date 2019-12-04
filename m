Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 023CF1129F1
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 12:16:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0E8D6E8C1;
	Wed,  4 Dec 2019 11:16:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09AA46E8C1;
 Wed,  4 Dec 2019 11:16:04 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19455310-1500050 
 for multiple; Wed, 04 Dec 2019 11:15:51 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  4 Dec 2019 11:15:53 +0000
Message-Id: <20191204111553.3620947-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_exec_balancer: Race SUBMIT_FENCE
 against semaphores
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

VGhlIHNjaGVkdWxlciBtYXkgdXNlIGEgc2VtYXBob3JlIGJldHdlZW4gZW5naW5lcyB0byBzZXJp
YWxpc2UgcmVxdWVzdHMsCmFuZCBpbiBkb2luZyBzbyBzdWJtaXQgdGhlIHJlcXVlc3QgYmVmb3Jl
IGl0cyBzaWduYWxlcnMgYXJlIHJlYWR5LiBUaGlzCmRlcGVuZGVuY3kgbXVzdCBhbHNvIGJlIGNv
cGllZCBhY3Jvc3MgYW55IFNVQk1JVF9GRU5DRSBzbyB0aGF0IGEKYm9uZGVkLXBhaXIgd2lsbCBu
b3QgZXhlY3V0ZSBhaGVhZCBvZiBhbnkgb2YgaXRzIGltcGxpY2l0IGRlcGVuZGVuY2llcwotLSBp
dCB0b28gbXVzdCB3YWl0IGZvciB0aGUgc2FtZSBzZW1hcGhvcmVzLgoKU2lnbmVkLW9mZi1ieTog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxp
biA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFs
YW5jZXIuYyB8IDEwNCArKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBj
aGFuZ2VkLCAxMDQgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL3Rlc3RzL2k5MTUvZ2VtX2V4
ZWNfYmFsYW5jZXIuYyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYwppbmRleCBlNWU4
MzUwOGYuLjVmNmUzZDU2OCAxMDA2NDQKLS0tIGEvdGVzdHMvaTkxNS9nZW1fZXhlY19iYWxhbmNl
ci5jCisrKyBiL3Rlc3RzL2k5MTUvZ2VtX2V4ZWNfYmFsYW5jZXIuYwpAQCAtOTU5LDYgKzk1OSwx
MDcgQEAgc3RhdGljIHZvaWQgYm9uZGVkX2NoYWluKGludCBpOTE1KQogCWdlbV9jb250ZXh0X2Rl
c3Ryb3koaTkxNSwgY3R4KTsKIH0KIAorc3RhdGljIHZvaWQgX19ib25kZWRfc2VtYShpbnQgaTkx
NSwgdWludDMyX3QgY3R4LAorCQkJICBjb25zdCBzdHJ1Y3QgaTkxNV9lbmdpbmVfY2xhc3NfaW5z
dGFuY2UgKnNpYmxpbmdzLAorCQkJICB1bnNpZ25lZCBpbnQgY291bnQpCit7CisJY29uc3QgaW50
IHByaW9yaXRpZXNbXSA9IHsgLTEwMjMsIDAsIDEwMjMgfTsKKwlzdHJ1Y3QgZHJtX2k5MTVfZ2Vt
X2V4ZWNfb2JqZWN0MiBiYXRjaCA9IHsKKwkJLmhhbmRsZSA9IGJhdGNoX2NyZWF0ZShpOTE1KSwK
Kwl9OworCXN0cnVjdCBkcm1faTkxNV9nZW1fZXhlY2J1ZmZlcjIgZXhlY2J1ZiA9IHsKKwkJLmJ1
ZmZlcnNfcHRyID0gdG9fdXNlcl9wb2ludGVyKCZiYXRjaCksCisJCS5idWZmZXJfY291bnQgPSAx
LAorCQkucnN2ZDEgPSBjdHgsCisJfTsKKwlpZ3Rfc3Bpbl90ICpzcGluOworCisJZm9yIChpbnQg
aSA9IDA7IGkgPCBBUlJBWV9TSVpFKHByaW9yaXRpZXMpOyBpKyspIHsKKwkJLyogQTogc3BpbiBm
b3JldmVyIG9uIHNlcGVyYXRlIHJlbmRlciBlbmdpbmUgKi8KKwkJc3BpbiA9IGlndF9zcGluX25l
dyhpOTE1LAorCQkJCSAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fUE9MTF9SVU4gfAorCQkJCQkgICAg
ICBJR1RfU1BJTl9GRU5DRV9PVVQpKTsKKwkJaWd0X3NwaW5fYnVzeXdhaXRfdW50aWxfc3RhcnRl
ZChzcGluKTsKKworCQkvKgorCQkgKiBOb3RlIHdlIHJlcGxhY2UgdGhlIHRpbWVsaW5lcyBiZXR3
ZWVuIGVhY2ggZXhlY2J1Ziwgc28KKwkJICogdGhhdCBhbnkgcGFpciBvZiByZXF1ZXN0cyBvbiB0
aGUgc2FtZSBlbmdpbmUgY291bGQgYmUKKwkJICogcmUtb3JkZXJlZCBieSB0aGUgc2NoZWR1bGVy
IC0tIGlmIHRoZSBkZXBlbmRlbmN5IHRyYWNraW5nCisJCSAqIGlzIHN1YnBhci4KKwkJICovCisK
KwkJLyogQjogd2FpdHMgZm9yIEEgKHVzaW5nIGEgc2VtYXBob3JlKSBvbiBlbmdpbmUgMSAqLwor
CQlzZXRfbG9hZF9iYWxhbmNlcihpOTE1LCBjdHgsIHNpYmxpbmdzLCBjb3VudCwgTlVMTCk7CisJ
CWV4ZWNidWYucnN2ZDIgPSBzcGluLT5vdXRfZmVuY2U7CisJCWV4ZWNidWYuZmxhZ3MgPSBJOTE1
X0VYRUNfRkVOQ0VfSU4gfCBJOTE1X0VYRUNfRkVOQ0VfT1VUOworCQlleGVjYnVmLmZsYWdzIHw9
IDE7CisJCWdlbV9leGVjYnVmX3dyKGk5MTUsICZleGVjYnVmKTsKKworCQkvKiBCJzogcnVuIGlu
IHBhcmFsbGVsIHdpdGggQiBvbiBlbmdpbmUgMiAqLworCQlpZiAocHJpb3JpdGllc1tpXSA+IDAp
CisJCQlnZW1fY29udGV4dF9zZXRfcHJpb3JpdHkoaTkxNSwgY3R4LCBwcmlvcml0aWVzW2ldKTsK
KwkJc2V0X2xvYWRfYmFsYW5jZXIoaTkxNSwgY3R4LCBzaWJsaW5ncywgY291bnQsIE5VTEwpOwor
CQlleGVjYnVmLmZsYWdzID0gSTkxNV9FWEVDX0ZFTkNFX1NVQk1JVCB8IEk5MTVfRVhFQ19GRU5D
RV9PVVQ7CisJCWV4ZWNidWYuZmxhZ3MgfD0gMjsKKwkJZXhlY2J1Zi5yc3ZkMiA+Pj0gMzI7CisJ
CWdlbV9leGVjYnVmX3dyKGk5MTUsICZleGVjYnVmKTsKKwkJZ2VtX2NvbnRleHRfc2V0X3ByaW9y
aXR5KGk5MTUsIGN0eCwgMCk7CisKKwkJLyogV2FpdCBmb3IgYW55IG1hZ2ljIHRpbWVzbGljaW5n
IG9yIHByZWVtcHRpb25zLi4uICovCisJCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV93YWl0KGV4
ZWNidWYucnN2ZDIgPj4gMzIsIDEwMDApLAorCQkJICAgICAgLUVUSU1FKTsKKworCQlpZ3RfZGVi
dWdmc19kdW1wKGk5MTUsICJpOTE1X2VuZ2luZV9pbmZvIik7CisKKwkJLyoKKwkJICogLi4uIHdo
aWNoIHNob3VsZCBub3QgaGF2ZSBoYXBwZW5lZCwgc28gZXZlcnl0aGluZyBpcyBzdGlsbAorCQkg
KiB3YWl0aW5nIG9uIHRoZSBzcGlubmVyCisJCSAqLworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVu
Y2Vfc3RhdHVzKHNwaW4tPm91dF9mZW5jZSksIDApOworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVu
Y2Vfc3RhdHVzKGV4ZWNidWYucnN2ZDIgJiAweGZmZmZmZmZmKSwgMCk7CisJCWlndF9hc3NlcnRf
ZXEoc3luY19mZW5jZV9zdGF0dXMoZXhlY2J1Zi5yc3ZkMiA+PiAzMiksIDApOworCisJCWlndF9z
cGluX2ZyZWUoaTkxNSwgc3Bpbik7CisJCWdlbV9zeW5jKGk5MTUsIGJhdGNoLmhhbmRsZSk7CisK
KwkJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1cyhleGVjYnVmLnJzdmQyICYgMHhmZmZm
ZmZmZiksIDEpOworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVzKGV4ZWNidWYucnN2
ZDIgPj4gMzIpLCAxKTsKKworCQljbG9zZShleGVjYnVmLnJzdmQyKTsKKwkJY2xvc2UoZXhlY2J1
Zi5yc3ZkMiA+PiAzMik7CisJfQorCisJZ2VtX2Nsb3NlKGk5MTUsIGJhdGNoLmhhbmRsZSk7Cit9
CisKK3N0YXRpYyB2b2lkIGJvbmRlZF9zZW1hcGhvcmUoaW50IGk5MTUpCit7CisJdWludDMyX3Qg
Y3R4OworCisJLyoKKwkgKiBHaXZlbiBiYXRjaGVzIEEsIEIgYW5kIEInLCB3aGVyZSBCIGFuZCBC
JyBhcmUgYSBib25kZWQgcGFpciwgd2l0aAorCSAqIEInIGRlcGVuZGluZyBvbiBCIHdpdGggYSBz
dWJtaXQgZmVuY2UgYW5kIEIgZGVwZW5kaW5nIG9uIEEgYXMKKwkgKiBhbiBvcmRpbmFyeSBmZW5j
ZTsgcHJvdmUgQicgY2Fubm90IGNvbXBsZXRlIGJlZm9yZSBBLCB3aXRoIHRoZQorCSAqIGRpZmZl
cmVuY2UgaGVyZSAod3J0IGJvbmRlZF9jaGFpbikgdGhhdCBBIGlzIG9uIGFub3RoZXIgZW5naW5l
IGFuZAorCSAqIHNvIEEsIEIgYW5kIEInIGFyZSBleHBlY3RlZCB0byBiZSBpbmZsaWdodCBjb25j
dXJyZW50bHkuCisJICovCisJaWd0X3JlcXVpcmUoZ2VtX3NjaGVkdWxlcl9oYXNfc2VtYXBob3Jl
cyhpOTE1KSk7CisKKwljdHggPSBnZW1fY29udGV4dF9jcmVhdGUoaTkxNSk7CisKKwlmb3IgKGlu
dCBjbGFzcyA9IDE7IGNsYXNzIDwgMzI7IGNsYXNzKyspIHsKKwkJc3RydWN0IGk5MTVfZW5naW5l
X2NsYXNzX2luc3RhbmNlICpzaWJsaW5nczsKKwkJdW5zaWduZWQgaW50IGNvdW50OworCisJCXNp
YmxpbmdzID0gbGlzdF9lbmdpbmVzKGk5MTUsIDF1IDw8IGNsYXNzLCAmY291bnQpOworCQlpZiAo
Y291bnQgPiAxKQorCQkJX19ib25kZWRfc2VtYShpOTE1LCBjdHgsIHNpYmxpbmdzLCBjb3VudCk7
CisJCWZyZWUoc2libGluZ3MpOworCX0KKworCWdlbV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3R4
KTsKK30KKwogc3RhdGljIHZvaWQgaW5kaWNlcyhpbnQgaTkxNSkKIHsKIAlJOTE1X0RFRklORV9D
T05URVhUX1BBUkFNX0VOR0lORVMoZW5naW5lcywgSTkxNV9FWEVDX1JJTkdfTUFTSyArIDEpOwpA
QCAtMTY4NSw2ICsxNzg2LDkgQEAgaWd0X21haW4KIAlpZ3Rfc3VidGVzdCgiYm9uZGVkLWNoYWlu
IikKIAkJYm9uZGVkX2NoYWluKGk5MTUpOwogCisJaWd0X3N1YnRlc3QoImJvbmRlZC1zZW1hcGhv
cmUiKQorCQlib25kZWRfc2VtYXBob3JlKGk5MTUpOworCiAJaWd0X2ZpeHR1cmUgewogCQlpZ3Rf
c3RvcF9oYW5nX2RldGVjdG9yKCk7CiAJfQotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
