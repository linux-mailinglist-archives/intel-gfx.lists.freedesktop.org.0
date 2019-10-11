Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA9BD4174
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 15:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BDA16E3A2;
	Fri, 11 Oct 2019 13:37:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8546E3A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 13:37:40 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18804734-1500050 for multiple; Fri, 11 Oct 2019 14:37:12 +0100
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191010134849.9078-1-chris@chris-wilson.co.uk>
References: <20191010134849.9078-1-chris@chris-wilson.co.uk>
Message-ID: <157080102967.31572.156406253974477030@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 11 Oct 2019 14:37:09 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Honour O_NONBLOCK before
 throttling execbuf submissions
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

UXVvdGluZyBDaHJpcyBXaWxzb24gKDIwMTktMTAtMTAgMTQ6NDg6NDkpCj4gQ2hlY2sgdGhlIHVz
ZXIncyBmbGFncyBvbiB0aGUgc3RydWN0IGZpbGUgYmVmb3JlIGRlY2lkaW5nIHdoZXRoZXIgb3Ig
bm90Cj4gdG8gc3RhbGwgYmVmb3JlIHN1Ym1pdHRpbmcgYSByZXF1ZXN0LiBUaGlzIGFsbG93cyB1
cyB0byByZWFzb25hYmx5Cj4gY2hlYXBseSBob25vdXIgT19OT05CTE9DSyB3aXRob3V0IGNoZWNr
aW5nIGF0IG1vcmUgY3JpdGljYWwgcGhhc2VzCj4gZHVyaW5nIHJlcXVlc3Qgc3VibWlzc2lvbi4K
PiAKPiBTdWdnZXN0ZWQtYnk6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KPiBDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5AbGludXgu
aW50ZWwuY29tPgo+IC0tLQo+ICAuLi4vZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9leGVjYnVm
ZmVyLmMgICAgfCAyMSArKysrKysrKysrKystLS0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNCBp
bnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2V4ZWNidWZmZXIuYwo+IGluZGV4IDk4ODE2YzM1ZmZjMy4uYmM2YmNi
OGY2ZDc5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9l
eGVjYnVmZmVyLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhl
Y2J1ZmZlci5jCj4gQEAgLTIxODksMTUgKzIxODksMjIgQEAgc3RhdGljIGludCBfX2ViX3Bpbl9l
bmdpbmUoc3RydWN0IGk5MTVfZXhlY2J1ZmZlciAqZWIsIHN0cnVjdCBpbnRlbF9jb250ZXh0ICpj
ZSkKPiAgICAgICAgIGludGVsX2NvbnRleHRfdGltZWxpbmVfdW5sb2NrKHRsKTsKPiAgCj4gICAg
ICAgICBpZiAocnEpIHsKPiAtICAgICAgICAgICAgICAgaWYgKGk5MTVfcmVxdWVzdF93YWl0KHJx
LAo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSTkxNV9XQUlUX0lOVEVS
UlVQVElCTEUsCj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBNQVhfU0NI
RURVTEVfVElNRU9VVCkgPCAwKSB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgaTkxNV9yZXF1
ZXN0X3B1dChycSk7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gLUVJTlRSOwo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2V4aXQ7Cj4gLSAgICAgICAgICAgICAgIH0K
PiArICAgICAgICAgICAgICAgYm9vbCBub25ibG9jayA9IGViLT5maWxlLT5maWxwLT5mX2ZsYWdz
ICYgT19OT05CTE9DSzsKPiArICAgICAgICAgICAgICAgbG9uZyB0aW1lb3V0OwoKVGhlIGFsdGVy
bmF0aXZlIG9yIGFkZGVuZHVtIHdvdWxkIGJlIHRvIHVzZSBhbiBleGVjYnVmLmZsYWcgdG8gb3B0
IG91dApvZiB0aHJvdHRsaW5nLiBPX05PTkJMT0NLIHNlZW1zIGZpdHRpbmcgdGhvdWdoLgotQ2hy
aXMKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
