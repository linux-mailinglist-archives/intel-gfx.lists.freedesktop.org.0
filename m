Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7F3FF1874
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Nov 2019 15:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20B6D6ED83;
	Wed,  6 Nov 2019 14:24:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 915416ED78;
 Wed,  6 Nov 2019 14:24:39 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 19103028-1500050 
 for multiple; Wed, 06 Nov 2019 14:24:34 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: dri-devel@lists.freedesktop.org
Date: Wed,  6 Nov 2019 14:24:30 +0000
Message-Id: <20191106142432.14022-4-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191106142432.14022-1-chris@chris-wilson.co.uk>
References: <20191106142432.14022-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 3/5] drm/i915/selftests: Replace mock_file
 hackery with drm's true fake
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QXMgZHJtIG5vdyBleHBvcnRzIGEgbWV0aG9kIHRvIGNyZWF0ZSBhbiBhbm9ueW1vdXMgc3RydWN0
IGZpbGUgYXJvdW5kIGEKZHJtX2RldmljZSBmb3IgaW50ZXJuYWwgdXNlLCBtYWtlIHVzZSBvZiBp
dCB0byBhdm9pZCBvdXIgaG9ycmlibGUgaGFja3MuCgpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9L
Y29uZmlnLmRlYnVnICAgICAgICAgICAgfCAgMiArCiAuLi4vZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaHVnZV9wYWdlcy5jICAgfCAgMiArLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fY29udGV4dC5jIHwgMTIgKystLS0KIC4uLi9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fb2JqZWN0X2JsdC5jICB8ICA0ICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxm
dGVzdF9jb250ZXh0LmMgICAgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRl
c3RfaGFuZ2NoZWNrLmMgIHwgIDggKy0tCiAuLi4vZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dv
cmthcm91bmRzLmMgICAgfCAgMiArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5
MTVfZ2VtLmMgICAgIHwgIDQgKy0KIC4uLi9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2Vt
X2V2aWN0LmMgICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9n
ZW1fZ3R0LmMgfCAgNCArLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVx
dWVzdC5jIHwgIDIgKy0KIC4uLi9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lv
bi5jICB8ICAyICstCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19kcm0uYyAg
ICAgfCA0OSArKystLS0tLS0tLS0tLS0tLS0tCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVz
dHMvbW9ja19kcm0uaCAgICAgfCAgOCArKy0KIDE0IGZpbGVzIGNoYW5nZWQsIDM5IGluc2VydGlv
bnMoKyksIDY2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L0tjb25maWcuZGVidWcgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9LY29uZmlnLmRlYnVnCmluZGV4
IGVmMTIzZWIyOTE2OC4uMTE0MDUyNWRhNzVhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9LY29uZmlnLmRlYnVnCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L0tjb25maWcuZGVi
dWcKQEAgLTM3LDYgKzM3LDcgQEAgY29uZmlnIERSTV9JOTE1X0RFQlVHCiAJc2VsZWN0IFg4Nl9N
U1IgIyB1c2VkIGJ5IGlndC9wbV9ycG0KIAlzZWxlY3QgRFJNX1ZHRU0gIyB1c2VkIGJ5IGlndC9w
cmltZV92Z2VtIChkbWFidWYgaW50ZXJvcCBjaGVja3MpCiAJc2VsZWN0IERSTV9ERUJVR19NTSBp
ZiBEUk09eQorCXNlbGVjdCBEUk1fRVhQT1JUX0ZPUl9URVNUUyBpZiBtCiAJc2VsZWN0IERSTV9E
RUJVR19TRUxGVEVTVAogCXNlbGVjdCBETUFCVUZfU0VMRlRFU1RTCiAJc2VsZWN0IFNXX1NZTkMg
IyBzaWduYWxpbmcgdmFsaWRhdGlvbiBmcmFtZXdvcmsgKGlndC9zeW5jb2JqKikKQEAgLTE2MCw2
ICsxNjEsNyBAQCBjb25maWcgRFJNX0k5MTVfU0VMRlRFU1QKIAlib29sICJFbmFibGUgc2VsZnRl
c3RzIHVwb24gZHJpdmVyIGxvYWQiCiAJZGVwZW5kcyBvbiBEUk1fSTkxNQogCWRlZmF1bHQgbgor
CXNlbGVjdCBEUk1fRVhQT1JUX0ZPUl9URVNUUyBpZiBtCiAJc2VsZWN0IEZBVUxUX0lOSkVDVElP
TgogCXNlbGVjdCBQUklNRV9OVU1CRVJTCiAJaGVscApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3BhZ2VzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vc2VsZnRlc3RzL2h1Z2VfcGFnZXMuYwppbmRleCA2ODhjNDlhMjRmMzIuLjA2ZGFkN2Iw
ZGI4MiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdl
X3BhZ2VzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9odWdlX3Bh
Z2VzLmMKQEAgLTE5NDQsNiArMTk0NCw2IEBAIGludCBpOTE1X2dlbV9odWdlX3BhZ2VfbGl2ZV9z
ZWxmdGVzdHMoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpCiAJZXJyID0gaTkxNV9zdWJ0
ZXN0cyh0ZXN0cywgY3R4KTsKIAogb3V0X2ZpbGU6Ci0JbW9ja19maWxlX2ZyZWUoaTkxNSwgZmls
ZSk7CisJbW9ja19maWxlX3B1dChmaWxlKTsKIAlyZXR1cm4gZXJyOwogfQpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2NvbnRleHQuYwppbmRl
eCA2MmZhYmMwMjNhODMuLjQ3ODkwYzkyNTM0YyAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9jb250ZXh0LmMKQEAgLTE0OSw3ICsxNDks
NyBAQCBzdGF0aWMgaW50IGxpdmVfbm9wX3N3aXRjaCh2b2lkICphcmcpCiAJfQogCiBvdXRfZmls
ZToKLQltb2NrX2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwog
CXJldHVybiBlcnI7CiB9CiAKQEAgLTM3Nyw3ICszNzcsNyBAQCBzdGF0aWMgaW50IGxpdmVfcGFy
YWxsZWxfc3dpdGNoKHZvaWQgKmFyZykKIAl9CiAJa2ZyZWUoZGF0YSk7CiBvdXRfZmlsZToKLQlt
b2NrX2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJldHVy
biBlcnI7CiB9CiAKQEAgLTcxNiw3ICs3MTYsNyBAQCBzdGF0aWMgaW50IGlndF9jdHhfZXhlYyh2
b2lkICphcmcpCiAJCWlmIChpZ3RfbGl2ZV90ZXN0X2VuZCgmdCkpCiAJCQllcnIgPSAtRUlPOwog
Ci0JCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCQltb2NrX2ZpbGVfcHV0KGZpbGUpOwog
CQlpZiAoZXJyKQogCQkJcmV0dXJuIGVycjsKIApAQCAtODU0LDcgKzg1NCw3IEBAIHN0YXRpYyBp
bnQgaWd0X3NoYXJlZF9jdHhfZXhlYyh2b2lkICphcmcpCiAJaWYgKGlndF9saXZlX3Rlc3RfZW5k
KCZ0KSkKIAkJZXJyID0gLUVJTzsKIG91dF9maWxlOgotCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZp
bGUpOworCW1vY2tfZmlsZV9wdXQoZmlsZSk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMTQyNiw3
ICsxNDI2LDcgQEAgc3RhdGljIGludCBpZ3RfY3R4X3JlYWRvbmx5KHZvaWQgKmFyZykKIAlpZiAo
aWd0X2xpdmVfdGVzdF9lbmQoJnQpKQogCQllcnIgPSAtRUlPOwogCi0JbW9ja19maWxlX2ZyZWUo
aTkxNSwgZmlsZSk7CisJbW9ja19maWxlX3B1dChmaWxlKTsKIAlyZXR1cm4gZXJyOwogfQogCkBA
IC0xNzUwLDcgKzE3NTAsNyBAQCBzdGF0aWMgaW50IGlndF92bV9pc29sYXRpb24odm9pZCAqYXJn
KQogb3V0X2ZpbGU6CiAJaWYgKGlndF9saXZlX3Rlc3RfZW5kKCZ0KSkKIAkJZXJyID0gLUVJTzsK
LQltb2NrX2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJl
dHVybiBlcnI7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxm
dGVzdHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3Nl
bGZ0ZXN0cy9pOTE1X2dlbV9vYmplY3RfYmx0LmMKaW5kZXggZTgxMzJhY2EwYmI2Li5kOWZkZmRk
YjcwOTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkx
NV9nZW1fb2JqZWN0X2JsdC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVz
dHMvaTkxNV9nZW1fb2JqZWN0X2JsdC5jCkBAIC0zMDEsNyArMzAxLDcgQEAgc3RhdGljIGludCBp
Z3RfZmlsbF9ibHRfdGhyZWFkKHZvaWQgKmFyZykKIAogCWludGVsX2NvbnRleHRfcHV0KGNlKTsK
IG91dF9maWxlOgotCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCW1vY2tfZmlsZV9wdXQo
ZmlsZSk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtNDMyLDcgKzQzMiw3IEBAIHN0YXRpYyBpbnQg
aWd0X2NvcHlfYmx0X3RocmVhZCh2b2lkICphcmcpCiAKIAlpbnRlbF9jb250ZXh0X3B1dChjZSk7
CiBvdXRfZmlsZToKLQltb2NrX2ZpbGVfZnJlZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0
KGZpbGUpOwogCXJldHVybiBlcnI7CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X2NvbnRleHQuYwppbmRleCBiYzcyMGRlZmM2YjguLmE1Njg4ZjdkOTA3MyAxMDA2NDQKLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfY29udGV4dC5jCisrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwpAQCAtMzEzLDcgKzMxMyw3IEBA
IHN0YXRpYyBpbnQgbGl2ZV9hY3RpdmVfY29udGV4dCh2b2lkICphcmcpCiAJfQogCiBvdXRfZmls
ZToKLQltb2NrX2ZpbGVfZnJlZShndC0+aTkxNSwgZmlsZSk7CisJbW9ja19maWxlX3B1dChmaWxl
KTsKIAlyZXR1cm4gZXJyOwogfQogCkBAIC00MjMsNyArNDIzLDcgQEAgc3RhdGljIGludCBsaXZl
X3JlbW90ZV9jb250ZXh0KHZvaWQgKmFyZykKIAl9CiAKIG91dF9maWxlOgotCW1vY2tfZmlsZV9m
cmVlKGd0LT5pOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJldHVybiBlcnI7
CiB9CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdj
aGVjay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfaGFuZ2NoZWNrLmMKaW5k
ZXggODVlOWNjZjVjMzA0Li5jZGFhZWU0NDMyYjIgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3NlbGZ0ZXN0X2hhbmdjaGVjay5jCkBAIC00MzksNyArNDM5LDcgQEAgc3RhdGljIGludCBp
Z3RfcmVzZXRfbm9wKHZvaWQgKmFyZykKIAogCWVyciA9IGlndF9mbHVzaF90ZXN0KGd0LT5pOTE1
KTsKIG91dDoKLQltb2NrX2ZpbGVfZnJlZShndC0+aTkxNSwgZmlsZSk7CisJbW9ja19maWxlX3B1
dChmaWxlKTsKIAlpZiAoaW50ZWxfZ3RfaXNfd2VkZ2VkKGd0KSkKIAkJZXJyID0gLUVJTzsKIAly
ZXR1cm4gZXJyOwpAQCAtNTM1LDcgKzUzNSw3IEBAIHN0YXRpYyBpbnQgaWd0X3Jlc2V0X25vcF9l
bmdpbmUodm9pZCAqYXJnKQogCiAJZXJyID0gaWd0X2ZsdXNoX3Rlc3QoZ3QtPmk5MTUpOwogb3V0
OgotCW1vY2tfZmlsZV9mcmVlKGd0LT5pOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUp
OwogCWlmIChpbnRlbF9ndF9pc193ZWRnZWQoZ3QpKQogCQllcnIgPSAtRUlPOwogCXJldHVybiBl
cnI7CkBAIC03NTIsNyArNzUyLDcgQEAgc3RhdGljIGludCBhY3RpdmVfZW5naW5lKHZvaWQgKmRh
dGEpCiAJfQogCiBlcnJfZmlsZToKLQltb2NrX2ZpbGVfZnJlZShlbmdpbmUtPmk5MTUsIGZpbGUp
OworCW1vY2tfZmlsZV9wdXQoZmlsZSk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMTMyNSw3ICsx
MzI1LDcgQEAgc3RhdGljIGludCBpZ3RfcmVzZXRfZXZpY3RfcHBndHQodm9pZCAqYXJnKQogCWk5
MTVfdm1fcHV0KHZtKTsKIAogb3V0OgotCW1vY2tfZmlsZV9mcmVlKGd0LT5pOTE1LCBmaWxlKTsK
Kwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJldHVybiBlcnI7CiB9CiAKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dvcmthcm91bmRzLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9zZWxmdGVzdF93b3JrYXJvdW5kcy5jCmluZGV4IGFiY2U2ZTRlYzljMC4u
NWM2OWVjNWM1ZWY5IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF93b3JrYXJvdW5kcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X3dv
cmthcm91bmRzLmMKQEAgLTczOSw3ICs3MzksNyBAQCBzdGF0aWMgaW50IGxpdmVfZGlydHlfd2hp
dGVsaXN0KHZvaWQgKmFyZykKIAl9CiAKIG91dF9maWxlOgotCW1vY2tfZmlsZV9mcmVlKGd0LT5p
OTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJldHVybiBlcnI7CiB9CiAKZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbS5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtLmMKaW5kZXggZDgzZjZiZjZkOWQ0
Li5hYTYyODJhZGZkMDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0
cy9pOTE1X2dlbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dl
bS5jCkBAIC0xNjMsNyArMTYzLDcgQEAgc3RhdGljIGludCBpZ3RfZ2VtX3N1c3BlbmQodm9pZCAq
YXJnKQogCiAJZXJyID0gc3dpdGNoX3RvX2NvbnRleHQoY3R4KTsKIG91dDoKLQltb2NrX2ZpbGVf
ZnJlZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogCXJldHVybiBlcnI7CiB9
CiAKQEAgLTE5OCw3ICsxOTgsNyBAQCBzdGF0aWMgaW50IGlndF9nZW1faGliZXJuYXRlKHZvaWQg
KmFyZykKIAogCWVyciA9IHN3aXRjaF90b19jb250ZXh0KGN0eCk7CiBvdXQ6Ci0JbW9ja19maWxl
X2ZyZWUoaTkxNSwgZmlsZSk7CisJbW9ja19maWxlX3B1dChmaWxlKTsKIAlyZXR1cm4gZXJyOwog
fQogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZXZpY3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pOTE1X2dlbV9ldmljdC5j
CmluZGV4IDQyZTk0ODE0NGYxYi4uNDEwOTJkY2VhNWIxIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYworKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZXZpY3QuYwpAQCAtNTE1LDcgKzUxNSw3IEBAIHN0
YXRpYyBpbnQgaWd0X2V2aWN0X2NvbnRleHRzKHZvaWQgKmFyZykKIAkJcHJfaW5mbygiU3VibWl0
dGVkICVsdSBjb250ZXh0cy9yZXF1ZXN0cyBvbiAlc1xuIiwKIAkJCWNvdW50LCBlbmdpbmUtPm5h
bWUpOwogCi0JCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCQltb2NrX2ZpbGVfcHV0KGZp
bGUpOwogCQlpZiAoZXJyKQogCQkJYnJlYWs7CiAJfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCmluZGV4IDNmN2U4MGZiM2JiZC4uYzNlMGQ2M2M0ZDBj
IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9nZW1fZ3R0
LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfZ2VtX2d0dC5jCkBA
IC0xMDI2LDcgKzEwMjYsNyBAQCBzdGF0aWMgaW50IGV4ZXJjaXNlX3BwZ3R0KHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiwKIAlpOTE1X3ZtX3B1dCgmcHBndHQtPnZtKTsKIAogb3V0
X2ZyZWU6Ci0JbW9ja19maWxlX2ZyZWUoZGV2X3ByaXYsIGZpbGUpOworCW1vY2tfZmlsZV9wdXQo
ZmlsZSk7CiAJcmV0dXJuIGVycjsKIH0KIApAQCAtMjAyMiw3ICsyMDIyLDcgQEAgc3RhdGljIGlu
dCBpZ3RfY3NfdGxiKHZvaWQgKmFyZykKIG91dF92bToKIAlpOTE1X3ZtX3B1dCh2bSk7CiBvdXRf
dW5sb2NrOgotCW1vY2tfZmlsZV9mcmVlKGk5MTUsIGZpbGUpOworCW1vY2tfZmlsZV9wdXQoZmls
ZSk7CiAJcmV0dXJuIGVycjsKIH0KIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
c2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3Rz
L2k5MTVfcmVxdWVzdC5jCmluZGV4IDllNmQzMTU5Y2Q4MC4uN2M1NmVlMzhjYzViIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaTkxNV9yZXF1ZXN0LmMKKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL2k5MTVfcmVxdWVzdC5jCkBAIC0xNDMwLDcg
KzE0MzAsNyBAQCBzdGF0aWMgaW50IGxpdmVfYnJlYWRjcnVtYnNfc21va2V0ZXN0KHZvaWQgKmFy
ZykKIG91dF9zbW9rZToKIAlrZnJlZShzbW9rZSk7CiBvdXRfZmlsZToKLQltb2NrX2ZpbGVfZnJl
ZShpOTE1LCBmaWxlKTsKKwltb2NrX2ZpbGVfcHV0KGZpbGUpOwogb3V0X3JwbToKIAlpbnRlbF9y
dW50aW1lX3BtX3B1dCgmaTkxNS0+cnVudGltZV9wbSwgd2FrZXJlZik7CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCmluZGV4
IDE5ZTFjY2E4ZjE0My4uZmEyODNjZTQ1MzJhIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvaW50ZWxfbWVtb3J5X3JlZ2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L3NlbGZ0ZXN0cy9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKQEAgLTQzOSw3ICs0MzksNyBA
QCBzdGF0aWMgaW50IGlndF9sbWVtX3dyaXRlX2dwdSh2b2lkICphcmcpCiBvdXRfcHV0OgogCWk5
MTVfZ2VtX29iamVjdF9wdXQob2JqKTsKIG91dF9maWxlOgotCW1vY2tfZmlsZV9mcmVlKGk5MTUs
IGZpbGUpOworCW1vY2tfZmlsZV9wdXQoZmlsZSk7CiAJcmV0dXJuIGVycjsKIH0KIApkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZHJtLmMgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19kcm0uYwppbmRleCAwOWM3MDQxNTM0NTYuLmMx
MDBjM2VmZTIzOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21v
Y2tfZHJtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvc2VsZnRlc3RzL21vY2tfZHJtLmMK
QEAgLTIyLDUyICsyMiwxNyBAQAogICoKICAqLwogCisjaW5jbHVkZSA8ZHJtL2RybV9maWxlLmg+
CisKICNpbmNsdWRlICJtb2NrX2RybS5oIgogCiBzdHJ1Y3QgZHJtX2ZpbGUgKm1vY2tfZmlsZShz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIHsKLQlzdHJ1Y3QgZmlsZSAqZmlscDsKLQlz
dHJ1Y3QgaW5vZGUgKmlub2RlOwotCXN0cnVjdCBkcm1fZmlsZSAqZmlsZTsKLQlpbnQgZXJyOwot
Ci0JaW5vZGUgPSBremFsbG9jKHNpemVvZigqaW5vZGUpLCBHRlBfS0VSTkVMKTsKLQlpZiAoIWlu
b2RlKSB7Ci0JCWVyciA9IC1FTk9NRU07Ci0JCWdvdG8gZXJyOwotCX0KLQotCWlub2RlLT5pX3Jk
ZXYgPSBpOTE1LT5kcm0ucHJpbWFyeS0+aW5kZXg7Ci0KLQlmaWxwID0ga3phbGxvYyhzaXplb2Yo
KmZpbHApLCBHRlBfS0VSTkVMKTsKLQlpZiAoIWZpbHApIHsKLQkJZXJyID0gLUVOT01FTTsKLQkJ
Z290byBlcnJfaW5vZGU7Ci0JfQotCi0JZXJyID0gZHJtX29wZW4oaW5vZGUsIGZpbHApOwotCWlm
IChlcnIpCi0JCWdvdG8gZXJyX2ZpbHA7CisJc3RydWN0IGZpbGUgKmZpbGU7CiAKLQlmaWxlID0g
ZmlscC0+cHJpdmF0ZV9kYXRhOwotCW1lbXNldCgmZmlsZS0+ZmlscCwgUE9JU09OX0lOVVNFLCBz
aXplb2YoZmlsZS0+ZmlscCkpOwotCWZpbGUtPmF1dGhlbnRpY2F0ZWQgPSB0cnVlOwotCi0Ja2Zy
ZWUoZmlscCk7Ci0Ja2ZyZWUoaW5vZGUpOwotCXJldHVybiBmaWxlOwotCi1lcnJfZmlscDoKLQlr
ZnJlZShmaWxwKTsKLWVycl9pbm9kZToKLQlrZnJlZShpbm9kZSk7Ci1lcnI6Ci0JcmV0dXJuIEVS
Ul9QVFIoZXJyKTsKLX0KLQotdm9pZCBtb2NrX2ZpbGVfZnJlZShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxlKQotewotCXN0cnVjdCBmaWxlIGZpbHAg
PSB7IC5wcml2YXRlX2RhdGEgPSBmaWxlIH07CisJZmlsZSA9IG1vY2tfZHJtX2dldGZpbGUoaTkx
NS0+ZHJtLnByaW1hcnksIE9fUkRXUik7CisJaWYgKElTX0VSUihmaWxlKSkKKwkJcmV0dXJuIEVS
Ul9DQVNUKGZpbGUpOwogCi0JZHJtX3JlbGVhc2UoTlVMTCwgJmZpbHApOworCXJldHVybiBmaWxl
LT5wcml2YXRlX2RhdGE7CiB9CmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxm
dGVzdHMvbW9ja19kcm0uaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L3NlbGZ0ZXN0cy9tb2NrX2Ry
bS5oCmluZGV4IGIzOWJlZWU5ZjhmNi4uZGM0MTkwYmQzZjVhIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19kcm0uaAorKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9zZWxmdGVzdHMvbW9ja19kcm0uaApAQCAtMjUsNyArMjUsMTMgQEAKICNpZm5kZWYgX19N
T0NLX0RSTV9ICiAjZGVmaW5lIF9fTU9DS19EUk1fSAogCitzdHJ1Y3QgZHJtX2ZpbGU7CitzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKKwogc3RydWN0IGRybV9maWxlICptb2NrX2ZpbGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUpOwotdm9pZCBtb2NrX2ZpbGVfZnJlZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGRybV9maWxlICpmaWxlKTsKK3N0YXRpYyBpbmxp
bmUgdm9pZCBtb2NrX2ZpbGVfcHV0KHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKK3sKKwlmcHV0KGZp
bGUtPmZpbHApOworfQogCiAjZW5kaWYgLyogIV9fTU9DS19EUk1fSCAqLwotLSAKMi4yNC4wCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
