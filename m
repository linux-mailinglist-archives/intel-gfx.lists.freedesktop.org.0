Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34957176BD
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2019 13:25:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C3289736;
	Wed,  8 May 2019 11:25:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF9089736
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2019 11:24:59 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16489135-1500050 
 for multiple; Wed, 08 May 2019 12:24:54 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  8 May 2019 12:24:52 +0100
Message-Id: <20190508112452.18942-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508080704.24223-7-chris@chris-wilson.co.uk>
References: <20190508080704.24223-7-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Seal races between async GPU
 cancellation, retirement and signaling
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

Q3VycmVudGx5IHRoZXJlIGlzIGFuIHVuZGVybHlpbmcgYXNzdW1wdGlvbiB0aGF0IGk5MTVfcmVx
dWVzdF91bnN1Ym1pdCgpCmlzIHN5bmNocm9ub3VzIHdydCB0aGUgR1BVIC0tIHRoYXQgaXMgdGhl
IHJlcXVlc3QgaXMgbm8gbG9uZ2VyIGluIGZsaWdodAphcyB3ZSByZW1vdmUgaXQuIEluIHRoZSBu
ZWFyIGZ1dHVyZSB0aGF0IG1heSBjaGFuZ2UsIGFuZCB0aGlzIG1heSB1cHNldApvdXIgc2lnbmFs
aW5nIGFzIHdlIGNhbiBwcm9jZXNzIGFuIGludGVycnVwdCBmb3IgdGhhdCByZXF1ZXN0IHdoaWxl
IGl0CmlzIG5vIGxvbmdlciBpbiBmbGlnaHQuCgpDUFUwCQkJCQlDUFUxCmludGVsX2VuZ2luZV9i
cmVhZGNydW1ic19pcnEKKHF1ZXVlIHJlcXVlc3QgY29tcGxldGlvbikKCQkJCQlpOTE1X3JlcXVl
c3RfY2FuY2VsX3NpZ25hbGluZwouLi4JCQkJCS4uLgoJCQkJCWk5MTVfcmVxdWVzdF9lbmFibGVf
c2lnbmFsaW5nCmRtYV9mZW5jZV9zaWduYWwKCkhlbmNlIGluIHRoZSB0aW1lIGl0IHRvb2sgdXMg
dG8gZHJvcCB0aGUgbG9jayB0byBzaWduYWwgdGhlIHJlcXVlc3QsIGEKcHJlZW1wdGlvbiBldmVu
dCBtYXkgaGF2ZSBvY2N1cnJlZCBhbmQgcmUtcXVldWVkIHRoZSByZXF1ZXN0LiBJbiB0aGUKcHJv
Y2VzcywgdGhhdCByZXF1ZXN0IHdvdWxkIGhhdmUgc2VlbiBJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFM
IGNsZWFyIGFuZApzbyByZXVzZWQgdGhlIHJxLT5zaWduYWxfbGluayB0aGF0IHdhcyBpbiB1c2Ug
b24gQ1BVMCwgbGVhZGluZyB0byBiYWQKcG9pbnRlciBjaGFzaW5nIGluIGludGVsX2VuZ2luZV9i
cmVhZGNydW1ic19pcnEuCgpBIHJlbGF0ZWQgaXNzdWUgd2FzIHRoYXQgaWYgc29tZW9uZSBzdGFy
dGVkIGxpc3RlbmluZyBmb3IgYSBzaWduYWwgb24gYQpjb21wbGV0ZWQgYnV0IG5vIGxvbmdlciBp
bi1mbGlnaHQgcmVxdWVzdCwgd2UgbWlzc2VkIHRoZSBvcHBvcnR1bml0eSB0bwppbW1lZGlhdGVs
eSBzaWduYWwgdGhhdCByZXF1ZXN0LgoKRnVydGhlcm1vcmUsIGFzIGludGVsX2NvbnRleHRzIG1h
eSBiZSBpbW1lZGlhdGVseSByZWxlYXNlZCBkdXJpbmcKcmVxdWVzdCByZXRpcmVtZW50LCBpbiBv
cmRlciB0byBiZSBlbnRpcmVseSBzdXJlIHRoYXQKaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2ly
cSBtYXkgbm8gbG9uZ2VyIGRlcmVmZXJlbmNlIHRoZSBpbnRlbF9jb250ZXh0CihjZS0+c2lnbmFs
cyBhbmQgY2UtPnNpZ25hbF9saW5rKSwgd2UgbXVzdCB3YWl0IGZvciBpcnEgc3BpbmxvY2suCgpJ
biBvcmRlciB0byBwcmV2ZW50IHRoZSByYWNlLCB3ZSB1c2UgYSBiaXQgaW4gdGhlIGZlbmNlLmZs
YWdzIHRvIHNpZ25hbAp0aGUgdHJhbnNmZXIgb250byB0aGUgc2lnbmFsIGxpc3QgaW5zaWRlIGlu
dGVsX2VuZ2luZV9icmVhZGNydW1ic19pcnEuCkZvciBzaW1wbGljaXR5LCB3ZSB1c2UgdGhlIERN
QV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVCBhcyBpdCB0aGVuCnF1aWNrbHkgc2lnbmFscyB0byBh
bnkgb3V0c2lkZSBvYnNlcnZlciB0aGF0IHRoZSBmZW5jZSBpcyBpbmRlZWQgc2lnbmFsZWQuCgp2
MjogU2tldGNoIG91dCBwb3RlbnRpYWwgZG1hLWZlbmNlIEFQSSBmb3IgbWFudWFsIHNpZ25hbGlu
Zwp2MzogQW5kIHRoZSB0ZXN0X2FuZF9zZXRfYml0KCkKCkZpeGVzOiA1MmMwZmRiMjVjN2MgKCJk
cm0vaTkxNTogUmVwbGFjZSBnbG9iYWwgYnJlYWRjcnVtYnMgd2l0aCBwZXItY29udGV4dCBpbnRl
cnJ1cHQgdHJhY2tpbmciKQpTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5j
b20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1mZW5jZS5jICAgICAgICAgICAgICAgICB8ICAx
ICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMgfCA3OCArKysr
KysrKysrKysrKystLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5jICAg
ICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5j
IHwgIDEgLQogNCBmaWxlcyBjaGFuZ2VkLCA1OSBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMgYi9kcml2ZXJzL2Rt
YS1idWYvZG1hLWZlbmNlLmMKaW5kZXggM2FhODczM2Y4MzJhLi45YmYwNjA0MjYxOWEgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYworKysgYi9kcml2ZXJzL2RtYS1idWYv
ZG1hLWZlbmNlLmMKQEAgLTI5LDYgKzI5LDcgQEAKIAogRVhQT1JUX1RSQUNFUE9JTlRfU1lNQk9M
KGRtYV9mZW5jZV9lbWl0KTsKIEVYUE9SVF9UUkFDRVBPSU5UX1NZTUJPTChkbWFfZmVuY2VfZW5h
YmxlX3NpZ25hbCk7CitFWFBPUlRfVFJBQ0VQT0lOVF9TWU1CT0woZG1hX2ZlbmNlX3NpZ25hbGVk
KTsKIAogc3RhdGljIERFRklORV9TUElOTE9DSyhkbWFfZmVuY2Vfc3R1Yl9sb2NrKTsKIHN0YXRp
YyBzdHJ1Y3QgZG1hX2ZlbmNlIGRtYV9mZW5jZV9zdHViOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMKaW5kZXggZmU0NTVmMDFhYTY1Li5jMDkyYmRmNWYwYmYg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2JyZWFkY3J1bWJzLmMK
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfYnJlYWRjcnVtYnMuYwpAQCAtMjMs
NiArMjMsNyBAQAogICovCiAKICNpbmNsdWRlIDxsaW51eC9rdGhyZWFkLmg+CisjaW5jbHVkZSA8
dHJhY2UvZXZlbnRzL2RtYV9mZW5jZS5oPgogI2luY2x1ZGUgPHVhcGkvbGludXgvc2NoZWQvdHlw
ZXMuaD4KIAogI2luY2x1ZGUgImk5MTVfZHJ2LmgiCkBAIC05Niw5ICs5NywzOSBAQCBjaGVja19z
aWduYWxfb3JkZXIoc3RydWN0IGludGVsX2NvbnRleHQgKmNlLCBzdHJ1Y3QgaTkxNV9yZXF1ZXN0
ICpycSkKIAlyZXR1cm4gdHJ1ZTsKIH0KIAorc3RhdGljIGJvb2wKK19fZG1hX2ZlbmNlX3NpZ25h
bChzdHJ1Y3QgZG1hX2ZlbmNlICpmZW5jZSkKK3sKKwlyZXR1cm4gIXRlc3RfYW5kX3NldF9iaXQo
RE1BX0ZFTkNFX0ZMQUdfU0lHTkFMRURfQklULCAmZmVuY2UtPmZsYWdzKTsKK30KKworc3RhdGlj
IHZvaWQKK19fZG1hX2ZlbmNlX3NpZ25hbF9fdGltZXN0YW1wKHN0cnVjdCBkbWFfZmVuY2UgKmZl
bmNlLCBrdGltZV90IHRpbWVzdGFtcCkKK3sKKwlmZW5jZS0+dGltZXN0YW1wID0gdGltZXN0YW1w
OworCXNldF9iaXQoRE1BX0ZFTkNFX0ZMQUdfVElNRVNUQU1QX0JJVCwgJmZlbmNlLT5mbGFncyk7
CisJdHJhY2VfZG1hX2ZlbmNlX3NpZ25hbGVkKGZlbmNlKTsKK30KKworc3RhdGljIHZvaWQKK19f
ZG1hX2ZlbmNlX3NpZ25hbF9fbm90aWZ5KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlKQoreworCXN0
cnVjdCBkbWFfZmVuY2VfY2IgKmN1ciwgKnRtcDsKKworCWxvY2tkZXBfYXNzZXJ0X2hlbGQoZmVu
Y2UtPmxvY2spOworCWxvY2tkZXBfYXNzZXJ0X2lycXNfZGlzYWJsZWQoKTsKKworCWxpc3RfZm9y
X2VhY2hfZW50cnlfc2FmZShjdXIsIHRtcCwgJmZlbmNlLT5jYl9saXN0LCBub2RlKSB7CisJCUlO
SVRfTElTVF9IRUFEKCZjdXItPm5vZGUpOworCQljdXItPmZ1bmMoZmVuY2UsIGN1cik7CisJfQor
CUlOSVRfTElTVF9IRUFEKCZmZW5jZS0+Y2JfbGlzdCk7Cit9CisKIHZvaWQgaW50ZWxfZW5naW5l
X2JyZWFkY3J1bWJzX2lycShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiB7CiAJc3Ry
dWN0IGludGVsX2JyZWFkY3J1bWJzICpiID0gJmVuZ2luZS0+YnJlYWRjcnVtYnM7CisJY29uc3Qg
a3RpbWVfdCB0aW1lc3RhbXAgPSBrdGltZV9nZXQoKTsKIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAq
Y2UsICpjbjsKIAlzdHJ1Y3QgbGlzdF9oZWFkICpwb3MsICpuZXh0OwogCUxJU1RfSEVBRChzaWdu
YWwpOwpAQCAtMTIyLDYgKzE1MywxMCBAQCB2b2lkIGludGVsX2VuZ2luZV9icmVhZGNydW1ic19p
cnEoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQogCiAJCQlHRU1fQlVHX09OKCF0ZXN0
X2JpdChJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLAogCQkJCQkgICAgICZycS0+ZmVuY2UuZmxhZ3Mp
KTsKKwkJCWNsZWFyX2JpdChJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLCAmcnEtPmZlbmNlLmZsYWdz
KTsKKworCQkJaWYgKCFfX2RtYV9mZW5jZV9zaWduYWwoJnJxLT5mZW5jZSkpCisJCQkJY29udGlu
dWU7CiAKIAkJCS8qCiAJCQkgKiBRdWV1ZSBmb3IgZXhlY3V0aW9uIGFmdGVyIGRyb3BwaW5nIHRo
ZSBzaWduYWxpbmcKQEAgLTEyOSwxNCArMTY0LDYgQEAgdm9pZCBpbnRlbF9lbmdpbmVfYnJlYWRj
cnVtYnNfaXJxKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKIAkJCSAqIG1vcmUgc2ln
bmFsZXJzIHRvIHRoZSBzYW1lIGNvbnRleHQgb3IgZW5naW5lLgogCQkJICovCiAJCQlpOTE1X3Jl
cXVlc3RfZ2V0KHJxKTsKLQotCQkJLyoKLQkJCSAqIFdlIG1heSByYWNlIHdpdGggZGlyZWN0IGlu
dm9jYXRpb24gb2YKLQkJCSAqIGRtYV9mZW5jZV9zaWduYWwoKSwgZS5nLiBpOTE1X3JlcXVlc3Rf
cmV0aXJlKCksCi0JCQkgKiBzbyB3ZSBuZWVkIHRvIGFjcXVpcmUgb3VyIHJlZmVyZW5jZSB0byB0
aGUgcmVxdWVzdAotCQkJICogYmVmb3JlIHdlIGNhbmNlbCB0aGUgYnJlYWRjcnVtYi4KLQkJCSAq
LwotCQkJY2xlYXJfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdOQUwsICZycS0+ZmVuY2UuZmxhZ3Mp
OwogCQkJbGlzdF9hZGRfdGFpbCgmcnEtPnNpZ25hbF9saW5rLCAmc2lnbmFsKTsKIAkJfQogCkBA
IC0xNTksNyArMTg2LDEyIEBAIHZvaWQgaW50ZWxfZW5naW5lX2JyZWFkY3J1bWJzX2lycShzdHJ1
Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpCiAJCXN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxID0K
IAkJCWxpc3RfZW50cnkocG9zLCB0eXBlb2YoKnJxKSwgc2lnbmFsX2xpbmspOwogCi0JCWRtYV9m
ZW5jZV9zaWduYWwoJnJxLT5mZW5jZSk7CisJCV9fZG1hX2ZlbmNlX3NpZ25hbF9fdGltZXN0YW1w
KCZycS0+ZmVuY2UsIHRpbWVzdGFtcCk7CisKKwkJc3Bpbl9sb2NrKCZycS0+bG9jayk7CisJCV9f
ZG1hX2ZlbmNlX3NpZ25hbF9fbm90aWZ5KCZycS0+ZmVuY2UpOworCQlzcGluX3VubG9jaygmcnEt
PmxvY2spOworCiAJCWk5MTVfcmVxdWVzdF9wdXQocnEpOwogCX0KIH0KQEAgLTI2MSwxOSArMjkz
LDE3IEBAIHZvaWQgaW50ZWxfZW5naW5lX2ZpbmlfYnJlYWRjcnVtYnMoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQogCiBib29sIGk5MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRjcnVtYihz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKIHsKLQlzdHJ1Y3QgaW50ZWxfYnJlYWRjcnVtYnMgKmIg
PSAmcnEtPmVuZ2luZS0+YnJlYWRjcnVtYnM7Ci0KLQlHRU1fQlVHX09OKHRlc3RfYml0KEk5MTVf
RkVOQ0VfRkxBR19TSUdOQUwsICZycS0+ZmVuY2UuZmxhZ3MpKTsKKwlsb2NrZGVwX2Fzc2VydF9o
ZWxkKCZycS0+bG9jayk7CisJbG9ja2RlcF9hc3NlcnRfaXJxc19kaXNhYmxlZCgpOwogCi0JaWYg
KCF0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfQUNUSVZFLCAmcnEtPmZlbmNlLmZsYWdzKSkKLQkJ
cmV0dXJuIHRydWU7Ci0KLQlzcGluX2xvY2soJmItPmlycV9sb2NrKTsKLQlpZiAodGVzdF9iaXQo
STkxNV9GRU5DRV9GTEFHX0FDVElWRSwgJnJxLT5mZW5jZS5mbGFncykgJiYKLQkgICAgIV9fcmVx
dWVzdF9jb21wbGV0ZWQocnEpKSB7CisJaWYgKHRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19BQ1RJ
VkUsICZycS0+ZmVuY2UuZmxhZ3MpKSB7CisJCXN0cnVjdCBpbnRlbF9icmVhZGNydW1icyAqYiA9
ICZycS0+ZW5naW5lLT5icmVhZGNydW1iczsKIAkJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0g
cnEtPmh3X2NvbnRleHQ7CiAJCXN0cnVjdCBsaXN0X2hlYWQgKnBvczsKIAorCQlzcGluX2xvY2so
JmItPmlycV9sb2NrKTsKKwkJR0VNX0JVR19PTih0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfU0lH
TkFMLCAmcnEtPmZlbmNlLmZsYWdzKSk7CisKIAkJX19pbnRlbF9icmVhZGNydW1ic19hcm1faXJx
KGIpOwogCiAJCS8qCkBAIC0zMDMsOCArMzMzLDggQEAgYm9vbCBpOTE1X3JlcXVlc3RfZW5hYmxl
X2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiAJCUdFTV9CVUdfT04oIWNoZWNr
X3NpZ25hbF9vcmRlcihjZSwgcnEpKTsKIAogCQlzZXRfYml0KEk5MTVfRkVOQ0VfRkxBR19TSUdO
QUwsICZycS0+ZmVuY2UuZmxhZ3MpOworCQlzcGluX3VubG9jaygmYi0+aXJxX2xvY2spOwogCX0K
LQlzcGluX3VubG9jaygmYi0+aXJxX2xvY2spOwogCiAJcmV0dXJuICFfX3JlcXVlc3RfY29tcGxl
dGVkKHJxKTsKIH0KQEAgLTMxMyw5ICszNDMsMTUgQEAgdm9pZCBpOTE1X3JlcXVlc3RfY2FuY2Vs
X2JyZWFkY3J1bWIoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEpCiB7CiAJc3RydWN0IGludGVsX2Jy
ZWFkY3J1bWJzICpiID0gJnJxLT5lbmdpbmUtPmJyZWFkY3J1bWJzOwogCi0JaWYgKCF0ZXN0X2Jp
dChJOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMLCAmcnEtPmZlbmNlLmZsYWdzKSkKLQkJcmV0dXJuOwor
CWxvY2tkZXBfYXNzZXJ0X2hlbGQoJnJxLT5sb2NrKTsKKwlsb2NrZGVwX2Fzc2VydF9pcnFzX2Rp
c2FibGVkKCk7CiAKKwkvKgorCSAqIFdlIG11c3Qgd2FpdCBmb3IgYi0+aXJxX2xvY2sgc28gdGhh
dCB3ZSBrbm93IHRoZSBpbnRlcnJ1cHQgaGFuZGxlcgorCSAqIGhhcyByZWxlYXNlZCBpdHMgcmVm
ZXJlbmNlIHRvIHRoZSBpbnRlbF9jb250ZXh0IGFuZCBoYXMgY29tcGxldGVkCisJICogdGhlIERN
QV9GRU5DRV9GTEFHX1NJR05BTEVEX0JJVC9JOTE1X0ZFTkNFX0ZMQUdfU0lHTkFMIGRhbmNlIChp
ZgorCSAqIHJlcXVpcmVkKS4KKwkgKi8KIAlzcGluX2xvY2soJmItPmlycV9sb2NrKTsKIAlpZiAo
dGVzdF9iaXQoSTkxNV9GRU5DRV9GTEFHX1NJR05BTCwgJnJxLT5mZW5jZS5mbGFncykpIHsKIAkJ
c3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gcnEtPmh3X2NvbnRleHQ7CmRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVxdWVzdC5jCmluZGV4IDk1MTBkYjU2NmE1OC4uY2JlNDA5OGNkNmVjIDEwMDY0NAot
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYworKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuYwpAQCAtNDM3LDYgKzQzNyw3IEBAIHZvaWQgX19pOTE1
X3JlcXVlc3Rfc3VibWl0KHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJlcXVlc3QpCiAJc2V0X2JpdChJ
OTE1X0ZFTkNFX0ZMQUdfQUNUSVZFLCAmcmVxdWVzdC0+ZmVuY2UuZmxhZ3MpOwogCiAJaWYgKHRl
c3RfYml0KERNQV9GRU5DRV9GTEFHX0VOQUJMRV9TSUdOQUxfQklULCAmcmVxdWVzdC0+ZmVuY2Uu
ZmxhZ3MpICYmCisJICAgICF0ZXN0X2JpdChETUFfRkVOQ0VfRkxBR19TSUdOQUxFRF9CSVQsICZy
ZXF1ZXN0LT5mZW5jZS5mbGFncykgJiYKIAkgICAgIWk5MTVfcmVxdWVzdF9lbmFibGVfYnJlYWRj
cnVtYihyZXF1ZXN0KSkKIAkJaW50ZWxfZW5naW5lX3F1ZXVlX2JyZWFkY3J1bWJzKGVuZ2luZSk7
CiAKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2d1Y19zdWJtaXNzaW9u
LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCmluZGV4IDM4
MGQ4M2EyYmZiNi4uZWEwZTM3MzRkMzdjIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9ndWNfc3VibWlzc2lvbi5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2d1Y19zdWJtaXNzaW9uLmMKQEAgLTIzLDcgKzIzLDYgQEAKICAqLwogCiAjaW5jbHVkZSA8bGlu
dXgvY2lyY19idWYuaD4KLSNpbmNsdWRlIDx0cmFjZS9ldmVudHMvZG1hX2ZlbmNlLmg+CiAKICNp
bmNsdWRlICJndC9pbnRlbF9lbmdpbmVfcG0uaCIKICNpbmNsdWRlICJndC9pbnRlbF9scmNfcmVn
LmgiCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVs
LWdmeA==
