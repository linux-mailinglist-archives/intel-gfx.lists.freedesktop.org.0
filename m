Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43369E081D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2019 17:59:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A5D6E871;
	Tue, 22 Oct 2019 15:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF5A46E86B
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Oct 2019 15:59:31 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18927723-1500050 
 for multiple; Tue, 22 Oct 2019 16:59:20 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Oct 2019 16:59:05 +0100
Message-Id: <20191022155907.32203-8-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191022155907.32203-1-chris@chris-wilson.co.uk>
References: <20191022155907.32203-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 08/10] i915: Exercise sysfs heartbeat
 controls
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

V2UgW3dpbGxdIGV4cG9zZSB2YXJpb3VzIHBlci1lbmdpbmUgc2NoZWR1bGluZyBjb250cm9scy4g
T25lIG9mIHdoaWNoLAonaGVhcnRiZWF0X2R1cmF0aW9uX21zJywgZGVmaW5lcyBob3cgb2Z0ZW4g
d2Ugc2VuZCBhIGhlYXJ0YmVhdCBkb3duIHRoZQplbmdpbmUgdG8gY2hlY2sgdXBvbiB0aGUgaGVh
bHRoIG9mIHRoZSBlbmdpbmUuIElmIGEgaGVhcnRiZWF0IGRvZXMgbm90CmNvbXBsZXRlIHdpdGhp
biB0aGUgaW50ZXJ2YWwgKG9yIHR3byksIHRoZSBlbmdpbmUgaXMgZGVjbGFyZWQgaHVuZy4KClNp
Z25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgotLS0K
IHRlc3RzL01ha2VmaWxlLnNvdXJjZXMgICAgICAgICAgICAgICAgfCAgIDEgKwogdGVzdHMvaTkx
NS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYyB8IDQ3NiArKysrKysrKysrKysrKysrKysrKysr
KysrKwogdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiAzIGZp
bGVzIGNoYW5nZWQsIDQ3OCBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMv
aTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYwoKZGlmZiAtLWdpdCBhL3Rlc3RzL01ha2Vm
aWxlLnNvdXJjZXMgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCmluZGV4IGM5OTAxYWYxOC4uNzRm
ZDhiZTViIDEwMDY0NAotLS0gYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCisrKyBiL3Rlc3RzL01h
a2VmaWxlLnNvdXJjZXMKQEAgLTk4LDYgKzk4LDcgQEAgVEVTVFNfcHJvZ3MgPSBcCiAJdG9vbHNf
dGVzdCBcCiAJdmdlbV9iYXNpYyBcCiAJdmdlbV9zbG93IFwKKwlpOTE1L3N5c2ZzX2hlYXJ0YmVh
dF9pbnRlcnZhbCBcCiAJaTkxNS9zeXNmc19wcmVlbXB0X3RpbWVvdXQgXAogCSQoTlVMTCkKIApk
aWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYyBiL3Rlc3Rz
L2k5MTUvc3lzZnNfaGVhcnRiZWF0X2ludGVydmFsLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQKaW5k
ZXggMDAwMDAwMDAwLi4xOTYwNzZmZDEKLS0tIC9kZXYvbnVsbAorKysgYi90ZXN0cy9pOTE1L3N5
c2ZzX2hlYXJ0YmVhdF9pbnRlcnZhbC5jCkBAIC0wLDAgKzEsNDc2IEBACisvKgorICogQ29weXJp
Z2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqCisgKiBQZXJtaXNzaW9uIGlzIGhlcmVi
eSBncmFudGVkLCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbiBvYnRhaW5pbmcgYQorICog
Y29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmlsZXMg
KHRoZSAiU29mdHdhcmUiKSwKKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQgcmVz
dHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KKyAqIHRoZSByaWdodHMgdG8g
dXNlLCBjb3B5LCBtb2RpZnksIG1lcmdlLCBwdWJsaXNoLCBkaXN0cmlidXRlLCBzdWJsaWNlbnNl
LAorICogYW5kL29yIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5kIHRvIHBlcm1pdCBw
ZXJzb25zIHRvIHdob20gdGhlCisgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28sIHN1
YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgorICoKKyAqIFRoZSBhYm92ZSBjb3B5
cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIChpbmNsdWRpbmcgdGhlIG5l
eHQKKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBzdWJz
dGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKKyAqIFNvZnR3YXJlLgorICoKKyAqIFRIRSBTT0ZUV0FS
RSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBFWFBS
RVNTIE9SCisgKiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIFRIRSBXQVJS
QU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSwKKyAqIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxBUiBQ
VVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQuICBJTiBOTyBFVkVOVCBTSEFMTAorICogVEhFIEFV
VEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERBTUFH
RVMgT1IgT1RIRVIKKyAqIExJQUJJTElUWSwgV0hFVEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09OVFJB
Q1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HCisgKiBGUk9NLCBPVVQgT0YgT1IgSU4gQ09O
TkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVSIERFQUxJTkdTCisg
KiBJTiBUSEUgU09GVFdBUkUuCisgKi8KKworI2luY2x1ZGUgPGRpcmVudC5oPgorI2luY2x1ZGUg
PGVycm5vLmg+CisjaW5jbHVkZSA8ZmNudGwuaD4KKyNpbmNsdWRlIDxpbnR0eXBlcy5oPgorI2lu
Y2x1ZGUgPHNpZ25hbC5oPgorI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CisjaW5jbHVkZSA8c3lzL3R5
cGVzLmg+CisjaW5jbHVkZSA8c3lzL3dhaXQuaD4KKyNpbmNsdWRlIDx1bmlzdGQuaD4KKworI2lu
Y2x1ZGUgImRybXRlc3QuaCIgLyogZ2VtX3F1aWVzY2VudF9ncHUoKSEgKi8KKyNpbmNsdWRlICJp
OTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuaCIKKyNpbmNsdWRlICJpZ3RfZHVtbXlsb2FkLmgiCisj
aW5jbHVkZSAiaWd0X3N5c2ZzLmgiCisjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIgLyogaWd0
X3JlcXVpcmVfZ2VtKCkhICovCisjaW5jbHVkZSAic3dfc3luYy5oIgorCisjaW5jbHVkZSAiaWd0
X2RlYnVnZnMuaCIKKworc3RhdGljIGJvb2wgX19lbmFibGVfaGFuZ2NoZWNrKGludCBkaXIsIGJv
b2wgc3RhdGUpCit7CisJcmV0dXJuIGlndF9zeXNmc19zZXQoZGlyLCAiZW5hYmxlX2hhbmdjaGVj
ayIsIHN0YXRlID8gIjEiIDogIjAiKTsKK30KKworc3RhdGljIHZvaWQgZW5hYmxlX2hhbmdjaGVj
ayhpbnQgaTkxNSwgYm9vbCBzdGF0ZSkKK3sKKwlpbnQgZGlyOworCisJZGlyID0gaWd0X3N5c2Zz
X29wZW5fcGFyYW1ldGVycyhpOTE1KTsKKwlpZiAoZGlyIDwgMCkgLyogbm8gcGFyYW1ldGVycywg
bXVzdCBiZSBkZWZhdWx0ISAqLworCQlyZXR1cm47CisKKwlfX2VuYWJsZV9oYW5nY2hlY2soZGly
LCBzdGF0ZSk7CisJY2xvc2UoZGlyKTsKK30KKworc3RhdGljIHZvaWQgc2V0X2hlYXJ0YmVhdChp
bnQgZW5naW5lLCB1bnNpZ25lZCBpbnQgdmFsdWUpCit7CisJdW5zaWduZWQgaW50IGRlbGF5ID0g
fnZhbHVlOworCisJaWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxf
bXMiLCAiJXUiLCB2YWx1ZSk7CisJaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9p
bnRlcnZhbF9tcyIsICIldSIsICZkZWxheSk7CisJaWd0X2Fzc2VydF9lcShkZWxheSwgdmFsdWUp
OworfQorCitzdGF0aWMgdm9pZCB0ZXN0X2lkZW1wb3RlbnQoaW50IGk5MTUsIGludCBlbmdpbmUp
Cit7CisJdW5zaWduZWQgaW50IGRlbGF5c1tdID0geyAxLCAxMDAwLCA1MDAwLCA1MDAwMCwgMTIz
NDU2Nzg5IH07CisJdW5zaWduZWQgaW50IHNhdmVkOworCisJLyogUXVpY2sgdGVzdCB0aGF0IHRo
ZSBwcm9wZXJ0eSByZXBvcnRzIHRoZSB2YWx1ZXMgd2Ugc2V0ICovCisKKwlpZ3RfYXNzZXJ0KGln
dF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmc2F2
ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRfaW50ZXJ2YWxfbXM6JXVc
biIsIHNhdmVkKTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShkZWxheXMpOyBp
KyspCisJCXNldF9oZWFydGJlYXQoZW5naW5lLCBkZWxheXNbaV0pOworCisJc2V0X2hlYXJ0YmVh
dChlbmdpbmUsIHNhdmVkKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9pbnZhbGlkKGludCBpOTE1
LCBpbnQgZW5naW5lKQoreworCXVuc2lnbmVkIGludCBzYXZlZCwgZGVsYXk7CisKKwkvKiBRdWlj
ayB0ZXN0IHRoYXQgd2UgcmVqZWN0IGFueSB1bnJlcHJlc2VudGFibGUgaW50ZXJ2YWxzICovCisK
KwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxf
bXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRf
aW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKworCWlndF9zeXNmc19wcmludGYoZW5naW5lLCAi
aGVhcnRiZWF0X2ludGVydmFsX21zIiwgUFJJdTY0LCAtMSk7CisJaWd0X3N5c2ZzX3NjYW5mKGVu
Z2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsICIldSIsICZkZWxheSk7CisJaWd0X2Fzc2Vy
dF9lcShkZWxheSwgc2F2ZWQpOworCisJaWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUsICJoZWFydGJl
YXRfaW50ZXJ2YWxfbXMiLCBQUkl1NjQsIDEwdWxsIDw8IDMyKTsKKwlpZ3Rfc3lzZnNfc2NhbmYo
ZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1IiwgJmRlbGF5KTsKKwlpZ3RfYXNz
ZXJ0X2VxKGRlbGF5LCBzYXZlZCk7Cit9CisKK3N0YXRpYyB2b2lkIHNldF91bmJhbm5hYmxlKGlu
dCBpOTE1LCB1aW50MzJfdCBjdHgpCit7CisJc3RydWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3Bh
cmFtIHAgPSB7CisJCS5jdHhfaWQgPSBjdHgsCisJCS5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJB
TV9CQU5OQUJMRSwKKwl9OworCisJaWd0X2Fzc2VydF9lcShfX2dlbV9jb250ZXh0X3NldF9wYXJh
bShpOTE1LCAmcCksIDApOworfQorCitzdGF0aWMgdWludDMyX3QgY3JlYXRlX2NvbnRleHQoaW50
IGk5MTUsIHVuc2lnbmVkIGludCBjbGFzcywgdW5zaWduZWQgaW50IGluc3QsIGludCBwcmlvKQor
eworCXVpbnQzMl90IGN0eDsKKworCWN0eCA9IGdlbV9jb250ZXh0X2NyZWF0ZV9mb3JfZW5naW5l
KGk5MTUsIGNsYXNzLCBpbnN0KTsKKwlzZXRfdW5iYW5uYWJsZShpOTE1LCBjdHgpOworCWdlbV9j
b250ZXh0X3NldF9wcmlvcml0eShpOTE1LCBjdHgsIHByaW8pOworCisJcmV0dXJuIGN0eDsKK30K
Kworc3RhdGljIHVpbnQ2NF90IF9fdGVzdF90aW1lb3V0KGludCBpOTE1LCBpbnQgZW5naW5lLCB1
bnNpZ25lZCBpbnQgdGltZW91dCkKK3sKKwl1bnNpZ25lZCBpbnQgY2xhc3MsIGluc3Q7CisJc3Ry
dWN0IHRpbWVzcGVjIHRzID0ge307CisJaWd0X3NwaW5fdCAqc3BpblsyXTsKKwl1aW50NjRfdCBl
bGFwc2VkOworCXVpbnQzMl90IGN0eFsyXTsKKworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5m
KGVuZ2luZSwgImNsYXNzIiwgIiV1IiwgJmNsYXNzKSA9PSAxKTsKKwlpZ3RfYXNzZXJ0KGlndF9z
eXNmc19zY2FuZihlbmdpbmUsICJpbnN0YW5jZSIsICIldSIsICZpbnN0KSA9PSAxKTsKKworCXNl
dF9oZWFydGJlYXQoZW5naW5lLCB0aW1lb3V0KTsKKworCWN0eFswXSA9IGNyZWF0ZV9jb250ZXh0
KGk5MTUsIGNsYXNzLCBpbnN0LCAxMDIzKTsKKwlzcGluWzBdID0gaWd0X3NwaW5fbmV3KGk5MTUs
IGN0eFswXSwKKwkJCSAgICAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fTk9fUFJFRU1QVElPTiB8CisJ
CQkJCSBJR1RfU1BJTl9QT0xMX1JVTiB8CisJCQkJCSBJR1RfU1BJTl9GRU5DRV9PVVQpKTsKKwlp
Z3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW5bMF0pOworCisJY3R4WzFdID0gY3Jl
YXRlX2NvbnRleHQoaTkxNSwgY2xhc3MsIGluc3QsIC0xMDIzKTsKKwlpZ3RfbnNlY19lbGFwc2Vk
KCZ0cyk7CisJc3BpblsxXSA9IGlndF9zcGluX25ldyhpOTE1LCBjdHhbMV0sIC5mbGFncyA9IElH
VF9TUElOX1BPTExfUlVOKTsKKwlpZ3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW5b
MV0pOworCWVsYXBzZWQgPSBpZ3RfbnNlY19lbGFwc2VkKCZ0cyk7CisKKwlpZ3Rfc3Bpbl9mcmVl
KGk5MTUsIHNwaW5bMV0pOworCisJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3dhaXQoc3Bpblsw
XS0+b3V0X2ZlbmNlLCAxKSwgMCk7CisJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1cyhz
cGluWzBdLT5vdXRfZmVuY2UpLCAtRUlPKTsKKworCWlndF9zcGluX2ZyZWUoaTkxNSwgc3Bpblsw
XSk7CisKKwlnZW1fY29udGV4dF9kZXN0cm95KGk5MTUsIGN0eFsxXSk7CisJZ2VtX2NvbnRleHRf
ZGVzdHJveShpOTE1LCBjdHhbMF0pOworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCisJcmV0
dXJuIGVsYXBzZWQ7Cit9CisKK3N0YXRpYyB2b2lkIHRlc3RfcHJlY2lzZShpbnQgaTkxNSwgaW50
IGVuZ2luZSkKK3sKKwlpbnQgZGVsYXlzW10gPSB7IDEsIDUwLCAxMDAsIDUwMCB9OworCXVuc2ln
bmVkIGludCBzYXZlZDsKKworCS8qCisJICogVGhlIGhlYXJ0YmVhdCBpbnRlcnZhbCBkZWZpbmVz
IGhvdyBsb25nIHRoZSBrZXJuZWwgd2FpdHMgYmV0d2VlbgorCSAqIGNoZWNraW5nIG9uIHRoZSBz
dGF0dXMgb2YgdGhlIGVuZ2luZXMuIEl0IGZpcnN0IHNlbmRzIGRvd24gYQorCSAqIGhlYXJ0YmVh
dCBwdWxzZSwgd2FpdHMgdGhlIGludGVydmFsIGFuZCBzZWVzIGlmIHRoZSBzeXN0ZW0gbWFuYWdl
ZAorCSAqIHRvIGNvbXBsZXRlIHRoZSBwdWxzZS4gSWYgbm90LCBpdCBnaXZlcyBhIHByaW9yaXR5
IGJ1bXAgdG8gdGhlIHB1bHNlCisJICogYW5kIHdhaXRzIGFnYWluLiBUaGlzIGlzIHJlcGVhdGVk
IHVudGlsIHRoZSBwcmlvcml0eSBjYW5ub3QgYmUgYnVtcGVkCisJICogYW55IG1vcmUsIGFuZCB0
aGUgc3lzdGVtIGlzIGRlY2xhcmVkIGh1bmcuCisJICoKKwkgKiBJZiB3ZSBjb21iaW5lIHRoZSBw
cmVlbXB0aXZlIHB1bHNlIHdpdGggZm9yY2VkIHByZWVtcHRpb24sIHdlIGluc3RlYWQKKwkgKiBn
ZXQgYSBtdWNoIGZhc3RlciBoYW5nIGRldGVjdGlvbi4gVGh1cyBpbiBjb21iaW5hdGlvbiB3ZSBj
YW4gbWVhc3VyZQorCSAqIHRoZSBzeXN0ZW0gcmVzcG9uc2UgdGltZSB0byByZXNldGluZyBhIGhv
ZyBhcyBhIG1lYXN1cmUgb2YgdGhlCisJICogaGVhcnRiZWF0IGludGVydmFsLCBhbmQgc28gY29u
ZmlybSBpdCBtYXRjaGVzIG91ciBzcGVjaWZpY2F0aW9uLgorCSAqLworCisJaWd0X3JlcXVpcmUo
aWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUsICJwcmVlbXB0X3RpbWVvdXRfbXMiLCAiJXUiLCAxKSA9
PSAxKTsKKworCWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9p
bnRlcnZhbF9tcyIsICIldSIsICZzYXZlZCkgPT0gMSk7CisJaWd0X2RlYnVnKCJJbml0aWFsIGhl
YXJ0YmVhdF9pbnRlcnZhbF9tczoldVxuIiwgc2F2ZWQpOworCWdlbV9xdWllc2NlbnRfZ3B1KGk5
MTUpOworCisJZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGRlbGF5cyk7IGkrKykgewor
CQl1aW50NjRfdCBlbGFwc2VkOworCisJCWVsYXBzZWQgPSBfX3Rlc3RfdGltZW91dChpOTE1LCBl
bmdpbmUsIGRlbGF5c1tpXSk7CisJCWlndF9pbmZvKCJoZWFydGJlYXRfaW50ZXJ2YWxfbXM6JWQs
IGVsYXBzZWQ9JS4zZm1zWyVkXVxuIiwKKwkJCSBkZWxheXNbaV0sIGVsYXBzZWQgKiAxZS02LAor
CQkJCShpbnQpKGVsYXBzZWQgLyAxMDAwIC8gMTAwMCkKKwkJCSApOworCisJCS8qCisJCSAqIEl0
IHRha2VzIGEgY291cGxlIG9mIG1pc3NlZCBoZWFydGJlYXRzIGJlZm9yZSB3ZSBzdGFydAorCQkg
KiB0ZXJtaW5hdGluZyBob2dzLCBhbmQgYSBsaXR0bGUgYml0IG9mIGppZmZpZSBzbGFjayBmb3IK
KwkJICogc2NoZWR1bGluZyBhdCBlYWNoIHN0ZXAuIDE1MG1zIHNob3VsZCBjb3ZlciBhbGwgb2Yg
b3VyCisJCSAqIHNpbnMgYW5kIGJlIHVzZWZ1bCB0b2xlcmFuY2UuCisJCSAqLworCQlpZ3RfYXNz
ZXJ0X2YoZWxhcHNlZCAvIDEwMDAgLyAxMDAwIDwgMyAqIGRlbGF5c1tpXSArIDE1MCwKKwkJCSAg
ICAgIkhlYXJ0YmVhdCBpbnRlcnZhbCAoYW5kIENQUikgZXhjZWVkZWQgcmVxdWVzdCFcbiIpOwor
CX0KKworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCXNldF9oZWFydGJlYXQoZW5naW5lLCBz
YXZlZCk7Cit9CisKK3N0YXRpYyB2b2lkIHRlc3Rfbm9wcmVlbXB0KGludCBpOTE1LCBpbnQgZW5n
aW5lKQoreworCWludCBkZWxheXNbXSA9IHsgMSwgNTAsIDEwMCwgNTAwIH07CisJdW5zaWduZWQg
aW50IHNhdmVkOworCisJLyoKKwkgKiBUaGUgc2FtZSBwcmluY2lwbGUgYXMgdGVzdF9wcmVjaXNl
KCksIGV4Y2VwdCB0aGF0IGZvcmNlZCBwcmVlbXB0aW9uCisJICogaXMgZGlzYWJsZWQgKG9yIHNp
bXBseSBub3Qgc3VwcG9ydGVkIGJ5IHRoZSBwbGF0Zm9ybSkuIFRoaXMgdGltZSwKKwkgKiBpdCB3
YWl0cyB1bnRpbCB0aGUgc3lzdGVtIG1pc3NlcyBhIGZldyBoZWFydGJlYXQgYmVmb3JlIGRvaW5n
IGEKKwkgKiBwZXItZW5naW5lL2Z1bGwtZ3B1IHJlc2V0LiBBcyBzdWNoIGl0IGlzIGxlc3MgcHJl
Y2lzZSwgYnV0IHdlCisJICogY2FuIHN0aWxsIGVzdGltYXRlIGFuIHVwcGVyIGJvdW5kIGZvciBv
dXIgc3BlY2lmaWVkIGhlYXJ0YmVhdAorCSAqIGludGVydmFsIGFuZCB2ZXJpZnkgdGhlIHN5c3Rl
bSBjb25mb3Jtcy4KKwkgKi8KKworCS8qIFRlc3QgaGVhcnRiZWF0cyB3aXRoIGZvcmNlZCBwcmVl
bXB0aW9uICBkaXNhYmxlZCAqLworCWlndF9zeXNmc19wcmludGYoZW5naW5lLCAicHJlZW1wdF90
aW1lb3V0X21zIiwgIiV1IiwgMCk7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdp
bmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9k
ZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRfaW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1f
cXVpZXNjZW50X2dwdShpOTE1KTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShk
ZWxheXMpOyBpKyspIHsKKwkJdWludDY0X3QgZWxhcHNlZDsKKworCQllbGFwc2VkID0gX190ZXN0
X3RpbWVvdXQoaTkxNSwgZW5naW5lLCBkZWxheXNbaV0pOworCQlpZ3RfaW5mbygiaGVhcnRiZWF0
X2ludGVydmFsX21zOiVkLCBlbGFwc2VkPSUuM2Ztc1slZF1cbiIsCisJCQkgZGVsYXlzW2ldLCBl
bGFwc2VkICogMWUtNiwKKwkJCQkoaW50KShlbGFwc2VkIC8gMTAwMCAvIDEwMDApCisJCQkgKTsK
KworCQkvKgorCQkgKiBJdCB0YWtlcyBhIHNldmVyYWwgbWlzc2VkIGhlYXJ0YmVhdHMgYmVmb3Jl
IHdlIHN0YXJ0CisJCSAqIHRlcm1pbmF0aW5nIGhvZ3MsIGFuZCBhIGxpdHRsZSBiaXQgb2Ygamlm
ZmllIHNsYWNrIGZvcgorCQkgKiBzY2hlZHVsaW5nIGF0IGVhY2ggc3RlcC4gMjUwbXMgc2hvdWxk
IGNvdmVyIGFsbCBvZiBvdXIKKwkJICogc2lucyBhbmQgYmUgdXNlZnVsIHRvbGVyYW5jZS4KKwkJ
ICovCisJCWlndF9hc3NlcnRfZihlbGFwc2VkIC8gMTAwMCAvIDEwMDAgPCA1ICogZGVsYXlzW2ld
ICsgMTUwLAorCQkJICAgICAiSGVhcnRiZWF0IGludGVydmFsIChhbmQgQ1BSKSBleGNlZWRlZCBy
ZXF1ZXN0IVxuIik7CisJfQorCisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisJc2V0X2hlYXJ0
YmVhdChlbmdpbmUsIHNhdmVkKTsKK30KKworc3RhdGljIHZvaWQgY2xpZW50KGludCBpOTE1LCBp
bnQgZW5naW5lLCBpbnQgKmN0bCwgaW50IGR1cmF0aW9uLCBpbnQgZXhwZWN0KQoreworCXVuc2ln
bmVkIGludCBjbGFzcywgaW5zdDsKKwl1bnNpZ25lZCBsb25nIGNvdW50ID0gMDsKKwl1aW50MzJf
dCBjdHg7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJjbGFzcyIsICIl
dSIsICZjbGFzcykgPT0gMSk7CisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAi
aW5zdGFuY2UiLCAiJXUiLCAmaW5zdCkgPT0gMSk7CisKKwljdHggPSBjcmVhdGVfY29udGV4dChp
OTE1LCBjbGFzcywgaW5zdCwgMCk7CisKKwl3aGlsZSAoIVJFQURfT05DRSgqY3RsKSkgeworCQlp
Z3Rfc3Bpbl90ICpzcGluOworCisJCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwgY3R4LAorCQkJ
CSAgICAuZmxhZ3MgPSAoSUdUX1NQSU5fTk9fUFJFRU1QVElPTiB8CisJCQkJCSAgICAgIElHVF9T
UElOX1BPTExfUlVOIHwKKwkJCQkJICAgICAgSUdUX1NQSU5fRkVOQ0VfT1VUKSk7CisJCWlndF9z
cGluX2J1c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3Bpbik7CisKKwkJaWd0X3NwaW5fc2V0X3RpbWVv
dXQoc3BpbiwgKHVpbnQ2NF90KWR1cmF0aW9uICogMTAwMCAqIDEwMDApOworCQlzeW5jX2ZlbmNl
X3dhaXQoc3Bpbi0+b3V0X2ZlbmNlLCAtMSk7CisKKwkJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNl
X3N0YXR1cyhzcGluLT5vdXRfZmVuY2UpLCBleHBlY3QpOworCQljb3VudCsrOworCX0KKworCWdl
bV9jb250ZXh0X2Rlc3Ryb3koaTkxNSwgY3R4KTsKKwlpZ3RfaW5mbygiJXMgY2xpZW50IGNvbXBs
ZXRlZCAlbHUgc3BpbnNcbiIsCisJCSBleHBlY3QgPCAwID8gIkJhZCIgOiAiR29vZCIsIGNvdW50
KTsKK30KKworc3RhdGljIHZvaWQgc2lnaWduKGludCBzaWcpCit7Cit9CisKK3N0YXRpYyB2b2lk
IHdhaXRfdW50aWwoaW50IGR1cmF0aW9uKQoreworCXNpZ25hbChTSUdDSExELCBzaWdpZ24pOwor
CXNsZWVwKGR1cmF0aW9uKTsKKwlzaWduYWwoU0lHQ0hMRCwgU0lHX0lHTik7Cit9CisKK3N0YXRp
YyB2b2lkIF9fdGVzdF9taXhlZChpbnQgaTkxNSwgaW50IGVuZ2luZSwKKwkJCSBpbnQgaGVhcnRi
ZWF0LAorCQkJIGludCBnb29kLAorCQkJIGludCBiYWQsCisJCQkgaW50IGR1cmF0aW9uKQorewor
CXVuc2lnbmVkIGludCBzYXZlZDsKKwlpbnQgKnNoYXJlZDsKKworCS8qCisJICogR2l2ZW4gdHdv
IGNsaWVudHMgb2Ygd2hpY2ggb25lIGlzIGEgaG9nLCBiZSBzdXJlIHdlIGNsZWFubHkKKwkgKiB0
ZXJtaW5hdGUgdGhlIGhvZyBsZWF2aW5nIHRoZSBnb29kIGNsaWVudCB0byBydW4uCisJICovCisK
KwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxf
bXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRf
aW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKwor
CXNoYXJlZCA9IG1tYXAoTlVMTCwgNDA5NiwgUFJPVF9XUklURSwgTUFQX1NIQVJFRCB8IE1BUF9B
Tk9OLCAtMSwgMCk7CisJaWd0X2Fzc2VydChzaGFyZWQgIT0gTUFQX0ZBSUxFRCk7CisKKwlzZXRf
aGVhcnRiZWF0KGVuZ2luZSwgaGVhcnRiZWF0KTsKKworCWlndF9mb3JrKGNoaWxkLCAxKSAvKiBn
b29kIGNsaWVudCAqLworCQljbGllbnQoaTkxNSwgZW5naW5lLCBzaGFyZWQsIGdvb2QsIDEpOwor
CWlndF9mb3JrKGNoaWxkLCAxKSAvKiBiYWQgY2xpZW50ICovCisJCWNsaWVudChpOTE1LCBlbmdp
bmUsIHNoYXJlZCwgYmFkLCAtRUlPKTsKKworCXdhaXRfdW50aWwoZHVyYXRpb24pOworCisJKnNo
YXJlZCA9IHRydWU7CisJaWd0X3dhaXRjaGlsZHJlbigpOworCW11bm1hcChzaGFyZWQsIDQwOTYp
OworCisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIHNh
dmVkKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9taXhlZChpbnQgaTkxNSwgaW50IGVuZ2luZSkK
K3sKKwkvKgorCSAqIEhvZ3MgcmFyZWx5IHJ1biBhbG9uZS4gT3VyIGhhbmcgZGV0ZWN0aW9uIG11
c3QgY2FyZWZ1bGx5IHdlYW4KKwkgKiBvdXQgdGhlIGhvZ3MgZnJvbSB0aGUgaW5ub2NlbnQgY2xp
ZW50cy4gVGh1cyB3ZSBydW4gYSBtaXhlZCB3b3JrbG9hZAorCSAqIHdpdGggbm9uLXByZWVtcHRh
YmxlIGhvZ3MgdGhhdCBleGNlZWQgdGhlIGhlYXJ0YmVhdCwgYW5kIHF1aWNrZXIKKwkgKiBpbm5v
Y2VudHMuIFdlIGluc3BlY3QgdGhlIGZlbmNlIHN0YXR1cyBvZiBlYWNoIHRvIHZlcmlmeSB0aGF0
CisJICogb25seSB0aGUgaG9ncyBhcmUgcmVzZXQuCisJICovCisJaWd0X3N5c2ZzX3ByaW50Zihl
bmdpbmUsICJwcmVlbXB0X3RpbWVvdXRfbXMiLCAiJXUiLCAxKTsKKwlfX3Rlc3RfbWl4ZWQoaTkx
NSwgZW5naW5lLCAxMCwgMTAsIDEwMCwgNSk7Cit9CisKK3N0YXRpYyB2b2lkIHRlc3RfbG9uZyhp
bnQgaTkxNSwgaW50IGVuZ2luZSkKK3sKKwkvKgorCSAqIFNvbWUgY2xpZW50cyByZWxpc2ggYmVp
bmcgaG9ncywgYW5kIGRlbWFuZCB0aGF0IHRoZSBzeXN0ZW0KKwkgKiBuZXZlciBkbyBoYW5nY2hl
Y2tpbmcuIE5ldmVyIGlzIGhhcmQgdG8gdGVzdCwgc28gaW5zdGVhZCB3ZQorCSAqIHJ1biBvdmVy
IGEgZGF5IGFuZCB2ZXJpZnkgdGhhdCBvbmx5IHRoZSBzdXBlciBob2dzIGFyZSByZXNldC4KKwkg
Ki8KKwlpZ3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgInByZWVtcHRfdGltZW91dF9tcyIsICIldSIs
IDApOworCV9fdGVzdF9taXhlZChpOTE1LCBlbmdpbmUsCisJCSAgICAgNjAgKiAxMDAwLCAvKiA2
MHMgKi8KKwkJICAgICA2MCAqIDEwMDAsIC8qIDYwcyAqLworCQkgICAgIDMwMCAqIDEwMDAsIC8q
IDVtaW4gKi8KKwkJICAgICAyNCAqIDM2MDAgLyogMjRob3VycyAqLyk7Cit9CisKK3N0YXRpYyB2
b2lkIHRlc3Rfb2ZmKGludCBpOTE1LCBpbnQgZW5naW5lKQoreworCXVuc2lnbmVkIGludCBjbGFz
cywgaW5zdDsKKwl1bnNpZ25lZCBpbnQgc2F2ZWQ7CisJaWd0X3NwaW5fdCAqc3BpbjsKKwl1aW50
MzJfdCBjdHg7CisKKwkvKgorCSAqIFNvbWUgb3RoZXIgY2xpZW50cyByZXF1ZXN0IHRoYXQgdGhl
cmUgaXMgbmV2ZXIgYW55IGludGVycnVwdGlvbgorCSAqIG9yIGppdHRlciBpbiB0aGVpciB3b3Jr
bG9hZCBhbmQgc28gZGVtYW5kIHRoYXQgdGhlIGtlcm5lbCBuZXZlcgorCSAqIHNlbmRzIGEgaGVh
cnRiZWF0IHRvIHN0ZWFsIHByZWNpb3VzIGN5Y2xlcyBmcm9tIHRoZWlyIHdvcmtsb2FkLgorCSAq
IFR1cm4gb2ZmIHRoZSBoZWFydGJlYXQgYW5kIGNoZWNrIHRoYXQgdGhlIHdvcmtsb2FkIGlzIHVu
aW50ZXJydXB0ZWQKKwkgKiBmb3IgMTUwcy4KKwkgKi8KKworCWlndF9hc3NlcnQoaWd0X3N5c2Zz
X3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsICIldSIsICZzYXZlZCkgPT0g
MSk7CisJaWd0X2RlYnVnKCJJbml0aWFsIGhlYXJ0YmVhdF9pbnRlcnZhbF9tczoldVxuIiwgc2F2
ZWQpOworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNf
c2NhbmYoZW5naW5lLCAiY2xhc3MiLCAiJXUiLCAmY2xhc3MpID09IDEpOworCWlndF9hc3NlcnQo
aWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImluc3RhbmNlIiwgIiV1IiwgJmluc3QpID09IDEpOwor
CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIDApOworCisJY3R4ID0gY3JlYXRlX2NvbnRleHQoaTkx
NSwgY2xhc3MsIGluc3QsIDApOworCisJc3BpbiA9IGlndF9zcGluX25ldyhpOTE1LCBjdHgsCisJ
CQkgICAgLmZsYWdzID0gKElHVF9TUElOX1BPTExfUlVOIHwKKwkJCQkgICAgICBJR1RfU1BJTl9O
T19QUkVFTVBUSU9OIHwKKwkJCQkgICAgICBJR1RfU1BJTl9GRU5DRV9PVVQpKTsKKwlpZ3Rfc3Bp
bl9idXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW4pOworCisJZm9yIChpbnQgaSA9IDA7IGkgPCAx
NTA7IGkrKykgeworCQlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVzKHNwaW4tPm91dF9m
ZW5jZSksIDApOworCQlzbGVlcCgxKTsKKwl9CisKKwlzZXRfaGVhcnRiZWF0KGVuZ2luZSwgMSk7
CisKKwlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfd2FpdChzcGluLT5vdXRfZmVuY2UsIDI1MCks
IDApOworCWlndF9hc3NlcnRfZXEoc3luY19mZW5jZV9zdGF0dXMoc3Bpbi0+b3V0X2ZlbmNlKSwg
LUVJTyk7CisKKwlpZ3Rfc3Bpbl9mcmVlKGk5MTUsIHNwaW4pOworCisJZ2VtX3F1aWVzY2VudF9n
cHUoaTkxNSk7CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIHNhdmVkKTsKK30KKworaWd0X21haW4K
K3sKKwljb25zdCBzdHJ1Y3QgaW50ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKml0OworCWludCBpOTE1
ID0gLTEsIGVuZ2luZXMgPSAtMTsKKworCWlndF9maXh0dXJlIHsKKwkJaW50IHN5czsKKworCQlp
OTE1ID0gZHJtX29wZW5fZHJpdmVyKERSSVZFUl9JTlRFTCk7CisJCWlndF9yZXF1aXJlX2dlbShp
OTE1KTsKKworCQlzeXMgPSBpZ3Rfc3lzZnNfb3BlbihpOTE1KTsKKwkJaWd0X3JlcXVpcmUoc3lz
ICE9IC0xKTsKKworCQllbmdpbmVzID0gb3BlbmF0KHN5cywgImVuZ2luZSIsIE9fUkRPTkxZKTsK
KwkJaWd0X3JlcXVpcmUoZW5naW5lcyAhPSAtMSk7CisJCWNsb3NlKHN5cyk7CisKKwkJZW5hYmxl
X2hhbmdjaGVjayhpOTE1LCB0cnVlKTsKKwl9CisKKwlfX2Zvcl9lYWNoX3N0YXRpY19lbmdpbmUo
aXQpIHsKKwkJaWd0X3N1YnRlc3RfZ3JvdXAgeworCQkJaW50IGVuZ2luZSA9IC0xOworCQkJY2hh
ciAqbmFtZSA9IE5VTEw7CisKKwkJCWlndF9maXh0dXJlIHsKKwkJCQlzdHJ1Y3Qgc3RhdCBzdDsK
KworCQkJCWVuZ2luZSA9IG9wZW5hdChlbmdpbmVzLCBpdC0+bmFtZSwgT19SRE9OTFkpOworCQkJ
CWlndF9yZXF1aXJlKGZzdGF0YXQoZW5naW5lLAorCQkJCQkJICAgICJoZWFydGJlYXRfaW50ZXJ2
YWxfbXMiLAorCQkJCQkJICAgICZzdCwgMCkgPT0gMCk7CisJCQkJbmFtZSA9IGlndF9zeXNmc19n
ZXQoZW5naW5lLCAibmFtZSIpOworCQkJfQorCQkJaWYgKCFuYW1lKQorCQkJCWNvbnRpbnVlOwor
CisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1pZGVtcG90ZW50IiwgbmFtZSkKKwkJCQl0ZXN0X2lkZW1w
b3RlbnQoaTkxNSwgZW5naW5lKTsKKwkJCWlndF9zdWJ0ZXN0X2YoIiVzLWludmFsaWQiLCBuYW1l
KQorCQkJCXRlc3RfaW52YWxpZChpOTE1LCBlbmdpbmUpOworCisJCQlpZ3Rfc3VidGVzdF9mKCIl
cy1wcmVjaXNlIiwgbmFtZSkKKwkJCQl0ZXN0X3ByZWNpc2UoaTkxNSwgZW5naW5lKTsKKwkJCWln
dF9zdWJ0ZXN0X2YoIiVzLW5vcHJlZW1wdCIsIG5hbWUpCisJCQkJdGVzdF9ub3ByZWVtcHQoaTkx
NSwgZW5naW5lKTsKKwkJCWlndF9zdWJ0ZXN0X2YoIiVzLW1peGVkIiwgbmFtZSkKKwkJCQl0ZXN0
X21peGVkKGk5MTUsIGVuZ2luZSk7CisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1vZmYiLCBuYW1lKQor
CQkJCXRlc3Rfb2ZmKGk5MTUsIGVuZ2luZSk7CisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1sb25nIiwg
bmFtZSkKKwkJCQl0ZXN0X2xvbmcoaTkxNSwgZW5naW5lKTsKKworCQkJZnJlZShuYW1lKTsKKwkJ
CWNsb3NlKGVuZ2luZSk7CisJCX0KKwl9CisKKwlpZ3RfZml4dHVyZSB7CisJCWNsb3NlKGVuZ2lu
ZXMpOworCQljbG9zZShpOTE1KTsKKwl9Cit9CmRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWls
ZCBiL3Rlc3RzL21lc29uLmJ1aWxkCmluZGV4IDUwNzQzNDk0Mi4uOWVlYWI1MzBkIDEwMDY0NAot
LS0gYS90ZXN0cy9tZXNvbi5idWlsZAorKysgYi90ZXN0cy9tZXNvbi5idWlsZApAQCAtMjM4LDYg
KzIzOCw3IEBAIGk5MTVfcHJvZ3MgPSBbCiAJJ2k5MTVfcXVlcnknLAogCSdpOTE1X3NlbGZ0ZXN0
JywKIAknaTkxNV9zdXNwZW5kJywKKwknc3lzZnNfaGVhcnRiZWF0X2ludGVydmFsJywKIAknc3lz
ZnNfcHJlZW1wdF90aW1lb3V0JywKIF0KIAotLSAKMi4yNC4wLnJjMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
