Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6845E1ACED9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Apr 2020 19:40:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CC36E844;
	Thu, 16 Apr 2020 17:40:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 772FE6E844
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Apr 2020 17:40:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from build.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 20924452-1500050 
 for multiple; Thu, 16 Apr 2020 18:40:14 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 16 Apr 2020 18:40:12 +0100
Message-Id: <20200416174012.31364-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200416155100.22331-2-chris@chris-wilson.co.uk>
References: <20200416155100.22331-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2] drm/i915/gt: Use the RPM config register to
 determine clk frequencies
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

Rm9yIG1hbnkgY29uZmlndXJhdGlvbiBkZXRhaWxzIHdpdGhpbiBSQzYgYW5kIFJQUyB3ZSBhcmUg
cHJvZ3JhbW1pbmcKaW50ZXJ2YWxzIGZvciB0aGUgaW50ZXJuYWwgY2xvY2tzLiBGcm9tIGdlbjEx
LCB0aGVzZSBjbG9ja3MgYXJlCmNvbmZpZ3VyYXRpb24gdmlhIHRoZSBSUE1fQ09ORklHIGFuZCBz
byBmb3IgY29udmVuaWVuY2UsIHdlIHdvdWxkIGxpa2UKdG8gY29udmVydCB0by9mcm9tIG1vcmUg
bmF0dXJhbCB1bml0cyAobnMpLgoKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+CkNjOiBBbmRpIFNoeXRpIDxhbmRpLnNoeXRpQGludGVsLmNvbT4K
Q2M6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgotLS0KIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2RlYnVnZnNfZ3RfcG0uYyB8IDI3ICsrKysrLS0tLQogZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xrLmMgIHwgNzggKysrKysrKysrKysrKysrKysrKysrKysr
KwogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xrLmggIHwgMjEgKysrKysrKwog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMgICAgIHwgMzcgKysrKysrKy0tLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9ycHMuYyAgfCAgNyArKy0KIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jICAgICB8IDM0ICsrKysrKystLS0tCiBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgfCAyNSAtLS0tLS0tLQogOCBmaWxl
cyBjaGFuZ2VkLCAxNjQgaW5zZXJ0aW9ucygrKSwgNjYgZGVsZXRpb25zKC0pCiBjcmVhdGUgbW9k
ZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xrLmMKIGNyZWF0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9jbGsuaAoKZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvTWFrZWZpbGUKaW5kZXggNDRjNTA2YjdlMTE3Li5mYThkNzhlNDBkYWQgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCkBAIC05MSw2ICs5MSw3IEBAIGd0LXkgKz0gXAogCWd0L2ludGVsX2dndHQubyBc
CiAJZ3QvaW50ZWxfZ2d0dF9mZW5jaW5nLm8gXAogCWd0L2ludGVsX2d0Lm8gXAorCWd0L2ludGVs
X2d0X2Nsay5vIFwKIAlndC9pbnRlbF9ndF9pcnEubyBcCiAJZ3QvaW50ZWxfZ3RfcG0ubyBcCiAJ
Z3QvaW50ZWxfZ3RfcG1faXJxLm8gXApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvZGVidWdmc19ndF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZGVidWdmc19ndF9w
bS5jCmluZGV4IGFhYjMwZDkwODA3Mi4uY2Q0NjY0NzI1OTlmIDEwMDY0NAotLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9kZWJ1Z2ZzX2d0X3BtLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvZGVidWdmc19ndF9wbS5jCkBAIC0xMCw2ICsxMCw3IEBACiAjaW5jbHVkZSAiZGVidWdm
c19ndF9wbS5oIgogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50ZWxfZ3QuaCIK
KyNpbmNsdWRlICJpbnRlbF9ndF9jbGsuaCIKICNpbmNsdWRlICJpbnRlbF9sbGMuaCIKICNpbmNs
dWRlICJpbnRlbF9yYzYuaCIKICNpbmNsdWRlICJpbnRlbF9ycHMuaCIKQEAgLTM5NCwyMSArMzk1
LDIzIEBAIHN0YXRpYyBpbnQgZnJlcXVlbmN5X3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lk
ICp1bnVzZWQpCiAJCXNlcV9wcmludGYobSwgIlJQREVDTElNSVQ6IDB4JTA4eFxuIiwgcnBkZWNs
aW1pdCk7CiAJCXNlcV9wcmludGYobSwgIlJQTlNXUkVROiAlZE1IelxuIiwgcmVxZik7CiAJCXNl
cV9wcmludGYobSwgIkNBR0Y6ICVkTUh6XG4iLCBjYWdmKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAg
Q1VSIFVQIEVJOiAlZCAoJWR1cylcbiIsCi0JCQkgICBycHVwZWksIEdUX1BNX0lOVEVSVkFMX1RP
X1VTKGk5MTUsIHJwdXBlaSkpOwotCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVA6ICVkICglZHVz
KVxuIiwKLQkJCSAgIHJwY3VydXAsIEdUX1BNX0lOVEVSVkFMX1RPX1VTKGk5MTUsIHJwY3VydXAp
KTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgUFJFViBVUDogJWQgKCVkdXMpXG4iLAotCQkJICAgcnBw
cmV2dXAsIEdUX1BNX0lOVEVSVkFMX1RPX1VTKGk5MTUsIHJwcHJldnVwKSk7CisJCXNlcV9wcmlu
dGYobSwgIlJQIENVUiBVUCBFSTogJWQgKCVkbnMpXG4iLAorCQkJICAgcnB1cGVpLCBpbnRlbF9n
dF9wbV9pbnRlcnZhbF90b19ucyhndCwgcnB1cGVpKSk7CisJCXNlcV9wcmludGYobSwgIlJQIENV
UiBVUDogJWQgKCVkbnMpXG4iLAorCQkJICAgcnBjdXJ1cCwgaW50ZWxfZ3RfcG1faW50ZXJ2YWxf
dG9fbnMoZ3QsIHJwY3VydXApKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgUFJFViBVUDogJWQgKCVk
bnMpXG4iLAorCQkJICAgcnBwcmV2dXAsIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKGd0LCBy
cHByZXZ1cCkpOwogCQlzZXFfcHJpbnRmKG0sICJVcCB0aHJlc2hvbGQ6ICVkJSVcbiIsCiAJCQkg
ICBycHMtPnBvd2VyLnVwX3RocmVzaG9sZCk7CiAKLQkJc2VxX3ByaW50ZihtLCAiUlAgQ1VSIERP
V04gRUk6ICVkICglZHVzKVxuIiwKLQkJCSAgIHJwZG93bmVpLCBHVF9QTV9JTlRFUlZBTF9UT19V
UyhpOTE1LCBycGRvd25laSkpOwotCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgRE9XTjogJWQgKCVk
dXMpXG4iLAotCQkJICAgcnBjdXJkb3duLCBHVF9QTV9JTlRFUlZBTF9UT19VUyhpOTE1LCBycGN1
cmRvd24pKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgUFJFViBET1dOOiAlZCAoJWR1cylcbiIsCi0J
CQkgICBycHByZXZkb3duLCBHVF9QTV9JTlRFUlZBTF9UT19VUyhpOTE1LCBycHByZXZkb3duKSk7
CisJCXNlcV9wcmludGYobSwgIlJQIENVUiBET1dOIEVJOiAlZCAoJWRucylcbiIsCisJCQkgICBy
cGRvd25laSwgaW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMoZ3QsIHJwZG93bmVpKSk7CisJCXNl
cV9wcmludGYobSwgIlJQIENVUiBET1dOOiAlZCAoJWRucylcbiIsCisJCQkgICBycGN1cmRvd24s
CisJCQkgICBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhndCwgcnBjdXJkb3duKSk7CisJCXNl
cV9wcmludGYobSwgIlJQIFBSRVYgRE9XTjogJWQgKCVkbnMpXG4iLAorCQkJICAgcnBwcmV2ZG93
biwKKwkJCSAgIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKGd0LCBycHByZXZkb3duKSk7CiAJ
CXNlcV9wcmludGYobSwgIkRvd24gdGhyZXNob2xkOiAlZCUlXG4iLAogCQkJICAgcnBzLT5wb3dl
ci5kb3duX3RocmVzaG9sZCk7CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X2Nsay5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xrLmMK
bmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5kZXggMDAwMDAwMDAwMDAwLi43Y2MzMTQ1YTYzZWQKLS0t
IC9kZXYvbnVsbAorKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9jbGsuYwpA
QCAtMCwwICsxLDc4IEBACisvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUCisvKgorICog
Q29weXJpZ2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisjaW5jbHVkZSAiaTkx
NV9kcnYuaCIKKyNpbmNsdWRlICJpbnRlbF9ndC5oIgorI2luY2x1ZGUgImludGVsX2d0X2Nsay5o
IgorCisjZGVmaW5lIE1IWl8xOV8yIDE5MjAwMDAwIC8qIDE5LjJNSHosIDUyLjA4M25zICovCisj
ZGVmaW5lIE1IWl8yNCAyNDAwMDAwMCAvKiAyNE1IeiwgODMuMzMzbnMgKi8KKyNkZWZpbmUgTUha
XzI1IDI1MDAwMDAwIC8qIDI1TUh6LCA4MG5zICovCisKK3UzMiBpbnRlbF9ndF9jbGtfZnJlcXVl
bmN5KHN0cnVjdCBpbnRlbF9ndCAqZ3QpCit7CisJaWYgKElOVEVMX0dFTihndC0+aTkxNSkgPj0g
MTEpIHsKKwkJdTMyIGNvbmZpZzsKKworCQljb25maWcgPSBpbnRlbF91bmNvcmVfcmVhZChndC0+
dW5jb3JlLCBSUE1fQ09ORklHMCk7CisJCWNvbmZpZyAmPSBHRU4xMV9SUE1fQ09ORklHMF9DUllT
VEFMX0NMT0NLX0ZSRVFfTUFTSzsKKwkJY29uZmlnID4+PSBHRU4xMV9SUE1fQ09ORklHMF9DUllT
VEFMX0NMT0NLX0ZSRVFfU0hJRlQ7CisKKwkJc3dpdGNoIChjb25maWcpIHsKKwkJY2FzZSAwOiBy
ZXR1cm4gTUhaXzI0OworCQljYXNlIDE6CisJCWNhc2UgMjogcmV0dXJuIE1IWl8xOV8yOworCQlk
ZWZhdWx0OgorCQljYXNlIDM6IHJldHVybiBNSFpfMjU7CisJCX0KKwl9IGVsc2UgaWYgKElOVEVM
X0dFTihndC0+aTkxNSkgPj0gOSkgeworCQlpZiAoSVNfR0VOOV9MUChndC0+aTkxNSkpCisJCQly
ZXR1cm4gTUhaXzE5XzI7CisJCWVsc2UKKwkJCXJldHVybiBNSFpfMjQ7CisJfSBlbHNlIHsKKwkJ
cmV0dXJuIE1IWl8yNTsKKwl9Cit9CisKK3N0YXRpYyB1NjQgZGl2X3U2NF9yb3VuZHVwKHU2NCBu
b20sIHUzMiBkZW4pCit7CisJcmV0dXJuIGRpdl91NjQobm9tICsgZGVuIC0gMSwgZGVuKTsKK30K
KwordTMyIGludGVsX2d0X2Nsa19pbnRlcnZhbF90b19ucyhzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1
MzIgY291bnQpCit7CisJcmV0dXJuIGRpdl91NjRfcm91bmR1cChtdWxfdTMyX3UzMihjb3VudCwg
MTAwMCAqIDEwMDAgKiAxMDAwKSwKKwkJCSAgICAgICBpbnRlbF9ndF9jbGtfZnJlcXVlbmN5KGd0
KSk7Cit9CisKK3UzMiBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucyhzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0LCB1MzIgY291bnQpCit7CisJcmV0dXJuIGludGVsX2d0X2Nsa19pbnRlcnZhbF90b19ucyhn
dCwgMTYgKiBjb3VudCk7Cit9CisKK3UzMiBpbnRlbF9ndF9uc190b19jbGtfaW50ZXJ2YWwoc3Ry
dWN0IGludGVsX2d0ICpndCwgdTMyIG5zKQoreworCXJldHVybiBkaXZfdTY0X3JvdW5kdXAobXVs
X3UzMl91MzIoaW50ZWxfZ3RfY2xrX2ZyZXF1ZW5jeShndCksIG5zKSwKKwkJCSAgICAgICAxMDAw
ICogMTAwMCAqIDEwMDApOworfQorCit1MzIgaW50ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2YWwoc3Ry
dWN0IGludGVsX2d0ICpndCwgdTMyIG5zKQoreworCXUzMiB2YWw7CisKKwkvKgorCSAqIE1ha2Ug
dGhlc2UgYSBtdWx0aXBsZSBvZiBtYWdpYyAyNSB0byBhdm9pZCBTTkIgKGVnLiBEZWxsIFhQUwor
CSAqIDgzMDApIGZyZWV6aW5nIHVwIGFyb3VuZCBHUFUgaGFuZ3MuIExvb2tzIGFzIGlmIGV2ZW4K
KwkgKiBzY2hlZHVsaW5nL3RpbWVyIGludGVycnVwdHMgc3RhcnQgbWlzYmVoYXZpbmcgaWYgdGhl
IFJQUworCSAqIEVJL3RocmVzaG9sZHMgYXJlICJiYWQiLCBsZWFkaW5nIHRvIGEgdmVyeSBzbHVn
Z2lzaCBvciBldmVuCisJICogZnJvemVuIG1hY2hpbmUuCisJICovCisJdmFsID0gRElWX1JPVU5E
X1VQKGludGVsX2d0X25zX3RvX2Nsa19pbnRlcnZhbChndCwgbnMpLCAxNik7CisJaWYgKElTX0dF
TihndC0+aTkxNSwgNikpCisJCXZhbCA9IHJvdW5kdXAodmFsLCAyNSk7CisKKwlyZXR1cm4gdmFs
OworfQpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfY2xrLmgg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9jbGsuaApuZXcgZmlsZSBtb2RlIDEw
MDY0NAppbmRleCAwMDAwMDAwMDAwMDAuLjM1NDUyY2IwODkzZAotLS0gL2Rldi9udWxsCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X2Nsay5oCkBAIC0wLDAgKzEsMjEgQEAK
Ky8qIFNQRFgtTGljZW5zZS1JZGVudGlmaWVyOiBNSVQgKi8KKy8qCisgKiBDb3B5cmlnaHQgwqkg
MjAyMCBJbnRlbCBDb3Jwb3JhdGlvbgorICovCisKKyNpZm5kZWYgX19JTlRFTF9HVF9DTEtfXwor
I2RlZmluZSBfX0lOVEVMX0dUX0NMS19fCisKKyNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgorCitz
dHJ1Y3QgaW50ZWxfZ3Q7CisKK3UzMiBpbnRlbF9ndF9jbGtfZnJlcXVlbmN5KHN0cnVjdCBpbnRl
bF9ndCAqZ3QpOworCit1MzIgaW50ZWxfZ3RfY2xrX2ludGVydmFsX3RvX25zKHN0cnVjdCBpbnRl
bF9ndCAqZ3QsIHUzMiBjb3VudCk7Cit1MzIgaW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMoc3Ry
dWN0IGludGVsX2d0ICpndCwgdTMyIGNvdW50KTsKKwordTMyIGludGVsX2d0X25zX3RvX2Nsa19p
bnRlcnZhbChzdHJ1Y3QgaW50ZWxfZ3QgKmd0LCB1MzIgbnMpOwordTMyIGludGVsX2d0X25zX3Rv
X3BtX2ludGVydmFsKHN0cnVjdCBpbnRlbF9ndCAqZ3QsIHUzMiBucyk7CisKKyNlbmRpZiAvKiBf
X0lOVEVMX0dUX0NMS19fICovCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ycHMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jCmluZGV4IGYw
MDhkNGRjYmM3YS4uNTFkY2ExNmU1MzI2IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ycHMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMu
YwpAQCAtOCw2ICs4LDcgQEAKIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCiAjaW5jbHVkZSAiaW50
ZWxfZ3QuaCIKKyNpbmNsdWRlICJpbnRlbF9ndF9jbGsuaCIKICNpbmNsdWRlICJpbnRlbF9ndF9p
cnEuaCIKICNpbmNsdWRlICJpbnRlbF9ndF9wbV9pcnEuaCIKICNpbmNsdWRlICJpbnRlbF9ycHMu
aCIKQEAgLTUzNSw4ICs1MzYsOCBAQCBzdGF0aWMgdTMyIHJwc19saW1pdHMoc3RydWN0IGludGVs
X3JwcyAqcnBzLCB1OCB2YWwpCiAKIHN0YXRpYyB2b2lkIHJwc19zZXRfcG93ZXIoc3RydWN0IGlu
dGVsX3JwcyAqcnBzLCBpbnQgbmV3X3Bvd2VyKQogewotCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVu
Y29yZSA9IHJwc190b191bmNvcmUocnBzKTsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHJwc190b19pOTE1KHJwcyk7CisJc3RydWN0IGludGVsX2d0ICpndCA9IHJwc190b19ndChy
cHMpOworCXN0cnVjdCBpbnRlbF91bmNvcmUgKnVuY29yZSA9IGd0LT51bmNvcmU7CiAJdTMyIHRo
cmVzaG9sZF91cCA9IDAsIHRocmVzaG9sZF9kb3duID0gMDsgLyogaW4gJSAqLwogCXUzMiBlaV91
cCA9IDAsIGVpX2Rvd24gPSAwOwogCkBAIC01ODEsMjMgKzU4MiwyNSBAQCBzdGF0aWMgdm9pZCBy
cHNfc2V0X3Bvd2VyKHN0cnVjdCBpbnRlbF9ycHMgKnJwcywgaW50IG5ld19wb3dlcikKIAkvKiBX
aGVuIGJ5dCBjYW4gc3Vydml2ZSB3aXRob3V0IHN5c3RlbSBoYW5nIHdpdGggZHluYW1pYwogCSAq
IHN3IGZyZXEgYWRqdXN0bWVudHMsIHRoaXMgcmVzdHJpY3Rpb24gY2FuIGJlIGxpZnRlZC4KIAkg
Ki8KLQlpZiAoSVNfVkFMTEVZVklFVyhpOTE1KSkKKwlpZiAoSVNfVkFMTEVZVklFVyhndC0+aTkx
NSkpCiAJCWdvdG8gc2tpcF9od193cml0ZTsKIAotCUdUX1RSQUNFKHJwc190b19ndChycHMpLAor
CUdUX1RSQUNFKGd0LAogCQkgImNoYW5naW5nIHBvd2VyIG1vZGUgWyVkXSwgdXAgJWQlJSBAICVk
dXMsIGRvd24gJWQlJSBAICVkdXNcbiIsCiAJCSBuZXdfcG93ZXIsIHRocmVzaG9sZF91cCwgZWlf
dXAsIHRocmVzaG9sZF9kb3duLCBlaV9kb3duKTsKIAotCXNldCh1bmNvcmUsIEdFTjZfUlBfVVBf
RUksIEdUX0lOVEVSVkFMX0ZST01fVVMoaTkxNSwgZWlfdXApKTsKKwlzZXQodW5jb3JlLCBHRU42
X1JQX1VQX0VJLAorCSAgICBpbnRlbF9ndF9uc190b19wbV9pbnRlcnZhbChndCwgZWlfdXAgKiAx
MDAwKSk7CiAJc2V0KHVuY29yZSwgR0VONl9SUF9VUF9USFJFU0hPTEQsCi0JICAgIEdUX0lOVEVS
VkFMX0ZST01fVVMoaTkxNSwgZWlfdXAgKiB0aHJlc2hvbGRfdXAgLyAxMDApKTsKKwkgICAgaW50
ZWxfZ3RfbnNfdG9fcG1faW50ZXJ2YWwoZ3QsIGVpX3VwICogdGhyZXNob2xkX3VwICogMTAwMCAv
IDEwMCkpOwogCi0Jc2V0KHVuY29yZSwgR0VONl9SUF9ET1dOX0VJLCBHVF9JTlRFUlZBTF9GUk9N
X1VTKGk5MTUsIGVpX2Rvd24pKTsKKwlzZXQodW5jb3JlLCBHRU42X1JQX0RPV05fRUksCisJICAg
IGludGVsX2d0X25zX3RvX3BtX2ludGVydmFsKGd0LCBlaV9kb3duICogMTAwMCkpOwogCXNldCh1
bmNvcmUsIEdFTjZfUlBfRE9XTl9USFJFU0hPTEQsCi0JICAgIEdUX0lOVEVSVkFMX0ZST01fVVMo
aTkxNSwgZWlfZG93biAqIHRocmVzaG9sZF9kb3duIC8gMTAwKSk7CisJICAgIGludGVsX2d0X25z
X3RvX3BtX2ludGVydmFsKGd0LCBlaV9kb3duICogdGhyZXNob2xkX2Rvd24gKiAxMDAwIC8gMTAw
KSk7CiAKIAlzZXQodW5jb3JlLCBHRU42X1JQX0NPTlRST0wsCi0JICAgIChJTlRFTF9HRU4oaTkx
NSkgPiA5ID8gMCA6IEdFTjZfUlBfTUVESUFfVFVSQk8pIHwKKwkgICAgKElOVEVMX0dFTihndC0+
aTkxNSkgPiA5ID8gMCA6IEdFTjZfUlBfTUVESUFfVFVSQk8pIHwKIAkgICAgR0VONl9SUF9NRURJ
QV9IV19OT1JNQUxfTU9ERSB8CiAJICAgIEdFTjZfUlBfTUVESUFfSVNfR0ZYIHwKIAkgICAgR0VO
Nl9SUF9FTkFCTEUgfApAQCAtOTM0LDE3ICs5MzcsMTcgQEAgc3RhdGljIGJvb2wgcnBzX3Jlc2V0
KHN0cnVjdCBpbnRlbF9ycHMgKnJwcykKIC8qIFNlZSB0aGUgR2VuOV9HVF9QTV9Qcm9ncmFtbWlu
Z19HdWlkZSBkb2MgZm9yIHRoZSBiZWxvdyAqLwogc3RhdGljIGJvb2wgZ2VuOV9ycHNfZW5hYmxl
KHN0cnVjdCBpbnRlbF9ycHMgKnJwcykKIHsKLQlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSA9IHJwc190b19pOTE1KHJwcyk7Ci0Jc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gcnBz
X3RvX3VuY29yZShycHMpOworCXN0cnVjdCBpbnRlbF9ndCAqZ3QgPSBycHNfdG9fZ3QocnBzKTsK
KwlzdHJ1Y3QgaW50ZWxfdW5jb3JlICp1bmNvcmUgPSBndC0+dW5jb3JlOwogCiAJLyogUHJvZ3Jh
bSBkZWZhdWx0cyBhbmQgdGhyZXNob2xkcyBmb3IgUlBTICovCi0JaWYgKElTX0dFTihpOTE1LCA5
KSkKKwlpZiAoSVNfR0VOKGd0LT5pOTE1LCA5KSkKIAkJaW50ZWxfdW5jb3JlX3dyaXRlX2Z3KHVu
Y29yZSwgR0VONl9SQ19WSURFT19GUkVRLAogCQkJCSAgICAgIEdFTjlfRlJFUVVFTkNZKHJwcy0+
cnAxX2ZyZXEpKTsKIAogCS8qIDEgc2Vjb25kIHRpbWVvdXQgKi8KIAlpbnRlbF91bmNvcmVfd3Jp
dGVfZncodW5jb3JlLCBHRU42X1JQX0RPV05fVElNRU9VVCwKLQkJCSAgICAgIEdUX0lOVEVSVkFM
X0ZST01fVVMoaTkxNSwgMTAwMDAwMCkpOworCQkJICAgICAgaW50ZWxfZ3RfbnNfdG9fcG1faW50
ZXJ2YWwoZ3QsIDEwMDAwMDApKTsKIAogCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNvcmUsIEdF
TjZfUlBfSURMRV9IWVNURVJTSVMsIDB4YSk7CiAKQEAgLTEyMjQsNiArMTIyNywxMCBAQCB2b2lk
IGludGVsX3Jwc19lbmFibGUoc3RydWN0IGludGVsX3JwcyAqcnBzKQogCWlmICghSEFTX1JQUyhp
OTE1KSkKIAkJcmV0dXJuOwogCisJR1RfVFJBQ0UocnBzX3RvX2d0KHJwcyksCisJCSAiVXNpbmcg
Y2xrIGZyZXF1ZW5jeTogJWRrSHpcbiIsCisJCSBpbnRlbF9ndF9jbGtfZnJlcXVlbmN5KHJwc190
b19ndChycHMpKSAvIDEwMDApOworCiAJaW50ZWxfdW5jb3JlX2ZvcmNld2FrZV9nZXQodW5jb3Jl
LCBGT1JDRVdBS0VfQUxMKTsKIAlpZiAoSVNfQ0hFUlJZVklFVyhpOTE1KSkKIAkJcnBzLT5lbmFi
bGVkID0gY2h2X3Jwc19lbmFibGUocnBzKTsKQEAgLTE3NjAsNyArMTc2Nyw3IEBAIHN0YXRpYyB1
MzIgcmVhZF9jYWdmKHN0cnVjdCBpbnRlbF9ycHMgKnJwcykKIAkJZnJlcSA9IHZsdl9wdW5pdF9y
ZWFkKGk5MTUsIFBVTklUX1JFR19HUFVfRlJFUV9TVFMpOwogCQl2bHZfcHVuaXRfcHV0KGk5MTUp
OwogCX0gZWxzZSB7Ci0JCWZyZXEgPSBpbnRlbF91bmNvcmVfcmVhZChycHNfdG9fZ3QocnBzKS0+
dW5jb3JlLCBHRU42X1JQU1RBVDEpOworCQlmcmVxID0gaW50ZWxfdW5jb3JlX3JlYWQocnBzX3Rv
X3VuY29yZShycHMpLCBHRU42X1JQU1RBVDEpOwogCX0KIAogCXJldHVybiBpbnRlbF9ycHNfZ2V0
X2NhZ2YocnBzLCBmcmVxKTsKQEAgLTE3NjgsNyArMTc3NSw3IEBAIHN0YXRpYyB1MzIgcmVhZF9j
YWdmKHN0cnVjdCBpbnRlbF9ycHMgKnJwcykKIAogdTMyIGludGVsX3Jwc19yZWFkX2FjdHVhbF9m
cmVxdWVuY3koc3RydWN0IGludGVsX3JwcyAqcnBzKQogewotCXN0cnVjdCBpbnRlbF9ydW50aW1l
X3BtICpycG0gPSBycHNfdG9fZ3QocnBzKS0+dW5jb3JlLT5ycG07CisJc3RydWN0IGludGVsX3J1
bnRpbWVfcG0gKnJwbSA9IHJwc190b191bmNvcmUocnBzKS0+cnBtOwogCWludGVsX3dha2VyZWZf
dCB3YWtlcmVmOwogCXUzMiBmcmVxID0gMDsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVz
dF9ycHMuYwppbmRleCAyNmFhZGMyYWUzYmUuLjVhZDViZWU2YmRiYSAxMDA2NDQKLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMKKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3Qvc2VsZnRlc3RfcnBzLmMKQEAgLTQsNiArNCw3IEBACiAgKi8KIAogI2luY2x1ZGUg
ImludGVsX2VuZ2luZV9wbS5oIgorI2luY2x1ZGUgImludGVsX2d0X2Nsay5oIgogI2luY2x1ZGUg
ImludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiaW50ZWxfcmM2LmgiCiAjaW5jbHVkZSAic2VsZnRl
c3RfcnBzLmgiCkBAIC02OSw3ICs3MCw4IEBAIHN0YXRpYyBpbnQgX19ycHNfdXBfaW50ZXJydXB0
KHN0cnVjdCBpbnRlbF9ycHMgKnJwcywKIAl9CiAKIAl0aW1lb3V0ID0gaW50ZWxfdW5jb3JlX3Jl
YWQodW5jb3JlLCBHRU42X1JQX1VQX0VJKTsKLQl0aW1lb3V0ID0gR1RfUE1fSU5URVJWQUxfVE9f
VVMoZW5naW5lLT5pOTE1LCB0aW1lb3V0KTsKKwl0aW1lb3V0ID0gaW50ZWxfZ3RfcG1faW50ZXJ2
YWxfdG9fbnMoZW5naW5lLT5ndCwgdGltZW91dCk7CisJdGltZW91dCAvPSAxMDAwOwogCiAJdXNs
ZWVwX3JhbmdlKDIgKiB0aW1lb3V0LCAzICogdGltZW91dCk7CiAJR0VNX0JVR19PTihpOTE1X3Jl
cXVlc3RfY29tcGxldGVkKHJxKSk7CkBAIC0xMjAsNyArMTIyLDggQEAgc3RhdGljIGludCBfX3Jw
c19kb3duX2ludGVycnVwdChzdHJ1Y3QgaW50ZWxfcnBzICpycHMsCiAJfQogCiAJdGltZW91dCA9
IGludGVsX3VuY29yZV9yZWFkKHVuY29yZSwgR0VONl9SUF9ET1dOX0VJKTsKLQl0aW1lb3V0ID0g
R1RfUE1fSU5URVJWQUxfVE9fVVMoZW5naW5lLT5pOTE1LCB0aW1lb3V0KTsKKwl0aW1lb3V0ID0g
aW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMoZW5naW5lLT5ndCwgdGltZW91dCk7CisJdGltZW91
dCAvPSAxMDAwOwogCiAJLyogRmx1c2ggYW55IHByZXZpb3VzIEVJICovCiAJdXNsZWVwX3Jhbmdl
KHRpbWVvdXQsIDIgKiB0aW1lb3V0KTsKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZGVidWdmcy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1Z2ZzLmMKaW5k
ZXggYWEzNWE1OWYxYzdkLi40YjNkMDY1MTAwYTAgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2k5MTVfZGVidWdmcy5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVi
dWdmcy5jCkBAIC0zMiw2ICszMiw3IEBACiAjaW5jbHVkZSA8ZHJtL2RybV9kZWJ1Z2ZzLmg+CiAK
ICNpbmNsdWRlICJnZW0vaTkxNV9nZW1fY29udGV4dC5oIgorI2luY2x1ZGUgImd0L2ludGVsX2d0
X2Nsay5oIgogI2luY2x1ZGUgImd0L2ludGVsX2d0X3BtLmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxf
Z3RfcmVxdWVzdHMuaCIKICNpbmNsdWRlICJndC9pbnRlbF9yZXNldC5oIgpAQCAtOTI2LDIxICs5
MjcsMzAgQEAgc3RhdGljIGludCBpOTE1X2ZyZXF1ZW5jeV9pbmZvKHN0cnVjdCBzZXFfZmlsZSAq
bSwgdm9pZCAqdW51c2VkKQogCQlzZXFfcHJpbnRmKG0sICJSUERFQ0xJTUlUOiAweCUwOHhcbiIs
IHJwZGVjbGltaXQpOwogCQlzZXFfcHJpbnRmKG0sICJSUE5TV1JFUTogJWRNSHpcbiIsIHJlcWYp
OwogCQlzZXFfcHJpbnRmKG0sICJDQUdGOiAlZE1IelxuIiwgY2FnZik7Ci0JCXNlcV9wcmludGYo
bSwgIlJQIENVUiBVUCBFSTogJWQgKCVkdXMpXG4iLAotCQkJICAgcnB1cGVpLCBHVF9QTV9JTlRF
UlZBTF9UT19VUyhkZXZfcHJpdiwgcnB1cGVpKSk7Ci0JCXNlcV9wcmludGYobSwgIlJQIENVUiBV
UDogJWQgKCVkdXMpXG4iLAotCQkJICAgcnBjdXJ1cCwgR1RfUE1fSU5URVJWQUxfVE9fVVMoZGV2
X3ByaXYsIHJwY3VydXApKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgUFJFViBVUDogJWQgKCVkdXMp
XG4iLAotCQkJICAgcnBwcmV2dXAsIEdUX1BNX0lOVEVSVkFMX1RPX1VTKGRldl9wcml2LCBycHBy
ZXZ1cCkpOworCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVAgRUk6ICVkICglZG5zKVxuIiwKKwkJ
CSAgIHJwdXBlaSwKKwkJCSAgIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKCZkZXZfcHJpdi0+
Z3QsIHJwdXBlaSkpOworCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgVVA6ICVkICglZHVuKVxuIiwK
KwkJCSAgIHJwY3VydXAsCisJCQkgICBpbnRlbF9ndF9wbV9pbnRlcnZhbF90b19ucygmZGV2X3By
aXYtPmd0LCBycGN1cnVwKSk7CisJCXNlcV9wcmludGYobSwgIlJQIFBSRVYgVVA6ICVkICglZG5z
KVxuIiwKKwkJCSAgIHJwcHJldnVwLAorCQkJICAgaW50ZWxfZ3RfcG1faW50ZXJ2YWxfdG9fbnMo
JmRldl9wcml2LT5ndCwgcnBwcmV2dXApKTsKIAkJc2VxX3ByaW50ZihtLCAiVXAgdGhyZXNob2xk
OiAlZCUlXG4iLAogCQkJICAgcnBzLT5wb3dlci51cF90aHJlc2hvbGQpOwogCi0JCXNlcV9wcmlu
dGYobSwgIlJQIENVUiBET1dOIEVJOiAlZCAoJWR1cylcbiIsCi0JCQkgICBycGRvd25laSwgR1Rf
UE1fSU5URVJWQUxfVE9fVVMoZGV2X3ByaXYsIHJwZG93bmVpKSk7Ci0JCXNlcV9wcmludGYobSwg
IlJQIENVUiBET1dOOiAlZCAoJWR1cylcbiIsCi0JCQkgICBycGN1cmRvd24sIEdUX1BNX0lOVEVS
VkFMX1RPX1VTKGRldl9wcml2LCBycGN1cmRvd24pKTsKLQkJc2VxX3ByaW50ZihtLCAiUlAgUFJF
ViBET1dOOiAlZCAoJWR1cylcbiIsCi0JCQkgICBycHByZXZkb3duLCBHVF9QTV9JTlRFUlZBTF9U
T19VUyhkZXZfcHJpdiwgcnBwcmV2ZG93bikpOworCQlzZXFfcHJpbnRmKG0sICJSUCBDVVIgRE9X
TiBFSTogJWQgKCVkbnMpXG4iLAorCQkJICAgcnBkb3duZWksCisJCQkgICBpbnRlbF9ndF9wbV9p
bnRlcnZhbF90b19ucygmZGV2X3ByaXYtPmd0LAorCQkJCQkJICAgICAgcnBkb3duZWkpKTsKKwkJ
c2VxX3ByaW50ZihtLCAiUlAgQ1VSIERPV046ICVkICglZG5zKVxuIiwKKwkJCSAgIHJwY3VyZG93
biwKKwkJCSAgIGludGVsX2d0X3BtX2ludGVydmFsX3RvX25zKCZkZXZfcHJpdi0+Z3QsCisJCQkJ
CQkgICAgICBycGN1cmRvd24pKTsKKwkJc2VxX3ByaW50ZihtLCAiUlAgUFJFViBET1dOOiAlZCAo
JWRucylcbiIsCisJCQkgICBycHByZXZkb3duLAorCQkJICAgaW50ZWxfZ3RfcG1faW50ZXJ2YWxf
dG9fbnMoJmRldl9wcml2LT5ndCwKKwkJCQkJCSAgICAgIHJwcHJldmRvd24pKTsKIAkJc2VxX3By
aW50ZihtLCAiRG93biB0aHJlc2hvbGQ6ICVkJSVcbiIsCiAJCQkgICBycHMtPnBvd2VyLmRvd25f
dGhyZXNob2xkKTsKIApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcu
aCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKaW5kZXggZWRkYTNmMjljOGFhLi5j
ZTI4Mjc4ZjRlNzkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaApAQCAtNDAxNCwzMSArNDAxNCw2
IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3QgcmVn
KQogI2RlZmluZSBHRU42X1JQX1NUQVRFX0NBUAlfTU1JTyhNQ0hCQVJfTUlSUk9SX0JBU0VfU05C
ICsgMHg1OTk4KQogI2RlZmluZSBCWFRfUlBfU1RBVEVfQ0FQICAgICAgICBfTU1JTygweDEzODE3
MCkKIAotLyoKLSAqIE1ha2UgdGhlc2UgYSBtdWx0aXBsZSBvZiBtYWdpYyAyNSB0byBhdm9pZCBT
TkIgKGVnLiBEZWxsIFhQUwotICogODMwMCkgZnJlZXppbmcgdXAgYXJvdW5kIEdQVSBoYW5ncy4g
TG9va3MgYXMgaWYgZXZlbgotICogc2NoZWR1bGluZy90aW1lciBpbnRlcnJ1cHRzIHN0YXJ0IG1p
c2JlaGF2aW5nIGlmIHRoZSBSUFMKLSAqIEVJL3RocmVzaG9sZHMgYXJlICJiYWQiLCBsZWFkaW5n
IHRvIGEgdmVyeSBzbHVnZ2lzaCBvciBldmVuCi0gKiBmcm96ZW4gbWFjaGluZS4KLSAqLwotI2Rl
ZmluZSBJTlRFUlZBTF8xXzI4X1VTKHVzKQlyb3VuZHVwKCgodXMpICogMTAwKSA+PiA3LCAyNSkK
LSNkZWZpbmUgSU5URVJWQUxfMV8zM19VUyh1cykJKCgodXMpICogMykgICA+PiAyKQotI2RlZmlu
ZSBJTlRFUlZBTF8wXzgzM19VUyh1cykJKCgodXMpICogNikgLyA1KQotI2RlZmluZSBHVF9JTlRF
UlZBTF9GUk9NX1VTKGRldl9wcml2LCB1cykgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSA/IFwK
LQkJCQkoSVNfR0VOOV9MUChkZXZfcHJpdikgPyBcCi0JCQkJSU5URVJWQUxfMF84MzNfVVModXMp
IDogXAotCQkJCUlOVEVSVkFMXzFfMzNfVVModXMpKSA6IFwKLQkJCQlJTlRFUlZBTF8xXzI4X1VT
KHVzKSkKLQotI2RlZmluZSBJTlRFUlZBTF8xXzI4X1RPX1VTKGludGVydmFsKSAgKCgoaW50ZXJ2
YWwpIDw8IDcpIC8gMTAwKQotI2RlZmluZSBJTlRFUlZBTF8xXzMzX1RPX1VTKGludGVydmFsKSAg
KCgoaW50ZXJ2YWwpIDw8IDIpIC8gMykKLSNkZWZpbmUgSU5URVJWQUxfMF84MzNfVE9fVVMoaW50
ZXJ2YWwpICgoKGludGVydmFsKSAqIDUpICAvIDYpCi0jZGVmaW5lIEdUX1BNX0lOVEVSVkFMX1RP
X1VTKGRldl9wcml2LCBpbnRlcnZhbCkgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gOSA/IFwKLSAg
ICAgICAgICAgICAgICAgICAgICAgICAgIChJU19HRU45X0xQKGRldl9wcml2KSA/IFwKLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgIElOVEVSVkFMXzBfODMzX1RPX1VTKGludGVydmFsKSA6IFwK
LSAgICAgICAgICAgICAgICAgICAgICAgICAgIElOVEVSVkFMXzFfMzNfVE9fVVMoaW50ZXJ2YWwp
KSA6IFwKLSAgICAgICAgICAgICAgICAgICAgICAgICAgIElOVEVSVkFMXzFfMjhfVE9fVVMoaW50
ZXJ2YWwpKQotCiAvKgogICogTG9naWNhbCBDb250ZXh0IHJlZ3MKICAqLwotLSAKMi4yMC4xCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
