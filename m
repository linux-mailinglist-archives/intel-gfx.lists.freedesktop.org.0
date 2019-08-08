Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E2EA867DF
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2019 19:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F6FC6E027;
	Thu,  8 Aug 2019 17:22:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D81AA6E027
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2019 17:22:56 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 17934224-1500050 
 for multiple; Thu, 08 Aug 2019 18:22:27 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  8 Aug 2019 18:22:26 +0100
Message-Id: <20190808172226.18306-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Stop reconfiguring our shmemfs
 mountpoint
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
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Hugh Dickins <hughd@google.com>,
 linux-kernel@vger.kernel.org,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Matthew Auld <matthew.auld@intel.com>, linux-fsdevel@vger.kernel.org,
 Al Viro <viro@zeniv.linux.org.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIGZpbGVzeXN0ZW0gcmVjb25maWd1cmUgQVBJIGlzIHVuZGVyZ29pbmcgYSB0cmFuc2l0aW9u
LCBicmVha2luZyBvdXIKY3VycmVudCBjb2RlLiBBcyB3ZSBvbmx5IHNldCB0aGUgZGVmYXVsdCBv
cHRpb25zLCB3ZSBjYW4gc2ltcGx5IHJlbW92ZQp0aGUgY2FsbCB0byBzX29wLT5yZW1vdW50X2Zz
KCkuIEluIHRoZSBmdXR1cmUsIHdoZW4gSFcgcGVybWl0cywgd2UgY2FuCnRyeSByZS1lbmFibGlu
ZyBodWdlIHBhZ2Ugc3VwcG9ydCwgYWxiZWl0IGFzIHN1Z2dlc3RlZCB3aXRoIG5ldyBwZXItZmls
ZQpjb250cm9scy4KClJlcG9ydGVkLWJ5OiBTZXJnZXkgU2Vub3poYXRza3kgPHNlcmdleS5zZW5v
emhhdHNreUBnbWFpbC5jb20+ClJlcG9ydGVkLWJ5OiBTZWRhdCBEaWxlayA8c2VkYXQuZGlsZWtA
Z21haWwuY29tPgpTdWdnZXN0ZWQtYnk6IEh1Z2ggRGlja2lucyA8aHVnaGRAZ29vZ2xlLmNvbT4K
U2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNj
OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+CkNjOiBIdWdoIERpY2tpbnMg
PGh1Z2hkQGdvb2dsZS5jb20+CkNjOiBBbCBWaXJvIDx2aXJvQHplbml2LmxpbnV4Lm9yZy51az4K
Q2M6IFNlcmdleSBTZW5vemhhdHNreSA8c2VyZ2V5LnNlbm96aGF0c2t5QGdtYWlsLmNvbT4KLS0t
CiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5jIHwgMzEgKysrKysrKystLS0t
LS0tLS0tLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwgOSBpbnNlcnRpb25zKCspLCAyMiBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1m
cy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtZnMuYwppbmRleCAwOTlmMzM5
N2FhZGEuLmJlOTQ1OThjYjMwNCAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtZnMuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1mcy5j
CkBAIC0yMCwzMSArMjAsMTggQEAgaW50IGk5MTVfZ2VtZnNfaW5pdChzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKIAlpZiAoIXR5cGUpCiAJCXJldHVybiAtRU5PREVWOwogCi0JZ2VtZnMg
PSBrZXJuX21vdW50KHR5cGUpOwotCWlmIChJU19FUlIoZ2VtZnMpKQotCQlyZXR1cm4gUFRSX0VS
UihnZW1mcyk7Ci0KIAkvKgotCSAqIEVuYWJsZSBodWdlLXBhZ2VzIGZvciBvYmplY3RzIHRoYXQg
YXJlIGF0IGxlYXN0IEhQQUdFX1BNRF9TSVpFLCBtb3N0Ci0JICogbGlrZWx5IDJNLiBOb3RlIHRo
YXQgd2l0aGluX3NpemUgbWF5IG92ZXJhbGxvY2F0ZSBodWdlLXBhZ2VzLCBpZiBzYXkKLQkgKiB3
ZSBhbGxvY2F0ZSBhbiBvYmplY3Qgb2Ygc2l6ZSAyTSArIDRLLCB3ZSBtYXkgZ2V0IDJNICsgMk0s
IGJ1dCB1bmRlcgotCSAqIG1lbW9yeSBwcmVzc3VyZSBzaG1lbSBzaG91bGQgc3BsaXQgYW55IGh1
Z2UtcGFnZXMgd2hpY2ggY2FuIGJlCi0JICogc2hydW5rLgorCSAqIEJ5IGNyZWF0aW5nIG91ciBv
d24gc2htZW1mcyBtb3VudHBvaW50LCB3ZSBjYW4gcGFzcyBpbgorCSAqIG1vdW50IGZsYWdzIHRo
YXQgYmV0dGVyIG1hdGNoIG91ciB1c2VjYXNlLgorCSAqCisJICogT25lIGV4YW1wbGUsIGFsdGhv
dWdoIGl0IGlzIHByb2JhYmx5IGJldHRlciB3aXRoIGEgcGVyLWZpbGUKKwkgKiBjb250cm9sLCBp
cyBzZWxlY3RpbmcgaHVnZSBwYWdlIGFsbG9jYXRpb25zICgiaHVnZT13aXRoaW4iKS4KKwkgKiBD
dXJyZW50bHkgdW51c2VkIGR1ZSB0byBiYW5kd2lkdGggaXNzdWVzIChzbG93IHJlYWRzKSBvbiBC
cm9hZHdlbGwrLgogCSAqLwogCi0JaWYgKGhhc190cmFuc3BhcmVudF9odWdlcGFnZSgpKSB7Ci0J
CXN0cnVjdCBzdXBlcl9ibG9jayAqc2IgPSBnZW1mcy0+bW50X3NiOwotCQkvKiBGSVhNRTogRGlz
YWJsZWQgdW50aWwgd2UgZ2V0IFcvQSBmb3IgcmVhZCBCVyBpc3N1ZS4gKi8KLQkJY2hhciBvcHRp
b25zW10gPSAiaHVnZT1uZXZlciI7Ci0JCWludCBmbGFncyA9IDA7Ci0JCWludCBlcnI7Ci0KLQkJ
ZXJyID0gc2ItPnNfb3AtPnJlbW91bnRfZnMoc2IsICZmbGFncywgb3B0aW9ucyk7Ci0JCWlmIChl
cnIpIHsKLQkJCWtlcm5fdW5tb3VudChnZW1mcyk7Ci0JCQlyZXR1cm4gZXJyOwotCQl9Ci0JfQor
CWdlbWZzID0ga2Vybl9tb3VudCh0eXBlKTsKKwlpZiAoSVNfRVJSKGdlbWZzKSkKKwkJcmV0dXJu
IFBUUl9FUlIoZ2VtZnMpOwogCiAJaTkxNS0+bW0uZ2VtZnMgPSBnZW1mczsKIAotLSAKMi4yMy4w
LnJjMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
