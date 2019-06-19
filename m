Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD404C05B
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 19:55:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47EB46E444;
	Wed, 19 Jun 2019 17:55:02 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35CB06E444
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 17:55:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Jun 2019 10:55:00 -0700
X-IronPort-AV: E=Sophos;i="5.63,393,1557212400"; d="scan'208";a="165087273"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com) ([10.7.196.65])
 by orsmga006-auth.jf.intel.com with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Jun 2019 10:54:59 -0700
Date: Wed, 19 Jun 2019 10:55:30 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190619175530.GG8336@intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-4-tvrtko.ursulin@linux.intel.com>
 <156096123851.21217.8694292920489744044@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <156096123851.21217.8694292920489744044@skylake-alporthouse-com>
User-Agent: Mutt/1.11.3 (2019-02-01)
Subject: Re: [Intel-gfx] [PATCH 03/33] drm/i915: Move intel_gt
 initialization to a separate file
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
Cc: Intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMTksIDIwMTkgYXQgMDU6MjA6MzhQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVHZydGtvIFVyc3VsaW4gKDIwMTktMDYtMTkgMTQ6MjQ6MjkpCj4gPiBG
cm9tOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+ID4gCj4gPiBB
cyBpdCB3aWxsIGdyb3cgaW4gYSBmb2xsb3dpbmcgcGF0Y2ggbWFrZSBhIG5ldyBob21lIGZvciBp
dC4KPiA+IAo+ID4gdjI6Cj4gPiAgKiBDb252ZXJ0IG1vY2tfZ2VtX2RldmljZSBhcyB3ZWxsLiAo
Q2hyaXMpCj4gPiAKPiA+IHYzOgo+ID4gICogUmVuYW1lIHRvIGludGVsX2d0X2luaXRfZWFybHkg
YW5kIG1vdmUgY2FsbCBzaXRlIHRvIGk5MTVfZHJ2LmMuIChDaHJpcykKPiA+IAo+ID4gU2lnbmVk
LW9mZi1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KPiA+IFJl
dmlld2VkLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+ICMgdjIKPiA+
IC0tLQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICAg
ICB8ICAxICsKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jICAgICAgICAg
ICAgICAgfCAxNSArKysrKysrKysrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ndC5oICAgICAgICAgICAgICAgfCAxNCArKysrKysrKysrKysrKwo+ID4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICAgICB8ICAzICsrKwo+ID4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmMgICAgICAgICAgICAgICAgICB8ICA0IC0tLS0K
PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9zZWxmdGVzdHMvbW9ja19nZW1fZGV2aWNlLmMgfCAg
NiArKy0tLS0KPiA+ICA2IGZpbGVzIGNoYW5nZWQsIDM1IGluc2VydGlvbnMoKyksIDggZGVsZXRp
b25zKC0pCj4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0LmMKPiA+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZ3QuaAo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFr
ZWZpbGUgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+ID4gaW5kZXggOTEzNTVjMmVh
OGE1Li4xOWY4YjY3NDU3NzIgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9N
YWtlZmlsZQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiA+IEBAIC03
NCw2ICs3NCw3IEBAIGd0LXkgKz0gXAo+ID4gICAgICAgICBndC9pbnRlbF9jb250ZXh0Lm8gXAo+
ID4gICAgICAgICBndC9pbnRlbF9lbmdpbmVfY3MubyBcCj4gPiAgICAgICAgIGd0L2ludGVsX2Vu
Z2luZV9wbS5vIFwKPiA+ICsgICAgICAgZ3QvaW50ZWxfZ3QubyBcCj4gPiAgICAgICAgIGd0L2lu
dGVsX2d0X3BtLm8gXAo+ID4gICAgICAgICBndC9pbnRlbF9oYW5nY2hlY2subyBcCj4gPiAgICAg
ICAgIGd0L2ludGVsX2xyYy5vIFwKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYwo+ID4g
bmV3IGZpbGUgbW9kZSAxMDA2NDQKPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uMjlhMGYwYTMyNTQ5
Cj4gPiAtLS0gL2Rldi9udWxsCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ndC5jCj4gPiBAQCAtMCwwICsxLDE1IEBACj4gPiArLyoKPiA+ICsgKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUCj4gPiArICoKPiA+ICsgKiBDb3B5cmlnaHQgwqkgMjAxOSBJbnRlbCBD
b3Jwb3JhdGlvbgo+ID4gKyAqLwo+ID4gKwo+ID4gKyNpbmNsdWRlICJpbnRlbF9ndC5oIgo+ID4g
Kwo+ID4gK3ZvaWQgaW50ZWxfZ3RfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+ID4g
K3sKPiA+ICsgICAgICAgSU5JVF9MSVNUX0hFQUQoJmd0LT5hY3RpdmVfcmluZ3MpOwo+ID4gKyAg
ICAgICBJTklUX0xJU1RfSEVBRCgmZ3QtPmNsb3NlZF92bWEpOwo+ID4gKwo+ID4gKyAgICAgICBz
cGluX2xvY2tfaW5pdCgmZ3QtPmNsb3NlZF9sb2NrKTsKPiA+ICt9Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L2ludGVsX2d0LmgKPiA+IG5ldyBmaWxlIG1vZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAw
MDAwMDAuLmQxNTNlN2ZiNGMwOAo+ID4gLS0tIC9kZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuaAo+ID4gQEAgLTAsMCArMSwxNCBAQAo+ID4gKy8qCj4g
PiArICogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVAo+ID4gKyAqCj4gPiArICogQ29weXJp
Z2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9yYXRpb24KPiA+ICsgKi8KPiA+ICsKPiA+ICsjaWZuZGVm
IF9fSU5URUxfR1RfXwo+ID4gKyNkZWZpbmUgX19JTlRFTF9HVF9fCj4gPiArCj4gPiArI2luY2x1
ZGUgImd0L2ludGVsX2d0X3R5cGVzLmgiCj4gCj4gSW5zaWRlIGd0LyB3ZSBkb24ndCBuZWVkIHRv
IHVzZSB0aGUgZ3QvIHByZWZpeCBmb3IgaW5jbHVkZXMuCgp3aXRoIHRoaXMgZml4ZWQgZmVlbCBm
cmVlIHRvIHVwZ3JhZGUgbXkgdjIgcmV2IGFzIHdlbGwKClJldmlld2VkLWJ5OiBSb2RyaWdvIFZp
dmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+Cgo+IAo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAtQ2hyaXMKPiBfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QK
PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
