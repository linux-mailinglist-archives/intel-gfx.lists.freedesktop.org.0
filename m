Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC660D4DE5
	for <lists+intel-gfx@lfdr.de>; Sat, 12 Oct 2019 09:23:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 84C1C6E45D;
	Sat, 12 Oct 2019 07:23:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA606E456
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Oct 2019 07:23:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18811656-1500050 
 for <intel-gfx@lists.freedesktop.org>; Sat, 12 Oct 2019 08:23:09 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 12 Oct 2019 08:23:06 +0100
Message-Id: <20191012072308.30312-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Subject: [Intel-gfx] [CI 1/3] drm/i915/perf: allow for CS OA configs to be
 created lazily
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

RnJvbTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoK
SGVyZSB3ZSBpbnRyb2R1Y2UgYSBtZWNoYW5pc20gYnkgd2hpY2ggdGhlIGV4ZWNidWYgcGFydCBv
ZiB0aGUgaTkxNQpkcml2ZXIgd2lsbCBiZSBhYmxlIHRvIHJlcXVlc3QgdGhhdCBhIGJhdGNoIGJ1
ZmZlciBjb250YWluaW5nIHRoZQpwcm9ncmFtbWluZyBmb3IgYSBwYXJ0aWN1bGFyIE9BIGNvbmZp
ZyBiZSBjcmVhdGVkLgoKV2UnbGwgZXhlY3V0ZSB0aGVzZSBPQSBjb25maWd1cmF0aW9uIGJ1ZmZl
cnMgcmlnaHQgYmVmb3JlIGV4ZWN1dGluZyBhCnNldCBvZiB1c2Vyc3BhY2UgY29tbWFuZHMgc28g
dGhhdCBhIHBhcnRpY3VsYXIgdXNlciBiYXRjaGJ1ZmZlciBiZQpleGVjdXRlZCB3aXRoIGEgZ2l2
ZW4gT0EgY29uZmlndXJhdGlvbi4KClRoaXMgbWVjaGFuaXNtIGVzc2VudGlhbGx5IGFsbG93cyB0
aGUgdXNlcnNwYWNlIGRyaXZlciB0byBnbyB0aHJvdWdoCnNldmVyYWwgT0EgY29uZmlndXJhdGlv
biB3aXRob3V0IGhhdmluZyB0byBvcGVuL2Nsb3NlIHRoZSBpOTE1L3BlcmYKc3RyZWFtLgoKdjI6
IE5vIG5lZWQgZm9yIGxvY2tpbmcgb24gb2JqZWN0IE9BIGNvbmZpZyBvYmplY3QgY3JlYXRpb24g
KENocmlzKQogICAgRmx1c2ggY3B1IG1hcHBpbmcgb2YgT0EgY29uZmlnIChDaHJpcykKCnYzOiBQ
cm9wZXJseSBkZWFsIHdpdGggdGhlIHBlcmZfbWV0cmljIGxvY2sgKENocmlzL0xpb25lbCkKCnY0
OiBGaXggb2EgY29uZmlnIHVucmVmL3B1dCB3aGVuIG5vdCBmb3VuZCAoTGlvbmVsKQoKdjU6IEFs
bG9jYXRlIEJPcyBmb3IgY29uZmlndXJhdGlvbnMgb24gdGhlIHN0cmVhbSBpbnN0ZWFkIG9mIGds
b2JhbGx5CiAgICAoTGlvbmVsKQoKdjY6IEZpeCA2NGJpdCBkaXZpc2lvbiAoQ2hyaXMpCgp2Nzog
U3RvcmUgYWxsb2NhdGVkIGNvbmZpZyBCT3MgaW50byB0aGUgc3RyZWFtIChMaW9uZWwpCgpTaWdu
ZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4g
KHY0KQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4gKHY0KQotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5o
IHwgICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jICAgICAgICAgICAgIHwg
MTA3ICsrKysrKysrKysrLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5o
ICAgICAgICAgICAgIHwgIDI0ICsrKysrCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmZf
dHlwZXMuaCAgICAgICB8ICAyMyArKy0tCiA0IGZpbGVzIGNoYW5nZWQsIDEwMiBpbnNlcnRpb25z
KCspLCA1MyBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9ncHVfY29tbWFuZHMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dw
dV9jb21tYW5kcy5oCmluZGV4IGIwMjI3YWIyZmUxYi4uMDk4NzEwMGM3ODZiIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaAorKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaApAQCAtMTM4LDYgKzEzOCw3
IEBACiAvKiBHZW4xMSsuIGFkZHIgPSBiYXNlICsgKGN0eF9yZXN0b3JlID8gb2Zmc2V0ICYgR0VO
TUFTSygxMiwyKSA6IG9mZnNldCkgKi8KICNkZWZpbmUgICBNSV9MUklfQ1NfTU1JTwkJKDE8PDE5
KQogI2RlZmluZSAgIE1JX0xSSV9GT1JDRV9QT1NURUQJCSgxPDwxMikKKyNkZWZpbmUgTUlfTE9B
RF9SRUdJU1RFUl9JTU1fTUFYX1JFR1MgKDEyNikKICNkZWZpbmUgTUlfU1RPUkVfUkVHSVNURVJf
TUVNICAgICAgICBNSV9JTlNUUigweDI0LCAxKQogI2RlZmluZSBNSV9TVE9SRV9SRUdJU1RFUl9N
RU1fR0VOOCAgIE1JX0lOU1RSKDB4MjQsIDIpCiAjZGVmaW5lICAgTUlfU1JNX0xSTV9HTE9CQUxf
R1RUCQkoMTw8MjIpCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jCmluZGV4IGM0YTQzNmRmYjdkYi4u
NTBmMmY5NzIwMjBkIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYu
YworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwpAQCAtMzY5LDUyICszNjks
NTIgQEAgc3RydWN0IHBlcmZfb3Blbl9wcm9wZXJ0aWVzIHsKIAlzdHJ1Y3QgaW50ZWxfZW5naW5l
X2NzICplbmdpbmU7CiB9OwogCitzdHJ1Y3QgaTkxNV9vYV9jb25maWdfYm8geworCXN0cnVjdCBs
bGlzdF9ub2RlIG5vZGU7CisKKwlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZzsKKwlz
dHJ1Y3QgaTkxNV92bWEgKnZtYTsKK307CisKIHN0YXRpYyBlbnVtIGhydGltZXJfcmVzdGFydCBv
YV9wb2xsX2NoZWNrX3RpbWVyX2NiKHN0cnVjdCBocnRpbWVyICpocnRpbWVyKTsKIAotc3RhdGlj
IHZvaWQgZnJlZV9vYV9jb25maWcoc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCit2
b2lkIGk5MTVfb2FfY29uZmlnX3JlbGVhc2Uoc3RydWN0IGtyZWYgKnJlZikKIHsKKwlzdHJ1Y3Qg
aTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZyA9CisJCWNvbnRhaW5lcl9vZihyZWYsIHR5cGVvZigq
b2FfY29uZmlnKSwgcmVmKTsKKwogCWlmICghUFRSX0VSUihvYV9jb25maWctPmZsZXhfcmVncykp
CiAJCWtmcmVlKG9hX2NvbmZpZy0+ZmxleF9yZWdzKTsKIAlpZiAoIVBUUl9FUlIob2FfY29uZmln
LT5iX2NvdW50ZXJfcmVncykpCiAJCWtmcmVlKG9hX2NvbmZpZy0+Yl9jb3VudGVyX3JlZ3MpOwog
CWlmICghUFRSX0VSUihvYV9jb25maWctPm11eF9yZWdzKSkKIAkJa2ZyZWUob2FfY29uZmlnLT5t
dXhfcmVncyk7Ci0Ja2ZyZWUob2FfY29uZmlnKTsKLX0KLQotc3RhdGljIHZvaWQgcHV0X29hX2Nv
bmZpZyhzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2NvbmZpZykKLXsKLQlpZiAoIWF0b21pY19k
ZWNfYW5kX3Rlc3QoJm9hX2NvbmZpZy0+cmVmX2NvdW50KSkKLQkJcmV0dXJuOwogCi0JZnJlZV9v
YV9jb25maWcob2FfY29uZmlnKTsKKwlrZnJlZV9yY3Uob2FfY29uZmlnLCByY3UpOwogfQogCi1z
dGF0aWMgaW50IGdldF9vYV9jb25maWcoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwKLQkJCSBpbnQg
bWV0cmljc19zZXQsCi0JCQkgc3RydWN0IGk5MTVfb2FfY29uZmlnICoqb3V0X2NvbmZpZykKK3N0
cnVjdCBpOTE1X29hX2NvbmZpZyAqCitpOTE1X3BlcmZfZ2V0X29hX2NvbmZpZyhzdHJ1Y3QgaTkx
NV9wZXJmICpwZXJmLCBpbnQgbWV0cmljc19zZXQpCiB7Ci0JaW50IHJldDsKLQotCWlmIChtZXRy
aWNzX3NldCA9PSAxKSB7Ci0JCSpvdXRfY29uZmlnID0gJnBlcmYtPnRlc3RfY29uZmlnOwotCQlh
dG9taWNfaW5jKCZwZXJmLT50ZXN0X2NvbmZpZy5yZWZfY291bnQpOwotCQlyZXR1cm4gMDsKLQl9
Ci0KLQlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnBlcmYtPm1ldHJpY3NfbG9jayk7
Ci0JaWYgKHJldCkKLQkJcmV0dXJuIHJldDsKKwlzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKm9hX2Nv
bmZpZzsKIAotCSpvdXRfY29uZmlnID0gaWRyX2ZpbmQoJnBlcmYtPm1ldHJpY3NfaWRyLCBtZXRy
aWNzX3NldCk7Ci0JaWYgKCEqb3V0X2NvbmZpZykKLQkJcmV0ID0gLUVJTlZBTDsKKwlyY3VfcmVh
ZF9sb2NrKCk7CisJaWYgKG1ldHJpY3Nfc2V0ID09IDEpCisJCW9hX2NvbmZpZyA9ICZwZXJmLT50
ZXN0X2NvbmZpZzsKIAllbHNlCi0JCWF0b21pY19pbmMoJigqb3V0X2NvbmZpZyktPnJlZl9jb3Vu
dCk7CisJCW9hX2NvbmZpZyA9IGlkcl9maW5kKCZwZXJmLT5tZXRyaWNzX2lkciwgbWV0cmljc19z
ZXQpOworCWlmIChvYV9jb25maWcpCisJCW9hX2NvbmZpZyA9IGk5MTVfb2FfY29uZmlnX2dldChv
YV9jb25maWcpOworCXJjdV9yZWFkX3VubG9jaygpOwogCi0JbXV0ZXhfdW5sb2NrKCZwZXJmLT5t
ZXRyaWNzX2xvY2spOworCXJldHVybiBvYV9jb25maWc7Cit9CiAKLQlyZXR1cm4gcmV0Oworc3Rh
dGljIHZvaWQgZnJlZV9vYV9jb25maWdfYm8oc3RydWN0IGk5MTVfb2FfY29uZmlnX2JvICpvYV9i
bykKK3sKKwlpOTE1X29hX2NvbmZpZ19wdXQob2FfYm8tPm9hX2NvbmZpZyk7CisJaTkxNV92bWFf
cHV0KG9hX2JvLT52bWEpOworCWtmcmVlKG9hX2JvKTsKIH0KIAogc3RhdGljIHUzMiBnZW44X29h
X2h3X3RhaWxfcmVhZChzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQpAQCAtMTMzNyw2
ICsxMzM3LDE2IEBAIGZyZWVfb2FfYnVmZmVyKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJl
YW0pCiAJc3RyZWFtLT5vYV9idWZmZXIudmFkZHIgPSBOVUxMOwogfQogCitzdGF0aWMgdm9pZAor
ZnJlZV9vYV9jb25maWdzKHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCit7CisJc3Ry
dWN0IGk5MTVfb2FfY29uZmlnX2JvICpvYV9ibywgKnRtcDsKKworCWk5MTVfb2FfY29uZmlnX3B1
dChzdHJlYW0tPm9hX2NvbmZpZyk7CisJbGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShvYV9ibywg
dG1wLCBzdHJlYW0tPm9hX2NvbmZpZ19ib3MuZmlyc3QsIG5vZGUpCisJCWZyZWVfb2FfY29uZmln
X2JvKG9hX2JvKTsKK30KKwogc3RhdGljIHZvaWQgaTkxNV9vYV9zdHJlYW1fZGVzdHJveShzdHJ1
Y3QgaTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtKQogewogCXN0cnVjdCBpOTE1X3BlcmYgKnBlcmYg
PSBzdHJlYW0tPnBlcmY7CkBAIC0xMzU4LDcgKzEzNjgsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X29h
X3N0cmVhbV9kZXN0cm95KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJaWYgKHN0
cmVhbS0+Y3R4KQogCQlvYV9wdXRfcmVuZGVyX2N0eF9pZChzdHJlYW0pOwogCi0JcHV0X29hX2Nv
bmZpZyhzdHJlYW0tPm9hX2NvbmZpZyk7CisJZnJlZV9vYV9jb25maWdzKHN0cmVhbSk7CiAKIAlp
ZiAocGVyZi0+c3B1cmlvdXNfcmVwb3J0X3JzLm1pc3NlZCkgewogCQlEUk1fTk9URSgiJWQgc3B1
cmlvdXMgT0EgcmVwb3J0IG5vdGljZXMgc3VwcHJlc3NlZCBkdWUgdG8gcmF0ZWxpbWl0aW5nXG4i
LApAQCAtMTUwNSwxMCArMTUxNSw2IEBAIHN0YXRpYyBpbnQgYWxsb2Nfb2FfYnVmZmVyKHN0cnVj
dCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0pCiAJCWdvdG8gZXJyX3VucGluOwogCX0KIAotCURS
TV9ERUJVR19EUklWRVIoIk9BIEJ1ZmZlciBpbml0aWFsaXplZCwgZ3R0IG9mZnNldCA9IDB4JXgs
IHZhZGRyID0gJXBcbiIsCi0JCQkgaTkxNV9nZ3R0X29mZnNldChzdHJlYW0tPm9hX2J1ZmZlci52
bWEpLAotCQkJIHN0cmVhbS0+b2FfYnVmZmVyLnZhZGRyKTsKLQogCXJldHVybiAwOwogCiBlcnJf
dW5waW46CkBAIC0yMjAwLDkgKzIyMDYsMTAgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9p
bml0KHN0cnVjdCBpOTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJCX0KIAl9CiAKLQlyZXQgPSBn
ZXRfb2FfY29uZmlnKHBlcmYsIHByb3BzLT5tZXRyaWNzX3NldCwgJnN0cmVhbS0+b2FfY29uZmln
KTsKLQlpZiAocmV0KSB7CisJc3RyZWFtLT5vYV9jb25maWcgPSBpOTE1X3BlcmZfZ2V0X29hX2Nv
bmZpZyhwZXJmLCBwcm9wcy0+bWV0cmljc19zZXQpOworCWlmICghc3RyZWFtLT5vYV9jb25maWcp
IHsKIAkJRFJNX0RFQlVHKCJJbnZhbGlkIE9BIGNvbmZpZyBpZD0laVxuIiwgcHJvcHMtPm1ldHJp
Y3Nfc2V0KTsKKwkJcmV0ID0gLUVJTlZBTDsKIAkJZ290byBlcnJfY29uZmlnOwogCX0KIApAQCAt
MjIzNCw2ICsyMjQxLDkgQEAgc3RhdGljIGludCBpOTE1X29hX3N0cmVhbV9pbml0KHN0cnVjdCBp
OTE1X3BlcmZfc3RyZWFtICpzdHJlYW0sCiAJCWdvdG8gZXJyX2VuYWJsZTsKIAl9CiAKKwlEUk1f
REVCVUcoIm9wZW5pbmcgc3RyZWFtIG9hIGNvbmZpZyB1dWlkPSVzXG4iLAorCQkgIHN0cmVhbS0+
b2FfY29uZmlnLT51dWlkKTsKKwogCWhydGltZXJfaW5pdCgmc3RyZWFtLT5wb2xsX2NoZWNrX3Rp
bWVyLAogCQkgICAgIENMT0NLX01PTk9UT05JQywgSFJUSU1FUl9NT0RFX1JFTCk7CiAJc3RyZWFt
LT5wb2xsX2NoZWNrX3RpbWVyLmZ1bmN0aW9uID0gb2FfcG9sbF9jaGVja190aW1lcl9jYjsKQEAg
LTIyNDksNyArMjI1OSw3IEBAIHN0YXRpYyBpbnQgaTkxNV9vYV9zdHJlYW1faW5pdChzdHJ1Y3Qg
aTkxNV9wZXJmX3N0cmVhbSAqc3RyZWFtLAogCWZyZWVfb2FfYnVmZmVyKHN0cmVhbSk7CiAKIGVy
cl9vYV9idWZfYWxsb2M6Ci0JcHV0X29hX2NvbmZpZyhzdHJlYW0tPm9hX2NvbmZpZyk7CisJZnJl
ZV9vYV9jb25maWdzKHN0cmVhbSk7CiAKIAlpbnRlbF91bmNvcmVfZm9yY2V3YWtlX3B1dChzdHJl
YW0tPnVuY29yZSwgRk9SQ0VXQUtFX0FMTCk7CiAJaW50ZWxfZW5naW5lX3BtX3B1dChzdHJlYW0t
PmVuZ2luZSk7CkBAIC0zMDU3LDcgKzMwNjcsOCBAQCB2b2lkIGk5MTVfcGVyZl9yZWdpc3Rlcihz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAlpZiAocmV0KQogCQlnb3RvIHN5c2ZzX2Vy
cm9yOwogCi0JYXRvbWljX3NldCgmcGVyZi0+dGVzdF9jb25maWcucmVmX2NvdW50LCAxKTsKKwlw
ZXJmLT50ZXN0X2NvbmZpZy5wZXJmID0gcGVyZjsKKwlrcmVmX2luaXQoJnBlcmYtPnRlc3RfY29u
ZmlnLnJlZik7CiAKIAlnb3RvIGV4aXQ7CiAKQEAgLTMzMTUsNyArMzMyNiw4IEBAIGludCBpOTE1
X3BlcmZfYWRkX2NvbmZpZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRh
LAogCQlyZXR1cm4gLUVOT01FTTsKIAl9CiAKLQlhdG9taWNfc2V0KCZvYV9jb25maWctPnJlZl9j
b3VudCwgMSk7CisJb2FfY29uZmlnLT5wZXJmID0gcGVyZjsKKwlrcmVmX2luaXQoJm9hX2NvbmZp
Zy0+cmVmKTsKIAogCWlmICghdXVpZF9pc192YWxpZChhcmdzLT51dWlkKSkgewogCQlEUk1fREVC
VUcoIkludmFsaWQgdXVpZCBmb3JtYXQgZm9yIE9BIGNvbmZpZ1xuIik7CkBAIC0zNDE0LDcgKzM0
MjYsNyBAQCBpbnQgaTkxNV9wZXJmX2FkZF9jb25maWdfaW9jdGwoc3RydWN0IGRybV9kZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKIHN5c2ZzX2VycjoKIAltdXRleF91bmxvY2soJnBlcmYtPm1ldHJp
Y3NfbG9jayk7CiByZWdfZXJyOgotCXB1dF9vYV9jb25maWcob2FfY29uZmlnKTsKKwlpOTE1X29h
X2NvbmZpZ19wdXQob2FfY29uZmlnKTsKIAlEUk1fREVCVUcoIkZhaWxlZCB0byBhZGQgbmV3IE9B
IGNvbmZpZ1xuIik7CiAJcmV0dXJuIGVycjsKIH0KQEAgLTM0NTAsMTMgKzM0NjIsMTMgQEAgaW50
IGk5MTVfcGVyZl9yZW1vdmVfY29uZmlnX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCiAKIAlyZXQgPSBtdXRleF9sb2NrX2ludGVycnVwdGlibGUoJnBlcmYtPm1ldHJp
Y3NfbG9jayk7CiAJaWYgKHJldCkKLQkJZ290byBsb2NrX2VycjsKKwkJcmV0dXJuIHJldDsKIAog
CW9hX2NvbmZpZyA9IGlkcl9maW5kKCZwZXJmLT5tZXRyaWNzX2lkciwgKmFyZyk7CiAJaWYgKCFv
YV9jb25maWcpIHsKIAkJRFJNX0RFQlVHKCJGYWlsZWQgdG8gcmVtb3ZlIHVua25vd24gT0EgY29u
ZmlnXG4iKTsKIAkJcmV0ID0gLUVOT0VOVDsKLQkJZ290byBjb25maWdfZXJyOworCQlnb3RvIGVy
cl91bmxvY2s7CiAJfQogCiAJR0VNX0JVR19PTigqYXJnICE9IG9hX2NvbmZpZy0+aWQpOwpAQCAt
MzQ2NiwxMyArMzQ3OCwxNiBAQCBpbnQgaTkxNV9wZXJmX3JlbW92ZV9jb25maWdfaW9jdGwoc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwgdm9pZCAqZGF0YSwKIAogCWlkcl9yZW1vdmUoJnBlcmYtPm1l
dHJpY3NfaWRyLCAqYXJnKTsKIAorCW11dGV4X3VubG9jaygmcGVyZi0+bWV0cmljc19sb2NrKTsK
KwogCURSTV9ERUJVRygiUmVtb3ZlZCBjb25maWcgJXMgaWQ9JWlcbiIsIG9hX2NvbmZpZy0+dXVp
ZCwgb2FfY29uZmlnLT5pZCk7CiAKLQlwdXRfb2FfY29uZmlnKG9hX2NvbmZpZyk7CisJaTkxNV9v
YV9jb25maWdfcHV0KG9hX2NvbmZpZyk7CisKKwlyZXR1cm4gMDsKIAotY29uZmlnX2VycjoKK2Vy
cl91bmxvY2s6CiAJbXV0ZXhfdW5sb2NrKCZwZXJmLT5tZXRyaWNzX2xvY2spOwotbG9ja19lcnI6
CiAJcmV0dXJuIHJldDsKIH0KIApAQCAtMzY0Miw3ICszNjU3LDcgQEAgdm9pZCBpOTE1X3BlcmZf
aW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSkKIAogc3RhdGljIGludCBkZXN0cm95
X2NvbmZpZyhpbnQgaWQsIHZvaWQgKnAsIHZvaWQgKmRhdGEpCiB7Ci0JcHV0X29hX2NvbmZpZyhw
KTsKKwlpOTE1X29hX2NvbmZpZ19wdXQocCk7CiAJcmV0dXJuIDA7CiB9CiAKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wZXJmLmgKaW5kZXggZmY0MTJmYjBkYmJmLi45OGUxNmJlNDhhNzMgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZi5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2k5MTVfcGVyZi5oCkBAIC02LDYgKzYsNyBAQAogI2lmbmRlZiBfX0k5MTVfUEVSRl9IX18K
ICNkZWZpbmUgX19JOTE1X1BFUkZfSF9fCiAKKyNpbmNsdWRlIDxsaW51eC9rcmVmLmg+CiAjaW5j
bHVkZSA8bGludXgvdHlwZXMuaD4KIAogI2luY2x1ZGUgImk5MTVfcGVyZl90eXBlcy5oIgpAQCAt
MTMsNiArMTQsNyBAQAogc3RydWN0IGRybV9kZXZpY2U7CiBzdHJ1Y3QgZHJtX2ZpbGU7CiBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZTsKK3N0cnVjdCBpOTE1X29hX2NvbmZpZzsKIHN0cnVjdCBpbnRl
bF9jb250ZXh0Owogc3RydWN0IGludGVsX2VuZ2luZV9jczsKIApAQCAtMjcsNyArMjksMjkgQEAg
aW50IGk5MTVfcGVyZl9hZGRfY29uZmlnX2lvY3RsKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsIHZv
aWQgKmRhdGEsCiAJCQkgICAgICAgc3RydWN0IGRybV9maWxlICpmaWxlKTsKIGludCBpOTE1X3Bl
cmZfcmVtb3ZlX2NvbmZpZ19pb2N0bChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCB2b2lkICpkYXRh
LAogCQkJCSAgc3RydWN0IGRybV9maWxlICpmaWxlKTsKKwogdm9pZCBpOTE1X29hX2luaXRfcmVn
X3N0YXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKIAkJCSAgICBjb25zdCBzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOwogCitzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKgor
aTkxNV9wZXJmX2dldF9vYV9jb25maWcoc3RydWN0IGk5MTVfcGVyZiAqcGVyZiwgaW50IG1ldHJp
Y3Nfc2V0KTsKKworc3RhdGljIGlubGluZSBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKgoraTkxNV9v
YV9jb25maWdfZ2V0KHN0cnVjdCBpOTE1X29hX2NvbmZpZyAqb2FfY29uZmlnKQoreworCWlmIChr
cmVmX2dldF91bmxlc3NfemVybygmb2FfY29uZmlnLT5yZWYpKQorCQlyZXR1cm4gb2FfY29uZmln
OworCWVsc2UKKwkJcmV0dXJuIE5VTEw7Cit9CisKK3ZvaWQgaTkxNV9vYV9jb25maWdfcmVsZWFz
ZShzdHJ1Y3Qga3JlZiAqcmVmKTsKK3N0YXRpYyBpbmxpbmUgdm9pZCBpOTE1X29hX2NvbmZpZ19w
dXQoc3RydWN0IGk5MTVfb2FfY29uZmlnICpvYV9jb25maWcpCit7CisJaWYgKCFvYV9jb25maWcp
CisJCXJldHVybjsKKworCWtyZWZfcHV0KCZvYV9jb25maWctPnJlZiwgaTkxNV9vYV9jb25maWdf
cmVsZWFzZSk7Cit9CisKICNlbmRpZiAvKiBfX0k5MTVfUEVSRl9IX18gKi8KZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wZXJmX3R5cGVzLmgKaW5kZXggZWI4ZDFlYmQ1MDk1Li4zMzdjZDdkMmFkNzcg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCisrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGVyZl90eXBlcy5oCkBAIC05LDcgKzksNyBAQAog
I2luY2x1ZGUgPGxpbnV4L2F0b21pYy5oPgogI2luY2x1ZGUgPGxpbnV4L2RldmljZS5oPgogI2lu
Y2x1ZGUgPGxpbnV4L2hydGltZXIuaD4KLSNpbmNsdWRlIDxsaW51eC9saXN0Lmg+CisjaW5jbHVk
ZSA8bGludXgvbGxpc3QuaD4KICNpbmNsdWRlIDxsaW51eC9wb2xsLmg+CiAjaW5jbHVkZSA8bGlu
dXgvc3lzZnMuaD4KICNpbmNsdWRlIDxsaW51eC90eXBlcy5oPgpAQCAtMjIsNiArMjIsNyBAQAog
c3RydWN0IGRybV9pOTE1X3ByaXZhdGU7CiBzdHJ1Y3QgZmlsZTsKIHN0cnVjdCBpOTE1X2dlbV9j
b250ZXh0Oworc3RydWN0IGk5MTVfcGVyZjsKIHN0cnVjdCBpOTE1X3ZtYTsKIHN0cnVjdCBpbnRl
bF9jb250ZXh0Owogc3RydWN0IGludGVsX2VuZ2luZV9jczsKQEAgLTM3LDYgKzM4LDggQEAgc3Ry
dWN0IGk5MTVfb2FfcmVnIHsKIH07CiAKIHN0cnVjdCBpOTE1X29hX2NvbmZpZyB7CisJc3RydWN0
IGk5MTVfcGVyZiAqcGVyZjsKKwogCWNoYXIgdXVpZFtVVUlEX1NUUklOR19MRU4gKyAxXTsKIAlp
bnQgaWQ7CiAKQEAgLTUxLDcgKzU0LDggQEAgc3RydWN0IGk5MTVfb2FfY29uZmlnIHsKIAlzdHJ1
Y3QgYXR0cmlidXRlICphdHRyc1syXTsKIAlzdHJ1Y3QgZGV2aWNlX2F0dHJpYnV0ZSBzeXNmc19t
ZXRyaWNfaWQ7CiAKLQlhdG9taWNfdCByZWZfY291bnQ7CisJc3RydWN0IGtyZWYgcmVmOworCXN0
cnVjdCByY3VfaGVhZCByY3U7CiB9OwogCiBzdHJ1Y3QgaTkxNV9wZXJmX3N0cmVhbTsKQEAgLTE3
Nyw2ICsxODEsMTIgQEAgc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gewogCSAqLwogCXN0cnVjdCBp
OTE1X29hX2NvbmZpZyAqb2FfY29uZmlnOwogCisJLyoqCisJICogQG9hX2NvbmZpZ19ib3M6IEEg
bGlzdCBvZiBzdHJ1Y3QgaTkxNV9vYV9jb25maWdfYm8gYWxsb2NhdGVkIGxhemlseQorCSAqIGVh
Y2ggdGltZSBAb2FfY29uZmlnIGNoYW5nZXMuCisJICovCisJc3RydWN0IGxsaXN0X2hlYWQgb2Ff
Y29uZmlnX2JvczsKKwogCS8qKgogCSAqIEBwaW5uZWRfY3R4OiBUaGUgT0EgY29udGV4dCBzcGVj
aWZpYyBpbmZvcm1hdGlvbi4KIAkgKi8KQEAgLTMzMSwxMyArMzQxLDEzIEBAIHN0cnVjdCBpOTE1
X3BlcmYgewogCiAJLyoKIAkgKiBMb2NrIGFzc29jaWF0ZWQgd2l0aCBhZGRpbmcvbW9kaWZ5aW5n
L3JlbW92aW5nIE9BIGNvbmZpZ3MKLQkgKiBpbiBkZXZfcHJpdi0+cGVyZi5tZXRyaWNzX2lkci4K
KwkgKiBpbiBwZXJmLT5tZXRyaWNzX2lkci4KIAkgKi8KIAlzdHJ1Y3QgbXV0ZXggbWV0cmljc19s
b2NrOwogCiAJLyoKLQkgKiBMaXN0IG9mIGR5bmFtaWMgY29uZmlndXJhdGlvbnMsIHlvdSBuZWVk
IHRvIGhvbGQKLQkgKiBkZXZfcHJpdi0+cGVyZi5tZXRyaWNzX2xvY2sgdG8gYWNjZXNzIGl0Lgor
CSAqIExpc3Qgb2YgZHluYW1pYyBjb25maWd1cmF0aW9ucyAoc3RydWN0IGk5MTVfb2FfY29uZmln
KSwgeW91CisJICogbmVlZCB0byBob2xkIHBlcmYtPm1ldHJpY3NfbG9jayB0byBhY2Nlc3MgaXQu
CiAJICovCiAJc3RydWN0IGlkciBtZXRyaWNzX2lkcjsKIApAQCAtMzUwLDggKzM2MCw3IEBAIHN0
cnVjdCBpOTE1X3BlcmYgewogCS8qCiAJICogVGhlIHN0cmVhbSBjdXJyZW50bHkgdXNpbmcgdGhl
IE9BIHVuaXQuIElmIGFjY2Vzc2VkCiAJICogb3V0c2lkZSBhIHN5c2NhbGwgYXNzb2NpYXRlZCB0
byBpdHMgZmlsZQotCSAqIGRlc2NyaXB0b3IsIHlvdSBuZWVkIHRvIGhvbGQKLQkgKiBkZXZfcHJp
di0+ZHJtLnN0cnVjdF9tdXRleC4KKwkgKiBkZXNjcmlwdG9yLgogCSAqLwogCXN0cnVjdCBpOTE1
X3BlcmZfc3RyZWFtICpleGNsdXNpdmVfc3RyZWFtOwogCi0tIAoyLjIzLjAKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
