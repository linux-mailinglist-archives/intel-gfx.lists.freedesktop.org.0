Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2751D1BBE
	for <lists+intel-gfx@lfdr.de>; Wed, 13 May 2020 19:00:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5D2D6EA5E;
	Wed, 13 May 2020 17:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983236EA68
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 May 2020 17:00:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 21190027-1500050 
 for multiple; Wed, 13 May 2020 17:59:39 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 May 2020 17:59:33 +0100
Message-Id: <20200513165937.9508-3-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200513165937.9508-1-chris@chris-wilson.co.uk>
References: <20200513165937.9508-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 3/7] dma-buf: Proxy fence,
 an unsignaled fence placeholder
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T2Z0ZW4gd2UgbmVlZCB0byBjcmVhdGUgYSBmZW5jZSBmb3IgYSBmdXR1cmUgZXZlbnQgdGhhdCBo
YXMgbm90IHlldCBiZWVuCmFzc29jaWF0ZWQgd2l0aCBhIGZlbmNlLiBXZSBjYW4gc3RvcmUgYSBw
cm94eSBmZW5jZSwgYSBwbGFjZWhvbGRlciwgaW4KdGhlIHRpbWVsaW5lIGFuZCByZXBsYWNlIGl0
IGxhdGVyIHdoZW4gdGhlIHJlYWwgZmVuY2UgaXMga25vd24uIEFueQpsaXN0ZW5lcnMgdGhhdCBh
dHRhY2ggdG8gdGhlIHByb3h5IGZlbmNlIHdpbGwgYXV0b21hdGljYWxseSBiZSBzaWduYWxlZAp3
aGVuIHRoZSByZWFsIGZlbmNlIGNvbXBsZXRlcywgYW5kIGFueSBmdXR1cmUgbGlzdGVuZXJzIHdp
bGwgaW5zdGVhZCBiZQphdHRhY2ggZGlyZWN0bHkgdG8gdGhlIHJlYWwgZmVuY2UgYXZvaWRpbmcg
YW55IGluZGlyZWN0aW9uIG92ZXJoZWFkLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcu
bGFuZHdlcmxpbkBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL01ha2VmaWxlICAgICAg
ICAgICAgIHwgIDEzICstCiBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXByaXZhdGUuaCAgfCAg
MjAgKwogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1wcm94eS5jICAgIHwgMjQ4ICsrKysrKysr
KysKIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyAgICAgICAgICB8ICAgNCArLQogZHJpdmVy
cy9kbWEtYnVmL3NlbGZ0ZXN0cy5oICAgICAgICAgIHwgICAxICsKIGRyaXZlcnMvZG1hLWJ1Zi9z
dC1kbWEtZmVuY2UtcHJveHkuYyB8IDY5OSArKysrKysrKysrKysrKysrKysrKysrKysrKysKIGlu
Y2x1ZGUvbGludXgvZG1hLWZlbmNlLXByb3h5LmggICAgICB8ICAzNCArKwogNyBmaWxlcyBjaGFu
Z2VkLCAxMDE1IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9kZSAxMDA2
NDQgZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS1wcml2YXRlLmgKIGNyZWF0ZSBtb2RlIDEwMDY0
NCBkcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXByb3h5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBk
cml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXByb3h5LmMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBp
bmNsdWRlL2xpbnV4L2RtYS1mZW5jZS1wcm94eS5oCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEt
YnVmL01ha2VmaWxlIGIvZHJpdmVycy9kbWEtYnVmL01ha2VmaWxlCmluZGV4IDk5NWUwNWY2MDlm
Zi4uYWZhZjZkYWRkOWEzIDEwMDY0NAotLS0gYS9kcml2ZXJzL2RtYS1idWYvTWFrZWZpbGUKKysr
IGIvZHJpdmVycy9kbWEtYnVmL01ha2VmaWxlCkBAIC0xLDYgKzEsMTIgQEAKICMgU1BEWC1MaWNl
bnNlLUlkZW50aWZpZXI6IEdQTC0yLjAtb25seQotb2JqLXkgOj0gZG1hLWJ1Zi5vIGRtYS1mZW5j
ZS5vIGRtYS1mZW5jZS1hcnJheS5vIGRtYS1mZW5jZS1jaGFpbi5vIFwKLQkgZG1hLXJlc3YubyBz
ZXFuby1mZW5jZS5vCitvYmoteSA6PSBcCisJZG1hLWJ1Zi5vIFwKKwlkbWEtZmVuY2UubyBcCisJ
ZG1hLWZlbmNlLWFycmF5Lm8gXAorCWRtYS1mZW5jZS1jaGFpbi5vIFwKKwlkbWEtZmVuY2UtcHJv
eHkubyBcCisJZG1hLXJlc3YubyBcCisJc2Vxbm8tZmVuY2Uubwogb2JqLSQoQ09ORklHX0RNQUJV
Rl9IRUFQUykJKz0gZG1hLWhlYXAubwogb2JqLSQoQ09ORklHX0RNQUJVRl9IRUFQUykJKz0gaGVh
cHMvCiBvYmotJChDT05GSUdfU1lOQ19GSUxFKQkJKz0gc3luY19maWxlLm8KQEAgLTEwLDYgKzE2
LDcgQEAgb2JqLSQoQ09ORklHX1VETUFCVUYpCQkrPSB1ZG1hYnVmLm8KIGRtYWJ1Zl9zZWxmdGVz
dHMteSA6PSBcCiAJc2VsZnRlc3QubyBcCiAJc3QtZG1hLWZlbmNlLm8gXAotCXN0LWRtYS1mZW5j
ZS1jaGFpbi5vCisJc3QtZG1hLWZlbmNlLWNoYWluLm8gXAorCXN0LWRtYS1mZW5jZS1wcm94eS5v
CiAKIG9iai0kKENPTkZJR19ETUFCVUZfU0VMRlRFU1RTKQkrPSBkbWFidWZfc2VsZnRlc3RzLm8K
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UtcHJpdmF0ZS5oIGIvZHJpdmVy
cy9kbWEtYnVmL2RtYS1mZW5jZS1wcml2YXRlLmgKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXgg
MDAwMDAwMDAwMDAwLi42OTI0ZDI4YWYwZmEKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLXByaXZhdGUuaApAQCAtMCwwICsxLDIwIEBACisvKiBTUERYLUxpY2Vu
c2UtSWRlbnRpZmllcjogR1BMLTIuMC1vbmx5ICovCisvKgorICogRmVuY2UgbWVjaGFuaXNtIGZv
ciBkbWEtYnVmIGFuZCB0byBhbGxvdyBmb3IgYXN5bmNocm9ub3VzIGRtYSBhY2Nlc3MKKyAqCisg
KiBDb3B5cmlnaHQgKEMpIDIwMTIgQ2Fub25pY2FsIEx0ZAorICogQ29weXJpZ2h0IChDKSAyMDEy
IFRleGFzIEluc3RydW1lbnRzCisgKgorICogQXV0aG9yczoKKyAqIFJvYiBDbGFyayA8cm9iZGNs
YXJrQGdtYWlsLmNvbT4KKyAqIE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBj
YW5vbmljYWwuY29tPgorICovCisKKyNpZm5kZWYgRE1BX0ZFTkNFX1BSSVZBVEVfSAorI2RlZmlu
ZSBETUFfRkVOQ0VfUFJJQVZURV9ICisKK3N0cnVjdCBkbWFfZmVuY2U7CisKK2Jvb2wgX19kbWFf
ZmVuY2VfZW5hYmxlX3NpZ25hbGluZyhzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CisKKyNlbmRp
ZiAvKiBETUFfRkVOQ0VfUFJJQVZURV9IICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLXByb3h5LmMgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXByb3h5LmMKbmV3
IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi5mMGNkODliOTY2ZTAKLS0tIC9k
ZXYvbnVsbAorKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLXByb3h5LmMKQEAgLTAsMCAr
MSwyNDggQEAKKy8vIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBHUEwtMi4wLW9ubHkKKy8qCisg
KiBkbWEtZmVuY2UtcHJveHk6IHBsYWNlaG9sZGVyIHVuc2lnbmFsZWQgZmVuY2UKKyAqCisgKiBD
b3B5cmlnaHQgKEMpIDIwMTctMjAxOSBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRl
IDxsaW51eC9kbWEtZmVuY2UuaD4KKyNpbmNsdWRlIDxsaW51eC9kbWEtZmVuY2UtcHJveHkuaD4K
KyNpbmNsdWRlIDxsaW51eC9leHBvcnQuaD4KKyNpbmNsdWRlIDxsaW51eC9pcnFfd29yay5oPgor
I2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KKworI2luY2x1ZGUgImRtYS1mZW5jZS1wcml2YXRlLmgi
CisKK3N0cnVjdCBkbWFfZmVuY2VfcHJveHkgeworCXN0cnVjdCBkbWFfZmVuY2UgYmFzZTsKKwor
CXN0cnVjdCBkbWFfZmVuY2UgKnJlYWw7CisJc3RydWN0IGRtYV9mZW5jZV9jYiBjYjsKKwlzdHJ1
Y3QgaXJxX3dvcmsgd29yazsKKworCXdhaXRfcXVldWVfaGVhZF90IHdxOworfTsKKworI2lmZGVm
IENPTkZJR19ERUJVR19MT0NLX0FMTE9DCisjZGVmaW5lIHNhbWVfbG9ja2NsYXNzKEEsIEIpIChB
KS0+ZGVwX21hcC5rZXkgPT0gKEIpLT5kZXBfbWFwLmtleQorI2Vsc2UKKyNkZWZpbmUgc2FtZV9s
b2NrY2xhc3MoQSwgQikgMAorI2VuZGlmCisKK3N0YXRpYyBjb25zdCBjaGFyICpwcm94eV9nZXRf
ZHJpdmVyX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCit7CisJc3RydWN0IGRtYV9mZW5j
ZV9wcm94eSAqcCA9IGNvbnRhaW5lcl9vZihmZW5jZSwgdHlwZW9mKCpwKSwgYmFzZSk7CisJc3Ry
dWN0IGRtYV9mZW5jZSAqcmVhbCA9IFJFQURfT05DRShwLT5yZWFsKTsKKworCXJldHVybiByZWFs
ID8gcmVhbC0+b3BzLT5nZXRfZHJpdmVyX25hbWUocmVhbCkgOiAicHJveHkiOworfQorCitzdGF0
aWMgY29uc3QgY2hhciAqcHJveHlfZ2V0X3RpbWVsaW5lX25hbWUoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UpCit7CisJc3RydWN0IGRtYV9mZW5jZV9wcm94eSAqcCA9IGNvbnRhaW5lcl9vZihmZW5j
ZSwgdHlwZW9mKCpwKSwgYmFzZSk7CisJc3RydWN0IGRtYV9mZW5jZSAqcmVhbCA9IFJFQURfT05D
RShwLT5yZWFsKTsKKworCXJldHVybiByZWFsID8gcmVhbC0+b3BzLT5nZXRfdGltZWxpbmVfbmFt
ZShyZWFsKSA6ICJ1bnNldCI7Cit9CisKK3N0YXRpYyB2b2lkIHByb3h5X2lycV93b3JrKHN0cnVj
dCBpcnFfd29yayAqd29yaykKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlX3Byb3h5ICpwID0gY29udGFp
bmVyX29mKHdvcmssIHR5cGVvZigqcCksIHdvcmspOworCisJZG1hX2ZlbmNlX3NpZ25hbCgmcC0+
YmFzZSk7CisJZG1hX2ZlbmNlX3B1dCgmcC0+YmFzZSk7Cit9CisKK3N0YXRpYyB2b2lkIHByb3h5
X2NhbGxiYWNrKHN0cnVjdCBkbWFfZmVuY2UgKnJlYWwsIHN0cnVjdCBkbWFfZmVuY2VfY2IgKmNi
KQoreworCXN0cnVjdCBkbWFfZmVuY2VfcHJveHkgKnAgPSBjb250YWluZXJfb2YoY2IsIHR5cGVv
ZigqcCksIGNiKTsKKworCWlmIChyZWFsLT5lcnJvcikKKwkJZG1hX2ZlbmNlX3NldF9lcnJvcigm
cC0+YmFzZSwgcmVhbC0+ZXJyb3IpOworCisJLyogTG93ZXIgdGhlIGhlaWdodCBvZiB0aGUgcHJv
eHkgY2hhaW4gLT4gc2luZ2xlIHN0YWNrIGZyYW1lICovCisJaXJxX3dvcmtfcXVldWUoJnAtPndv
cmspOworfQorCitzdGF0aWMgYm9vbCBwcm94eV9lbmFibGVfc2lnbmFsaW5nKHN0cnVjdCBkbWFf
ZmVuY2UgKmZlbmNlKQoreworCXN0cnVjdCBkbWFfZmVuY2VfcHJveHkgKnAgPSBjb250YWluZXJf
b2YoZmVuY2UsIHR5cGVvZigqcCksIGJhc2UpOworCXN0cnVjdCBkbWFfZmVuY2UgKnJlYWwgPSBS
RUFEX09OQ0UocC0+cmVhbCk7CisJYm9vbCByZXQgPSB0cnVlOworCisJaWYgKHJlYWwpIHsKKwkJ
c3Bpbl9sb2NrX25lc3RlZChyZWFsLT5sb2NrLAorCQkJCSBzYW1lX2xvY2tjbGFzcygmcC0+d3Eu
bG9jaywgcmVhbC0+bG9jaykpOworCQlyZXQgPSBfX2RtYV9mZW5jZV9lbmFibGVfc2lnbmFsaW5n
KHJlYWwpOworCQlzcGluX3VubG9jayhyZWFsLT5sb2NrKTsKKwl9CisKKwlyZXR1cm4gcmV0Owor
fQorCitzdGF0aWMgdm9pZCBwcm94eV9yZWxlYXNlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQor
eworCXN0cnVjdCBkbWFfZmVuY2VfcHJveHkgKnAgPSBjb250YWluZXJfb2YoZmVuY2UsIHR5cGVv
ZigqcCksIGJhc2UpOworCisJZG1hX2ZlbmNlX3B1dChwLT5yZWFsKTsKKwlkbWFfZmVuY2VfZnJl
ZSgmcC0+YmFzZSk7Cit9CisKK2NvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9w
cm94eV9vcHMgPSB7CisJLmdldF9kcml2ZXJfbmFtZSA9IHByb3h5X2dldF9kcml2ZXJfbmFtZSwK
KwkuZ2V0X3RpbWVsaW5lX25hbWUgPSBwcm94eV9nZXRfdGltZWxpbmVfbmFtZSwKKwkuZW5hYmxl
X3NpZ25hbGluZyA9IHByb3h5X2VuYWJsZV9zaWduYWxpbmcsCisJLndhaXQgPSBkbWFfZmVuY2Vf
ZGVmYXVsdF93YWl0LAorCS5yZWxlYXNlID0gcHJveHlfcmVsZWFzZSwKK307CitFWFBPUlRfU1lN
Qk9MX0dQTChkbWFfZmVuY2VfcHJveHlfb3BzKTsKKworLyoqCisgKiBkbWFfZmVuY2VfY3JlYXRl
X3Byb3h5IC0gQ3JlYXRlIGFuIHVuc2V0IGRtYS1mZW5jZQorICoKKyAqIGRtYV9mZW5jZV9jcmVh
dGVfcHJveHkoKSBjcmVhdGVzIGEgbmV3IGRtYV9mZW5jZSBzdHViIHRoYXQgaXMgaW5pdGlhbGx5
CisgKiB1bnNpZ25hbGVkIGFuZCBtYXkgbGF0ZXIgYmUgcmVwbGFjZWQgd2l0aCBhIHJlYWwgZmVu
Y2UuIEFueSBsaXN0ZW5lcnMKKyAqIHRvIHRoZSBwcm94eSBmZW5jZSB3aWxsIGJlIHNpZ25hbGVk
IHdoZW4gdGhlIHRhcmdldCBmZW5jZSBzaWduYWxzIGl0cworICogY29tcGxldGlvbi4KKyAqLwor
c3RydWN0IGRtYV9mZW5jZSAqZG1hX2ZlbmNlX2NyZWF0ZV9wcm94eSh2b2lkKQoreworCXN0cnVj
dCBkbWFfZmVuY2VfcHJveHkgKnA7CisKKwlwID0ga3phbGxvYyhzaXplb2YoKnApLCBHRlBfS0VS
TkVMKTsKKwlpZiAoIXApCisJCXJldHVybiBOVUxMOworCisJaW5pdF93YWl0cXVldWVfaGVhZCgm
cC0+d3EpOworCWRtYV9mZW5jZV9pbml0KCZwLT5iYXNlLCAmZG1hX2ZlbmNlX3Byb3h5X29wcywg
JnAtPndxLmxvY2ssCisJCSAgICAgICBkbWFfZmVuY2VfY29udGV4dF9hbGxvYygxKSwgMCk7CisJ
aW5pdF9pcnFfd29yaygmcC0+d29yaywgcHJveHlfaXJxX3dvcmspOworCisJcmV0dXJuICZwLT5i
YXNlOworfQorRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfY3JlYXRlX3Byb3h5KTsKKworc3RhdGlj
IHZvaWQgX193YWtlX3VwX2xpc3RlbmVycyhzdHJ1Y3QgZG1hX2ZlbmNlX3Byb3h5ICpwKQorewor
CXN0cnVjdCB3YWl0X3F1ZXVlX2VudHJ5ICp3YWl0LCAqbmV4dDsKKworCWxpc3RfZm9yX2VhY2hf
ZW50cnlfc2FmZSh3YWl0LCBuZXh0LCAmcC0+d3EuaGVhZCwgZW50cnkpIHsKKwkJSU5JVF9MSVNU
X0hFQUQoJndhaXQtPmVudHJ5KTsKKwkJd2FpdC0+ZnVuYyh3YWl0LCBUQVNLX05PUk1BTCwgMCwg
cC0+cmVhbCk7CisJfQorfQorCitzdGF0aWMgdm9pZCBwcm94eV9hc3NpZ24oc3RydWN0IGRtYV9m
ZW5jZSAqZmVuY2UsIHN0cnVjdCBkbWFfZmVuY2UgKnJlYWwpCit7CisJc3RydWN0IGRtYV9mZW5j
ZV9wcm94eSAqcCA9IGNvbnRhaW5lcl9vZihmZW5jZSwgdHlwZW9mKCpwKSwgYmFzZSk7CisJdW5z
aWduZWQgbG9uZyBmbGFnczsKKworCWlmIChXQVJOX09OKGZlbmNlID09IHJlYWwpKQorCQlyZXR1
cm47CisKKwlpZiAoV0FSTl9PTih0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQs
ICZmZW5jZS0+ZmxhZ3MpKSkKKwkJcmV0dXJuOworCisJaWYgKFdBUk5fT04ocC0+cmVhbCkpCisJ
CXJldHVybjsKKworCXNwaW5fbG9ja19pcnFzYXZlKCZwLT53cS5sb2NrLCBmbGFncyk7CisKKwlp
ZiAodW5saWtlbHkoIXJlYWwpKSB7CisJCWRtYV9mZW5jZV9zaWduYWxfbG9ja2VkKCZwLT5iYXNl
KTsKKwkJZ290byB1bmxvY2s7CisJfQorCisJcC0+cmVhbCA9IGRtYV9mZW5jZV9nZXQocmVhbCk7
CisKKwlkbWFfZmVuY2VfZ2V0KCZwLT5iYXNlKTsKKwlzcGluX2xvY2tfbmVzdGVkKHJlYWwtPmxv
Y2ssIHNhbWVfbG9ja2NsYXNzKCZwLT53cS5sb2NrLCByZWFsLT5sb2NrKSk7CisJaWYgKGRtYV9m
ZW5jZV9pc19zaWduYWxlZF9sb2NrZWQocmVhbCkpIHsKKwkJcHJveHlfY2FsbGJhY2socmVhbCwg
JnAtPmNiKTsKKwl9IGVsc2UgaWYgKHRlc3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdO
QUxfQklULAorCQkJICAgICZwLT5iYXNlLmZsYWdzKSAmJgorCQkgICAhX19kbWFfZmVuY2VfZW5h
YmxlX3NpZ25hbGluZyhyZWFsKSkgeworCQlwcm94eV9jYWxsYmFjayhyZWFsLCAmcC0+Y2IpOwor
CX0gZWxzZSB7CisJCXAtPmNiLmZ1bmMgPSBwcm94eV9jYWxsYmFjazsKKwkJbGlzdF9hZGRfdGFp
bCgmcC0+Y2Iubm9kZSwgJnJlYWwtPmNiX2xpc3QpOworCX0KKwlzcGluX3VubG9jayhyZWFsLT5s
b2NrKTsKKwordW5sb2NrOgorCV9fd2FrZV91cF9saXN0ZW5lcnMocCk7CisJc3Bpbl91bmxvY2tf
aXJxcmVzdG9yZSgmcC0+d3EubG9jaywgZmxhZ3MpOworfQorCisvKioKKyAqIGRtYV9mZW5jZV9y
ZXBsYWNlX3Byb3h5IC0gUmVwbGFjZSB0aGUgcHJveHkgZmVuY2Ugd2l0aCB0aGUgcmVhbCB0YXJn
ZXQKKyAqIEBzbG90OiBwb2ludGVyIHRvIGxvY2F0aW9uIG9mIGZlbmNlIHRvIHVwZGF0ZQorICog
QGZlbmNlOiB0aGUgbmV3IGZlbmNlIHRvIHN0b3JlIGluIEBzbG90CisgKgorICogT25jZSB0aGUg
cmVhbCBkbWFfZmVuY2UgaXMga25vd24sIHdlIGNhbiByZXBsYWNlIHRoZSBwcm94eSBmZW5jZSBo
b2xkZXIKKyAqIHdpdGggYSBwb2ludGVyIHRvIHRoZSByZWFsIGRtYSBmZW5jZS4gRnV0dXJlIGxp
c3RlbmVycyB3aWxsIGF0dGFjaCB0bworICogdGhlIHJlYWwgZmVuY2UsIGF2b2lkaW5nIGFueSBp
bmRpcmVjdGlvbiBvdmVyaGVhZC4gUHJldmlvdXMgbGlzdGVuZXJzCisgKiB3aWxsIHJlbWFpbiBh
dHRhY2hlZCB0byB0aGUgcHJveHkgZmVuY2UsIGFuZCBiZSBzaWduYWxlZCBpbiB0dXJuIHdoZW4K
KyAqIHRoZSB0YXJnZXQgZmVuY2UgY29tcGxldGVzLgorICovCitzdHJ1Y3QgZG1hX2ZlbmNlICoK
K2RtYV9mZW5jZV9yZXBsYWNlX3Byb3h5KHN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKipzbG90LCBz
dHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpvbGQ7CisKKwlp
ZiAoZmVuY2UpCisJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOworCisJb2xkID0gcmN1X3JlcGxhY2Vf
cG9pbnRlcigqc2xvdCwgZmVuY2UsIHRydWUpOworCWlmIChvbGQgJiYgZG1hX2ZlbmNlX2lzX3By
b3h5KG9sZCkpCisJCXByb3h5X2Fzc2lnbihvbGQsIGZlbmNlKTsKKworCXJldHVybiBvbGQ7Cit9
CitFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9yZXBsYWNlX3Byb3h5KTsKKwordm9pZCBkbWFfZmVu
Y2VfYWRkX3Byb3h5X2xpc3RlbmVyKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLAorCQkJCSAgc3Ry
dWN0IHdhaXRfcXVldWVfZW50cnkgKndhaXQpCit7CisJaWYgKGRtYV9mZW5jZV9pc19wcm94eShm
ZW5jZSkpIHsKKwkJc3RydWN0IGRtYV9mZW5jZV9wcm94eSAqcCA9CisJCQljb250YWluZXJfb2Yo
ZmVuY2UsIHR5cGVvZigqcCksIGJhc2UpOworCQl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJCXNw
aW5fbG9ja19pcnFzYXZlKCZwLT53cS5sb2NrLCBmbGFncyk7CisJCWlmICghcC0+cmVhbCkgewor
CQkJbGlzdF9hZGRfdGFpbCgmd2FpdC0+ZW50cnksICZwLT53cS5oZWFkKTsKKwkJCXdhaXQgPSBO
VUxMOworCQl9CisJCWZlbmNlID0gcC0+cmVhbDsKKwkJc3Bpbl91bmxvY2tfaXJxcmVzdG9yZSgm
cC0+d3EubG9jaywgZmxhZ3MpOworCX0KKworCWlmICh3YWl0KSB7CisJCUlOSVRfTElTVF9IRUFE
KCZ3YWl0LT5lbnRyeSk7CisJCXdhaXQtPmZ1bmMod2FpdCwgVEFTS19OT1JNQUwsIDAsIGZlbmNl
KTsKKwl9Cit9CitFWFBPUlRfU1lNQk9MKGRtYV9mZW5jZV9hZGRfcHJveHlfbGlzdGVuZXIpOwor
Citib29sIGRtYV9mZW5jZV9yZW1vdmVfcHJveHlfbGlzdGVuZXIoc3RydWN0IGRtYV9mZW5jZSAq
ZmVuY2UsCisJCQkJICAgICBzdHJ1Y3Qgd2FpdF9xdWV1ZV9lbnRyeSAqd2FpdCkKK3sKKwlib29s
IHJldCA9IGZhbHNlOworCisJaWYgKGRtYV9mZW5jZV9pc19wcm94eShmZW5jZSkpIHsKKwkJc3Ry
dWN0IGRtYV9mZW5jZV9wcm94eSAqcCA9CisJCQljb250YWluZXJfb2YoZmVuY2UsIHR5cGVvZigq
cCksIGJhc2UpOworCQl1bnNpZ25lZCBsb25nIGZsYWdzOworCisJCXNwaW5fbG9ja19pcnFzYXZl
KCZwLT53cS5sb2NrLCBmbGFncyk7CisJCWlmICghbGlzdF9lbXB0eSgmd2FpdC0+ZW50cnkpKSB7
CisJCQlsaXN0X2RlbF9pbml0KCZ3YWl0LT5lbnRyeSk7CisJCQlyZXQgPSB0cnVlOworCQl9CisJ
CXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnAtPndxLmxvY2ssIGZsYWdzKTsKKwl9CisKKwlyZXR1
cm4gcmV0OworfQorRVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfcmVtb3ZlX3Byb3h5X2xpc3RlbmVy
KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyBiL2RyaXZlcnMvZG1h
LWJ1Zi9kbWEtZmVuY2UuYwppbmRleCA5MGVkZjJiMjgxYjAuLjVhOWZmMjQxZTM5ZSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jCisrKyBiL2RyaXZlcnMvZG1hLWJ1Zi9k
bWEtZmVuY2UuYwpAQCAtMTksNiArMTksOCBAQAogI2RlZmluZSBDUkVBVEVfVFJBQ0VfUE9JTlRT
CiAjaW5jbHVkZSA8dHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oPgogCisjaW5jbHVkZSAiZG1hLWZl
bmNlLXByaXZhdGUuaCIKKwogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9MKGRtYV9mZW5jZV9lbWl0
KTsKIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW5hYmxlX3NpZ25hbCk7CiBF
WFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVkKTsKQEAgLTI3Myw3ICsy
NzUsNyBAQCB2b2lkIGRtYV9mZW5jZV9mcmVlKHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQogfQog
RVhQT1JUX1NZTUJPTChkbWFfZmVuY2VfZnJlZSk7CiAKLXN0YXRpYyBib29sIF9fZG1hX2ZlbmNl
X2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCitib29sIF9fZG1hX2Zl
bmNlX2VuYWJsZV9zaWduYWxpbmcoc3RydWN0IGRtYV9mZW5jZSAqZmVuY2UpCiB7CiAJYm9vbCB3
YXNfc2V0OwogCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc2VsZnRlc3RzLmggYi9kcml2
ZXJzL2RtYS1idWYvc2VsZnRlc3RzLmgKaW5kZXggNTU5MThlZjlhZGFiLi42MTZlY2E3MGUyZDgg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9zZWxmdGVzdHMuaAorKysgYi9kcml2ZXJzL2Rt
YS1idWYvc2VsZnRlc3RzLmgKQEAgLTEyLDMgKzEyLDQgQEAKIHNlbGZ0ZXN0KHNhbml0eWNoZWNr
LCBfX3Nhbml0eWNoZWNrX18pIC8qIGtlZXAgZmlyc3QgKGlndCBzZWxmY2hlY2spICovCiBzZWxm
dGVzdChkbWFfZmVuY2UsIGRtYV9mZW5jZSkKIHNlbGZ0ZXN0KGRtYV9mZW5jZV9jaGFpbiwgZG1h
X2ZlbmNlX2NoYWluKQorc2VsZnRlc3QoZG1hX2ZlbmNlX3Byb3h5LCBkbWFfZmVuY2VfcHJveHkp
CmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXByb3h5LmMgYi9kcml2
ZXJzL2RtYS1idWYvc3QtZG1hLWZlbmNlLXByb3h5LmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwMDAwLi5jOTU4MTExOTljMTYKLS0tIC9kZXYvbnVsbAorKysgYi9kcml2ZXJz
L2RtYS1idWYvc3QtZG1hLWZlbmNlLXByb3h5LmMKQEAgLTAsMCArMSw2OTkgQEAKKy8vIFNQRFgt
TGljZW5zZS1JZGVudGlmaWVyOiBNSVQKKy8qCisgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBD
b3Jwb3JhdGlvbgorICovCisKKyNpbmNsdWRlIDxsaW51eC9kZWxheS5oPgorI2luY2x1ZGUgPGxp
bnV4L2RtYS1mZW5jZS5oPgorI2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS1wcm94eS5oPgorI2lu
Y2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgorI2luY2x1ZGUgPGxpbnV4L3NjaGVkL3NpZ25hbC5oPgor
I2luY2x1ZGUgPGxpbnV4L3NsYWIuaD4KKyNpbmNsdWRlIDxsaW51eC9zcGlubG9jay5oPgorCisj
aW5jbHVkZSAic2VsZnRlc3QuaCIKKworc3RhdGljIHN0cnVjdCBrbWVtX2NhY2hlICpzbGFiX2Zl
bmNlczsKKworc3RhdGljIHN0cnVjdCBtb2NrX2ZlbmNlIHsKKwlzdHJ1Y3QgZG1hX2ZlbmNlIGJh
c2U7CisJc3BpbmxvY2tfdCBsb2NrOworfSAqdG9fbW9ja19mZW5jZShzdHJ1Y3QgZG1hX2ZlbmNl
ICpmKSB7CisJcmV0dXJuIGNvbnRhaW5lcl9vZihmLCBzdHJ1Y3QgbW9ja19mZW5jZSwgYmFzZSk7
Cit9CisKK3N0YXRpYyBjb25zdCBjaGFyICptb2NrX25hbWUoc3RydWN0IGRtYV9mZW5jZSAqZikK
K3sKKwlyZXR1cm4gIm1vY2siOworfQorCitzdGF0aWMgdm9pZCBtb2NrX2ZlbmNlX3JlbGVhc2Uo
c3RydWN0IGRtYV9mZW5jZSAqZikKK3sKKwlrbWVtX2NhY2hlX2ZyZWUoc2xhYl9mZW5jZXMsIHRv
X21vY2tfZmVuY2UoZikpOworfQorCitzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9mZW5jZV9vcHMg
bW9ja19vcHMgPSB7CisJLmdldF9kcml2ZXJfbmFtZSA9IG1vY2tfbmFtZSwKKwkuZ2V0X3RpbWVs
aW5lX25hbWUgPSBtb2NrX25hbWUsCisJLnJlbGVhc2UgPSBtb2NrX2ZlbmNlX3JlbGVhc2UsCit9
OworCitzdGF0aWMgc3RydWN0IGRtYV9mZW5jZSAqbW9ja19mZW5jZSh2b2lkKQoreworCXN0cnVj
dCBtb2NrX2ZlbmNlICpmOworCisJZiA9IGttZW1fY2FjaGVfYWxsb2Moc2xhYl9mZW5jZXMsIEdG
UF9LRVJORUwpOworCWlmICghZikKKwkJcmV0dXJuIE5VTEw7CisKKwlzcGluX2xvY2tfaW5pdCgm
Zi0+bG9jayk7CisJZG1hX2ZlbmNlX2luaXQoJmYtPmJhc2UsICZtb2NrX29wcywgJmYtPmxvY2ss
IDAsIDApOworCisJcmV0dXJuICZmLT5iYXNlOworfQorCitzdGF0aWMgaW50IHNhbml0eWNoZWNr
KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpmOworCisJZiA9IGRtYV9mZW5jZV9j
cmVhdGVfcHJveHkoKTsKKwlpZiAoIWYpCisJCXJldHVybiAtRU5PTUVNOworCisJZG1hX2ZlbmNl
X3NpZ25hbChmKTsKKwlkbWFfZmVuY2VfcHV0KGYpOworCisJcmV0dXJuIDA7Cit9CisKK3N0cnVj
dCBmZW5jZXMgeworCXN0cnVjdCBkbWFfZmVuY2UgKnJlYWw7CisJc3RydWN0IGRtYV9mZW5jZSAq
cHJveHk7CisJc3RydWN0IGRtYV9mZW5jZSBfX3JjdSAqc2xvdDsKK307CisKK3N0YXRpYyBpbnQg
Y3JlYXRlX2ZlbmNlcyhzdHJ1Y3QgZmVuY2VzICpmLCBib29sIGF0dGFjaCkKK3sKKwlmLT5wcm94
eSA9IGRtYV9mZW5jZV9jcmVhdGVfcHJveHkoKTsKKwlpZiAoIWYtPnByb3h5KQorCQlyZXR1cm4g
LUVOT01FTTsKKworCVJDVV9JTklUX1BPSU5URVIoZi0+c2xvdCwgZi0+cHJveHkpOworCisJZi0+
cmVhbCA9IG1vY2tfZmVuY2UoKTsKKwlpZiAoIWYtPnJlYWwpIHsKKwkJZG1hX2ZlbmNlX3B1dChm
LT5wcm94eSk7CisJCXJldHVybiAtRU5PTUVNOworCX0KKworCWlmIChhdHRhY2gpCisJCWRtYV9m
ZW5jZV9yZXBsYWNlX3Byb3h5KCZmLT5zbG90LCBmLT5yZWFsKTsKKworCXJldHVybiAwOworfQor
CitzdGF0aWMgdm9pZCBmcmVlX2ZlbmNlcyhzdHJ1Y3QgZmVuY2VzICpmKQoreworCWRtYV9mZW5j
ZV9wdXQoZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoJmYtPnNsb3QsIE5VTEwpKTsKKwlkbWFfZmVu
Y2VfcHV0KGYtPnJlYWwpOworCWRtYV9mZW5jZV9wdXQoZi0+cHJveHkpOworfQorCitzdGF0aWMg
aW50IHdyYXBfc2lnbmFsaW5nKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgZmVuY2VzIGY7CisJaW50
IGVyciA9IC1FSU5WQUw7CisKKwlpZiAoY3JlYXRlX2ZlbmNlcygmZiwgdHJ1ZSkpCisJCXJldHVy
biAtRU5PTUVNOworCisJaWYgKGRtYV9mZW5jZV9pc19zaWduYWxlZChmLnByb3h5KSkgeworCQlw
cl9lcnIoIkZlbmNlIHVuZXhwZWN0ZWRseSBzaWduYWxlZCBvbiBjcmVhdGlvblxuIik7CisJCWdv
dG8gZXJyX2ZyZWU7CisJfQorCisJaWYgKGRtYV9mZW5jZV9zaWduYWwoZi5yZWFsKSkgeworCQlw
cl9lcnIoIkZlbmNlIHJlcG9ydGVkIGJlaW5nIGFscmVhZHkgc2lnbmFsZWRcbiIpOworCQlnb3Rv
IGVycl9mcmVlOworCX0KKworCWlmICghZG1hX2ZlbmNlX2lzX3NpZ25hbGVkKGYucHJveHkpKSB7
CisJCXByX2VycigiRmVuY2Ugbm90IHJlcG9ydGluZyBzaWduYWxlZFxuIik7CisJCWdvdG8gZXJy
X2ZyZWU7CisJfQorCisJZXJyID0gMDsKK2Vycl9mcmVlOgorCWZyZWVfZmVuY2VzKCZmKTsKKwly
ZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IHdyYXBfc2lnbmFsaW5nX3JlY3Vyc2Uodm9pZCAq
YXJnKQoreworCXN0cnVjdCBmZW5jZXMgZjsKKwlzdHJ1Y3QgZG1hX2ZlbmNlICpjaGFpbjsKKwlp
bnQgZXJyID0gLUVJTlZBTDsKKworCWlmIChjcmVhdGVfZmVuY2VzKCZmLCBmYWxzZSkpCisJCXJl
dHVybiAtRU5PTUVNOworCisJY2hhaW4gPSBkbWFfZmVuY2VfY3JlYXRlX3Byb3h5KCk7CisJaWYg
KCFjaGFpbikgeworCQllcnIgPSAtRU5PTUVNOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWRt
YV9mZW5jZV9yZXBsYWNlX3Byb3h5KCZmLnNsb3QsIGNoYWluKTsKKwlkbWFfZmVuY2VfcHV0KGRt
YV9mZW5jZV9yZXBsYWNlX3Byb3h5KCZmLnNsb3QsIGYucmVhbCkpOworCWRtYV9mZW5jZV9wdXQo
Y2hhaW4pOworCisJLyogZi5yZWFsIDwtIGNoYWluIDwtIGYucHJveHkgKi8KKworCWlmIChkbWFf
ZmVuY2VfaXNfc2lnbmFsZWQoZi5wcm94eSkpIHsKKwkJcHJfZXJyKCJGZW5jZSB1bmV4cGVjdGVk
bHkgc2lnbmFsZWQgb24gY3JlYXRpb25cbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWlm
IChkbWFfZmVuY2Vfc2lnbmFsKGYucmVhbCkpIHsKKwkJcHJfZXJyKCJGZW5jZSByZXBvcnRlZCBi
ZWluZyBhbHJlYWR5IHNpZ25hbGVkXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisKKwlpZiAo
IWRtYV9mZW5jZV9pc19zaWduYWxlZChmLnByb3h5KSkgeworCQlwcl9lcnIoIkZlbmNlIG5vdCBy
ZXBvcnRpbmcgc2lnbmFsZWRcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWVyciA9IDA7
CitlcnJfZnJlZToKKwlmcmVlX2ZlbmNlcygmZik7CisJcmV0dXJuIGVycjsKK30KKworc3RydWN0
IHNpbXBsZV9jYiB7CisJc3RydWN0IGRtYV9mZW5jZV9jYiBjYjsKKwlib29sIHNlZW47Cit9Owor
CitzdGF0aWMgdm9pZCBzaW1wbGVfY2FsbGJhY2soc3RydWN0IGRtYV9mZW5jZSAqZiwgc3RydWN0
IGRtYV9mZW5jZV9jYiAqY2IpCit7CisJc21wX3N0b3JlX21iKGNvbnRhaW5lcl9vZihjYiwgc3Ry
dWN0IHNpbXBsZV9jYiwgY2IpLT5zZWVuLCB0cnVlKTsKK30KKworc3RhdGljIGludCB3cmFwX2Fk
ZF9jYWxsYmFjayh2b2lkICphcmcpCit7CisJc3RydWN0IHNpbXBsZV9jYiBjYiA9IHt9OworCXN0
cnVjdCBmZW5jZXMgZjsKKwlpbnQgZXJyID0gLUVJTlZBTDsKKworCWlmIChjcmVhdGVfZmVuY2Vz
KCZmLCB0cnVlKSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlpZiAoZG1hX2ZlbmNlX2FkZF9jYWxs
YmFjayhmLnByb3h5LCAmY2IuY2IsIHNpbXBsZV9jYWxsYmFjaykpIHsKKwkJcHJfZXJyKCJGYWls
ZWQgdG8gYWRkIGNhbGxiYWNrLCBmZW5jZSBhbHJlYWR5IHNpZ25hbGVkIVxuIik7CisJCWdvdG8g
ZXJyX2ZyZWU7CisJfQorCisJZG1hX2ZlbmNlX3NpZ25hbChmLnJlYWwpOworCWlmICghY2Iuc2Vl
bikgeworCQlwcl9lcnIoIkNhbGxiYWNrIGZhaWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOwor
CX0KKworCWVyciA9IDA7CitlcnJfZnJlZToKKwlmcmVlX2ZlbmNlcygmZik7CisJcmV0dXJuIGVy
cjsKK30KKworc3RhdGljIGludCB3cmFwX2FkZF9jYWxsYmFja19yZWN1cnNlKHZvaWQgKmFyZykK
K3sKKwlzdHJ1Y3Qgc2ltcGxlX2NiIGNiID0ge307CisJc3RydWN0IGRtYV9mZW5jZSAqY2hhaW47
CisJc3RydWN0IGZlbmNlcyBmOworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNyZWF0ZV9m
ZW5jZXMoJmYsIGZhbHNlKSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwljaGFpbiA9IGRtYV9mZW5j
ZV9jcmVhdGVfcHJveHkoKTsKKwlpZiAoIWNoYWluKSB7CisJCWVyciA9IC1FTk9NRU07CisJCWdv
dG8gZXJyX2ZyZWU7CisJfQorCisJZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoJmYuc2xvdCwgY2hh
aW4pOworCWRtYV9mZW5jZV9wdXQoZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoJmYuc2xvdCwgZi5y
ZWFsKSk7CisJZG1hX2ZlbmNlX3B1dChjaGFpbik7CisKKwkvKiBmLnJlYWwgPC0gY2hhaW4gPC0g
Zi5wcm94eSAqLworCisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZi5wcm94eSwgJmNiLmNi
LCBzaW1wbGVfY2FsbGJhY2spKSB7CisJCXByX2VycigiRmFpbGVkIHRvIGFkZCBjYWxsYmFjaywg
ZmVuY2UgYWxyZWFkeSBzaWduYWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWRt
YV9mZW5jZV9zaWduYWwoZi5yZWFsKTsKKwlpZiAoIWNiLnNlZW4pIHsKKwkJcHJfZXJyKCJDYWxs
YmFjayBmYWlsZWQhXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisKKwllcnIgPSAwOworZXJy
X2ZyZWU6CisJZnJlZV9mZW5jZXMoJmYpOworCXJldHVybiBlcnI7Cit9CisKK3N0YXRpYyBpbnQg
d3JhcF9sYXRlX2FkZF9jYWxsYmFjayh2b2lkICphcmcpCit7CisJc3RydWN0IHNpbXBsZV9jYiBj
YiA9IHt9OworCXN0cnVjdCBmZW5jZXMgZjsKKwlpbnQgZXJyID0gLUVJTlZBTDsKKworCWlmIChj
cmVhdGVfZmVuY2VzKCZmLCB0cnVlKSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlkbWFfZmVuY2Vf
c2lnbmFsKGYucmVhbCk7CisKKwlpZiAoIWRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZi5wcm94eSwg
JmNiLmNiLCBzaW1wbGVfY2FsbGJhY2spKSB7CisJCXByX2VycigiQWRkZWQgY2FsbGJhY2ssIGJ1
dCBmZW5jZSB3YXMgYWxyZWFkeSBzaWduYWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0K
KworCWRtYV9mZW5jZV9zaWduYWwoZi5yZWFsKTsKKwlpZiAoY2Iuc2VlbikgeworCQlwcl9lcnIo
IkNhbGxiYWNrIGNhbGxlZCBhZnRlciBmYWlsZWQgYXR0YWNobWVudCFcbiIpOworCQlnb3RvIGVy
cl9mcmVlOworCX0KKworCWVyciA9IDA7CitlcnJfZnJlZToKKwlmcmVlX2ZlbmNlcygmZik7CisJ
cmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCB3cmFwX2Vhcmx5X2FkZF9jYWxsYmFjayh2b2lk
ICphcmcpCit7CisJc3RydWN0IHNpbXBsZV9jYiBjYiA9IHt9OworCXN0cnVjdCBmZW5jZXMgZjsK
KwlpbnQgZXJyID0gLUVJTlZBTDsKKworCWlmIChjcmVhdGVfZmVuY2VzKCZmLCBmYWxzZSkpCisJ
CXJldHVybiAtRU5PTUVNOworCisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZi5wcm94eSwg
JmNiLmNiLCBzaW1wbGVfY2FsbGJhY2spKSB7CisJCXByX2VycigiRmFpbGVkIHRvIGFkZCBjYWxs
YmFjaywgZmVuY2UgYWxyZWFkeSBzaWduYWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0K
KworCWRtYV9mZW5jZV9yZXBsYWNlX3Byb3h5KCZmLnNsb3QsIGYucmVhbCk7CisJZG1hX2ZlbmNl
X3NpZ25hbChmLnJlYWwpOworCWlmICghY2Iuc2VlbikgeworCQlwcl9lcnIoIkNhbGxiYWNrIGZh
aWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWVyciA9IDA7CitlcnJfZnJlZToK
KwlmcmVlX2ZlbmNlcygmZik7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCB3cmFwX2Vh
cmx5X2FkZF9jYWxsYmFja19sYXRlKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3Qgc2ltcGxlX2NiIGNi
ID0ge307CisJc3RydWN0IGZlbmNlcyBmOworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNy
ZWF0ZV9mZW5jZXMoJmYsIGZhbHNlKSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlkbWFfZmVuY2Vf
c2lnbmFsKGYucmVhbCk7CisKKwlpZiAoZG1hX2ZlbmNlX2FkZF9jYWxsYmFjayhmLnByb3h5LCAm
Y2IuY2IsIHNpbXBsZV9jYWxsYmFjaykpIHsKKwkJcHJfZXJyKCJGYWlsZWQgdG8gYWRkIGNhbGxi
YWNrLCBmZW5jZSBhbHJlYWR5IHNpZ25hbGVkIVxuIik7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQor
CisJZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoJmYuc2xvdCwgZi5yZWFsKTsKKwlkbWFfZmVuY2Vf
c2lnbmFsKGYucmVhbCk7CisJaWYgKCFjYi5zZWVuKSB7CisJCXByX2VycigiQ2FsbGJhY2sgZmFp
bGVkIVxuIik7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJZXJyID0gMDsKK2Vycl9mcmVlOgor
CWZyZWVfZmVuY2VzKCZmKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50IHdyYXBfZWFy
bHlfYWRkX2NhbGxiYWNrX2Vhcmx5KHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3Qgc2ltcGxlX2NiIGNi
ID0ge307CisJc3RydWN0IGZlbmNlcyBmOworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNy
ZWF0ZV9mZW5jZXMoJmYsIGZhbHNlKSkKKwkJcmV0dXJuIC1FTk9NRU07CisKKwlpZiAoZG1hX2Zl
bmNlX2FkZF9jYWxsYmFjayhmLnByb3h5LCAmY2IuY2IsIHNpbXBsZV9jYWxsYmFjaykpIHsKKwkJ
cHJfZXJyKCJGYWlsZWQgdG8gYWRkIGNhbGxiYWNrLCBmZW5jZSBhbHJlYWR5IHNpZ25hbGVkIVxu
Iik7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoJmYu
c2xvdCwgZi5yZWFsKTsKKwlkbWFfZmVuY2Vfc2lnbmFsKGYucmVhbCk7CisJaWYgKCFjYi5zZWVu
KSB7CisJCXByX2VycigiQ2FsbGJhY2sgZmFpbGVkIVxuIik7CisJCWdvdG8gZXJyX2ZyZWU7CisJ
fQorCisJZXJyID0gMDsKK2Vycl9mcmVlOgorCWZyZWVfZmVuY2VzKCZmKTsKKwlyZXR1cm4gZXJy
OworfQorCitzdGF0aWMgaW50IHdyYXBfcm1fY2FsbGJhY2sodm9pZCAqYXJnKQoreworCXN0cnVj
dCBzaW1wbGVfY2IgY2IgPSB7fTsKKwlzdHJ1Y3QgZmVuY2VzIGY7CisJaW50IGVyciA9IC1FSU5W
QUw7CisKKwlpZiAoY3JlYXRlX2ZlbmNlcygmZiwgdHJ1ZSkpCisJCXJldHVybiAtRU5PTUVNOwor
CisJaWYgKGRtYV9mZW5jZV9hZGRfY2FsbGJhY2soZi5wcm94eSwgJmNiLmNiLCBzaW1wbGVfY2Fs
bGJhY2spKSB7CisJCXByX2VycigiRmFpbGVkIHRvIGFkZCBjYWxsYmFjaywgZmVuY2UgYWxyZWFk
eSBzaWduYWxlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWlmICghZG1hX2ZlbmNl
X3JlbW92ZV9jYWxsYmFjayhmLnByb3h5LCAmY2IuY2IpKSB7CisJCXByX2VycigiRmFpbGVkIHRv
IHJlbW92ZSBjYWxsYmFjayFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWRtYV9mZW5j
ZV9zaWduYWwoZi5yZWFsKTsKKwlpZiAoY2Iuc2VlbikgeworCQlwcl9lcnIoIkNhbGxiYWNrIHN0
aWxsIHNpZ25hbGVkIGFmdGVyIHJlbW92YWwhXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisK
KwllcnIgPSAwOworZXJyX2ZyZWU6CisJZnJlZV9mZW5jZXMoJmYpOworCXJldHVybiBlcnI7Cit9
CisKK3N0YXRpYyBpbnQgd3JhcF9sYXRlX3JtX2NhbGxiYWNrKHZvaWQgKmFyZykKK3sKKwlzdHJ1
Y3Qgc2ltcGxlX2NiIGNiID0ge307CisJc3RydWN0IGZlbmNlcyBmOworCWludCBlcnIgPSAtRUlO
VkFMOworCisJaWYgKGNyZWF0ZV9mZW5jZXMoJmYsIHRydWUpKQorCQlyZXR1cm4gLUVOT01FTTsK
KworCWlmIChkbWFfZmVuY2VfYWRkX2NhbGxiYWNrKGYucHJveHksICZjYi5jYiwgc2ltcGxlX2Nh
bGxiYWNrKSkgeworCQlwcl9lcnIoIkZhaWxlZCB0byBhZGQgY2FsbGJhY2ssIGZlbmNlIGFscmVh
ZHkgc2lnbmFsZWQhXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisKKwlkbWFfZmVuY2Vfc2ln
bmFsKGYucmVhbCk7CisJaWYgKCFjYi5zZWVuKSB7CisJCXByX2VycigiQ2FsbGJhY2sgZmFpbGVk
IVxuIik7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJaWYgKGRtYV9mZW5jZV9yZW1vdmVfY2Fs
bGJhY2soZi5wcm94eSwgJmNiLmNiKSkgeworCQlwcl9lcnIoIkNhbGxiYWNrIHJlbW92YWwgc3Vj
Y2VlZCBhZnRlciBiZWluZyBleGVjdXRlZCFcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKwor
CWVyciA9IDA7CitlcnJfZnJlZToKKwlmcmVlX2ZlbmNlcygmZik7CisJcmV0dXJuIGVycjsKK30K
Kworc3RhdGljIGludCB3cmFwX3N0YXR1cyh2b2lkICphcmcpCit7CisJc3RydWN0IGZlbmNlcyBm
OworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNyZWF0ZV9mZW5jZXMoJmYsIHRydWUpKQor
CQlyZXR1cm4gLUVOT01FTTsKKworCWlmIChkbWFfZmVuY2VfZ2V0X3N0YXR1cyhmLnByb3h5KSkg
eworCQlwcl9lcnIoIkZlbmNlIHVuZXhwZWN0ZWRseSBoYXMgc2lnbmFsZWQgc3RhdHVzIG9uIGNy
ZWF0aW9uXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisKKwlkbWFfZmVuY2Vfc2lnbmFsKGYu
cmVhbCk7CisJaWYgKCFkbWFfZmVuY2VfZ2V0X3N0YXR1cyhmLnByb3h5KSkgeworCQlwcl9lcnIo
IkZlbmNlIG5vdCByZXBvcnRpbmcgc2lnbmFsZWQgc3RhdHVzXG4iKTsKKwkJZ290byBlcnJfZnJl
ZTsKKwl9CisKKwllcnIgPSAwOworZXJyX2ZyZWU6CisJZnJlZV9mZW5jZXMoJmYpOworCXJldHVy
biBlcnI7Cit9CisKK3N0YXRpYyBpbnQgd3JhcF9lcnJvcih2b2lkICphcmcpCit7CisJc3RydWN0
IGZlbmNlcyBmOworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNyZWF0ZV9mZW5jZXMoJmYs
IHRydWUpKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWRtYV9mZW5jZV9zZXRfZXJyb3IoZi5yZWFs
LCAtRUlPKTsKKworCWlmIChkbWFfZmVuY2VfZ2V0X3N0YXR1cyhmLnByb3h5KSkgeworCQlwcl9l
cnIoIkZlbmNlIHVuZXhwZWN0ZWRseSBoYXMgZXJyb3Igc3RhdHVzIGJlZm9yZSBzaWduYWxcbiIp
OworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWRtYV9mZW5jZV9zaWduYWwoZi5yZWFsKTsKKwlp
ZiAoZG1hX2ZlbmNlX2dldF9zdGF0dXMoZi5wcm94eSkgIT0gLUVJTykgeworCQlwcl9lcnIoIkZl
bmNlIG5vdCByZXBvcnRpbmcgZXJyb3Igc3RhdHVzLCBnb3QgJWRcbiIsCisJCSAgICAgICBkbWFf
ZmVuY2VfZ2V0X3N0YXR1cyhmLnByb3h5KSk7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJZXJy
ID0gMDsKK2Vycl9mcmVlOgorCWZyZWVfZmVuY2VzKCZmKTsKKwlyZXR1cm4gZXJyOworfQorCitz
dGF0aWMgaW50IHdyYXBfd2FpdCh2b2lkICphcmcpCit7CisJc3RydWN0IGZlbmNlcyBmOworCWlu
dCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNyZWF0ZV9mZW5jZXMoJmYsIHRydWUpKQorCQlyZXR1
cm4gLUVOT01FTTsKKworCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGYucHJveHksIGZhbHNl
LCAwKSAhPSAwKSB7CisJCXByX2VycigiV2FpdCByZXBvcnRlZCBjb21wbGV0ZSBiZWZvcmUgYmVp
bmcgc2lnbmFsZWRcbiIpOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWRtYV9mZW5jZV9zaWdu
YWwoZi5yZWFsKTsKKworCWlmIChkbWFfZmVuY2Vfd2FpdF90aW1lb3V0KGYucHJveHksIGZhbHNl
LCAwKSA9PSAwKSB7CisJCXByX2VycigiV2FpdCByZXBvcnRlZCBpbmNvbXBsZXRlIGFmdGVyIGJl
aW5nIHNpZ25hbGVkXG4iKTsKKwkJZ290byBlcnJfZnJlZTsKKwl9CisKKwllcnIgPSAwOworZXJy
X2ZyZWU6CisJZG1hX2ZlbmNlX3NpZ25hbChmLnJlYWwpOworCWZyZWVfZmVuY2VzKCZmKTsKKwly
ZXR1cm4gZXJyOworfQorCitzdHJ1Y3Qgd2FpdF90aW1lciB7CisJc3RydWN0IHRpbWVyX2xpc3Qg
dGltZXI7CisJc3RydWN0IGZlbmNlcyBmOworfTsKKworc3RhdGljIHZvaWQgd2FpdF90aW1lcihz
dHJ1Y3QgdGltZXJfbGlzdCAqdGltZXIpCit7CisJc3RydWN0IHdhaXRfdGltZXIgKnd0ID0gZnJv
bV90aW1lcih3dCwgdGltZXIsIHRpbWVyKTsKKworCWRtYV9mZW5jZV9zaWduYWwod3QtPmYucmVh
bCk7Cit9CisKK3N0YXRpYyBpbnQgd3JhcF93YWl0X3RpbWVvdXQodm9pZCAqYXJnKQoreworCXN0
cnVjdCB3YWl0X3RpbWVyIHd0OworCWludCBlcnIgPSAtRUlOVkFMOworCisJaWYgKGNyZWF0ZV9m
ZW5jZXMoJnd0LmYsIHRydWUpKQorCQlyZXR1cm4gLUVOT01FTTsKKworCXRpbWVyX3NldHVwX29u
X3N0YWNrKCZ3dC50aW1lciwgd2FpdF90aW1lciwgMCk7CisKKwlpZiAoZG1hX2ZlbmNlX3dhaXRf
dGltZW91dCh3dC5mLnByb3h5LCBmYWxzZSwgMSkgIT0gMCkgeworCQlwcl9lcnIoIldhaXQgcmVw
b3J0ZWQgY29tcGxldGUgYmVmb3JlIGJlaW5nIHNpZ25hbGVkXG4iKTsKKwkJZ290byBlcnJfZnJl
ZTsKKwl9CisKKwltb2RfdGltZXIoJnd0LnRpbWVyLCBqaWZmaWVzICsgMSk7CisKKwlpZiAoZG1h
X2ZlbmNlX3dhaXRfdGltZW91dCh3dC5mLnByb3h5LCBmYWxzZSwgMikgIT0gMCkgeworCQlpZiAo
dGltZXJfcGVuZGluZygmd3QudGltZXIpKSB7CisJCQlwcl9ub3RpY2UoIlRpbWVyIGRpZCBub3Qg
ZmlyZSB3aXRoaW4gdGhlIGppZmZpZSFcbiIpOworCQkJZXJyID0gMDsgLyogbm90IG91ciBmYXVs
dCEgKi8KKwkJfSBlbHNlIHsKKwkJCXByX2VycigiV2FpdCByZXBvcnRlZCBpbmNvbXBsZXRlIGFm
dGVyIHRpbWVvdXRcbiIpOworCQl9CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJZXJyID0gMDsK
K2Vycl9mcmVlOgorCWRlbF90aW1lcl9zeW5jKCZ3dC50aW1lcik7CisJZGVzdHJveV90aW1lcl9v
bl9zdGFjaygmd3QudGltZXIpOworCWRtYV9mZW5jZV9zaWduYWwod3QuZi5yZWFsKTsKKwlmcmVl
X2ZlbmNlcygmd3QuZik7CisJcmV0dXJuIGVycjsKK30KKworc3RydWN0IHByb3h5X3dhaXQgewor
CXN0cnVjdCB3YWl0X3F1ZXVlX2VudHJ5IGJhc2U7CisJc3RydWN0IGRtYV9mZW5jZSAqZmVuY2U7
CisJYm9vbCBzZWVuOworfTsKKworc3RhdGljIGludCBwcm94eV93YWl0X2NiKHN0cnVjdCB3YWl0
X3F1ZXVlX2VudHJ5ICplbnRyeSwKKwkJCSB1bnNpZ25lZCBpbnQgbW9kZSwgaW50IGZsYWdzLCB2
b2lkICprZXkpCit7CisJc3RydWN0IHByb3h5X3dhaXQgKnAgPSBjb250YWluZXJfb2YoZW50cnks
IHR5cGVvZigqcCksIGJhc2UpOworCisJcC0+ZmVuY2UgPSBrZXk7CisJcC0+c2VlbiA9IHRydWU7
CisKKwlyZXR1cm4gMDsKK30KKworc3RhdGljIGludCB3cmFwX2xpc3Rlbl9lYXJseSh2b2lkICph
cmcpCit7CisJc3RydWN0IHByb3h5X3dhaXQgd2FpdCA9IHsgLmJhc2UuZnVuYyA9IHByb3h5X3dh
aXRfY2IgfTsKKwlzdHJ1Y3QgZmVuY2VzIGY7CisJaW50IGVyciA9IC1FSU5WQUw7CisKKwlpZiAo
Y3JlYXRlX2ZlbmNlcygmZiwgZmFsc2UpKQorCQlyZXR1cm4gLUVOT01FTTsKKworCWRtYV9mZW5j
ZV9yZXBsYWNlX3Byb3h5KCZmLnNsb3QsIGYucmVhbCk7CisJZG1hX2ZlbmNlX2FkZF9wcm94eV9s
aXN0ZW5lcihmLnByb3h5LCAmd2FpdC5iYXNlKTsKKworCWlmICghd2FpdC5zZWVuKSB7CisJCXBy
X2VycigiUHJveHkgbGlzdGVuZXIgd2FzIG5vdCBjYWxsZWQgYWZ0ZXIgcmVwbGFjZSFcbiIpOwor
CQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWlmICh3YWl0LmZlbmNl
ICE9IGYucmVhbCkgeworCQlwcl9lcnIoIlByb3h5IGxpc3RlbmVyIHdhcyBub3QgcGFzc2VkIHRo
ZSByZWFsIGZlbmNlIVxuIik7CisJCWVyciA9IC1FSU5WQUw7CisJCWdvdG8gZXJyX2ZyZWU7CisJ
fQorCisJZXJyID0gMDsKK2Vycl9mcmVlOgorCWRtYV9mZW5jZV9zaWduYWwoZi5yZWFsKTsKKwlm
cmVlX2ZlbmNlcygmZik7CisJcmV0dXJuIGVycjsKK30KKworc3RhdGljIGludCB3cmFwX2xpc3Rl
bl9sYXRlKHZvaWQgKmFyZykKK3sKKwlzdHJ1Y3QgcHJveHlfd2FpdCB3YWl0ID0geyAuYmFzZS5m
dW5jID0gcHJveHlfd2FpdF9jYiB9OworCXN0cnVjdCBmZW5jZXMgZjsKKwlpbnQgZXJyID0gLUVJ
TlZBTDsKKworCWlmIChjcmVhdGVfZmVuY2VzKCZmLCBmYWxzZSkpCisJCXJldHVybiAtRU5PTUVN
OworCisJZG1hX2ZlbmNlX2FkZF9wcm94eV9saXN0ZW5lcihmLnByb3h5LCAmd2FpdC5iYXNlKTsK
KwlkbWFfZmVuY2VfcmVwbGFjZV9wcm94eSgmZi5zbG90LCBmLnJlYWwpOworCisJaWYgKCF3YWl0
LnNlZW4pIHsKKwkJcHJfZXJyKCJQcm94eSBsaXN0ZW5lciB3YXMgbm90IGNhbGxlZCBvbiByZXBs
YWNlIVxuIik7CisJCWVyciA9IC1FSU5WQUw7CisJCWdvdG8gZXJyX2ZyZWU7CisJfQorCisJaWYg
KHdhaXQuZmVuY2UgIT0gZi5yZWFsKSB7CisJCXByX2VycigiUHJveHkgbGlzdGVuZXIgd2FzIG5v
dCBwYXNzZWQgdGhlIHJlYWwgZmVuY2UhXG4iKTsKKwkJZXJyID0gLUVJTlZBTDsKKwkJZ290byBl
cnJfZnJlZTsKKwl9CisKKwllcnIgPSAwOworZXJyX2ZyZWU6CisJZG1hX2ZlbmNlX3NpZ25hbChm
LnJlYWwpOworCWZyZWVfZmVuY2VzKCZmKTsKKwlyZXR1cm4gZXJyOworfQorCitzdGF0aWMgaW50
IHdyYXBfbGlzdGVuX2NhbmNlbCh2b2lkICphcmcpCit7CisJc3RydWN0IHByb3h5X3dhaXQgd2Fp
dCA9IHsgLmJhc2UuZnVuYyA9IHByb3h5X3dhaXRfY2IgfTsKKwlzdHJ1Y3QgZmVuY2VzIGY7CisJ
aW50IGVyciA9IC1FSU5WQUw7CisKKwlpZiAoY3JlYXRlX2ZlbmNlcygmZiwgZmFsc2UpKQorCQly
ZXR1cm4gLUVOT01FTTsKKworCWRtYV9mZW5jZV9hZGRfcHJveHlfbGlzdGVuZXIoZi5wcm94eSwg
JndhaXQuYmFzZSk7CisJaWYgKCFkbWFfZmVuY2VfcmVtb3ZlX3Byb3h5X2xpc3RlbmVyKGYucHJv
eHksICZ3YWl0LmJhc2UpKSB7CisJCXByX2VycigiQ2FuY2VsbGluZyBsaXN0ZW5lciwgYWxyZWFk
eSBkZXRhY2hlZD9cbiIpOworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl9mcmVlOworCX0K
KwlkbWFfZmVuY2VfcmVwbGFjZV9wcm94eSgmZi5zbG90LCBmLnJlYWwpOworCisJaWYgKHdhaXQu
c2VlbikgeworCQlwcl9lcnIoIlByb3h5IGxpc3RlbmVyIHdhcyBjYWxsZWQgYWZ0ZXIgYmVpbmcg
cmVtb3ZlZCFcbiIpOworCQllcnIgPSAtRUlOVkFMOworCQlnb3RvIGVycl9mcmVlOworCX0KKwor
CWlmIChkbWFfZmVuY2VfcmVtb3ZlX3Byb3h5X2xpc3RlbmVyKGYucHJveHksICZ3YWl0LmJhc2Up
KSB7CisJCXByX2VycigiRG91YmxlIGxpc3RlbmVyIGNhbmNlbGxhdGlvbiFcbiIpOworCQllcnIg
PSAtRUlOVkFMOworCQlnb3RvIGVycl9mcmVlOworCX0KKworCWVyciA9IDA7CitlcnJfZnJlZToK
KwlkbWFfZmVuY2Vfc2lnbmFsKGYucmVhbCk7CisJZnJlZV9mZW5jZXMoJmYpOworCXJldHVybiBl
cnI7Cit9CisKK2ludCBkbWFfZmVuY2VfcHJveHkodm9pZCkKK3sKKwlzdGF0aWMgY29uc3Qgc3Ry
dWN0IHN1YnRlc3QgdGVzdHNbXSA9IHsKKwkJU1VCVEVTVChzYW5pdHljaGVjayksCisJCVNVQlRF
U1Qod3JhcF9zaWduYWxpbmcpLAorCQlTVUJURVNUKHdyYXBfc2lnbmFsaW5nX3JlY3Vyc2UpLAor
CQlTVUJURVNUKHdyYXBfYWRkX2NhbGxiYWNrKSwKKwkJU1VCVEVTVCh3cmFwX2FkZF9jYWxsYmFj
a19yZWN1cnNlKSwKKwkJU1VCVEVTVCh3cmFwX2xhdGVfYWRkX2NhbGxiYWNrKSwKKwkJU1VCVEVT
VCh3cmFwX2Vhcmx5X2FkZF9jYWxsYmFjayksCisJCVNVQlRFU1Qod3JhcF9lYXJseV9hZGRfY2Fs
bGJhY2tfbGF0ZSksCisJCVNVQlRFU1Qod3JhcF9lYXJseV9hZGRfY2FsbGJhY2tfZWFybHkpLAor
CQlTVUJURVNUKHdyYXBfcm1fY2FsbGJhY2spLAorCQlTVUJURVNUKHdyYXBfbGF0ZV9ybV9jYWxs
YmFjayksCisJCVNVQlRFU1Qod3JhcF9zdGF0dXMpLAorCQlTVUJURVNUKHdyYXBfZXJyb3IpLAor
CQlTVUJURVNUKHdyYXBfd2FpdCksCisJCVNVQlRFU1Qod3JhcF93YWl0X3RpbWVvdXQpLAorCQlT
VUJURVNUKHdyYXBfbGlzdGVuX2Vhcmx5KSwKKwkJU1VCVEVTVCh3cmFwX2xpc3Rlbl9sYXRlKSwK
KwkJU1VCVEVTVCh3cmFwX2xpc3Rlbl9jYW5jZWwpLAorCX07CisJaW50IHJldDsKKworCXNsYWJf
ZmVuY2VzID0gS01FTV9DQUNIRShtb2NrX2ZlbmNlLAorCQkJCSBTTEFCX1RZUEVTQUZFX0JZX1JD
VSB8CisJCQkJIFNMQUJfSFdDQUNIRV9BTElHTik7CisJaWYgKCFzbGFiX2ZlbmNlcykKKwkJcmV0
dXJuIC1FTk9NRU07CisKKwlyZXQgPSBzdWJ0ZXN0cyh0ZXN0cywgTlVMTCk7CisKKwlrbWVtX2Nh
Y2hlX2Rlc3Ryb3koc2xhYl9mZW5jZXMpOworCisJcmV0dXJuIHJldDsKK30KZGlmZiAtLWdpdCBh
L2luY2x1ZGUvbGludXgvZG1hLWZlbmNlLXByb3h5LmggYi9pbmNsdWRlL2xpbnV4L2RtYS1mZW5j
ZS1wcm94eS5oCm5ldyBmaWxlIG1vZGUgMTAwNjQ0CmluZGV4IDAwMDAwMDAwMDAwMC4uMDYzY2Rl
NmI0MmM0Ci0tLSAvZGV2L251bGwKKysrIGIvaW5jbHVkZS9saW51eC9kbWEtZmVuY2UtcHJveHku
aApAQCAtMCwwICsxLDM0IEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMC1v
bmx5ICovCisvKgorICogZG1hLWZlbmNlLXByb3h5OiBhbGxvd3Mgd2FpdGluZyB1cG9uIHVuc2V0
IGFuZCBmdXR1cmUgZmVuY2VzCisgKgorICogQ29weXJpZ2h0IChDKSAyMDE3IEludGVsIENvcnBv
cmF0aW9uCisgKi8KKworI2lmbmRlZiBfX0xJTlVYX0RNQV9GRU5DRV9QUk9YWV9ICisjZGVmaW5l
IF9fTElOVVhfRE1BX0ZFTkNFX1BST1hZX0gKKworI2luY2x1ZGUgPGxpbnV4L2tlcm5lbC5oPgor
I2luY2x1ZGUgPGxpbnV4L2RtYS1mZW5jZS5oPgorCitzdHJ1Y3Qgd2FpdF9xdWV1ZV9lbnRyeTsK
KworZXh0ZXJuIGNvbnN0IHN0cnVjdCBkbWFfZmVuY2Vfb3BzIGRtYV9mZW5jZV9wcm94eV9vcHM7
CisKK3N0cnVjdCBkbWFfZmVuY2UgKmRtYV9mZW5jZV9jcmVhdGVfcHJveHkodm9pZCk7CisKK3N0
YXRpYyBpbmxpbmUgYm9vbCBkbWFfZmVuY2VfaXNfcHJveHkoc3RydWN0IGRtYV9mZW5jZSAqZmVu
Y2UpCit7CisJcmV0dXJuIGZlbmNlLT5vcHMgPT0gJmRtYV9mZW5jZV9wcm94eV9vcHM7Cit9CisK
K3N0cnVjdCBkbWFfZmVuY2UgKgorZG1hX2ZlbmNlX3JlcGxhY2VfcHJveHkoc3RydWN0IGRtYV9m
ZW5jZSBfX3JjdSAqKnNsb3QsCisJCQlzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSk7CisKK3ZvaWQg
ZG1hX2ZlbmNlX2FkZF9wcm94eV9saXN0ZW5lcihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKKwkJ
CQkgIHN0cnVjdCB3YWl0X3F1ZXVlX2VudHJ5ICp3YWl0KTsKK2Jvb2wgZG1hX2ZlbmNlX3JlbW92
ZV9wcm94eV9saXN0ZW5lcihzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSwKKwkJCQkgICAgIHN0cnVj
dCB3YWl0X3F1ZXVlX2VudHJ5ICp3YWl0KTsKKworI2VuZGlmIC8qIF9fTElOVVhfRE1BX0ZFTkNF
X1BST1hZX0ggKi8KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
