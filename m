Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2351A29133
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 08:45:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3388989AA2;
	Fri, 24 May 2019 06:45:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D291A89AA2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 06:45:49 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 16663336-1500050 
 for multiple; Fri, 24 May 2019 07:45:31 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 May 2019 07:45:29 +0100
Message-Id: <20190524064529.20514-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-gfx] [BrownBag] drm/i915/gtt: Neuter the deferred unbind
 callback from gen6_ppgtt_cleanup
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
Cc: Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGF2aW5nIGRlZmVycmVkIHRoZSB2bWEgZGVzdHJ1Y3Rpb24gdG8gYSB3b3JrZXIgd2hlcmUgd2Ug
Y2FuIGFjcXVpcmUgdGhlCnN0cnVjdF9tdXRleCwgd2UgaGF2ZSB0byBhdm9pZCBjaGFzaW5nIGJh
Y2sgaW50byB0aGUgbm93IGRlc3Ryb3llZApwcGd0dC4gVGhlIHBkX3ZtYSBpcyBzcGVjaWFsIGlu
IGhhdmluZyBhIGN1c3RvbSB1bmJpbmQgZnVuY3Rpb24gdG8gc2Nhbgpmb3IgdW51c2VkIHBhZ2Vz
IGRlc3BpdGUgdGhlIFZNQSBpdHNlbGYgYmVpbmcgbm90aW9uYWxseSBwYXJ0IG9mIHRoZQpHR1RU
LiBBcyBzdWNoLCB3ZSBuZWVkIHRvIGRpc2FibGUgdGhhdCBjYWxsYmFjayB0byBhdm9pZCBhCnVz
ZS1hZnRlci1mcmVlLgoKVGhpcyB1bmZvcnR1bmF0ZWx5IGJsZXcgdXAgc28gZWFybHkgZHVyaW5n
IGJvb3QgdGhhdCBDSSBkZWNsYXJlZCB0aGUKbWFjaGluZSB1bnJlYWNoYWJsZSBhcyBvcHBvc2Vk
IHRvIGJlaW5nIHRoZSBtYWpvciBmYWlsdXJlIGl0IHdhcy4gT29wcy4KCkZpeGVzOiBkMzYyMjA5
OWM3NmYgKCJkcm0vaTkxNS9ndHQ6IEFsd2F5cyBhY3F1aXJlIHN0cnVjdF9tdXRleCBmb3IgZ2Vu
Nl9wcGd0dF9jbGVhbnVwIikKU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJp
cy13aWxzb24uY28udWs+CkNjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwu
Y29tPgpDYzogVG9taSBTYXJ2ZWxhIDx0b21pLnAuc2FydmVsYUBpbnRlbC5jb20+Ci0tLQogZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fZ3R0LmMgfCAyOCArKysrKysrKysrKysrKysrKysr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMjggaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9nZW1fZ3R0LmMKaW5kZXggOGQ4YTRiMGFkNGQ5Li4yNjZiYWExMWRmNjQgMTAwNjQ0
Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCisrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ2VtX2d0dC5jCkBAIC0xODQ3LDYgKzE4NDcsMzMgQEAgc3RhdGlj
IHZvaWQgZ2VuNl9wcGd0dF9jbGVhbnVwX3dvcmsoc3RydWN0IHdvcmtfc3RydWN0ICp3cmspCiAJ
a2ZyZWUod29yayk7CiB9CiAKK3N0YXRpYyBpbnQgbm9wX3NldF9wYWdlcyhzdHJ1Y3QgaTkxNV92
bWEgKnZtYSkKK3sKKwlyZXR1cm4gLUVOT0RFVjsKK30KKworc3RhdGljIHZvaWQgbm9wX2NsZWFy
X3BhZ2VzKHN0cnVjdCBpOTE1X3ZtYSAqdm1hKQoreworfQorCitzdGF0aWMgaW50IG5vcF9iaW5k
KHN0cnVjdCBpOTE1X3ZtYSAqdm1hLAorCQkgICAgZW51bSBpOTE1X2NhY2hlX2xldmVsIGNhY2hl
X2xldmVsLAorCQkgICAgdTMyIHVudXNlZCkKK3sKKwlyZXR1cm4gLUVOT0RFVjsKK30KKworc3Rh
dGljIHZvaWQgbm9wX3VuYmluZChzdHJ1Y3QgaTkxNV92bWEgKnZtYSkKK3sKK30KKworc3RhdGlj
IGNvbnN0IHN0cnVjdCBpOTE1X3ZtYV9vcHMgbm9wX3ZtYV9vcHMgPSB7CisJLnNldF9wYWdlcyA9
IG5vcF9zZXRfcGFnZXMsCisJLmNsZWFyX3BhZ2VzID0gbm9wX2NsZWFyX3BhZ2VzLAorCS5iaW5k
X3ZtYSA9IG5vcF9iaW5kLAorCS51bmJpbmRfdm1hID0gbm9wX3VuYmluZCwKK307CisKIHN0YXRp
YyB2b2lkIGdlbjZfcHBndHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkK
IHsKIAlzdHJ1Y3QgZ2VuNl9od19wcGd0dCAqcHBndHQgPSB0b19nZW42X3BwZ3R0KGk5MTVfdm1f
dG9fcHBndHQodm0pKTsKQEAgLTE4NTUsNiArMTg4Miw3IEBAIHN0YXRpYyB2b2lkIGdlbjZfcHBn
dHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSkKIAkvKiBGSVhNRSByZW1v
dmUgdGhlIHN0cnVjdF9tdXRleCB0byBicmluZyB0aGUgbG9ja2luZyB1bmRlciBjb250cm9sICov
CiAJSU5JVF9XT1JLKCZ3b3JrLT5iYXNlLCBnZW42X3BwZ3R0X2NsZWFudXBfd29yayk7CiAJd29y
ay0+dm1hID0gcHBndHQtPnZtYTsKKwl3b3JrLT52bWEtPm9wcyA9ICZub3Bfdm1hX29wczsKIAlz
Y2hlZHVsZV93b3JrKCZ3b3JrLT5iYXNlKTsKIAogCWdlbjZfcHBndHRfZnJlZV9wZChwcGd0dCk7
Ci0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
