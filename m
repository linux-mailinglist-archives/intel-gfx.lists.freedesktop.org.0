Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DAD9DE5D0
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Oct 2019 10:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 34D1C89B27;
	Mon, 21 Oct 2019 08:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CCA4E89B46
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Oct 2019 08:02:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18908661-1500050 
 for multiple; Mon, 21 Oct 2019 09:02:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 21 Oct 2019 09:02:22 +0100
Message-Id: <20191021080226.537-12-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.24.0.rc0
In-Reply-To: <20191021080226.537-1-chris@chris-wilson.co.uk>
References: <20191021080226.537-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 12/16] drm/i915/gem: Cancel contexts when
 hangchecking is disabled
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

Tm9ybWFsbHksIHdlIHJlbHkgb24gb3VyIGhhbmdjaGVjayB0byBwcmV2ZW50IHBlcnNpc3RlbnQg
YmF0Y2hlcyBmcm9tCmhvZ2dpbmcgdGhlIEdQVS4gSG93ZXZlciwgaWYgdGhlIHVzZXIgZGlzYWJs
ZXMgaGFuZ2NoZWNrLCB0aGlzIG1lY2hhbmlzbQpicmVha3MgZG93bi4gRGVzcGl0ZSBvdXIgaW5z
aXN0ZW5jZSB0aGF0IHRoaXMgaXMgdW5zYWZlLCB0aGUgdXNlcnMgYXJlCmVxdWFsbHkgaW5zaXN0
ZW50IHRoYXQgdGhleSB3YW50IHRvIHVzZSBlbmRsZXNzIGJhdGNoZXMgYW5kIHdpbGwgZGlzYWJs
ZQp0aGUgaGFuZ2NoZWNrIG1lY2hhbmlzbS4gV2UgYXJlIGxvb2tpbmcgYXQgcmVwbGFjaW5nIGhh
bmdjaGVjaywgaW4gdGhlCm5leHQgcGF0Y2gsIHdpdGggYSBzb2Z0ZXIgbWVjaGFuaXNtLCB0aGF0
IHNlbmRzIGEgcHVsc2UgZG93biB0aGUgZW5naW5lCnRvIGNoZWNrIGlmIGl0IGlzIHdlbGwuIFdl
IGNhbiB1c2UgdGhlIHNhbWUgcHJlZW1wdGl2ZSBwdWxzZSB0byBmbHVzaCBhbgphY3RpdmUgY29u
dGV4dCBvZmYgdGhlIEdQVSB1cG9uIGNvbnRleHQgY2xvc2UsIHByZXZlbnRpbmcgcmVzb3VyY2Vz
CmJlaW5nIGxvc3QgYW5kIHVua2lsbGFibGUgcmVxdWVzdHMgcmVtYWluaW5nIG9uIHRoZSBHUFUg
YWZ0ZXIgcHJvY2Vzcwp0ZXJtaW5hdGlvbi4KClNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8
Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFo
dGluZW5AbGludXguaW50ZWwuY29tPgpDYzogTWljaGHFgiBXaW5pYXJza2kgPG1pY2hhbC53aW5p
YXJza2lAaW50ZWwuY29tPgpDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGludGVs
LmNvbT4KUmV2aWV3ZWQtYnk6IEpvbiBCbG9vbWZpZWxkIDxqb24uYmxvb21maWVsZEBpbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMgfCAxNDEg
KysrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxNDEgaW5zZXJ0aW9ucygrKQoK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCmluZGV4IDdiMDFm
NDYwNWYyMS4uYjJmMDQyZDg3YmUwIDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
ZW0vaTkxNV9nZW1fY29udGV4dC5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1
X2dlbV9jb250ZXh0LmMKQEAgLTcwLDYgKzcwLDcgQEAKICNpbmNsdWRlIDxkcm0vaTkxNV9kcm0u
aD4KIAogI2luY2x1ZGUgImd0L2ludGVsX2xyY19yZWcuaCIKKyNpbmNsdWRlICJndC9pbnRlbF9l
bmdpbmVfaGVhcnRiZWF0LmgiCiAjaW5jbHVkZSAiZ3QvaW50ZWxfZW5naW5lX3VzZXIuaCIKIAog
I2luY2x1ZGUgImk5MTVfZ2VtX2NvbnRleHQuaCIKQEAgLTI3Niw2ICsyNzcsMTM1IEBAIHZvaWQg
aTkxNV9nZW1fY29udGV4dF9yZWxlYXNlKHN0cnVjdCBrcmVmICpyZWYpCiAJCXNjaGVkdWxlX3dv
cmsoJmdjLT5mcmVlX3dvcmspOwogfQogCitzdGF0aWMgaW5saW5lIHN0cnVjdCBpOTE1X2dlbV9l
bmdpbmVzICoKK19fY29udGV4dF9lbmdpbmVzX3N0YXRpYyhjb25zdCBzdHJ1Y3QgaTkxNV9nZW1f
Y29udGV4dCAqY3R4KQoreworCXJldHVybiByY3VfZGVyZWZlcmVuY2VfcHJvdGVjdGVkKGN0eC0+
ZW5naW5lcywgdHJ1ZSk7Cit9CisKK3N0YXRpYyBib29sIF9fcmVzZXRfZW5naW5lKHN0cnVjdCBp
bnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwlzdHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gZW5naW5l
LT5ndDsKKwlib29sIHN1Y2Nlc3MgPSBmYWxzZTsKKworCWlmICghaW50ZWxfaGFzX3Jlc2V0X2Vu
Z2luZShndCkpCisJCXJldHVybiBmYWxzZTsKKworCWlmICghdGVzdF9hbmRfc2V0X2JpdChJOTE1
X1JFU0VUX0VOR0lORSArIGVuZ2luZS0+aWQsCisJCQkgICAgICAmZ3QtPnJlc2V0LmZsYWdzKSkg
eworCQlzdWNjZXNzID0gaW50ZWxfZW5naW5lX3Jlc2V0KGVuZ2luZSwgTlVMTCkgPT0gMDsKKwkJ
Y2xlYXJfYW5kX3dha2VfdXBfYml0KEk5MTVfUkVTRVRfRU5HSU5FICsgZW5naW5lLT5pZCwKKwkJ
CQkgICAgICAmZ3QtPnJlc2V0LmZsYWdzKTsKKwl9CisKKwlyZXR1cm4gc3VjY2VzczsKK30KKwor
c3RhdGljIHZvaWQgX19yZXNldF9jb250ZXh0KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgs
CisJCQkgICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQoreworCWludGVsX2d0X2hh
bmRsZV9lcnJvcihlbmdpbmUtPmd0LCBlbmdpbmUtPm1hc2ssIDAsCisJCQkgICAgICAiY29udGV4
dCBjbG9zdXJlIGluICVzIiwgY3R4LT5uYW1lKTsKK30KKworc3RhdGljIGJvb2wgX19jYW5jZWxf
ZW5naW5lKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkKK3sKKwkvKgorCSAqIFNlbmQg
YSAiaGlnaCBwcmlvcml0eSBwdWxzZSIgZG93biB0aGUgZW5naW5lIHRvIGNhdXNlIHRoZQorCSAq
IGN1cnJlbnQgcmVxdWVzdCB0byBiZSBtb21lbnRhcmlseSBwcmVlbXB0ZWQuIChJZiBpdCBmYWls
cyB0bworCSAqIGJlIHByZWVtcHRlZCwgaXQgd2lsbCBiZSByZXNldCkuIEFzIHdlIGhhdmUgbWFy
a2VkIG91ciBjb250ZXh0CisJICogYXMgYmFubmVkLCBhbnkgaW5jb21wbGV0ZSByZXF1ZXN0LCBp
bmNsdWRpbmcgYW55IHJ1bm5pbmcsIHdpbGwKKwkgKiBiZSBza2lwcGVkIGZvbGxvd2luZyB0aGUg
cHJlZW1wdGlvbi4KKwkgKgorCSAqIElmIHRoZXJlIGlzIG5vIGhhbmdjaGVja2luZyAob25lIG9m
IHRoZSByZWFzb25zIHdoeSB3ZSB0cnkgdG8KKwkgKiBjYW5jZWwgdGhlIGNvbnRleHQpIGFuZCBu
byBmb3JjZWQgcHJlZW1wdGlvbiwgdGhlcmUgbWF5IGJlIG5vCisJICogbWVhbnMgYnkgd2hpY2gg
d2UgcmVzZXQgdGhlIEdQVSBhbmQgZXZpY3QgdGhlIHBlcnNpc3RlbnQgaG9nLgorCSAqIEVyZ28g
aWYgd2UgYXJlIHVuYWJsZSB0byBpbmplY3QgYSBwcmVlbXB0aXZlIHB1bHNlIHRoYXQgY2FuCisJ
ICoga2lsbCB0aGUgYmFubmVkIGNvbnRleHQsIHdlIGZhbGxiYWNrIHRvIGRvaW5nIGEgbG9jYWwg
cmVzZXQKKwkgKiBpbnN0ZWFkLgorCSAqLworCWlmIChDT05GSUdfRFJNX0k5MTVfUFJFRU1QVF9U
SU1FT1VUICYmICFpbnRlbF9lbmdpbmVfcHVsc2UoZW5naW5lKSkKKwkJcmV0dXJuIHRydWU7CisK
KwkvKiBJZiB3ZSBhcmUgdW5hYmxlIHRvIHNlbmQgYSBwdWxzZSwgdHJ5IHJlc2V0dGluZyB0aGlz
IGVuZ2luZS4gKi8KKwlyZXR1cm4gX19yZXNldF9lbmdpbmUoZW5naW5lKTsKK30KKworc3RhdGlj
IHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKgorYWN0aXZlX2VuZ2luZShzdHJ1Y3QgZG1hX2ZlbmNl
ICpmZW5jZSwgc3RydWN0IGludGVsX2NvbnRleHQgKmNlKQoreworCXN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxID0gdG9fcmVxdWVzdChmZW5jZSk7CisJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lLCAqbG9ja2VkOworCisJLyoKKwkgKiBTZXJpYWxpc2Ugd2l0aCBfX2k5MTVfcmVxdWVzdF9z
dWJtaXQoKSBzbyB0aGF0IGl0IHNlZXMKKwkgKiBpcy1iYW5uZWQ/LCBvciB3ZSBrbm93IHRoZSBy
ZXF1ZXN0IGlzIGFscmVhZHkgaW5mbGlnaHQuCisJICovCisJbG9ja2VkID0gUkVBRF9PTkNFKHJx
LT5lbmdpbmUpOworCXNwaW5fbG9ja19pcnEoJmxvY2tlZC0+YWN0aXZlLmxvY2spOworCXdoaWxl
ICh1bmxpa2VseShsb2NrZWQgIT0gKGVuZ2luZSA9IFJFQURfT05DRShycS0+ZW5naW5lKSkpKSB7
CisJCXNwaW5fdW5sb2NrKCZsb2NrZWQtPmFjdGl2ZS5sb2NrKTsKKwkJc3Bpbl9sb2NrKCZlbmdp
bmUtPmFjdGl2ZS5sb2NrKTsKKwkJbG9ja2VkID0gZW5naW5lOworCX0KKworCWVuZ2luZSA9IE5V
TEw7CisJaWYgKGk5MTVfcmVxdWVzdF9pc19hY3RpdmUocnEpICYmICFycS0+ZmVuY2UuZXJyb3Ip
CisJCWVuZ2luZSA9IHJxLT5lbmdpbmU7CisKKwlzcGluX3VubG9ja19pcnEoJmxvY2tlZC0+YWN0
aXZlLmxvY2spOworCisJcmV0dXJuIGVuZ2luZTsKK30KKworc3RhdGljIHZvaWQga2lsbF9jb250
ZXh0KHN0cnVjdCBpOTE1X2dlbV9jb250ZXh0ICpjdHgpCit7CisJc3RydWN0IGk5MTVfZ2VtX2Vu
Z2luZXNfaXRlciBpdDsKKwlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7CisKKwkvKgorCSAqIElm
IHdlIGFyZSBhbHJlYWR5IGJhbm5lZCwgaXQgd2FzIGR1ZSB0byBhIGd1aWx0eSByZXF1ZXN0IGNh
dXNpbmcKKwkgKiBhIHJlc2V0IGFuZCB0aGUgZW50aXJlIGNvbnRleHQgYmVpbmcgZXZpY3RlZCBm
cm9tIHRoZSBHUFUuCisJICovCisJaWYgKGk5MTVfZ2VtX2NvbnRleHRfaXNfYmFubmVkKGN0eCkp
CisJCXJldHVybjsKKworCWk5MTVfZ2VtX2NvbnRleHRfc2V0X2Jhbm5lZChjdHgpOworCisJLyoK
KwkgKiBNYXAgdGhlIHVzZXIncyBlbmdpbmUgYmFjayB0byB0aGUgYWN0dWFsIGVuZ2luZXM7IG9u
ZSB2aXJ0dWFsCisJICogZW5naW5lIHdpbGwgYmUgbWFwcGVkIHRvIG11bHRpcGxlIGVuZ2luZXMs
IGFuZCB1c2luZyBjdHgtPmVuZ2luZVtdCisJICogdGhlIHNhbWUgZW5naW5lIG1heSBiZSBoYXZl
IG11bHRpcGxlIGluc3RhbmNlcyBpbiB0aGUgdXNlcidzIG1hcC4KKwkgKiBIb3dldmVyLCB3ZSBv
bmx5IGNhcmUgYWJvdXQgcGVuZGluZyByZXF1ZXN0cywgc28gb25seSBpbmNsdWRlCisJICogZW5n
aW5lcyBvbiB3aGljaCB0aGVyZSBhcmUgaW5jb21wbGV0ZSByZXF1ZXN0cy4KKwkgKi8KKwlmb3Jf
ZWFjaF9nZW1fZW5naW5lKGNlLCBfX2NvbnRleHRfZW5naW5lc19zdGF0aWMoY3R4KSwgaXQpIHsK
KwkJc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOworCQlzdHJ1Y3QgZG1hX2ZlbmNlICpm
ZW5jZTsKKworCQlpZiAoIWNlLT50aW1lbGluZSkKKwkJCWNvbnRpbnVlOworCisJCWZlbmNlID0g
aTkxNV9hY3RpdmVfZmVuY2VfZ2V0KCZjZS0+dGltZWxpbmUtPmxhc3RfcmVxdWVzdCk7CisJCWlm
ICghZmVuY2UpCisJCQljb250aW51ZTsKKworCQkvKiBDaGVjayB3aXRoIHRoZSBiYWNrZW5kIGlm
IHRoZSByZXF1ZXN0IGlzIHN0aWxsIGluZmxpZ2h0ICovCisJCWVuZ2luZSA9IGFjdGl2ZV9lbmdp
bmUoZmVuY2UsIGNlKTsKKworCQkvKiBGaXJzdCBhdHRlbXB0IHRvIGdyYWNlZnVsbHkgY2FuY2Vs
IHRoZSBjb250ZXh0ICovCisJCWlmIChlbmdpbmUgJiYgIV9fY2FuY2VsX2VuZ2luZShlbmdpbmUp
KQorCQkJLyoKKwkJCSAqIElmIHdlIGFyZSB1bmFibGUgdG8gc2VuZCBhIHByZWVtcHRpdmUgcHVs
c2UgdG8gYnVtcAorCQkJICogdGhlIGNvbnRleHQgZnJvbSB0aGUgR1BVLCB3ZSBoYXZlIHRvIHJl
c29ydCB0byBhIGZ1bGwKKwkJCSAqIHJlc2V0LiBXZSBob3BlIHRoZSBjb2xsYXRlcmFsIGRhbWFn
ZSBpcyB3b3J0aCBpdC4KKwkJCSAqLworCQkJX19yZXNldF9jb250ZXh0KGN0eCwgZW5naW5lKTsK
KworCQlkbWFfZmVuY2VfcHV0KGZlbmNlKTsKKwl9Cit9CisKIHN0YXRpYyB2b2lkIGNvbnRleHRf
Y2xvc2Uoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCkKIHsKIAlzdHJ1Y3QgaTkxNV9hZGRy
ZXNzX3NwYWNlICp2bTsKQEAgLTI5OCw2ICs0MjgsMTcgQEAgc3RhdGljIHZvaWQgY29udGV4dF9j
bG9zZShzdHJ1Y3QgaTkxNV9nZW1fY29udGV4dCAqY3R4KQogCWx1dF9jbG9zZShjdHgpOwogCiAJ
bXV0ZXhfdW5sb2NrKCZjdHgtPm11dGV4KTsKKworCS8qCisJICogSWYgdGhlIHVzZXIgaGFzIGRp
c2FibGVkIGhhbmdjaGVja2luZywgd2UgY2FuIG5vdCBiZSBzdXJlIHRoYXQKKwkgKiB0aGUgYmF0
Y2hlcyB3aWxsIGV2ZXIgY29tcGxldGUgYWZ0ZXIgdGhlIGNvbnRleHQgaXMgY2xvc2VkLAorCSAq
IGtlZXBpbmcgdGhlIGNvbnRleHQgYW5kIGFsbCByZXNvdXJjZXMgcGlubmVkIGZvcmV2ZXIuIFNv
IGluIHRoaXMKKwkgKiBjYXNlIHdlIG9wdCB0byBmb3JjaWJseSBraWxsIG9mZiBhbGwgcmVtYWlu
aW5nIHJlcXVlc3RzIG9uCisJICogY29udGV4dCBjbG9zZS4KKwkgKi8KKwlpZiAoIWk5MTVfbW9k
cGFyYW1zLmVuYWJsZV9oYW5nY2hlY2spCisJCWtpbGxfY29udGV4dChjdHgpOworCiAJaTkxNV9n
ZW1fY29udGV4dF9wdXQoY3R4KTsKIH0KIAotLSAKMi4yNC4wLnJjMAoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
