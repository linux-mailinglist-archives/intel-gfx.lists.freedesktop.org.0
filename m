Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DB610FBE9
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2019 11:43:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 052B689C55;
	Tue,  3 Dec 2019 10:43:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8066F89C55
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2019 10:43:23 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19439652-1500050 
 for multiple; Tue, 03 Dec 2019 10:43:16 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 Dec 2019 10:43:17 +0000
Message-Id: <20191203104317.2865437-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/gt: Set the PD again for Haswell
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

QW5kIEhhc3dlbGwgc3RpbGwgb2NjYXNpb25hbGx5IGZvcmdldHMgaXQgaXMgbWVhbnQgdG8gYmUg
dXNpbmcgYSBuZXcKcGFnZSBkaXJlY3RvcnksIHNvIHJlcGVhdCBvdXJzZWx2ZXMgYSBsaXR0bGUg
bG91ZGVyLgoKPDc+IFs1MDkuOTE5ODY0XSBoZWFydGJlYXQgcmNzMCBoZWFydGJlYXQge3ByaW86
LTIxNDc0ODM2NDV9IG5vdCB0aWNraW5nCjw3PiBbNTA5LjkxOTg5NV0gaGVhcnRiZWF0IAlBd2Fr
ZT8gOAo8Nz4gWzUwOS45MTk5MDNdIGhlYXJ0YmVhdCAJQmFycmllcnM/OiBubwo8Nz4gWzUwOS45
MTk5MTJdIGhlYXJ0YmVhdCAJSGVhcnRiZWF0OiAzMDA4IG1zIGFnbwo8Nz4gWzUwOS45MTk5MzBd
IGhlYXJ0YmVhdCAJUmVzZXQgY291bnQ6IDAgKGdsb2JhbCAwKQo8Nz4gWzUwOS45MTk5MzddIGhl
YXJ0YmVhdCAJUmVxdWVzdHM6Cjw3PiBbNTA5LjkyMTAwOF0gaGVhcnRiZWF0IAkJYWN0aXZlICBh
N2ViOjU2ZTEqICBAIDU4NDdtczoKPDc+IFs1MDkuOTIxMTU3XSBoZWFydGJlYXQgCQlyaW5nLT5z
dGFydDogIDB4MDAwMDEwMDAKPDc+IFs1MDkuOTIxMTY0XSBoZWFydGJlYXQgCQlyaW5nLT5oZWFk
OiAgIDB4MDAwMDE2MTAKPDc+IFs1MDkuOTIxMTcwXSBoZWFydGJlYXQgCQlyaW5nLT50YWlsOiAg
IDB4MDAwMDIzZDgKPDc+IFs1MDkuOTIxMTc2XSBoZWFydGJlYXQgCQlyaW5nLT5lbWl0OiAgIDB4
MDAwMDIzZDgKPDc+IFs1MDkuOTIxMTgyXSBoZWFydGJlYXQgCQlyaW5nLT5zcGFjZTogIDB4MDAw
MDI1NzAKPDc+IFs1MDkuOTIxMTg5XSBoZWFydGJlYXQgCQlyaW5nLT5od3NwOiAgIDB4N2ZmZmUx
MDAKPDc+IFs1MDkuOTIxMTk3XSBoZWFydGJlYXQgW2hlYWQgMTYyOCwgcG9zdGZpeCAxNzM4LCB0
YWlsIDE3NTAsIGJhdGNoIDB4ZmZmZmZmZmZfZmZmZmZmZmZdOgo8Nz4gWzUwOS45MjEyODldIGhl
YXJ0YmVhdCBbMDAwMF0gN2EwMDAwMDIgMDAxMDAwMDIgMDAwMDAwMDAgMDAwMDAwMDAgN2EwMDAw
MDIgMDExNTRjMWUgN2ZmZmYwODAgMDAwMDAwMDAKPDc+IFs1MDkuOTIxMjk5XSBoZWFydGJlYXQg
WzAwMjBdIDExMDAwMDAxIDAwMDAyMjIwIGZmZmZmZmZmIDEyNDAwMDAxIDAwMDAyMjIwIDdmZmZm
MDAwIDAwMDAwMDAwIDExMDAwMDAxCjw3PiBbNTA5LjkyMTMwOF0gaGVhcnRiZWF0IFswMDQwXSAw
MDAwMjIyOCA2ZTkwMDAwMCA3YTAwMDAwMiAwMDEwMDAwMiAwMDAwMDAwMCAwMDAwMDAwMCA3YTAw
MDAwMiAwMTE1NGMxZQo8Nz4gWzUwOS45MjEzMTddIGhlYXJ0YmVhdCBbMDA2MF0gN2ZmZmYwODAg
MDAwMDAwMDAgMTI0MDAwMDEgMDAwMDIyMjggN2ZmZmYwMDAgMDAwMDAwMDAgN2EwMDAwMDIgMDAx
MDAwMDIKPDc+IFs1MDkuOTIxMzI2XSBoZWFydGJlYXQgWzAwODBdIDAwMDAwMDAwIDAwMDAwMDAw
IDdhMDAwMDAyIDAxMTU0YzFlIDdmZmZmMDgwIDAwMDAwMDAwIDdhMDAwMDAyIDAwMTAxMGExCjw3
PiBbNTA5LjkyMTMzNV0gaGVhcnRiZWF0IFswMGEwXSA3ZmZmZjA4MCAwMDAwMDAwMCAwNDAwMDAw
MCAxMTAwMDAwNSAwMDAyMjA1MCAwMDAxMDAwMSAwMDAxMjA1MCAwMDAxMDAwMQo8Nz4gWzUwOS45
MjEzNDVdIGhlYXJ0YmVhdCBbMDBjMF0gMDAwMWEwNTAgMDAwMTAwMDEgMDAwMDAwMDAgMGMwMDAw
MDAgNDU5YTExMGMgMDAwMDAwMDAgMTEwMDAwMDUgMDAwMjIwNTAKPDc+IFs1MDkuOTIxMzU0XSBo
ZWFydGJlYXQgWzAwZTBdIDAwMDEwMDAwIDAwMDEyMDUwIDAwMDEwMDAwIDAwMDFhMDUwIDAwMDEw
MDAwIDEyNDAwMDAxIDAwMDFhMDUwIDdmZmZmMDAwCjw3PiBbNTA5LjkyMTM2M10gaGVhcnRiZWF0
IFswMTAwXSAwMDAwMDAwMCAwNDAwMDAwMSAxODgwMjEwMCAwMDAwMDAwMCA3YTAwMDAwMiAwMTEw
NTBhMSA3ZmZmZTEwMCAwMDAwNTZlMQo8Nz4gWzUwOS45MjEzNzBdIGhlYXJ0YmVhdCBbMDEyMF0g
MDEwMDAwMDAgMDAwMDAwMDAKPDc+IFs1MDkuOTIxNTM4XSBoZWFydGJlYXQgCU1NSU8gYmFzZTog
IDB4MDAwMDIwMDAKPDc+IFs1MDkuOTIxNjgyXSBoZWFydGJlYXQgCUNDSUQ6IDB4M2ZhMDExMGQK
PDc+IFs1MDkuOTIyMzQyXSBoZWFydGJlYXQgCVJJTkdfU1RBUlQ6IDB4MDAwMDEwMDAKPDc+IFs1
MDkuOTIyMzUzXSBoZWFydGJlYXQgCVJJTkdfSEVBRDogIDB4MDAwMDE2MjgKPDc+IFs1MDkuOTIy
MzY2XSBoZWFydGJlYXQgCVJJTkdfVEFJTDogIDB4MDAwMDIzZDgKPDc+IFs1MDkuOTIyMzgxXSBo
ZWFydGJlYXQgCVJJTkdfQ1RMOiAgIDB4MDAwMDMwMDEKPDc+IFs1MDkuOTIyMzk2XSBoZWFydGJl
YXQgCVJJTkdfTU9ERTogIDB4MDAwMDQwMDAKPDc+IFs1MDkuOTIyNDA4XSBoZWFydGJlYXQgCVJJ
TkdfSU1SOiBmZmZmZmZkZQo8Nz4gWzUwOS45MjI0MjFdIGhlYXJ0YmVhdCAJQUNUSEQ6ICAweDAw
MDAwMDAwXzMwZTAxNjI4Cjw3PiBbNTA5LjkyMjQzNF0gaGVhcnRiZWF0IAlCQkFERFI6IDB4MDAw
MDAwMDBfMDAwMDQwMDQKPDc+IFs1MDkuOTIyNDQ2XSBoZWFydGJlYXQgCURNQV9GQUREUjogMHgw
MDAwMDAwMF8wMDAwMjgwMAo8Nz4gWzUwOS45MjI0NThdIGhlYXJ0YmVhdCAJSVBFSVI6IDB4MDAw
MDAwMDAKPDc+IFs1MDkuOTIyNDcwXSBoZWFydGJlYXQgCUlQRUhSOiAweDc4MGMwMDAwCjw3PiBb
NTA5LjkyMjY0Ml0gaGVhcnRiZWF0IAlQUF9ESVJfQkFTRTogMHg2ZTcwMDAwMAo8Nz4gWzUwOS45
MjI2NTJdIGhlYXJ0YmVhdCAJUFBfRElSX0JBU0VfUkVBRDogMHgwMDAwMDAwMAo8Nz4gWzUwOS45
MjI2NjJdIGhlYXJ0YmVhdCAJUFBfRElSX0RDTFY6IDB4ZmZmZmZmZmYKPDc+IFs1MDkuOTIyNjc4
XSBoZWFydGJlYXQgCQlFICBhN2ViOjU2ZTEqICBAIDU4NDltczoKPDc+IFs1MDkuOTIyNjg5XSBo
ZWFydGJlYXQgCQlFICBhN2ViOjU2ZTItICBAIDU4NDltczoKPDc+IFs1MDkuOTIyNjk4XSBoZWFy
dGJlYXQgCQlFICBhN2ViOjU2ZTMgIEAgNTg0OG1zOgo8Nz4gWzUwOS45MjI3MDddIGhlYXJ0YmVh
dCAJCUUgIGE3ZWI6NTZlNCAgQCA1ODQ4bXM6Cjw3PiBbNTA5LjkyMjcxNV0gaGVhcnRiZWF0IAkJ
RSAgYTdlYjo1NmU1ICBAIDU4NDdtczoKPDc+IFs1MDkuOTIyNzI0XSBoZWFydGJlYXQgCQlFICBh
N2ViOjU2ZTYgIEAgNTg0Nm1zOgo8Nz4gWzUwOS45MjI3MzVdIGhlYXJ0YmVhdCAJCUUgIGE3ZWI6
NTZlNyAgQCA1ODQ2bXM6Cjw3PiBbNTA5LjkyMjc0NF0gaGVhcnRiZWF0IAkJLi4uc2tpcHBpbmcg
NCBleGVjdXRpbmcgcmVxdWVzdHMuLi4KPDc+IFs1MDkuOTIyNzU0XSBoZWFydGJlYXQgCQlFICBh
N2ViOjU2ZWMgIEAgMzAxMG1zOgo8Nz4gWzUwOS45MjI3OTZdIGhlYXJ0YmVhdCBIV1NQOgo8Nz4g
WzUwOS45MjI4MDddIGhlYXJ0YmVhdCBbMDAwMF0gMDAwMDAwMDEgMDAwMDAwMDAgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAKPDc+IFs1MDkuOTIy
ODE3XSBoZWFydGJlYXQgWzAwMjBdIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAw
IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwCjw3PiBbNTA5LjkyMjgyNl0gaGVh
cnRiZWF0ICoKPDc+IFs1MDkuOTIyODM2XSBoZWFydGJlYXQgWzAxMDBdIDAwMDA1NmUwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAw
Cjw3PiBbNTA5LjkyMjg0NV0gaGVhcnRiZWF0IFswMTIwXSAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMAo8Nz4gWzUw
OS45MjI4NTFdIGhlYXJ0YmVhdCAqCjw3PiBbNTA5LjkyMjg3MF0gaGVhcnRiZWF0IElkbGU/IG5v
Cjw3PiBbNTA5LjkyMjg3OF0gaGVhcnRiZWF0IFNpZ25hbHM6Cjw3PiBbNTA5LjkyMzAwMF0gaGVh
cnRiZWF0IAlbYTdlYjo1NmUyXSBAIDU4NTBtcwoKSGVyZSwgd2UgaGF2ZSBhIGZhaWxlZCBjb250
ZXh0IHJlc3RvcmUgYWZ0ZXIgdGhlIFBEIHN3aXRjaCwgYnV0IG5vdGUKdGhhdCB0aGUgUFBfRElS
X0JBU0UgcmVnaXN0ZXIgZG9lcyBub3QgbWF0Y2ggdGhlIExSSSBpbiB0aGUgcmluZy4KCkJ1bXAg
aXQgdG8gOCBsb29wcywgYW5kIHdpdGggdGhhdCBCYXl0cmFpbCBzdGFydHMgcGFzc2luZyB0aGUg
c2FuaXR5CmNoZWNrcy4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMt
d2lsc29uLmNvLnVrPgotLS0KIC4uLi9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNz
aW9uLmMgICB8IDUxICsrKysrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGNpLmMgICAgICAgICAgICAgICB8ICAyICstCiAyIGZpbGVzIGNoYW5nZWQsIDE1IGluc2Vy
dGlvbnMoKyksIDM4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmluZ19zdWJtaXNzaW9uLmMKaW5kZXggZGNkZWVmMGE3NzZmLi5hNWMxYTFiZDJmMzUg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lv
bi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jpbmdfc3VibWlzc2lvbi5j
CkBAIC0xMzY2LDcgKzEzNjYsNyBAQCBzdGF0aWMgaW50IGxvYWRfcGRfZGlyKHN0cnVjdCBpOTE1
X3JlcXVlc3QgKnJxLCBjb25zdCBzdHJ1Y3QgaTkxNV9wcGd0dCAqcHBndHQpCiAJY29uc3Qgc3Ry
dWN0IGludGVsX2VuZ2luZV9jcyAqIGNvbnN0IGVuZ2luZSA9IHJxLT5lbmdpbmU7CiAJdTMyICpj
czsKIAotCWNzID0gaW50ZWxfcmluZ19iZWdpbihycSwgMTApOworCWNzID0gaW50ZWxfcmluZ19i
ZWdpbihycSwgMTIpOwogCWlmIChJU19FUlIoY3MpKQogCQlyZXR1cm4gUFRSX0VSUihjcyk7CiAK
QEAgLTEzNzgsMzQgKzEzNzgsMTkgQEAgc3RhdGljIGludCBsb2FkX3BkX2RpcihzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycSwgY29uc3Qgc3RydWN0IGk5MTVfcHBndHQgKnBwZ3R0KQogCSpjcysrID0g
aTkxNV9tbWlvX3JlZ19vZmZzZXQoUklOR19QUF9ESVJfRENMVihlbmdpbmUtPm1taW9fYmFzZSkp
OwogCSpjcysrID0gaW50ZWxfZ3Rfc2NyYXRjaF9vZmZzZXQocnEtPmVuZ2luZS0+Z3QsCiAJCQkJ
CUlOVEVMX0dUX1NDUkFUQ0hfRklFTERfREVGQVVMVCk7Ci0JKmNzKysgPSBNSV9OT09QOwogCiAJ
KmNzKysgPSBNSV9MT0FEX1JFR0lTVEVSX0lNTSgxKTsKIAkqY3MrKyA9IGk5MTVfbW1pb19yZWdf
b2Zmc2V0KFJJTkdfUFBfRElSX0JBU0UoZW5naW5lLT5tbWlvX2Jhc2UpKTsKIAkqY3MrKyA9IHB4
X2Jhc2UocHBndHQtPnBkKS0+Z2d0dF9vZmZzZXQgPDwgMTA7CiAKLQlpbnRlbF9yaW5nX2FkdmFu
Y2UocnEsIGNzKTsKLQotCXJldHVybiAwOwotfQotCi1zdGF0aWMgaW50IGZsdXNoX3BkX2Rpcihz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKLXsKLQljb25zdCBzdHJ1Y3QgaW50ZWxfZW5naW5lX2Nz
ICogY29uc3QgZW5naW5lID0gcnEtPmVuZ2luZTsKLQl1MzIgKmNzOwotCi0JY3MgPSBpbnRlbF9y
aW5nX2JlZ2luKHJxLCA0KTsKLQlpZiAoSVNfRVJSKGNzKSkKLQkJcmV0dXJuIFBUUl9FUlIoY3Mp
OwotCi0JLyogU3RhbGwgdW50aWwgdGhlIHBhZ2UgdGFibGUgbG9hZCBpcyBjb21wbGV0ZSAqLwor
CS8qIFN0YWxsIHVudGlsIHRoZSBwYWdlIHRhYmxlIGxvYWQgaXMgY29tcGxldGU/ICovCiAJKmNz
KysgPSBNSV9TVE9SRV9SRUdJU1RFUl9NRU0gfCBNSV9TUk1fTFJNX0dMT0JBTF9HVFQ7CiAJKmNz
KysgPSBpOTE1X21taW9fcmVnX29mZnNldChSSU5HX1BQX0RJUl9CQVNFKGVuZ2luZS0+bW1pb19i
YXNlKSk7CiAJKmNzKysgPSBpbnRlbF9ndF9zY3JhdGNoX29mZnNldChycS0+ZW5naW5lLT5ndCwK
IAkJCQkJSU5URUxfR1RfU0NSQVRDSF9GSUVMRF9ERUZBVUxUKTsKLQkqY3MrKyA9IE1JX05PT1A7
CiAKIAlpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKKwogCXJldHVybiAwOwogfQogCkBAIC0x
NTkyLDE4ICsxNTc3LDcgQEAgc3RhdGljIGludCBzd2l0Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9y
ZXF1ZXN0ICpycSkKIAogCWlmICh2bSkgewogCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUgPSBycS0+ZW5naW5lOwotCi0JCXJldCA9IGxvYWRfcGRfZGlyKHJxLCBpOTE1X3ZtX3RvX3Bw
Z3R0KHZtKSk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCXJldCA9IGVuZ2luZS0+
ZW1pdF9mbHVzaChycSwgRU1JVF9JTlZBTElEQVRFKTsKLQkJaWYgKHJldCkKLQkJCXJldHVybiBy
ZXQ7Ci0KLQkJcmV0ID0gZmx1c2hfcGRfZGlyKHJxKTsKLQkJaWYgKHJldCkKLQkJCXJldHVybiBy
ZXQ7CisJCWludCBsb29wcyA9IDg7IC8qIDIgZm9yIEhhc3dlbGw/IDggZm9yIEJheXRyYWlsISAq
LwogCiAJCS8qCiAJCSAqIE5vdCBvbmx5IGRvIHdlIG5lZWQgYSBmdWxsIGJhcnJpZXIgKHBvc3Qt
c3luYyB3cml0ZSkgYWZ0ZXIKQEAgLTE2MTMsMTMgKzE1ODcsMTYgQEAgc3RhdGljIGludCBzd2l0
Y2hfY29udGV4dChzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIAkJICogcG9zdC1zeW5jIG9wLCB0
aGlzIGV4dHJhIHBhc3MgYXBwZWFycyB2aXRhbCBiZWZvcmUgYQogCQkgKiBtbSBzd2l0Y2ghCiAJ
CSAqLwotCQlyZXQgPSBlbmdpbmUtPmVtaXRfZmx1c2gocnEsIEVNSVRfSU5WQUxJREFURSk7Ci0J
CWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OwotCi0JCXJldCA9IGVuZ2luZS0+ZW1pdF9mbHVzaChy
cSwgRU1JVF9GTFVTSCk7Ci0JCWlmIChyZXQpCi0JCQlyZXR1cm4gcmV0OworCQlkbyB7CisJCQly
ZXQgPSBsb2FkX3BkX2RpcihycSwgaTkxNV92bV90b19wcGd0dCh2bSkpOworCQkJaWYgKHJldCkK
KwkJCQlyZXR1cm4gcmV0OworCisJCQlyZXQgPSBlbmdpbmUtPmVtaXRfZmx1c2gocnEsCisJCQkJ
CQkgRU1JVF9GTFVTSCB8IEVNSVRfSU5WQUxJREFURSk7CisJCQlpZiAocmV0KQorCQkJCXJldHVy
biByZXQ7CisJCX0gd2hpbGUgKC0tbG9vcHMpOwogCX0KIAogCWlmIChjZS0+c3RhdGUpIHsKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGNpLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3BjaS5jCmluZGV4IDU4M2UwY2Q5NGE2YS4uYmJhNmI1MGU2YmViIDEwMDY0
NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcGNpLmMKQEAgLTQ5Myw3ICs0OTMsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IGludGVsX2RldmljZV9pbmZvIGludGVsX3ZhbGxleXZpZXdfaW5mbyA9IHsKIAkuaGFzX3Jw
cyA9IHRydWUsCiAJLmRpc3BsYXkuaGFzX2dtY2ggPSAxLAogCS5kaXNwbGF5Lmhhc19ob3RwbHVn
ID0gMSwKLQkucHBndHRfdHlwZSA9IElOVEVMX1BQR1RUX0FMSUFTSU5HLAorCS5wcGd0dF90eXBl
ID0gSU5URUxfUFBHVFRfRlVMTCwKIAkucHBndHRfc2l6ZSA9IDMxLAogCS5oYXNfc25vb3AgPSB0
cnVlLAogCS5oYXNfY29oZXJlbnRfZ2d0dCA9IGZhbHNlLAotLSAKMi4yNC4wCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
