Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2895CD8149
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Oct 2019 22:45:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F006E3D6;
	Tue, 15 Oct 2019 20:45:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B2B06E3D6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 20:45:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18849361-1500050 
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Oct 2019 21:44:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Oct 2019 21:44:46 +0100
Message-Id: <20191015204451.19372-7-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015204451.19372-1-chris@chris-wilson.co.uk>
References: <20191015204451.19372-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 07/12] drm/i915/tgl: Wa_1409420604
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

RnJvbTogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+CgpBdm9p
ZCBwb3NzaWJsZSBoYW5nIGluIENQU1MgdW5pdC4KClNpZ25lZC1vZmYtYnk6IE1pa2EgS3VvcHBh
bGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+ClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNv
biA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTEwMTUxNTQ0NDkuMTAzMzgtNi1taWthLmt1b3Bw
YWxhQGxpbnV4LmludGVsLmNvbQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dv
cmthcm91bmRzLmMgfCA1ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgICAgIHwgMyArKysKIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMKaW5kZXggYmM1ZmRiNGU0
N2IxLi43ZmVhNjFiMDBiOTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX3dvcmthcm91bmRzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29y
a2Fyb3VuZHMuYwpAQCAtOTAyLDYgKzkwMiwxMSBAQCBpY2xfZ3Rfd29ya2Fyb3VuZHNfaW5pdChz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgc3RydWN0IGk5MTVfd2FfbGlzdCAqd2FsKQog
c3RhdGljIHZvaWQKIHRnbF9ndF93b3JrYXJvdW5kc19pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICppOTE1LCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwpCiB7CisJLyogV2FfMTQwOTQyMDYw
NDp0Z2wgKi8KKwlpZiAoSVNfVEdMX1JFVklEKGk5MTUsIFRHTF9SRVZJRF9BMCwgVEdMX1JFVklE
X0EwKSkKKwkJd2Ffd3JpdGVfb3Iod2FsLAorCQkJICAgIFNVQlNMSUNFX1VOSVRfTEVWRUxfQ0xL
R0FURTIsCisJCQkgICAgQ1BTU1VOSVRfQ0xLR0FURV9ESVMpOwogfQogCiBzdGF0aWMgdm9pZApk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggNGI1ODg2MWI1MTE0Li40NDk2NDhhMjhhNjcgMTAw
NjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDA1Niw2ICs0MDU2LDkgQEAgZW51bSB7CiAjZGVm
aW5lIFNVQlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURQlfTU1JTygweDk1MjQpCiAjZGVmaW5lICBH
V1VOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDE2KQogCisjZGVmaW5lIFNVQlNMSUNFX1VOSVRfTEVW
RUxfQ0xLR0FURTIJX01NSU8oMHg5NTI4KQorI2RlZmluZSAgQ1BTU1VOSVRfQ0xLR0FURV9ESVMJ
CVJFR19CSVQoOSkKKwogI2RlZmluZSBVTlNMSUNFX1VOSVRfTEVWRUxfQ0xLR0FURQlfTU1JTygw
eDk0MzQpCiAjZGVmaW5lICBWRlVOSVRfQ0xLR0FURV9ESVMJCSgxIDw8IDIwKQogCi0tIAoyLjIz
LjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
