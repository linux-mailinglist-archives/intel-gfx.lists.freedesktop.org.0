Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54165DD7E6
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 12:05:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F34E989D81;
	Sat, 19 Oct 2019 10:05:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABB9689194
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Oct 2019 10:05:09 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18893441-1500050 
 for multiple; Sat, 19 Oct 2019 11:04:41 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 19 Oct 2019 11:04:38 +0100
Message-Id: <20191019100439.24640-2-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191019100439.24640-1-chris@chris-wilson.co.uk>
References: <20191019100439.24640-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH i-g-t 2/3] i915: Exercise sysfs heartbeat
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
NS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYyB8IDQzNCArKysrKysrKysrKysrKysrKysrKysr
KysrKwogdGVzdHMvbWVzb24uYnVpbGQgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCiAzIGZp
bGVzIGNoYW5nZWQsIDQzNiBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAxMDA2NDQgdGVzdHMv
aTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYwoKZGlmZiAtLWdpdCBhL3Rlc3RzL01ha2Vm
aWxlLnNvdXJjZXMgYi90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCmluZGV4IGRmZjdkYWMwNi4uNDQ5
NGQyYzA1IDEwMDY0NAotLS0gYS90ZXN0cy9NYWtlZmlsZS5zb3VyY2VzCisrKyBiL3Rlc3RzL01h
a2VmaWxlLnNvdXJjZXMKQEAgLTk4LDYgKzk4LDcgQEAgVEVTVFNfcHJvZ3MgPSBcCiAJdG9vbHNf
dGVzdCBcCiAJdmdlbV9iYXNpYyBcCiAJdmdlbV9zbG93IFwKKwlpOTE1L3N5c2ZzX2hlYXJ0YmVh
dF9pbnRlcnZhbCBcCiAJaTkxNS9zeXNmc19wcmVlbXB0aW9uX3RpbWVvdXQgXAogCSQoTlVMTCkK
IApkaWZmIC0tZ2l0IGEvdGVzdHMvaTkxNS9zeXNmc19oZWFydGJlYXRfaW50ZXJ2YWwuYyBiL3Rl
c3RzL2k5MTUvc3lzZnNfaGVhcnRiZWF0X2ludGVydmFsLmMKbmV3IGZpbGUgbW9kZSAxMDA2NDQK
aW5kZXggMDAwMDAwMDAwLi5kMGQ1MjU0ODkKLS0tIC9kZXYvbnVsbAorKysgYi90ZXN0cy9pOTE1
L3N5c2ZzX2hlYXJ0YmVhdF9pbnRlcnZhbC5jCkBAIC0wLDAgKzEsNDM0IEBACisvKgorICogQ29w
eXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KKyAqCisgKiBQZXJtaXNzaW9uIGlzIGhl
cmVieSBncmFudGVkLCBmcmVlIG9mIGNoYXJnZSwgdG8gYW55IHBlcnNvbiBvYnRhaW5pbmcgYQor
ICogY29weSBvZiB0aGlzIHNvZnR3YXJlIGFuZCBhc3NvY2lhdGVkIGRvY3VtZW50YXRpb24gZmls
ZXMgKHRoZSAiU29mdHdhcmUiKSwKKyAqIHRvIGRlYWwgaW4gdGhlIFNvZnR3YXJlIHdpdGhvdXQg
cmVzdHJpY3Rpb24sIGluY2x1ZGluZyB3aXRob3V0IGxpbWl0YXRpb24KKyAqIHRoZSByaWdodHMg
dG8gdXNlLCBjb3B5LCBtb2RpZnksIG1lcmdlLCBwdWJsaXNoLCBkaXN0cmlidXRlLCBzdWJsaWNl
bnNlLAorICogYW5kL29yIHNlbGwgY29waWVzIG9mIHRoZSBTb2Z0d2FyZSwgYW5kIHRvIHBlcm1p
dCBwZXJzb25zIHRvIHdob20gdGhlCisgKiBTb2Z0d2FyZSBpcyBmdXJuaXNoZWQgdG8gZG8gc28s
IHN1YmplY3QgdG8gdGhlIGZvbGxvd2luZyBjb25kaXRpb25zOgorICoKKyAqIFRoZSBhYm92ZSBj
b3B5cmlnaHQgbm90aWNlIGFuZCB0aGlzIHBlcm1pc3Npb24gbm90aWNlIChpbmNsdWRpbmcgdGhl
IG5leHQKKyAqIHBhcmFncmFwaCkgc2hhbGwgYmUgaW5jbHVkZWQgaW4gYWxsIGNvcGllcyBvciBz
dWJzdGFudGlhbCBwb3J0aW9ucyBvZiB0aGUKKyAqIFNvZnR3YXJlLgorICoKKyAqIFRIRSBTT0ZU
V0FSRSBJUyBQUk9WSURFRCAiQVMgSVMiLCBXSVRIT1VUIFdBUlJBTlRZIE9GIEFOWSBLSU5ELCBF
WFBSRVNTIE9SCisgKiBJTVBMSUVELCBJTkNMVURJTkcgQlVUIE5PVCBMSU1JVEVEIFRPIFRIRSBX
QVJSQU5USUVTIE9GIE1FUkNIQU5UQUJJTElUWSwKKyAqIEZJVE5FU1MgRk9SIEEgUEFSVElDVUxB
UiBQVVJQT1NFIEFORCBOT05JTkZSSU5HRU1FTlQuICBJTiBOTyBFVkVOVCBTSEFMTAorICogVEhF
IEFVVEhPUlMgT1IgQ09QWVJJR0hUIEhPTERFUlMgQkUgTElBQkxFIEZPUiBBTlkgQ0xBSU0sIERB
TUFHRVMgT1IgT1RIRVIKKyAqIExJQUJJTElUWSwgV0hFVEhFUiBJTiBBTiBBQ1RJT04gT0YgQ09O
VFJBQ1QsIFRPUlQgT1IgT1RIRVJXSVNFLCBBUklTSU5HCisgKiBGUk9NLCBPVVQgT0YgT1IgSU4g
Q09OTkVDVElPTiBXSVRIIFRIRSBTT0ZUV0FSRSBPUiBUSEUgVVNFIE9SIE9USEVSIERFQUxJTkdT
CisgKiBJTiBUSEUgU09GVFdBUkUuCisgKi8KKworI2luY2x1ZGUgPGRpcmVudC5oPgorI2luY2x1
ZGUgPGVycm5vLmg+CisjaW5jbHVkZSA8ZmNudGwuaD4KKyNpbmNsdWRlIDxpbnR0eXBlcy5oPgor
I2luY2x1ZGUgPHNpZ25hbC5oPgorI2luY2x1ZGUgPHN5cy9zdGF0Lmg+CisjaW5jbHVkZSA8c3lz
L3R5cGVzLmg+CisjaW5jbHVkZSA8c3lzL3dhaXQuaD4KKyNpbmNsdWRlIDx1bmlzdGQuaD4KKwor
I2luY2x1ZGUgImRybXRlc3QuaCIgLyogZ2VtX3F1aWVzY2VudF9ncHUoKSEgKi8KKyNpbmNsdWRl
ICJpOTE1L2dlbV9lbmdpbmVfdG9wb2xvZ3kuaCIKKyNpbmNsdWRlICJpZ3RfZHVtbXlsb2FkLmgi
CisjaW5jbHVkZSAiaWd0X3N5c2ZzLmgiCisjaW5jbHVkZSAiaW9jdGxfd3JhcHBlcnMuaCIgLyog
aWd0X3JlcXVpcmVfZ2VtKCkhICovCisjaW5jbHVkZSAic3dfc3luYy5oIgorCisjaW5jbHVkZSAi
aWd0X2RlYnVnZnMuaCIKKworc3RhdGljIGJvb2wgX19lbmFibGVfaGFuZ2NoZWNrKGludCBkaXIs
IGJvb2wgc3RhdGUpCit7CisJcmV0dXJuIGlndF9zeXNmc19zZXQoZGlyLCAiZW5hYmxlX2hhbmdj
aGVjayIsIHN0YXRlID8gIjEiIDogIjAiKTsKK30KKworc3RhdGljIHZvaWQgZW5hYmxlX2hhbmdj
aGVjayhpbnQgaTkxNSwgYm9vbCBzdGF0ZSkKK3sKKwlpbnQgZGlyOworCisJZGlyID0gaWd0X3N5
c2ZzX29wZW5fcGFyYW1ldGVycyhpOTE1KTsKKwlpZiAoZGlyIDwgMCkgLyogbm8gcGFyYW1ldGVy
cywgbXVzdCBiZSBkZWZhdWx0ISAqLworCQlyZXR1cm47CisKKwlfX2VuYWJsZV9oYW5nY2hlY2so
ZGlyLCBzdGF0ZSk7CisJY2xvc2UoZGlyKTsKK30KKworc3RhdGljIHZvaWQgc2V0X2hlYXJ0YmVh
dChpbnQgZW5naW5lLCB1bnNpZ25lZCBpbnQgdmFsdWUpCit7CisJdW5zaWduZWQgaW50IGRlbGF5
OworCisJaWd0X3N5c2ZzX3ByaW50ZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAi
JXUiLCB2YWx1ZSk7CisJaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZh
bF9tcyIsICIldSIsICZkZWxheSk7CisJaWd0X2Fzc2VydF9lcShkZWxheSwgdmFsdWUpOworfQor
CitzdGF0aWMgdm9pZCB0ZXN0X2lkZW1wb3RlbnQoaW50IGk5MTUsIGludCBlbmdpbmUpCit7CisJ
dW5zaWduZWQgaW50IHNhdmVkOworCisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5l
LCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1IiwgJnNhdmVkKSA9PSAxKTsKKwlpZ3RfZGVi
dWcoIkluaXRpYWwgaGVhcnRiZWF0X2ludGVydmFsX21zOiV1XG4iLCBzYXZlZCk7CisKKwlzZXRf
aGVhcnRiZWF0KGVuZ2luZSwgMSk7CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIHNhdmVkKTsKK30K
Kworc3RhdGljIHZvaWQgdGVzdF9pbnZhbGlkKGludCBpOTE1LCBpbnQgZW5naW5lKQoreworCXVu
c2lnbmVkIGludCBzYXZlZCwgZGVsYXk7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihl
bmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWln
dF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRfaW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwor
CWlndF9zeXNmc19wcmludGYoZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgUFJJdTY0
LCAtMSk7CisJaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIs
ICIldSIsICZkZWxheSk7CisJaWd0X2Fzc2VydF9lcShkZWxheSwgc2F2ZWQpOworCisJaWd0X3N5
c2ZzX3ByaW50ZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCBQUkl1NjQsIDEwdWxs
IDw8IDMyKTsKKwlpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21z
IiwgIiV1IiwgJmRlbGF5KTsKKwlpZ3RfYXNzZXJ0X2VxKGRlbGF5LCBzYXZlZCk7Cit9CisKK3N0
YXRpYyB2b2lkIHNldF91bmJhbm5hYmxlKGludCBpOTE1LCB1aW50MzJfdCBjdHgpCit7CisJc3Ry
dWN0IGRybV9pOTE1X2dlbV9jb250ZXh0X3BhcmFtIHAgPSB7CisJCS5jdHhfaWQgPSBjdHgsCisJ
CS5wYXJhbSA9IEk5MTVfQ09OVEVYVF9QQVJBTV9CQU5OQUJMRSwKKwl9OworCisJaWd0X2Fzc2Vy
dF9lcShfX2dlbV9jb250ZXh0X3NldF9wYXJhbShpOTE1LCAmcCksIDApOworfQorCitzdGF0aWMg
dWludDMyX3QgY3JlYXRlX2NvbnRleHQoaW50IGk5MTUsIHVuc2lnbmVkIGludCBjbGFzcywgdW5z
aWduZWQgaW50IGluc3QsIGludCBwcmlvKQoreworCXVpbnQzMl90IGN0eDsKKworCWN0eCA9IGdl
bV9jb250ZXh0X2NyZWF0ZV9mb3JfZW5naW5lKGk5MTUsIGNsYXNzLCBpbnN0KTsKKwlzZXRfdW5i
YW5uYWJsZShpOTE1LCBjdHgpOworCWdlbV9jb250ZXh0X3NldF9wcmlvcml0eShpOTE1LCBjdHgs
IHByaW8pOworCisJcmV0dXJuIGN0eDsKK30KKworc3RhdGljIHVpbnQ2NF90IF9fdGVzdF90aW1l
b3V0KGludCBpOTE1LCBpbnQgZW5naW5lLCB1bnNpZ25lZCBpbnQgdGltZW91dCkKK3sKKwl1bnNp
Z25lZCBpbnQgY2xhc3MsIGluc3Q7CisJc3RydWN0IHRpbWVzcGVjIHRzID0ge307CisJaWd0X3Nw
aW5fdCAqc3BpblsyXTsKKwl1aW50NjRfdCBlbGFwc2VkOworCXVpbnQzMl90IGN0eFsyXTsKKwor
CWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImNsYXNzIiwgIiV1IiwgJmNsYXNz
KSA9PSAxKTsKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJpbnN0YW5jZSIs
ICIldSIsICZpbnN0KSA9PSAxKTsKKworCXNldF9oZWFydGJlYXQoZW5naW5lLCB0aW1lb3V0KTsK
KworCWN0eFswXSA9IGNyZWF0ZV9jb250ZXh0KGk5MTUsIGNsYXNzLCBpbnN0LCAxMDIzKTsKKwlz
cGluWzBdID0gaWd0X3NwaW5fbmV3KGk5MTUsIGN0eFswXSwKKwkJCSAgICAgICAuZmxhZ3MgPSAo
SUdUX1NQSU5fTk9fUFJFRU1QVElPTiB8CisJCQkJCSBJR1RfU1BJTl9QT0xMX1JVTiB8CisJCQkJ
CSBJR1RfU1BJTl9GRU5DRV9PVVQpKTsKKwlpZ3Rfc3Bpbl9idXN5d2FpdF91bnRpbF9zdGFydGVk
KHNwaW5bMF0pOworCisJY3R4WzFdID0gY3JlYXRlX2NvbnRleHQoaTkxNSwgY2xhc3MsIGluc3Qs
IC0xMDIzKTsKKwlpZ3RfbnNlY19lbGFwc2VkKCZ0cyk7CisJc3BpblsxXSA9IGlndF9zcGluX25l
dyhpOTE1LCBjdHhbMV0sIC5mbGFncyA9IElHVF9TUElOX1BPTExfUlVOKTsKKwlpZ3Rfc3Bpbl9i
dXN5d2FpdF91bnRpbF9zdGFydGVkKHNwaW5bMV0pOworCWVsYXBzZWQgPSBpZ3RfbnNlY19lbGFw
c2VkKCZ0cyk7CisKKwlpZ3Rfc3Bpbl9mcmVlKGk5MTUsIHNwaW5bMV0pOworCisJaWd0X2Fzc2Vy
dF9lcShzeW5jX2ZlbmNlX3dhaXQoc3BpblswXS0+b3V0X2ZlbmNlLCAxKSwgMCk7CisJaWd0X2Fz
c2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1cyhzcGluWzBdLT5vdXRfZmVuY2UpLCAtRUlPKTsKKwor
CWlndF9zcGluX2ZyZWUoaTkxNSwgc3BpblswXSk7CisKKwlnZW1fY29udGV4dF9kZXN0cm95KGk5
MTUsIGN0eFsxXSk7CisJZ2VtX2NvbnRleHRfZGVzdHJveShpOTE1LCBjdHhbMF0pOworCWdlbV9x
dWllc2NlbnRfZ3B1KGk5MTUpOworCisJcmV0dXJuIGVsYXBzZWQ7Cit9CisKK3N0YXRpYyB2b2lk
IHRlc3RfcHJlY2lzZShpbnQgaTkxNSwgaW50IGVuZ2luZSkKK3sKKwlpbnQgZGVsYXlzW10gPSB7
IDEsIDUwLCAxMDAsIDUwMCB9OworCXVuc2lnbmVkIGludCBzYXZlZDsKKworCWlndF9yZXF1aXJl
KGlndF9zeXNmc19wcmludGYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1IiwgMSkg
PT0gMSk7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRf
aW50ZXJ2YWxfbXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBo
ZWFydGJlYXRfaW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1fcXVpZXNjZW50X2dwdShp
OTE1KTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShkZWxheXMpOyBpKyspIHsK
KwkJdWludDY0X3QgZWxhcHNlZDsKKworCQllbGFwc2VkID0gX190ZXN0X3RpbWVvdXQoaTkxNSwg
ZW5naW5lLCBkZWxheXNbaV0pOworCQlpZ3RfaW5mbygiaGVhcnRiZWF0X2ludGVydmFsX21zOiVk
LCBlbGFwc2VkPSUuM2Ztc1slZF1cbiIsCisJCQkgZGVsYXlzW2ldLCBlbGFwc2VkICogMWUtNiwK
KwkJCQkoaW50KShlbGFwc2VkIC8gMTAwMCAvIDEwMDApCisJCQkgKTsKKworCQkvKgorCQkgKiBJ
dCB0YWtlcyBhIGNvdXBsZSBvZiBtaXNzZWQgaGVhcnRiZWF0cyBiZWZvcmUgd2Ugc3RhcnQKKwkJ
ICogdGVybWluYXRpbmcgaG9ncywgYW5kIGEgbGl0dGxlIGJpdCBvZiBqaWZmaWUgc2xhY2sgZm9y
CisJCSAqIHNjaGVkdWxpbmcgYXQgZWFjaCBzdGVwLiAxNTBtcyBzaG91bGQgY292ZXIgYWxsIG9m
IG91cgorCQkgKiBzaW5zIGFuZCBiZSB1c2VmdWwgdG9sZXJhbmNlLgorCQkgKi8KKwkJaWd0X2Fz
c2VydF9mKGVsYXBzZWQgLyAxMDAwIC8gMTAwMCA8IDMgKiBkZWxheXNbaV0gKyAxNTAsCisJCQkg
ICAgICJIZWFydGJlYXQgaW50ZXJ2YWwgKGFuZCBDUFIpIGV4Y2VlZGVkIHJlcXVlc3QhXG4iKTsK
Kwl9CisKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKwlzZXRfaGVhcnRiZWF0KGVuZ2luZSwg
c2F2ZWQpOworfQorCitzdGF0aWMgdm9pZCB0ZXN0X25vcHJlZW1wdChpbnQgaTkxNSwgaW50IGVu
Z2luZSkKK3sKKwlpbnQgZGVsYXlzW10gPSB7IDEsIDUwLCAxMDAsIDUwMCB9OworCXVuc2lnbmVk
IGludCBzYXZlZDsKKworCS8qIFRlc3QgaGVhcnRiZWF0cyB3aXRoIGZvcmNlZCBwcmVlbXB0aW9u
ICBkaXNhYmxlZCAqLworCWlndF9zeXNmc19wcmludGYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0
X21zIiwgIiV1IiwgMCk7CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJo
ZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1Zygi
SW5pdGlhbCBoZWFydGJlYXRfaW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1fcXVpZXNj
ZW50X2dwdShpOTE1KTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgQVJSQVlfU0laRShkZWxheXMp
OyBpKyspIHsKKwkJdWludDY0X3QgZWxhcHNlZDsKKworCQllbGFwc2VkID0gX190ZXN0X3RpbWVv
dXQoaTkxNSwgZW5naW5lLCBkZWxheXNbaV0pOworCQlpZ3RfaW5mbygiaGVhcnRiZWF0X2ludGVy
dmFsX21zOiVkLCBlbGFwc2VkPSUuM2Ztc1slZF1cbiIsCisJCQkgZGVsYXlzW2ldLCBlbGFwc2Vk
ICogMWUtNiwKKwkJCQkoaW50KShlbGFwc2VkIC8gMTAwMCAvIDEwMDApCisJCQkgKTsKKworCQkv
KgorCQkgKiBJdCB0YWtlcyBhIHNldmVyYWwgbWlzc2VkIGhlYXJ0YmVhdHMgYmVmb3JlIHdlIHN0
YXJ0CisJCSAqIHRlcm1pbmF0aW5nIGhvZ3MsIGFuZCBhIGxpdHRsZSBiaXQgb2YgamlmZmllIHNs
YWNrIGZvcgorCQkgKiBzY2hlZHVsaW5nIGF0IGVhY2ggc3RlcC4gMjUwbXMgc2hvdWxkIGNvdmVy
IGFsbCBvZiBvdXIKKwkJICogc2lucyBhbmQgYmUgdXNlZnVsIHRvbGVyYW5jZS4KKwkJICovCisJ
CWlndF9hc3NlcnRfZihlbGFwc2VkIC8gMTAwMCAvIDEwMDAgPCA1ICogZGVsYXlzW2ldICsgMTUw
LAorCQkJICAgICAiSGVhcnRiZWF0IGludGVydmFsIChhbmQgQ1BSKSBleGNlZWRlZCByZXF1ZXN0
IVxuIik7CisJfQorCisJZ2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisJc2V0X2hlYXJ0YmVhdChl
bmdpbmUsIHNhdmVkKTsKK30KKworc3RhdGljIHZvaWQgY2xpZW50KGludCBpOTE1LCBpbnQgZW5n
aW5lLCBpbnQgKmN0bCwgaW50IGR1cmF0aW9uLCBpbnQgZXhwZWN0KQoreworCXVuc2lnbmVkIGlu
dCBjbGFzcywgaW5zdDsKKwl1bnNpZ25lZCBsb25nIGNvdW50ID0gMDsKKwl1aW50MzJfdCBjdHg7
CisKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJjbGFzcyIsICIldSIsICZj
bGFzcykgPT0gMSk7CisJaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAiaW5zdGFu
Y2UiLCAiJXUiLCAmaW5zdCkgPT0gMSk7CisKKwljdHggPSBjcmVhdGVfY29udGV4dChpOTE1LCBj
bGFzcywgaW5zdCwgMCk7CisKKwl3aGlsZSAoIVJFQURfT05DRSgqY3RsKSkgeworCQlpZ3Rfc3Bp
bl90ICpzcGluOworCisJCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwgY3R4LAorCQkJCSAgICAu
ZmxhZ3MgPSAoSUdUX1NQSU5fTk9fUFJFRU1QVElPTiB8CisJCQkJCSAgICAgIElHVF9TUElOX1BP
TExfUlVOIHwKKwkJCQkJICAgICAgSUdUX1NQSU5fRkVOQ0VfT1VUKSk7CisJCWlndF9zcGluX2J1
c3l3YWl0X3VudGlsX3N0YXJ0ZWQoc3Bpbik7CisKKwkJaWd0X3NwaW5fc2V0X3RpbWVvdXQoc3Bp
biwgKHVpbnQ2NF90KWR1cmF0aW9uICogMTAwMCAqIDEwMDApOworCQlzeW5jX2ZlbmNlX3dhaXQo
c3Bpbi0+b3V0X2ZlbmNlLCAtMSk7CisKKwkJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1
cyhzcGluLT5vdXRfZmVuY2UpLCBleHBlY3QpOworCQljb3VudCsrOworCX0KKworCWdlbV9jb250
ZXh0X2Rlc3Ryb3koaTkxNSwgY3R4KTsKKwlpZ3RfaW5mbygiJXMgY2xpZW50IGNvbXBsZXRlZCAl
bHUgc3BpbnNcbiIsCisJCSBleHBlY3QgPCAwID8gIkJhZCIgOiAiR29vZCIsIGNvdW50KTsKK30K
Kworc3RhdGljIHZvaWQgc2lnaWduKGludCBzaWcpCit7Cit9CisKK3N0YXRpYyB2b2lkIHdhaXRf
dW50aWwoaW50IGR1cmF0aW9uKQoreworCXNpZ25hbChTSUdDSExELCBzaWdpZ24pOworCXNsZWVw
KGR1cmF0aW9uKTsKKwlzaWduYWwoU0lHQ0hMRCwgU0lHX0lHTik7Cit9CisKK3N0YXRpYyB2b2lk
IF9fdGVzdF9taXhlZChpbnQgaTkxNSwgaW50IGVuZ2luZSwKKwkJCSBpbnQgaGVhcnRiZWF0LAor
CQkJIGludCBnb29kLAorCQkJIGludCBiYWQsCisJCQkgaW50IGR1cmF0aW9uKQoreworCXVuc2ln
bmVkIGludCBzYXZlZDsKKwlpbnQgKnNoYXJlZDsKKworCS8qCisJICogR2l2ZW4gdHdvIGNsaWVu
dHMgb2Ygd2hpY2ggb25lIGlzIGEgaG9nLCBiZSBzdXJlIHdlIGNsZWFubHkKKwkgKiB0ZXJtaW5h
dGUgdGhlIGhvZyBsZWF2aW5nIHRoZSBnb29kIGNsaWVudCB0byBydW4uCisJICovCisKKwlpZ3Rf
YXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAi
JXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRfaW50ZXJ2
YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKworCXNoYXJl
ZCA9IG1tYXAoTlVMTCwgNDA5NiwgUFJPVF9XUklURSwgTUFQX1NIQVJFRCB8IE1BUF9BTk9OLCAt
MSwgMCk7CisJaWd0X2Fzc2VydChzaGFyZWQgIT0gTUFQX0ZBSUxFRCk7CisKKwlzZXRfaGVhcnRi
ZWF0KGVuZ2luZSwgaGVhcnRiZWF0KTsKKworCWlndF9mb3JrKGNoaWxkLCAxKSAvKiBnb29kIGNs
aWVudCAqLworCQljbGllbnQoaTkxNSwgZW5naW5lLCBzaGFyZWQsIGdvb2QsIDEpOworCWlndF9m
b3JrKGNoaWxkLCAxKSAvKiBiYWQgY2xpZW50ICovCisJCWNsaWVudChpOTE1LCBlbmdpbmUsIHNo
YXJlZCwgYmFkLCAtRUlPKTsKKworCXdhaXRfdW50aWwoZHVyYXRpb24pOworCisJKnNoYXJlZCA9
IHRydWU7CisJaWd0X3dhaXRjaGlsZHJlbigpOworCW11bm1hcChzaGFyZWQsIDQwOTYpOworCisJ
Z2VtX3F1aWVzY2VudF9ncHUoaTkxNSk7CisJc2V0X2hlYXJ0YmVhdChlbmdpbmUsIHNhdmVkKTsK
K30KKworc3RhdGljIHZvaWQgdGVzdF9taXhlZChpbnQgaTkxNSwgaW50IGVuZ2luZSkKK3sKKwlp
Z3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgInByZWVtcHRfdGltZW91dF9tcyIsICIldSIsIDEpOwor
CV9fdGVzdF9taXhlZChpOTE1LCBlbmdpbmUsIDEwLCAxMCwgMTAwLCA1KTsKK30KKworc3RhdGlj
IHZvaWQgdGVzdF9sb25nKGludCBpOTE1LCBpbnQgZW5naW5lKQoreworCWlndF9zeXNmc19wcmlu
dGYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1IiwgMCk7CisJX190ZXN0X21peGVk
KGk5MTUsIGVuZ2luZSwKKwkJICAgICA2MCAqIDEwMDAsIC8qIDYwcyAqLworCQkgICAgIDYwICog
MTAwMCwgLyogNjBzICovCisJCSAgICAgMzAwICogMTAwMCwgLyogNW1pbiAqLworCQkgICAgIDI0
ICogMzYwMCAvKiAyNGhvdXJzICovKTsKK30KKworc3RhdGljIHZvaWQgdGVzdF9vZmYoaW50IGk5
MTUsIGludCBlbmdpbmUpCit7CisJdW5zaWduZWQgaW50IGNsYXNzLCBpbnN0OworCXVuc2lnbmVk
IGludCBzYXZlZCwgZGVsYXk7CisJaWd0X3NwaW5fdCAqc3BpbjsKKwl1aW50MzJfdCBjdHg7CisK
KwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxf
bXMiLCAiJXUiLCAmc2F2ZWQpID09IDEpOworCWlndF9kZWJ1ZygiSW5pdGlhbCBoZWFydGJlYXRf
aW50ZXJ2YWxfbXM6JXVcbiIsIHNhdmVkKTsKKwlnZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKKwor
CWlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgImNsYXNzIiwgIiV1IiwgJmNsYXNz
KSA9PSAxKTsKKwlpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJpbnN0YW5jZSIs
ICIldSIsICZpbnN0KSA9PSAxKTsKKworCWRlbGF5ID0gLTE7CisJaWd0X3N5c2ZzX3ByaW50Zihl
bmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAwKTsKKwlpZ3Rfc3lzZnNfc2Nh
bmYoZW5naW5lLCAiaGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1IiwgJmRlbGF5KTsKKwlpZ3Rf
cmVxdWlyZShkZWxheSA9PSAwKTsKKworCWN0eCA9IGNyZWF0ZV9jb250ZXh0KGk5MTUsIGNsYXNz
LCBpbnN0LCAwKTsKKworCXNwaW4gPSBpZ3Rfc3Bpbl9uZXcoaTkxNSwgY3R4LAorCQkJICAgIC5m
bGFncyA9IChJR1RfU1BJTl9QT0xMX1JVTiB8CisJCQkJICAgICAgSUdUX1NQSU5fTk9fUFJFRU1Q
VElPTiB8CisJCQkJICAgICAgSUdUX1NQSU5fRkVOQ0VfT1VUKSk7CisJaWd0X3NwaW5fYnVzeXdh
aXRfdW50aWxfc3RhcnRlZChzcGluKTsKKworCWZvciAoaW50IGkgPSAwOyBpIDwgMTUwOyBpKysp
IHsKKwkJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3N0YXR1cyhzcGluLT5vdXRfZmVuY2UpLCAw
KTsKKwkJc2xlZXAoMSk7CisJfQorCisJZGVsYXkgPSAtMTsKKwlpZ3Rfc3lzZnNfcHJpbnRmKGVu
Z2luZSwgImhlYXJ0YmVhdF9pbnRlcnZhbF9tcyIsICIldSIsIDEpOworCWlndF9zeXNmc19zY2Fu
ZihlbmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmZGVsYXkpOworCWlndF9h
c3NlcnRfZXEoZGVsYXksIDEpOworCisJaWd0X2Fzc2VydF9lcShzeW5jX2ZlbmNlX3dhaXQoc3Bp
bi0+b3V0X2ZlbmNlLCAyNTApLCAwKTsKKwlpZ3RfYXNzZXJ0X2VxKHN5bmNfZmVuY2Vfc3RhdHVz
KHNwaW4tPm91dF9mZW5jZSksIC1FSU8pOworCisJaWd0X3NwaW5fZnJlZShpOTE1LCBzcGluKTsK
KworCWdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOworCWlndF9zeXNmc19wcmludGYoZW5naW5lLCAi
aGVhcnRiZWF0X2ludGVydmFsX21zIiwgIiV1Iiwgc2F2ZWQpOworCWlndF9zeXNmc19zY2FuZihl
bmdpbmUsICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLCAiJXUiLCAmZGVsYXkpOworCWlndF9hc3Nl
cnRfZXEoZGVsYXksIHNhdmVkKTsKK30KKworaWd0X21haW4KK3sKKwljb25zdCBzdHJ1Y3QgaW50
ZWxfZXhlY3V0aW9uX2VuZ2luZTIgKml0OworCWludCBpOTE1ID0gLTEsIGVuZ2luZXMgPSAtMTsK
KworCWlndF9maXh0dXJlIHsKKwkJaW50IHN5czsKKworCQlpOTE1ID0gZHJtX29wZW5fZHJpdmVy
KERSSVZFUl9JTlRFTCk7CisJCWlndF9yZXF1aXJlX2dlbShpOTE1KTsKKworCQlzeXMgPSBpZ3Rf
c3lzZnNfb3BlbihpOTE1KTsKKwkJaWd0X3JlcXVpcmUoc3lzICE9IC0xKTsKKworCQllbmdpbmVz
ID0gb3BlbmF0KHN5cywgImVuZ2luZSIsIE9fUkRPTkxZKTsKKwkJaWd0X3JlcXVpcmUoZW5naW5l
cyAhPSAtMSk7CisJCWNsb3NlKHN5cyk7CisKKwkJZW5hYmxlX2hhbmdjaGVjayhpOTE1LCB0cnVl
KTsKKwl9CisKKwlfX2Zvcl9lYWNoX3N0YXRpY19lbmdpbmUoaXQpIHsKKwkJaWd0X3N1YnRlc3Rf
Z3JvdXAgeworCQkJaW50IGVuZ2luZSA9IC0xOworCQkJY2hhciAqbmFtZSA9IE5VTEw7CisKKwkJ
CWlndF9maXh0dXJlIHsKKwkJCQlzdHJ1Y3Qgc3RhdCBzdDsKKworCQkJCWVuZ2luZSA9IG9wZW5h
dChlbmdpbmVzLCBpdC0+bmFtZSwgT19SRE9OTFkpOworCQkJCWlndF9yZXF1aXJlKGZzdGF0YXQo
ZW5naW5lLAorCQkJCQkJICAgICJoZWFydGJlYXRfaW50ZXJ2YWxfbXMiLAorCQkJCQkJICAgICZz
dCwgMCkgPT0gMCk7CisJCQkJbmFtZSA9IGlndF9zeXNmc19nZXQoZW5naW5lLCAibmFtZSIpOwor
CQkJfQorCQkJaWYgKCFuYW1lKQorCQkJCWNvbnRpbnVlOworCisJCQlpZ3Rfc3VidGVzdF9mKCIl
cy1pZGVtcG90ZW50IiwgbmFtZSkKKwkJCQl0ZXN0X2lkZW1wb3RlbnQoaTkxNSwgZW5naW5lKTsK
KwkJCWlndF9zdWJ0ZXN0X2YoIiVzLWludmFsaWQiLCBuYW1lKQorCQkJCXRlc3RfaW52YWxpZChp
OTE1LCBlbmdpbmUpOworCisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1wcmVjaXNlIiwgbmFtZSkKKwkJ
CQl0ZXN0X3ByZWNpc2UoaTkxNSwgZW5naW5lKTsKKwkJCWlndF9zdWJ0ZXN0X2YoIiVzLW5vcHJl
ZW1wdCIsIG5hbWUpCisJCQkJdGVzdF9ub3ByZWVtcHQoaTkxNSwgZW5naW5lKTsKKwkJCWlndF9z
dWJ0ZXN0X2YoIiVzLW1peGVkIiwgbmFtZSkKKwkJCQl0ZXN0X21peGVkKGk5MTUsIGVuZ2luZSk7
CisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1vZmYiLCBuYW1lKQorCQkJCXRlc3Rfb2ZmKGk5MTUsIGVu
Z2luZSk7CisJCQlpZ3Rfc3VidGVzdF9mKCIlcy1sb25nIiwgbmFtZSkKKwkJCQl0ZXN0X2xvbmco
aTkxNSwgZW5naW5lKTsKKworCQkJZnJlZShuYW1lKTsKKwkJCWNsb3NlKGVuZ2luZSk7CisJCX0K
Kwl9CisKKwlpZ3RfZml4dHVyZSB7CisJCWNsb3NlKGVuZ2luZXMpOworCQljbG9zZShpOTE1KTsK
Kwl9Cit9CmRpZmYgLS1naXQgYS90ZXN0cy9tZXNvbi5idWlsZCBiL3Rlc3RzL21lc29uLmJ1aWxk
CmluZGV4IGE2OTkzNzdlMy4uMjNmNzMwYzIwIDEwMDY0NAotLS0gYS90ZXN0cy9tZXNvbi5idWls
ZAorKysgYi90ZXN0cy9tZXNvbi5idWlsZApAQCAtMjM4LDYgKzIzOCw3IEBAIGk5MTVfcHJvZ3Mg
PSBbCiAJJ2k5MTVfcXVlcnknLAogCSdpOTE1X3NlbGZ0ZXN0JywKIAknaTkxNV9zdXNwZW5kJywK
Kwknc3lzZnNfaGVhcnRiZWF0X2ludGVydmFsJywKIAknc3lzZnNfcHJlZW1wdGlvbl90aW1lb3V0
JywKIF0KIAotLSAKMi4yNC4wLnJjMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
