Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A195300EF3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 22:34:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 604A789A6D;
	Fri, 22 Jan 2021 21:34:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (unknown [77.68.26.236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 599E98992E;
 Fri, 22 Jan 2021 21:34:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 23676472-1500050 
 for multiple; Fri, 22 Jan 2021 21:34:04 +0000
From: Chris Wilson <chris@chris-wilson.co.uk>
To: igt-dev@lists.freedesktop.org
Date: Fri, 22 Jan 2021 21:34:04 +0000
Message-Id: <20210122213404.1146945-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t] i915: Exercise sysfs client properties
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
Cc: intel-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

V2Ugc3RvcmUgZXZlcnkgY2xpZW50IG5hbWUsIHBpZCBhbmQgcnVudGltZSB1bmRlciBzeXNmcy4g
QmV0dGVyIGNoZWNrCnRoYXQgbWF0Y2hlcyB3aXRoIHRoZSBhY3R1YWwgY2xpZW50LgoKU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogbGli
L2lndF9zeXNmcy5jICAgICAgICAgICAgfCAgMzYgKysrKwogbGliL2lndF9zeXNmcy5oICAgICAg
ICAgICAgfCAgIDMgKwogdGVzdHMvTWFrZWZpbGUuc291cmNlcyAgICAgfCAgIDMgKwogdGVzdHMv
aTkxNS9zeXNmc19jbGllbnRzLmMgfCAzNjEgKysrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKwogdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgfCAgIDEgKwogNSBmaWxlcyBjaGFu
Z2VkLCA0MDQgaW5zZXJ0aW9ucygrKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHRlc3RzL2k5MTUvc3lz
ZnNfY2xpZW50cy5jCgpkaWZmIC0tZ2l0IGEvbGliL2lndF9zeXNmcy5jIGIvbGliL2lndF9zeXNm
cy5jCmluZGV4IDZhYWZlNTM0OS4uZTczNDE0M2JhIDEwMDY0NAotLS0gYS9saWIvaWd0X3N5c2Zz
LmMKKysrIGIvbGliL2lndF9zeXNmcy5jCkBAIC0zNzgsNiArMzc4LDQyIEBAIHVpbnQzMl90IGln
dF9zeXNmc19nZXRfdTMyKGludCBkaXIsIGNvbnN0IGNoYXIgKmF0dHIpCiAJcmV0dXJuIHJlc3Vs
dDsKIH0KIAorLyoqCisgKiBpZ3Rfc3lzZnNfZ2V0X3U2NDoKKyAqIEBkaXI6IGRpcmVjdG9yeSBm
b3IgdGhlIGRldmljZSBmcm9tIGlndF9zeXNmc19vcGVuKCkKKyAqIEBhdHRyOiBuYW1lIG9mIHRo
ZSBzeXNmcyBub2RlIHRvIG9wZW4KKyAqCisgKiBDb252ZW5pZW5jZSB3cmFwcGVyIHRvIHJlYWQg
YSB1bnNpZ25lZCA2NGJpdCBpbnRlZ2VyIGZyb20gYSBzeXNmcyBmaWxlLgorICoKKyAqIFJldHVy
bnM6CisgKiBUaGUgdmFsdWUgcmVhZC4KKyAqLwordWludDY0X3QgaWd0X3N5c2ZzX2dldF91NjQo
aW50IGRpciwgY29uc3QgY2hhciAqYXR0cikKK3sKKwl1aW50NjRfdCByZXN1bHQ7CisKKwlpZiAo
aWd0X3N5c2ZzX3NjYW5mKGRpciwgYXR0ciwgIiUiUFJJdTY0LCAmcmVzdWx0KSAhPSAxKQorCQly
ZXR1cm4gMDsKKworCXJldHVybiByZXN1bHQ7Cit9CisKKy8qKgorICogaWd0X3N5c2ZzX3NldF91
NjQ6CisgKiBAZGlyOiBkaXJlY3RvcnkgZm9yIHRoZSBkZXZpY2UgZnJvbSBpZ3Rfc3lzZnNfb3Bl
bigpCisgKiBAYXR0cjogbmFtZSBvZiB0aGUgc3lzZnMgbm9kZSB0byBvcGVuCisgKiBAdmFsdWU6
IHZhbHVlIHRvIHNldAorICoKKyAqIENvbnZlbmllbmNlIHdyYXBwZXIgdG8gd3JpdGUgYSB1bnNp
Z25lZCA2NGJpdCBpbnRlZ2VyIHRvIGEgc3lzZnMgZmlsZS4KKyAqCisgKiBSZXR1cm5zOgorICog
VHJ1ZSBpZiBzdWNjZXNzZnVsbHkgd3JpdHRlbgorICovCitib29sIGlndF9zeXNmc19zZXRfdTY0
KGludCBkaXIsIGNvbnN0IGNoYXIgKmF0dHIsIHVpbnQ2NF90IHZhbHVlKQoreworCXJldHVybiBp
Z3Rfc3lzZnNfcHJpbnRmKGRpciwgYXR0ciwgIiUiUFJJdTY0LCB2YWx1ZSkgPiAwOworfQorCiAv
KioKICAqIGlndF9zeXNmc19zZXRfdTMyOgogICogQGRpcjogZGlyZWN0b3J5IGZvciB0aGUgZGV2
aWNlIGZyb20gaWd0X3N5c2ZzX29wZW4oKQpkaWZmIC0tZ2l0IGEvbGliL2lndF9zeXNmcy5oIGIv
bGliL2lndF9zeXNmcy5oCmluZGV4IDY0OTM1YTVjYS4uNTY3NDFhMGEzIDEwMDY0NAotLS0gYS9s
aWIvaWd0X3N5c2ZzLmgKKysrIGIvbGliL2lndF9zeXNmcy5oCkBAIC00Nyw2ICs0Nyw5IEBAIGlu
dCBpZ3Rfc3lzZnNfcHJpbnRmKGludCBkaXIsIGNvbnN0IGNoYXIgKmF0dHIsIGNvbnN0IGNoYXIg
KmZtdCwgLi4uKQogdWludDMyX3QgaWd0X3N5c2ZzX2dldF91MzIoaW50IGRpciwgY29uc3QgY2hh
ciAqYXR0cik7CiBib29sIGlndF9zeXNmc19zZXRfdTMyKGludCBkaXIsIGNvbnN0IGNoYXIgKmF0
dHIsIHVpbnQzMl90IHZhbHVlKTsKIAordWludDY0X3QgaWd0X3N5c2ZzX2dldF91NjQoaW50IGRp
ciwgY29uc3QgY2hhciAqYXR0cik7Citib29sIGlndF9zeXNmc19zZXRfdTY0KGludCBkaXIsIGNv
bnN0IGNoYXIgKmF0dHIsIHVpbnQ2NF90IHZhbHVlKTsKKwogYm9vbCBpZ3Rfc3lzZnNfZ2V0X2Jv
b2xlYW4oaW50IGRpciwgY29uc3QgY2hhciAqYXR0cik7CiBib29sIGlndF9zeXNmc19zZXRfYm9v
bGVhbihpbnQgZGlyLCBjb25zdCBjaGFyICphdHRyLCBib29sIHZhbHVlKTsKIApkaWZmIC0tZ2l0
IGEvdGVzdHMvTWFrZWZpbGUuc291cmNlcyBiL3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMKaW5kZXgg
MWMyMjdlNzUwLi4zZjY2M2ZlN2UgMTAwNjQ0Ci0tLSBhL3Rlc3RzL01ha2VmaWxlLnNvdXJjZXMK
KysrIGIvdGVzdHMvTWFrZWZpbGUuc291cmNlcwpAQCAtMTE0LDYgKzExNCw5IEBAIFRFU1RTX3By
b2dzID0gXAogVEVTVFNfcHJvZ3MgKz0gYXBpX2ludGVsX2JiCiBhcGlfaW50ZWxfYmJfU09VUkNF
UyA9IGk5MTUvYXBpX2ludGVsX2JiLmMKIAorVEVTVFNfcHJvZ3MgKz0gc3lzZnNfY2xpZW50cwor
c3lzZnNfY2xpZW50c19TT1VSQ0VTID0gaTkxNS9zeXNmc19jbGllbnRzLmMKKwogVEVTVFNfcHJv
Z3MgKz0gc3lzZnNfZGVmYXVsdHMKIHN5c2ZzX2RlZmF1bHRzX1NPVVJDRVMgPSBpOTE1L3N5c2Zz
X2RlZmF1bHRzLmMKIApkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9zeXNmc19jbGllbnRzLmMgYi90
ZXN0cy9pOTE1L3N5c2ZzX2NsaWVudHMuYwpuZXcgZmlsZSBtb2RlIDEwMDY0NAppbmRleCAwMDAw
MDAwMDAuLjNhNWM0Y2VkZgotLS0gL2Rldi9udWxsCisrKyBiL3Rlc3RzL2k5MTUvc3lzZnNfY2xp
ZW50cy5jCkBAIC0wLDAgKzEsMzYxIEBACisvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlU
ICovCisvKgorICogQ29weXJpZ2h0IMKpIDIwMjEgSW50ZWwgQ29ycG9yYXRpb24KKyAqLworCisj
aW5jbHVkZSA8Y3R5cGUuaD4KKyNpbmNsdWRlIDxkaXJlbnQuaD4KKyNpbmNsdWRlIDxlcnJuby5o
PgorI2luY2x1ZGUgPGZjbnRsLmg+CisjaW5jbHVkZSA8aW50dHlwZXMuaD4KKyNpbmNsdWRlIDxz
eXMvc3RhdC5oPgorI2luY2x1ZGUgPHN5cy90eXBlcy5oPgorI2luY2x1ZGUgPHVuaXN0ZC5oPgor
CisjaW5jbHVkZSAiZHJtdGVzdC5oIgorI2luY2x1ZGUgImk5MTUvZ2VtLmgiCisjaW5jbHVkZSAi
aTkxNS9nZW1fY29udGV4dC5oIgorI2luY2x1ZGUgImk5MTUvZ2VtX2VuZ2luZV90b3BvbG9neS5o
IgorI2luY2x1ZGUgImlndF9hdXguaCIKKyNpbmNsdWRlICJpZ3RfZHVtbXlsb2FkLmgiCisjaW5j
bHVkZSAiaWd0X3N5c2ZzLmgiCisjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIKKworc3RhdGlj
IHZvaWQgcGlkbmFtZShpbnQgaTkxNSwgaW50IGNsaWVudHMpCit7CisJc3RydWN0IGRpcmVudCAq
ZGU7CisJaW50IHN2WzJdLCBydlsyXTsKKwljaGFyIGJ1ZlsyODBdOworCWludCBtZSA9IC0xOwor
CWxvbmcgY291bnQ7CisJcGlkX3QgcGlkOworCURJUiAqZGlyOworCWludCBsZW47CisKKwlkaXIg
PSBmZG9wZW5kaXIoZHVwKGNsaWVudHMpKTsKKwlpZ3RfYXNzZXJ0KGRpcik7CisJcmV3aW5kZGly
KGRpcik7CisKKwljb3VudCA9IDA7CisJd2hpbGUgKChkZSA9IHJlYWRkaXIoZGlyKSkpIHsKKwkJ
aWYgKCFpc2RpZ2l0KGRlLT5kX25hbWVbMF0pKQorCQkJY29udGludWU7CisKKwkJc25wcmludGYo
YnVmLCBzaXplb2YoYnVmKSwgIiVzL25hbWUiLCBkZS0+ZF9uYW1lKTsKKwkJbGVuID0gaWd0X3N5
c2ZzX3JlYWQoY2xpZW50cywgYnVmLCBidWYsIHNpemVvZihidWYpKTsKKwkJaWd0X2Fzc2VydF9m
KGxlbiA+IDAsICJmYWlsZWQgdG8gb3BlbiAnJXMvbmFtZSdcbiIsIGRlLT5kX25hbWUpOworCQli
dWZbbGVuIC0gMV0gPSAnXDAnOworCQlpZ3RfZGVidWcoIiVzOiAlc1xuIiwgZGUtPmRfbmFtZSwg
YnVmKTsKKworCQkvKiBJZ25vcmUgY2xvc2VkIGNsaWVudHMgY3JlYXRlZCBieSBkcm1fZHJpdmVy
X29wZW4oKSAqLworCQlpZiAoKmJ1ZiA9PSAnPCcpCisJCQljb250aW51ZTsKKworCQljbG9zZSht
ZSk7CisJCW1lID0gb3BlbmF0KGNsaWVudHMsIGRlLT5kX25hbWUsIE9fRElSRUNUT1JZIHwgT19S
RE9OTFkpOworCQljb3VudCsrOworCX0KKwljbG9zZWRpcihkaXIpOworCisJLyogV2UgZXhwZWN0
IHRoZXJlIHRvIGJlIG9ubHkgdGhlIHNpbmdsZSBjbGllbnQgKHVzKSBydW5uaW5nICovCisJaWd0
X2Fzc2VydF9lcShjb3VudCwgMSk7CisJaWd0X2Fzc2VydChtZSA+PSAwKTsKKworCWxlbiA9IGln
dF9zeXNmc19yZWFkKG1lLCAibmFtZSIsIGJ1Ziwgc2l6ZW9mKGJ1ZikpOworCWlndF9hc3NlcnQo
bGVuID4gMCk7CisJYnVmW2xlbiAtIDFdID0gJ1wwJzsKKworCWlndF9pbmZvKCJNeSBuYW1lOiAl
c1xuIiwgYnVmKTsKKwlpZ3RfYXNzZXJ0KHN0cmNtcChidWYsIGlndF90ZXN0X25hbWUoKSkgPT0g
MCk7CisKKwlpZ3RfYXNzZXJ0KHBpcGUoc3YpID09IDApOworCWlndF9hc3NlcnQocGlwZShydikg
PT0gMCk7CisKKwkvKiBJZiBnaXZlIG91ciBmZCB0byBzb21lb25lIGVsc2UsIHRoZXkgdGFrZSBv
dmVyIG93bmVyc2hpcCBvZiBjbGllbnQgKi8KKwlpZ3RfZm9yayhjaGlsZCwgMSkgeworCQlyZWFk
KHN2WzBdLCAmcGlkLCBzaXplb2YocGlkKSk7CisKKwkJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1
LCBnZW1fY29udGV4dF9jcmVhdGUoaTkxNSkpOworCisJCXBpZCA9IGdldHBpZCgpOworCQl3cml0
ZShydlsxXSwgJnBpZCwgc2l6ZW9mKHBpZCkpOworCX0KKwljbG9zZShzdlswXSk7CisJY2xvc2Uo
cnZbMV0pOworCisJLyogQ2hpbGQgZXhpc3RzLCBidXQgbm90IHlldCBydW5uaW5nLCB3ZSBzdGls
bCBvd24gdGhlIGNsaWVudCAqLworCWxlbiA9IGlndF9zeXNmc19yZWFkKG1lLCAicGlkIiwgYnVm
LCBzaXplb2YoYnVmKSk7CisJaWd0X2Fzc2VydChsZW4gPiAwKTsKKwlidWZbbGVuIC0gMV0gPSAn
XDAnOworCisJcGlkID0gZ2V0cGlkKCk7CisJaWd0X2luZm8oIk15IHBpZDogJXNcbiIsIGJ1Zik7
CisJaWd0X2Fzc2VydF9lcShhdG9pKGJ1ZiksIHBpZCk7CisKKwkvKiBSZWxlYXNlIGFuZCB3YWl0
IGZvciB0aGUgY2hpbGQgKi8KKwlpZ3RfYXNzZXJ0X2VxKHdyaXRlKHN2WzFdLCAmcGlkLCBzaXpl
b2YocGlkKSksIHNpemVvZihwaWQpKTsKKwlpZ3RfYXNzZXJ0X2VxKHJlYWQocnZbMF0sICZwaWQs
IHNpemVvZihwaWQpKSwgc2l6ZW9mKHBpZCkpOworCisJLyogTm93IGNoaWxkIG93bnMgdGhlIGNs
aWVudCBhbmQgcGlkIHNob3VsZCBiZSB1cGRhdGVkIHRvIG1hdGNoICovCisJbGVuID0gaWd0X3N5
c2ZzX3JlYWQobWUsICJwaWQiLCBidWYsIHNpemVvZihidWYpKTsKKwlpZ3RfYXNzZXJ0KGxlbiA+
IDApOworCWJ1ZltsZW4gLSAxXSA9ICdcMCc7CisKKwlpZ3RfaW5mbygiTmV3IHBpZDogJXNcbiIs
IGJ1Zik7CisJaWd0X2Fzc2VydF9lcShhdG9pKGJ1ZiksIHBpZCk7CisJaWd0X3dhaXRjaGlsZHJl
bigpOworCisJLyogQ2hpbGQgaGFzIGRlZmluaXRlbHkgZ29uZSwgYnV0IHRoZSBjbGllbnQgc2hv
dWxkIHJlbWFpbiAqLworCWxlbiA9IGlndF9zeXNmc19yZWFkKG1lLCAicGlkIiwgYnVmLCBzaXpl
b2YoYnVmKSk7CisJaWd0X2Fzc2VydChsZW4gPiAwKTsKKwlidWZbbGVuIC0gMV0gPSAnXDAnOwor
CisJaWd0X2luZm8oIk9sZCBwaWQ6ICVzXG4iLCBidWYpOworCWlndF9hc3NlcnRfZXEoYXRvaShi
dWYpLCBwaWQpOworCisJY2xvc2Uoc3ZbMV0pOworCWNsb3NlKHJ2WzBdKTsKKwljbG9zZShtZSk7
Cit9CisKK3N0YXRpYyBsb25nIGNvdW50X2NsaWVudHMoaW50IGNsaWVudHMpCit7CisJc3RydWN0
IGRpcmVudCAqZGU7CisJbG9uZyBjb3VudCA9IDA7CisJY2hhciBidWZbMjgwXTsKKwlESVIgKmRp
cjsKKworCWRpciA9IGZkb3BlbmRpcihkdXAoY2xpZW50cykpOworCWlndF9hc3NlcnQoZGlyKTsK
KwlyZXdpbmRkaXIoZGlyKTsKKworCXdoaWxlICgoZGUgPSByZWFkZGlyKGRpcikpKSB7CisJCWlu
dCBsZW47CisKKwkJaWYgKCFpc2RpZ2l0KGRlLT5kX25hbWVbMF0pKQorCQkJY29udGludWU7CisK
KwkJc25wcmludGYoYnVmLCBzaXplb2YoYnVmKSwgIiVzL25hbWUiLCBkZS0+ZF9uYW1lKTsKKwkJ
bGVuID0gaWd0X3N5c2ZzX3JlYWQoY2xpZW50cywgYnVmLCBidWYsIHNpemVvZihidWYpKTsKKwkJ
aWYgKGxlbiA8IDApCisJCQljb250aW51ZTsKKworCQljb3VudCArPSAqYnVmICE9ICc8JzsKKwl9
CisJY2xvc2VkaXIoZGlyKTsKKworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIHZvaWQgY3Jl
YXRlKGludCBpOTE1LCBpbnQgY2xpZW50cykKK3sKKwlpbnQgZmRbMTZdOworCisJLyogRWFjaCBu
ZXcgb3BlbigiL2Rldi9kcmkvY2FyZE4iKSBpcyBhIG5ldyBjbGllbnQgKi8KKwlpZ3RfYXNzZXJ0
X2VxKGNvdW50X2NsaWVudHMoY2xpZW50cyksIDEpOworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJS
QVlfU0laRShmZCk7IGkrKykgeworCQlmZFtpXSA9IGdlbV9yZW9wZW5fZHJpdmVyKGk5MTUpOwor
CQlpZ3RfYXNzZXJ0X2VxKGNvdW50X2NsaWVudHMoY2xpZW50cyksIGkgKyAyKTsKKwl9CisKKwlm
b3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUoZmQpOyBpKyspCisJCWNsb3NlKGZkW2ldKTsK
KworCS8qIENsZWFudXAgZGVsYXllZCBiZWhpbmQgcmN1ICovCisJaWd0X3VudGlsX3RpbWVvdXQo
MzApIHsKKwkJdXNsZWVwKDApOworCQlpZiAoY291bnRfY2xpZW50cyhjbGllbnRzKSA9PSAxKQor
CQkJYnJlYWs7CisJCXVzbGVlcCgxMDAwMCk7CisJfQorCWlndF9hc3NlcnRfZXEoY291bnRfY2xp
ZW50cyhjbGllbnRzKSwgMSk7Cit9CisKK3N0YXRpYyBpbnQgZmluZF9tZShpbnQgY2xpZW50cywg
cGlkX3QgcGlkKQoreworCXN0cnVjdCBkaXJlbnQgKmRlOworCWNoYXIgYnVmWzI4MF07CisJaW50
IG1lID0gLTE7CisJRElSICpkaXI7CisKKwlkaXIgPSBmZG9wZW5kaXIoZHVwKGNsaWVudHMpKTsK
KwlpZ3RfYXNzZXJ0KGRpcik7CisJcmV3aW5kZGlyKGRpcik7CisKKwl3aGlsZSAoKGRlID0gcmVh
ZGRpcihkaXIpKSkgeworCQlpbnQgcmV0OworCisJCWlmICghaXNkaWdpdChkZS0+ZF9uYW1lWzBd
KSkKKwkJCWNvbnRpbnVlOworCisJCXNucHJpbnRmKGJ1Ziwgc2l6ZW9mKGJ1ZiksICIlcy9waWQi
LCBkZS0+ZF9uYW1lKTsKKwkJcmV0ID0gaWd0X3N5c2ZzX3JlYWQoY2xpZW50cywgYnVmLCBidWYs
IHNpemVvZihidWYpKTsKKwkJaWd0X2Fzc2VydF9mKHJldCA+IDAsICJmYWlsZWQgdG8gb3BlbiAn
JXMvcGlkJ1xuIiwgZGUtPmRfbmFtZSk7CisJCWlmIChhdG9pKGJ1ZikgIT0gcGlkKQorCQkJY29u
dGludWU7CisKKwkJbWUgPSBvcGVuYXQoY2xpZW50cywgZGUtPmRfbmFtZSwgT19ESVJFQ1RPUlkg
fCBPX1JET05MWSk7CisJCWJyZWFrOworCX0KKworCWNsb3NlZGlyKGRpcik7CisJcmV0dXJuIG1l
OworfQorCisjZGVmaW5lIE1BWF9DTEFTUyA2NAorc3RhdGljIGludCByZWFkX3J1bnRpbWUoaW50
IGNsaWVudCwgdWludDY0X3QgKnJ1bnRpbWUpCit7CisJaW50IGZkID0gb3BlbmF0KGNsaWVudCwg
ImJ1c3kiLCBPX0RJUkVDVE9SWSB8IE9fUkRPTkxZKTsKKwlESVIgKmRpciA9IGZkb3BlbmRpcihm
ZCk7CisJc3RydWN0IGRpcmVudCAqZGU7CisJaW50IGNvdW50ID0gMDsKKworCW1lbXNldChydW50
aW1lLCAwLCBzaXplb2YoKnJ1bnRpbWUpICogTUFYX0NMQVNTKTsKKwl3aGlsZSAoKGRlID0gcmVh
ZGRpcihkaXIpKSkgeworCQlpbnQgY2xhc3M7CisKKwkJaWYgKCFpc2RpZ2l0KGRlLT5kX25hbWVb
MF0pKQorCQkJY29udGludWU7CisKKwkJY2xhc3MgPSBhdG9pKGRlLT5kX25hbWUpOworCQlpZ3Rf
YXNzZXJ0KGNsYXNzIDwgTUFYX0NMQVNTKTsKKwkJcnVudGltZVtjbGFzc10gPSBpZ3Rfc3lzZnNf
Z2V0X3U2NChmZCwgZGUtPmRfbmFtZSk7CisKKwkJY291bnQgKz0gcnVudGltZVtjbGFzc10gIT0g
MDsKKwl9CisJY2xvc2VkaXIoZGlyKTsKKworCXJldHVybiBjb3VudDsKK30KKworc3RhdGljIHVp
bnQ2NF90IG1lYXN1cmVkX3VzbGVlcCh1bnNpZ25lZCBpbnQgdXNlYykKK3sKKwlzdHJ1Y3QgdGlt
ZXNwZWMgdHY7CisJdW5zaWduZWQgaW50IHNsZXB0OworCisJc2xlcHQgPSBpZ3RfbnNlY19lbGFw
c2VkKG1lbXNldCgmdHYsIDAsIHNpemVvZih0dikpKTsKKwlpZ3RfYXNzZXJ0KHNsZXB0ID09IDAp
OworCWRvIHsKKwkJdXNsZWVwKHVzZWMgLSBzbGVwdCk7CisJCXNsZXB0ID0gaWd0X25zZWNfZWxh
cHNlZCgmdHYpIC8gMTAwMDsKKwl9IHdoaWxlIChzbGVwdCA8IHVzZWMpOworCisJcmV0dXJuIGln
dF9uc2VjX2VsYXBzZWQoJnR2KTsKK30KKworc3RhdGljIHZvaWQgYnVzeShpbnQgaTkxNSwgaW50
IGNsaWVudHMpCit7CisJY29uc3Qgc3RydWN0IGludGVsX2V4ZWN1dGlvbl9lbmdpbmUyICplOwor
CXVpbnQ2NF90IGFjdGl2ZVtNQVhfQ0xBU1NdOworCXVpbnQ2NF90IGlkbGVbTUFYX0NMQVNTXTsK
Kwl1aW50NjRfdCBvbGRbTUFYX0NMQVNTXTsKKwl1aW50NjRfdCBjbGFzc2VzID0gMDsKKwlpbnQg
ZXhwZWN0ID0gMDsKKwlpbnQ2NF90IGRlbGF5OworCWlndF9zcGluX3QgKnNwaW47CisJaW50IG1l
OworCisJLyogQ3JlYXRlIGEgZnJlc2ggY2xpZW50IHdpdGggMCBydW50aW1lICovCisJaTkxNSA9
IGdlbV9yZW9wZW5fZHJpdmVyKGk5MTUpOworCisJbWUgPSBmaW5kX21lKGNsaWVudHMsIGdldHBp
ZCgpKTsKKwlpZ3RfYXNzZXJ0KG1lICE9IC0xKTsKKwlpZ3RfcmVxdWlyZShmYWNjZXNzYXQobWUs
ICJidXN5IiwgMCwgRl9PSykgPT0gMCk7CisKKwlzcGluID0gaWd0X3NwaW5fbmV3KGk5MTUsCisJ
CQkgICAgZ2VtX2NvbnRleHRfY3JlYXRlKGk5MTUpLAorCQkJICAgIC5mbGFncyA9IElHVF9TUElO
X1BPTExfUlVOKTsKKwlfX2Zvcl9lYWNoX3BoeXNpY2FsX2VuZ2luZShpOTE1LCBlKSB7CisJCXNw
aW4tPmV4ZWNidWYuZmxhZ3MgJj0gfjYzOworCQlzcGluLT5leGVjYnVmLmZsYWdzIHw9IGUtPmZs
YWdzOworCQlnZW1fZXhlY2J1ZihpOTE1LCAmc3Bpbi0+ZXhlY2J1Zik7CisKKwkJaWYgKCEoY2xh
c3NlcyAmICgxdWxsIDw8IGUtPmNsYXNzKSkpCisJCQlleHBlY3QrKzsKKwkJY2xhc3NlcyB8PSAx
dWxsIDw8IGUtPmNsYXNzOworCX0KKwlpZ3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVkKHNw
aW4pOworCisJZGVsYXkgPSAtNTAwMDAwOyAvKiA1MDB1cyBzbGFjayAqLworCW1lbXNldChvbGQs
IDAsIHNpemVvZihvbGQpKTsKKwlmb3IgKGludCBwYXNzID0gMDsgcGFzcyA8IDU7IHBhc3MrKykg
eworCQlkZWxheSArPSBtZWFzdXJlZF91c2xlZXAoMTAwMCk7CisJCWlndF9kZWJ1ZygiZGVsYXk6
ICUnIlBSSXU2NCJuc1xuIiwgZGVsYXkpOworCisJCS8qIENoZWNrIHRoYXQgd2UgYWNjdW11bGF0
ZSB0aGUgcnVudGltZSwgd2hpbGUgYWN0aXZlICovCisJCWlndF9hc3NlcnRfZXEocmVhZF9ydW50
aW1lKG1lLCBhY3RpdmUpLCBleHBlY3QpOworCQlmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJ
WkUoYWN0aXZlKTsgaSsrKSB7CisJCQlpZiAoIWFjdGl2ZVtpXSkKKwkJCQljb250aW51ZTsKKwor
CQkJaWd0X2luZm8oImFjdGl2ZVslZF06ICUnIlBSSXU2NCJuc1xuIiwgaSwgYWN0aXZlW2ldKTsK
KwkJCWlndF9hc3NlcnQoYWN0aXZlW2ldID4gb2xkW2ldKTsgLyogbW9ub3RvbmljICovCisJCQlp
Z3RfYXNzZXJ0KGFjdGl2ZVtpXSA+IGRlbGF5KTsgLyogd2l0aGluIHJlYXNvbiAqLworCQl9CisJ
fQorCisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisKKwkvKiBBbmQgYWdhaW4gbm93IGlkbGUg
Ki8KKwlpZ3RfYXNzZXJ0X2VxKHJlYWRfcnVudGltZShtZSwgaWRsZSksIGV4cGVjdCk7CisJZm9y
IChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGlkbGUpOyBpKyspIHsKKwkJaWYgKCFpZGxlW2ld
KQorCQkJY29udGludWU7CisKKwkJaWd0X2luZm8oImlkbGVbJWRdOiAlJyJQUkl1NjQibnNcbiIs
IGksIGlkbGVbaV0pOworCQlpZ3RfYXNzZXJ0KGlkbGVbaV0gPj0gYWN0aXZlW2ldKTsKKwl9CisK
KwlnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIHNwaW4tPmV4ZWNidWYucnN2ZDEpOworCWlndF9z
cGluX2ZyZWUoaTkxNSwgc3Bpbik7CisKKwkvKiBBbmQgZmluYWxseSBhZnRlciB0aGUgZXhlY3V0
aW5nIGNvbnRleHQgaXMgbm8gbW9yZSAqLworCWlndF9hc3NlcnRfZXEocmVhZF9ydW50aW1lKG1l
LCBvbGQpLCBleHBlY3QpOworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShvbGQpOyBp
KyspIHsKKwkJaWYgKCFvbGRbaV0pCisJCQljb250aW51ZTsKKworCQlpZ3RfaW5mbygib2xkWyVk
XTogJSciUFJJdTY0Im5zXG4iLCBpLCBvbGRbaV0pOworCQlpZ3RfYXNzZXJ0X2VxX3U2NChvbGRb
aV0sIGlkbGVbaV0pOworCX0KKworCWNsb3NlKGk5MTUpOworfQorCitpZ3RfbWFpbgoreworCWlu
dCBpOTE1ID0gLTEsIGNsaWVudHMgPSAtMTsKKworCWlndF9maXh0dXJlIHsKKwkJaW50IHN5czsK
KworCQkvKiBEb24ndCBhbGxvdyBbdG9vIG1hbnldIGV4dHJhIGNsaWVudHMgdG8gYmUgb3BlbmVk
ICovCisJCWk5MTUgPSBfX2RybV9vcGVuX2RyaXZlcihEUklWRVJfSU5URUwpOworCQlpZ3RfcmVx
dWlyZV9nZW0oaTkxNSk7CisKKwkJc3lzID0gaWd0X3N5c2ZzX29wZW4oaTkxNSk7CisJCWlndF9y
ZXF1aXJlKHN5cyAhPSAtMSk7CisKKwkJY2xpZW50cyA9IG9wZW5hdChzeXMsICJjbGllbnRzIiwg
T19SRE9OTFkpOworCQlpZ3RfcmVxdWlyZShjbGllbnRzICE9IC0xKTsKKworCQljbG9zZShzeXMp
OworCX0KKworCWlndF9zdWJ0ZXN0KCJwaWRuYW1lIikKKwkJcGlkbmFtZShpOTE1LCBjbGllbnRz
KTsKKworCWlndF9zdWJ0ZXN0KCJjcmVhdGUiKQorCQljcmVhdGUoaTkxNSwgY2xpZW50cyk7CisK
KwlpZ3Rfc3VidGVzdCgiYnVzeSIpIHsKKwkJaWd0X2ZvcmsoY2hpbGQsIDEpCisJCQlidXN5KGk5
MTUsIGNsaWVudHMpOworCQlpZ3Rfd2FpdGNoaWxkcmVuKCk7CisJfQorCisJaWd0X2ZpeHR1cmUg
eworCQljbG9zZShjbGllbnRzKTsKKwkJY2xvc2UoaTkxNSk7CisJfQorfQpkaWZmIC0tZ2l0IGEv
dGVzdHMvbWVzb24uYnVpbGQgYi90ZXN0cy9tZXNvbi5idWlsZAppbmRleCBmZjkyNGZmOTkuLjgy
NWUwMTgzMyAxMDA2NDQKLS0tIGEvdGVzdHMvbWVzb24uYnVpbGQKKysrIGIvdGVzdHMvbWVzb24u
YnVpbGQKQEAgLTIzNiw2ICsyMzYsNyBAQCBpOTE1X3Byb2dzID0gWwogCSdpOTE1X3F1ZXJ5JywK
IAknaTkxNV9zZWxmdGVzdCcsCiAJJ2k5MTVfc3VzcGVuZCcsCisJJ3N5c2ZzX2NsaWVudHMnLAog
CSdzeXNmc19kZWZhdWx0cycsCiAJJ3N5c2ZzX2hlYXJ0YmVhdF9pbnRlcnZhbCcsCiAJJ3N5c2Zz
X3ByZWVtcHRfdGltZW91dCcsCi0tIAoyLjMwLjAKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
