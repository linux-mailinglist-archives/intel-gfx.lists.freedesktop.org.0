Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D18004D
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Aug 2019 20:41:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D4FC6EF47;
	Fri,  2 Aug 2019 18:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 48AC26EF47
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Aug 2019 18:41:09 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Aug 2019 11:41:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,339,1559545200"; d="scan'208";a="167310378"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by orsmga008.jf.intel.com with ESMTP; 02 Aug 2019 11:41:07 -0700
Received: from mwajdecz-MOBL1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x72If4tJ012718; Fri, 2 Aug 2019 19:41:06 +0100
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Aug 2019 18:40:53 +0000
Message-Id: <20190802184055.31988-5-michal.wajdeczko@intel.com>
X-Mailer: git-send-email 2.21.0.windows.1
In-Reply-To: <20190802184055.31988-1-michal.wajdeczko@intel.com>
References: <20190802184055.31988-1-michal.wajdeczko@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v7 4/6] drm/i915/uc: Move GuC error log to uc
 and release it on fini
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

V2hlbiB3ZSBmYWlsIHRvIGxvYWQgR3VDIGFuZCB3YW50IHRvIGFib3J0IHByb2JlLCB3ZSBoaXQ6
Cgo8Nz4gWzIyOS45MTU3NzldIGk5MTUgMDAwMDowMDowMi4wOiBbZHJtOmludGVsX3VjX2luaXRf
aHcgW2k5MTVdXSBHdUMgaW5pdGlhbGl6YXRpb24gZmFpbGVkIC02Cjw3PiBbMjI5LjkxNTgxM10g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06aTkxNV9nZW1faW5pdF9odyBbaTkxNV1dIEVuYWJsaW5n
IHVjIGZhaWxlZCAoLTYpCjw0PiBbMjI5Ljk1MzM1NF0gLS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBd
LS0tLS0tLS0tLS0tCjw0PiBbMjI5Ljk1MzM1NV0gV0FSTl9PTihkZXZfcHJpdi0+bW0uc2hyaW5r
X2NvdW50KQo8ND4gWzIyOS45NTM0MDZdIFdBUk5JTkc6IENQVTogOSBQSUQ6IDMyODcgYXQgZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYzoxNjg0IGk5MTVfZ2VtX2NsZWFudXBfZWFybHkr
MHhmYy8weDExMCBbaTkxNV0KPDQ+IFsyMjkuOTUzNDY0XSBDYWxsIFRyYWNlOgo8ND4gWzIyOS45
NTM0ODldICBpOTE1X2RyaXZlcl9sYXRlX3JlbGVhc2UrMHgxOS8weDYwIFtpOTE1XQo8ND4gWzIy
OS45NTM1MTRdICBpOTE1X2RyaXZlcl9wcm9iZSsweGI4Mi8weDE4YTAgW2k5MTVdCjw0PiBbMjI5
Ljk1MzUxOV0gID8gX19wbV9ydW50aW1lX3Jlc3VtZSsweDRmLzB4ODAKPDQ+IFsyMjkuOTUzNTQ1
XSAgaTkxNV9wY2lfcHJvYmUrMHg0My8weDFiMCBbaTkxNV0KLi4uCjw0PiBbMjI5Ljk2Mjk1MV0g
LS0tLS0tLS0tLS0tWyBjdXQgaGVyZSBdLS0tLS0tLS0tLS0tCjw0PiBbMjI5Ljk2Mjk1Nl0gREVC
VUdfTE9DS1NfV0FSTl9PTihsb2NrLT5tYWdpYyAhPSBsb2NrKQo8ND4gWzIyOS45NjI5NTldIFdB
Uk5JTkc6IENQVTogOCBQSUQ6IDIzOTUgYXQga2VybmVsL2xvY2tpbmcvbXV0ZXguYzo5MTIgX19t
dXRleF9sb2NrKzB4NzUwLzB4OWIwCjw0PiBbMjI5Ljk2MzA5MV0gQ2FsbCBUcmFjZToKPDQ+IFsy
MjkuOTYzMTI5XSAgPyBpOTE1X3ZtYV9kZXN0cm95KzB4ODYvMHgzNTAgW2k5MTVdCjw0PiBbMjI5
Ljk2MzE2Nl0gID8gaTkxNV92bWFfZGVzdHJveSsweDg2LzB4MzUwIFtpOTE1XQo8ND4gWzIyOS45
NjMyMDFdICBpOTE1X3ZtYV9kZXN0cm95KzB4ODYvMHgzNTAgW2k5MTVdCjw0PiBbMjI5Ljk2MzIz
Nl0gIF9faTkxNV9nZW1fZnJlZV9vYmplY3RzKzB4YjgvMHg1MTAgW2k5MTVdCjw0PiBbMjI5Ljk2
MzI3MF0gIF9faTkxNV9nZW1fZnJlZV93b3JrKzB4NWEvMHg5MCBbaTkxNV0KPDQ+IFsyMjkuOTYz
Mjc1XSAgcHJvY2Vzc19vbmVfd29yaysweDI0NS8weDYxMAoKYXMgc2luY2UgY29tbWl0IDZmNzYw
OThmZTBmMyAoImRybS9pOTE1L3VjOiBNb3ZlIHVDIGVhcmx5IGZ1bmN0aW9ucwppbnNpZGUgdGhl
IEdUIG9uZXMiKSB3ZSBjbGVhbnVwIHVjIGFmdGVyIGdlbS4KCk1vdmUgY2FwdHVyZWQgR3VDIGxv
YWQgZXJyb3IgbG9nIHRvIHVjIHN0cnVjdCBhbmQgcmVsZWFzZSBpdAppbiBpbnRlbF91Y19maW5p
KCkgaW5zdGVhZCBvZiBpbnRlbF91Y19kcml2ZXJfbGF0ZV9yZWxlYXNlKCkKCk5vdGUgdGhhdCBp
bnRlbF91Y19kcml2ZXJfbGF0ZV9yZWxlYXNlKCkgaXMgbm93IGVtcHR5LCBidXQKd2UgY2FuIGxl
YXZlIGl0IGFzIGEgcGxhY2Vob2xkZXIgZm9yIGZ1dHVyZSBjb2RlLgoKU2lnbmVkLW9mZi1ieTog
TWljaGFsIFdhamRlY3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+CkNjOiBEYW5pZWxl
IENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPgpDYzogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci0tLQogZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvdWMvaW50ZWxfZ3VjLmggfCAgMyAtLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L3VjL2ludGVsX3VjLmMgIHwgMjYgKysrKysrKysrKysrLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmggIHwgIDMgKysrCiBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X2RlYnVnZnMuYyAgICB8ICAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDE2IGluc2Vy
dGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxf
Z3VjLmgKaW5kZXggNmVkYjI5YjljZWFhLi5jYzAzNWM5NzgxYWUgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2d1Yy5oCkBAIC00Nyw5ICs0Nyw2IEBAIHN0cnVjdCBpbnRlbF9ndWMg
ewogCXN0cnVjdCBpbnRlbF9ndWNfbG9nIGxvZzsKIAlzdHJ1Y3QgaW50ZWxfZ3VjX2N0IGN0Owog
Ci0JLyogTG9nIHNuYXBzaG90IGlmIEd1QyBlcnJvcnMgZHVyaW5nIGxvYWQgKi8KLQlzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqbG9hZF9lcnJfbG9nOwotCiAJLyogaW50ZWxfZ3VjX3JlY3Yg
aW50ZXJydXB0IHJlbGF0ZWQgc3RhdGUgKi8KIAlzcGlubG9ja190IGlycV9sb2NrOwogCXVuc2ln
bmVkIGludCBtc2dfZW5hYmxlZF9tYXNrOwpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvdWMvaW50ZWxfdWMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3Vj
LmMKaW5kZXggZjI0ODYwYTg2ZDBlLi5lNTQyMWMwYjlhMjUgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfdWMuYwpAQCAtMzEsOCArMzEsNiBAQAogCiAjaW5jbHVkZSAiaTkxNV9kcnYu
aCIKIAotc3RhdGljIHZvaWQgZ3VjX2ZyZWVfbG9hZF9lcnJfbG9nKHN0cnVjdCBpbnRlbF9ndWMg
Kmd1Yyk7Ci0KIC8qIFJlc2V0IEd1QyBwcm92aWRpbmcgdXMgd2l0aCBmcmVzaCBzdGF0ZSBmb3Ig
Ym90aCBHdUMgYW5kIEh1Qy4KICAqLwogc3RhdGljIGludCBfX2ludGVsX3VjX3Jlc2V0X2h3KHN0
cnVjdCBpbnRlbF91YyAqdWMpCkBAIC0xMDMsNyArMTAxLDYgQEAgdm9pZCBpbnRlbF91Y19pbml0
X2Vhcmx5KHN0cnVjdCBpbnRlbF91YyAqdWMpCiAKIHZvaWQgaW50ZWxfdWNfZHJpdmVyX2xhdGVf
cmVsZWFzZShzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewotCWd1Y19mcmVlX2xvYWRfZXJyX2xvZygm
dWMtPmd1Yyk7CiB9CiAKIC8qKgpAQCAtMTE4LDIxICsxMTUsMjAgQEAgdm9pZCBpbnRlbF91Y19p
bml0X21taW8oc3RydWN0IGludGVsX3VjICp1YykKIAlpbnRlbF9ndWNfaW5pdF9zZW5kX3JlZ3Mo
JnVjLT5ndWMpOwogfQogCi1zdGF0aWMgdm9pZCBndWNfY2FwdHVyZV9sb2FkX2Vycl9sb2coc3Ry
dWN0IGludGVsX2d1YyAqZ3VjKQorc3RhdGljIHZvaWQgX191Y19jYXB0dXJlX2xvYWRfZXJyX2xv
ZyhzdHJ1Y3QgaW50ZWxfdWMgKnVjKQogewotCWlmICghZ3VjLT5sb2cudm1hIHx8ICFpbnRlbF9n
dWNfbG9nX2dldF9sZXZlbCgmZ3VjLT5sb2cpKQotCQlyZXR1cm47Ci0KLQlpZiAoIWd1Yy0+bG9h
ZF9lcnJfbG9nKQotCQlndWMtPmxvYWRfZXJyX2xvZyA9IGk5MTVfZ2VtX29iamVjdF9nZXQoZ3Vj
LT5sb2cudm1hLT5vYmopOworCXN0cnVjdCBpbnRlbF9ndWMgKmd1YyA9ICZ1Yy0+Z3VjOwogCi0J
cmV0dXJuOworCWlmIChndWMtPmxvZy52bWEgJiYgIXVjLT5sb2FkX2Vycl9sb2cpCisJCXVjLT5s
b2FkX2Vycl9sb2cgPSBpOTE1X2dlbV9vYmplY3RfZ2V0KGd1Yy0+bG9nLnZtYS0+b2JqKTsKIH0K
IAotc3RhdGljIHZvaWQgZ3VjX2ZyZWVfbG9hZF9lcnJfbG9nKHN0cnVjdCBpbnRlbF9ndWMgKmd1
YykKK3N0YXRpYyB2b2lkIF9fdWNfZnJlZV9sb2FkX2Vycl9sb2coc3RydWN0IGludGVsX3VjICp1
YykKIHsKLQlpZiAoZ3VjLT5sb2FkX2Vycl9sb2cpCi0JCWk5MTVfZ2VtX29iamVjdF9wdXQoZ3Vj
LT5sb2FkX2Vycl9sb2cpOworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpsb2cgPSBmZXRj
aF9hbmRfemVybygmdWMtPmxvYWRfZXJyX2xvZyk7CisKKwlpZiAobG9nKQorCQlpOTE1X2dlbV9v
YmplY3RfcHV0KGxvZyk7CiB9CiAKIC8qCkBAIC0zMzgsNiArMzM0LDggQEAgdm9pZCBpbnRlbF91
Y19maW5pKHN0cnVjdCBpbnRlbF91YyAqdWMpCiAJCWludGVsX2h1Y19maW5pKCZ1Yy0+aHVjKTsK
IAogCWludGVsX2d1Y19maW5pKGd1Yyk7CisKKwlfX3VjX2ZyZWVfbG9hZF9lcnJfbG9nKHVjKTsK
IH0KIAogc3RhdGljIGludCBfX3VjX3Nhbml0aXplKHN0cnVjdCBpbnRlbF91YyAqdWMpCkBAIC00
OTMsNyArNDkxLDcgQEAgaW50IGludGVsX3VjX2luaXRfaHcoc3RydWN0IGludGVsX3VjICp1YykK
IGVycl9jb21tdW5pY2F0aW9uOgogCWd1Y19kaXNhYmxlX2NvbW11bmljYXRpb24oZ3VjKTsKIGVy
cl9sb2dfY2FwdHVyZToKLQlndWNfY2FwdHVyZV9sb2FkX2Vycl9sb2coZ3VjKTsKKwlfX3VjX2Nh
cHR1cmVfbG9hZF9lcnJfbG9nKHVjKTsKIGVycl9vdXQ6CiAJX191Y19zYW5pdGl6ZSh1Yyk7CiAK
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmggYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Yy5oCmluZGV4IDBjY2E4Mzk0MjJlMi4uY2Y5
ZWUzYzI3ODc3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91
Yy5oCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjLmgKQEAgLTMxLDYg
KzMxLDkgQEAKIHN0cnVjdCBpbnRlbF91YyB7CiAJc3RydWN0IGludGVsX2d1YyBndWM7CiAJc3Ry
dWN0IGludGVsX2h1YyBodWM7CisKKwkvKiBTbmFwc2hvdCBvZiBHdUMgbG9nIGZyb20gbGFzdCBm
YWlsZWQgbG9hZCAqLworCXN0cnVjdCBkcm1faTkxNV9nZW1fb2JqZWN0ICpsb2FkX2Vycl9sb2c7
CiB9OwogCiB2b2lkIGludGVsX3VjX2luaXRfZWFybHkoc3RydWN0IGludGVsX3VjICp1Yyk7CmRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCmluZGV4IDZkYmQ4NWIzODc1OS4uNDYxYThkZDRj
YzQ3IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYworKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwpAQCAtMjA2Niw3ICsyMDY2LDcg
QEAgc3RhdGljIGludCBpOTE1X2d1Y19sb2dfZHVtcChzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQg
KmRhdGEpCiAJCXJldHVybiAtRU5PREVWOwogCiAJaWYgKGR1bXBfbG9hZF9lcnIpCi0JCW9iaiA9
IGRldl9wcml2LT5ndC51Yy5ndWMubG9hZF9lcnJfbG9nOworCQlvYmogPSBkZXZfcHJpdi0+Z3Qu
dWMubG9hZF9lcnJfbG9nOwogCWVsc2UgaWYgKGRldl9wcml2LT5ndC51Yy5ndWMubG9nLnZtYSkK
IAkJb2JqID0gZGV2X3ByaXYtPmd0LnVjLmd1Yy5sb2cudm1hLT5vYmo7CiAKLS0gCjIuMTkuMgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
