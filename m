Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CBBBCBEDD
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 17:17:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1743A6EBCA;
	Fri,  4 Oct 2019 15:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DCA26EBC9;
 Fri,  4 Oct 2019 15:17:18 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18725421-1500050 
 for multiple; Fri, 04 Oct 2019 16:17:02 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  4 Oct 2019 16:17:00 +0100
Message-Id: <20191004151700.16409-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191002112648.12532-1-chris@chris-wilson.co.uk>
References: <20191002112648.12532-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915/gem_ctx_isolation: Bump support for
 Tigerlake
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

VGhlcmUncyB2ZXJ5IGxpdHRsZSB2YXJpYXRpb24gaW4gbm9uLXByaXZpbGVnZWQgcmVnaXN0ZXJz
IGZvciBUaWdlcmxha2UsCnNvIHdlIGNhbiBtb3N0bHkgaW5oZXJpdCB0aGUgc2V0IGZyb20gZ2Vu
MTEuIFRoZXJlIGlzIG5vIHdoaXRlbGlzdCBhdApwcmVzZW50LCBzbyB3ZSBkbyBub3QgbmVlZCB0
byBhZGQgYW55IHNwZWNpYWwgcmVnaXN0ZXJzLgoKdjI6IEFkZCBDT01NT05fU0xJQ0VfQ0hJQ0tF
TjIsIEdFTjlfU0xJQ0VfQ09NTU9OX0VDT19DSElDS0VOMSBhbmQgYQp2YXJpZXR5IG9mIGh1YyBy
ZWFkb25seSBzdGF0dXMgcmVnaXN0ZXJzLgoKQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVz
a3RvcC5vcmcvc2hvd19idWcuY2dpP2lkPTExMTU5OQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3Vv
cHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIHRlc3RzL2k5MTUvZ2VtX2N0eF9pc29sYXRpb24u
YyB8IDMwICsrKysrKysrKysrKysrKysrKysrKysrKystLS0tLQogMSBmaWxlIGNoYW5nZWQsIDI1
IGluc2VydGlvbnMoKyksIDUgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9n
ZW1fY3R4X2lzb2xhdGlvbi5jIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jCmluZGV4
IGRmMWQ2NTVhZS4uNThiODI0ZTg0IDEwMDY0NAotLS0gYS90ZXN0cy9pOTE1L2dlbV9jdHhfaXNv
bGF0aW9uLmMKKysrIGIvdGVzdHMvaTkxNS9nZW1fY3R4X2lzb2xhdGlvbi5jCkBAIC01NSwxMCAr
NTUsMTEgQEAgZW51bSB7CiAjZGVmaW5lIEdFTjkgKEFMTCA8PCA5KQogI2RlZmluZSBHRU4xMCAo
QUxMIDw8IDEwKQogI2RlZmluZSBHRU4xMSAoQUxMIDw8IDExKQorI2RlZmluZSBHRU4xMiAoQUxM
IDw8IDEyKQogCiAjZGVmaW5lIE5PQ1RYIDAKIAotI2RlZmluZSBMQVNUX0tOT1dOX0dFTiAxMQor
I2RlZmluZSBMQVNUX0tOT1dOX0dFTiAxMgogCiBzdGF0aWMgY29uc3Qgc3RydWN0IG5hbWVkX3Jl
Z2lzdGVyIHsKIAljb25zdCBjaGFyICpuYW1lOwpAQCAtMTE2LDkgKzExNyw5IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgbmFtZWRfcmVnaXN0ZXIgewogCXsgIkNhY2hlX01vZGVfMCIsIEdFTjcsIFJD
UzAsIDB4NzAwMCwgLm1hc2tlZCA9IHRydWUgfSwKIAl7ICJDYWNoZV9Nb2RlXzEiLCBHRU43LCBS
Q1MwLCAweDcwMDQsIC5tYXNrZWQgPSB0cnVlIH0sCiAJeyAiR1RfTU9ERSIsIEdFTjgsIFJDUzAs
IDB4NzAwOCwgLm1hc2tlZCA9IHRydWUgfSwKLQl7ICJMM19Db25maWciLCBHRU44LCBSQ1MwLCAw
eDcwMzQgfSwKLQl7ICJURF9DVEwiLCBHRU44LCBSQ1MwLCAweGU0MDAsIC53cml0ZV9tYXNrID0g
MHhmZmZmIH0sCi0JeyAiVERfQ1RMMiIsIEdFTjgsIFJDUzAsIDB4ZTQwNCB9LAorCXsgIkwzX0Nv
bmZpZyIsIEdFTl9SQU5HRSg4LCAxMSksIFJDUzAsIDB4NzAzNCB9LAorCXsgIlREX0NUTCIsIEdF
Tl9SQU5HRSg4LCAxMSksIFJDUzAsIDB4ZTQwMCwgLndyaXRlX21hc2sgPSAweGZmZmYgfSwKKwl7
ICJURF9DVEwyIiwgR0VOX1JBTkdFKDgsIDExKSwgUkNTMCwgMHhlNDA0IH0sCiAJeyAiU09fTlVN
X1BSSU1TX1dSSVRURU4wIiwgR0VONiwgUkNTMCwgMHg1MjAwLCAyIH0sCiAJeyAiU09fTlVNX1BS
SU1TX1dSSVRURU4xIiwgR0VONiwgUkNTMCwgMHg1MjA4LCAyIH0sCiAJeyAiU09fTlVNX1BSSU1T
X1dSSVRURU4yIiwgR0VONiwgUkNTMCwgMHg1MjEwLCAyIH0sCkBAIC0xNDIsNyArMTQzLDkgQEAg
c3RhdGljIGNvbnN0IHN0cnVjdCBuYW1lZF9yZWdpc3RlciB7CiAJLyogUHJpdmlsZWdlZCAoZW5h
YmxlZCBieSB3L2EgKyBGT1JDRV9UT19OT05QUklWKSAqLwogCXsgIkNUWF9QUkVFTVBUIiwgTk9D
VFggLyogR0VOOSAqLywgUkNTMCwgMHgyMjQ4IH0sCiAJeyAiQ1NfQ0hJQ0tFTjEiLCBHRU5fUkFO
R0UoOSwgMTApLCBSQ1MwLCAweDI1ODAsIC5tYXNrZWQgPSB0cnVlIH0sCisJeyAiQ09NTU9OX1NM
SUNFX0NISUNLRU4yIiwgR0VOOSwgUkNTMCwgMHg3MDE0LCAubWFza2VkID0gdHJ1ZSB9LAogCXsg
IkhEQ19DSElDS0VOMSIsIEdFTl9SQU5HRSg5LCA5KSwgUkNTMCwgMHg3MzA0LCAubWFza2VkID0g
dHJ1ZSB9LAorCXsgIlNMSUNFX0NPTU1PTl9FQ09fQ0hJQ0tFTjEiLCBHRU5fUkFOR0UoOSwgMTEp
LCAweDczMWMsIC5tYXNrZWQgPSB0cnVlIH0sCiAJeyAiTDNTUVJFRzQiLCBOT0NUWCAvKiBHRU45
OnNrbCxrYmwgKi8sIFJDUzAsIDB4YjExOCwgLndyaXRlX21hc2sgPSB+MHgxZmZmZjAgfSwKIAl7
ICJIQUxGX1NMSUNFX0NISUNLRU43IiwgR0VOX1JBTkdFKDExLCAxMSksIFJDUzAsIDB4ZTE5NCwg
Lm1hc2tlZCA9IHRydWUgfSwKIAl7ICJTQU1QTEVSX01PREUiLCBHRU5fUkFOR0UoMTEsIDExKSwg
UkNTMCwgMHhlMThjLCAubWFza2VkID0gdHJ1ZSB9LApAQCAtMTc4LDYgKzE4MSwyMyBAQCBzdGF0
aWMgY29uc3Qgc3RydWN0IG5hbWVkX3JlZ2lzdGVyIHsKIAl7ICJWQ1MzIHRpbWVzdGFtcCIsIEdF
TjExLCB+MHUsIDB4MWQ0MzU4IH0sCiAJeyAiVkVDUyB0aW1lc3RhbXAiLCBHRU4xMSwgfjB1LCAw
eDFjODM1OCB9LAogCisJLyogaHVjIHJlYWQgb25seSAqLworCXsgIkJTRDAgMHgyMDAwIiwgR0VO
MTEsIH4wdSwgMHgxYzAwMDAgKyAweDIwMDAgfSwKKwl7ICJCU0QwIDB4MjAwMCIsIEdFTjExLCB+
MHUsIDB4MWMwMDAwICsgMHgyMDE0IH0sCisJeyAiQlNEMCAweDIwMDAiLCBHRU4xMSwgfjB1LCAw
eDFjMDAwMCArIDB4MjNiMCB9LAorCisJeyAiQlNEMSAweDIwMDAiLCBHRU4xMSwgfjB1LCAweDFj
NDAwMCArIDB4MjAwMCB9LAorCXsgIkJTRDEgMHgyMDAwIiwgR0VOMTEsIH4wdSwgMHgxYzQwMDAg
KyAweDIwMTQgfSwKKwl7ICJCU0QxIDB4MjAwMCIsIEdFTjExLCB+MHUsIDB4MWM0MDAwICsgMHgy
M2IwIH0sCisKKwl7ICJCU0QyIDB4MjAwMCIsIEdFTjExLCB+MHUsIDB4MWQwMDAwICsgMHgyMDAw
IH0sCisJeyAiQlNEMiAweDIwMDAiLCBHRU4xMSwgfjB1LCAweDFkMDAwMCArIDB4MjAxNCB9LAor
CXsgIkJTRDIgMHgyMDAwIiwgR0VOMTEsIH4wdSwgMHgxZDAwMDAgKyAweDIzYjAgfSwKKworCXsg
IkJTRDMgMHgyMDAwIiwgR0VOMTEsIH4wdSwgMHgxZDQwMDAgKyAweDIwMDAgfSwKKwl7ICJCU0Qz
IDB4MjAwMCIsIEdFTjExLCB+MHUsIDB4MWQ0MDAwICsgMHgyMDE0IH0sCisJeyAiQlNEMyAweDIw
MDAiLCBHRU4xMSwgfjB1LCAweDFkNDAwMCArIDB4MjNiMCB9LAorCiAJe30KIH07CiAKQEAgLTg1
Miw3ICs4NzIsNyBAQCBpZ3RfbWFpbgogCQlnZW4gPSBpbnRlbF9nZW4oaW50ZWxfZ2V0X2RybV9k
ZXZpZChmZCkpOwogCiAJCWlndF93YXJuX29uX2YoZ2VuID4gTEFTVF9LTk9XTl9HRU4sCi0JCQkJ
CSAgIkdFTiBub3QgcmVjb2duaXplZCEgVGVzdCBuZWVkcyB0byBiZSB1cGRhdGVkIHRvIHJ1bi4i
KTsKKwkJCSAgICAgICJHRU4gbm90IHJlY29nbml6ZWQhIFRlc3QgbmVlZHMgdG8gYmUgdXBkYXRl
ZCB0byBydW4uXG4iKTsKIAkJaWd0X3NraXBfb24oZ2VuID4gTEFTVF9LTk9XTl9HRU4pOwogCX0K
IAotLSAKMi4yMy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
