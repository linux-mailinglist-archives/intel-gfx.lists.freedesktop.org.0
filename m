Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B89B104183
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2019 17:55:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3696E901;
	Wed, 20 Nov 2019 16:55:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98A256E83D
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:55:20 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19274725-1500050 
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2019 16:55:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 20 Nov 2019 16:55:14 +0000
Message-Id: <20191120165514.3955081-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191120165514.3955081-1-chris@chris-wilson.co.uk>
References: <20191120165514.3955081-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 2/2] drm/i915/gt: Unlock engine-pm after queuing
 the kernel context switch
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

SW4gY29tbWl0IGE3OWNhNjU2YjY0OCAoImRybS9pOTE1OiBQdXNoIHRoZSB3YWtlcmVmLT5jb3Vu
dCBkZWZlcnJhbCB0bwp0aGUgYmFja2VuZCIpLCBJIGVycm9uZW91c2x5IGNvbmNsdWRlZCB0aGF0
IHdlIGxhc3QgbW9kaWZ5IHRoZSBlbmdpbmUKaW5zaWRlIF9faTkxNV9yZXF1ZXN0X2NvbW1pdCgp
IG1lYW5pbmcgdGhhdCB3ZSBjb3VsZCBlbmFibGUgY29uY3VycmVudApzdWJtaXNzaW9uIGZvciB1
c2Vyc3BhY2UgYXMgd2UgZW5xdWV1ZWQgdGhpcyByZXF1ZXN0LiBIb3dldmVyLCB0aGlzCmZhbGxz
IGludG8gYSB0cmFwIHdpdGggb3RoZXIgdXNlcnMgb2YgdGhlIGVuZ2luZS0+a2VybmVsX2NvbnRl
eHQgd2FraW5nCnVwIGFuZCBzdWJtaXR0aW5nIHRoZWlyIHJlcXVlc3QgYmVmb3JlIHRoZSBpZGxl
LXN3aXRjaCBpcyBxdWV1ZWQsIHdpdGgKdGhlIHJlc3VsdCB0aGF0IHRoZSBrZXJuZWxfY29udGV4
dCBpcyBleGVjdXRlZCBvdXQtb2Ytc2VxdWVuY2UgbW9zdApsaWtlbHkgdXBzZXR0aW5nIHRoZSBH
UFUgYW5kIGNlcnRhaW5seSBvdXJzZWx2ZXMgd2hlbiB3ZSB0cnkgdG8gcmV0aXJlCnRoZSBvdXQt
b2Ytc2VxdWVuY2UgcmVxdWVzdHMuCgpBcyBzdWNoIHdlIG5lZWQgdG8gaG9sZCBvbnRvIHRoZSBl
ZmZlY3RpdmUgZW5naW5lLT5rZXJuZWxfY29udGV4dCBtdXRleApsb2NrICh2aWEgdGhlIGVuZ2lu
ZSBwbSBtdXRleCBwcm94eSkgdW50aWwgd2UgaGF2ZSBmaW5pc2ggcXVldWluZyB0aGUKcmVxdWVz
dCB0byB0aGUgZW5naW5lLgoKdjI6IFNlcmlhbGlzZSBhZ2FpbnN0IGNvbmN1cnJlbnQgaW50ZWxf
Z3RfcmV0aXJlX3JlcXVlc3RzKCkKdjM6IERlc2NyaWJlIHRoZSBoYWlyeSBsb2NraW5nIHNjaGVt
ZSB3aXRoIGludGVsX2d0X3JldGlyZV9yZXF1ZXN0cygpCmZvciBmdXR1cmUgcmVmZXJlbmNlLgp2
NDogQ29tYmluZSB0aW1lbGluZS0+bG9jayBhbmQgZW5naW5lIHBtIHJlbGVhc2U7IGl0J3MgaGFp
cnkuCgpGaXhlczogYTc5Y2E2NTZiNjQ4ICgiZHJtL2k5MTU6IFB1c2ggdGhlIHdha2VyZWYtPmNv
dW50IGRlZmVycmFsIHRvIHRoZSBiYWNrZW5kIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29u
IDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNaWthIEt1b3BwYWxhIDxtaWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBp
bnRlbC5jb20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50
ZWwuY29tPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jIHwg
NDcgKysrKysrKysrKysrKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA0MCBpbnNlcnRpb25z
KCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3BtLmMKaW5kZXggNzI2OWM4N2MxMzcyLi44MDg1MjZlZTE3MjMgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jCkBAIC03Myw4ICs3MywyNSBAQCBzdGF0aWMgaW5s
aW5lIHZvaWQgX190aW1lbGluZV9tYXJrX3VubG9jayhzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2Us
CiAKICNlbmRpZiAvKiAhSVNfRU5BQkxFRChDT05GSUdfTE9DS0RFUCkgKi8KIAorc3RhdGljIHZv
aWQKK19faW50ZWxfdGltZWxpbmVfZW50ZXJfYW5kX3BtX3JlbGVhc2Uoc3RydWN0IGludGVsX3Rp
bWVsaW5lICp0bCwKKwkJCQkgICAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCit7
CisJc3RydWN0IGludGVsX2d0X3RpbWVsaW5lcyAqdGltZWxpbmVzID0gJmVuZ2luZS0+Z3QtPnRp
bWVsaW5lczsKKworCXNwaW5fbG9jaygmdGltZWxpbmVzLT5sb2NrKTsKKworCWlmICghYXRvbWlj
X2ZldGNoX2luYygmdGwtPmFjdGl2ZV9jb3VudCkpCisJCWxpc3RfYWRkX3RhaWwoJnRsLT5saW5r
LCAmdGltZWxpbmVzLT5hY3RpdmVfbGlzdCk7CisKKwlfX2ludGVsX3dha2VyZWZfZGVmZXJfcGFy
aygmZW5naW5lLT53YWtlcmVmKTsKKworCXNwaW5fdW5sb2NrKCZ0aW1lbGluZXMtPmxvY2spOwor
fQorCiBzdGF0aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogeworCXN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSA9IGVuZ2luZS0+
a2VybmVsX2NvbnRleHQ7CiAJc3RydWN0IGk5MTVfcmVxdWVzdCAqcnE7CiAJdW5zaWduZWQgbG9u
ZyBmbGFnczsKIAlib29sIHJlc3VsdCA9IHRydWU7CkBAIC05OCwxNiArMTE1LDMxIEBAIHN0YXRp
YyBib29sIHN3aXRjaF90b19rZXJuZWxfY29udGV4dChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpCiAJICogVGhpcyBzaG91bGQgaG9sZCB0cnVlIGFzIHdlIGNhbiBvbmx5IHBhcmsgdGhl
IGVuZ2luZSBhZnRlcgogCSAqIHJldGlyaW5nIHRoZSBsYXN0IHJlcXVlc3QsIHRodXMgYWxsIHJp
bmdzIHNob3VsZCBiZSBlbXB0eSBhbmQKIAkgKiBhbGwgdGltZWxpbmVzIGlkbGUuCisJICoKKwkg
KiBGb3IgdW5sb2NraW5nLCB0aGVyZSBhcmUgMiBvdGhlciBwYXJ0aWVzIGFuZCB0aGUgR1BVIHdo
byBoYXZlIGEKKwkgKiBzdGFrZSBoZXJlLgorCSAqCisJICogQSBuZXcgZ3B1IHVzZXIgd2lsbCBi
ZSB3YWl0aW5nIG9uIHRoZSBlbmdpbmUtcG0gdG8gc3RhcnQgdGhlaXIKKwkgKiBlbmdpbmVfdW5w
YXJrLiBOZXcgd2FpdGVycyBhcmUgcHJlZGljYXRlZCBvbiBlbmdpbmUtPndha2VyZWYuY291bnQK
KwkgKiBhbmQgc28gaW50ZWxfd2FrZXJlZl9kZWZlcl9wYXJrKCkgYWN0cyBsaWtlIGEgbXV0ZXhf
dW5sb2NrIG9mIHRoZQorCSAqIGVuZ2luZS0+d2FrZXJlZi4KKwkgKgorCSAqIFRoZSBvdGhlciBw
YXJ0eSBpcyBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSwgd2hpY2ggaXMgd2Fsa2luZyB0aGUK
KwkgKiBsaXN0IG9mIGFjdGl2ZSB0aW1lbGluZXMgbG9va2luZyBmb3IgY29tcGxldGlvbnMuIE1l
YW53aGlsZSBhcyBzb29uCisJICogYXMgd2UgY2FsbCBfX2k5MTVfcmVxdWVzdF9xdWV1ZSgpLCB0
aGUgR1BVIG1heSBjb21wbGV0ZSBvdXIgcmVxdWVzdC4KKwkgKiBFcmdvLCBpZiB3ZSBwdXQgb3Vy
c2VsdmVzIG9uIHRoZSB0aW1lbGluZXMuYWN0aXZlX2xpc3QKKwkgKiAoc2UgaW50ZWxfdGltZWxp
bmVfZW50ZXIoKSkgYmVmb3JlIHdlIGluY3JlbWVudCB0aGUKKwkgKiBlbmdpbmUtPndha2VyZWYu
Y291bnQsIHdlIG1heSBzZWUgdGhlIHJlcXVlc3QgY29tcGxldGlvbiBhbmQgcmV0aXJlCisJICog
aXQgY2F1c2luZyBhbiB1bmRlZmxvdyBvZiB0aGUgZW5naW5lLT53YWtlcmVmLgogCSAqLwotCWZs
YWdzID0gX190aW1lbGluZV9tYXJrX2xvY2soZW5naW5lLT5rZXJuZWxfY29udGV4dCk7CisJZmxh
Z3MgPSBfX3RpbWVsaW5lX21hcmtfbG9jayhjZSk7CisJR0VNX0JVR19PTihhdG9taWNfcmVhZCgm
Y2UtPnRpbWVsaW5lLT5hY3RpdmVfY291bnQpIDwgMCk7CiAKLQlycSA9IF9faTkxNV9yZXF1ZXN0
X2NyZWF0ZShlbmdpbmUtPmtlcm5lbF9jb250ZXh0LCBHRlBfTk9XQUlUKTsKKwlycSA9IF9faTkx
NV9yZXF1ZXN0X2NyZWF0ZShjZSwgR0ZQX05PV0FJVCk7CiAJaWYgKElTX0VSUihycSkpCiAJCS8q
IENvbnRleHQgc3dpdGNoIGZhaWxlZCwgaG9wZSBmb3IgdGhlIGJlc3QhIE1heWJlIHJlc2V0PyAq
LwogCQlnb3RvIG91dF91bmxvY2s7CiAKLQlpbnRlbF90aW1lbGluZV9lbnRlcihpOTE1X3JlcXVl
c3RfdGltZWxpbmUocnEpKTsKLQogCS8qIENoZWNrIGFnYWluIG9uIHRoZSBuZXh0IHJldGlyZW1l
bnQuICovCiAJZW5naW5lLT53YWtlcmVmX3NlcmlhbCA9IGVuZ2luZS0+c2VyaWFsICsgMTsKIAlp
OTE1X3JlcXVlc3RfYWRkX2FjdGl2ZV9iYXJyaWVycyhycSk7CkBAIC0xMTYsMTMgKzE0OCwxNCBA
QCBzdGF0aWMgYm9vbCBzd2l0Y2hfdG9fa2VybmVsX2NvbnRleHQoc3RydWN0IGludGVsX2VuZ2lu
ZV9jcyAqZW5naW5lKQogCXJxLT5zY2hlZC5hdHRyLnByaW9yaXR5ID0gSTkxNV9QUklPUklUWV9C
QVJSSUVSOwogCV9faTkxNV9yZXF1ZXN0X2NvbW1pdChycSk7CiAKLQkvKiBSZWxlYXNlIG91ciBl
eGNsdXNpdmUgaG9sZCBvbiB0aGUgZW5naW5lICovCi0JX19pbnRlbF93YWtlcmVmX2RlZmVyX3Bh
cmsoJmVuZ2luZS0+d2FrZXJlZik7CiAJX19pOTE1X3JlcXVlc3RfcXVldWUocnEsIE5VTEwpOwog
CisJLyogRXhwb3NlIG91cnNlbHZlcyB0byBpbnRlbF9ndF9yZXRpcmVfcmVxdWVzdHMoKSBhbmQg
bmV3IHN1Ym1pc3Npb24gKi8KKwlfX2ludGVsX3RpbWVsaW5lX2VudGVyX2FuZF9wbV9yZWxlYXNl
KGNlLT50aW1lbGluZSwgZW5naW5lKTsKKwogCXJlc3VsdCA9IGZhbHNlOwogb3V0X3VubG9jazoK
LQlfX3RpbWVsaW5lX21hcmtfdW5sb2NrKGVuZ2luZS0+a2VybmVsX2NvbnRleHQsIGZsYWdzKTsK
KwlfX3RpbWVsaW5lX21hcmtfdW5sb2NrKGNlLCBmbGFncyk7CiAJcmV0dXJuIHJlc3VsdDsKIH0K
IAotLSAKMi4yNC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
