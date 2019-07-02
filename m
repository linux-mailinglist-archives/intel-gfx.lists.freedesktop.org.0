Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257EF5D238
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2019 16:59:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 964F8899B0;
	Tue,  2 Jul 2019 14:59:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7A60A899B0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2019 14:59:02 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 17101549-1500050 for multiple; Tue, 02 Jul 2019 15:58:49 +0100
MIME-Version: 1.0
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20190702144947.13127-1-ville.syrjala@linux.intel.com>
References: <20190702144947.13127-1-ville.syrjala@linux.intel.com>
Message-ID: <156207952636.2466.3707591472000140185@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 02 Jul 2019 15:58:46 +0100
Subject: Re: [Intel-gfx] [PATCH] drm/i915: synchronize_irq() against the
 actual irq
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

UXVvdGluZyBWaWxsZSBTeXJqYWxhICgyMDE5LTA3LTAyIDE1OjQ5OjQ3KQo+IEZyb206IFZpbGxl
IFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gCj4gV2hlbiBlbGlt
aW5hdGluZyBvdXIgdXNlIG9mIGRybV9pcnFfaW5zdGFsbCgpIEkgZmFpbGVkIHRvIGNvbnZlcnQK
PiBhbGwgb3VyIHN5bmNocm9uaXplX2lycSgpIGNhbGxzIHRvIGNvbnN1bHQgcGRldi0+aXJxIGlu
c3RlYWQgb2YKPiBkZXZfcHJpdi0+ZHJtLmlycS4gQXMgd2Ugbm8gbG9uZ2VyIHBvcHVsYXRlIGRl
dl9wcml2LT5kcm0uaXJxCj4gd2UncmUgbm8gbG9uZ2VyIHN5bmNocm9uaXppbmcgYWdhaW5zdCBh
bnl0aGluZy4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+
Cj4gUmVwb3J0ZWQtYnk6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4KPiBGaXhlczog
YjMxOGI4MjQ1NWJkICgiZHJtL2k5MTU6IE51a2UgZHJtX2RyaXZlciBpcnEgdmZ1bmNzIikKPiBC
dWd6aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEx
MDEyCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KCk9vcHMuCgpMb3RzIG9mIGR1cGxpY2F0aW9uIHRoZXJlLCBJIGRvbid0IHRo
aW5rIGFuCgpzdGF0aWMgaW5saW5lIHZvaWQgaW50ZWxfc3luY2hyb25pemVfaXJxKHN0cnVjdCBk
cm1faTkxNV9wcml2YXRlICppOTE1KQp7CglzeW5jaHJvbml6ZV9pcnEoaTkxNS0+ZHJtLnBkZXYt
PmlycSk7Cn0KCihpbnRlbF8gb3IgaTkxNV8gZGVwZW5kaW5nIG9uIHRhc3RlKQoKd291bGQgZ28g
YW1pc3MuIFNhZGx5IGtlcm5lbC9pcnEvaXJxZGVzYy5jIGRvZXNuJ3QgcmVwb3J0IGEgYm9ndXMg
aXJxCm51bWJlciBvciBlbHNlIHdlIGNvdWxkIGhhdmUgbWFya2VkIHRoZSBkcm0uaXJxIGFzIGJh
ZC4KCkt1ZG9zIHRvIEltcmUgZm9yIGZpZ3VyaW5nIG91dCB0aGUgbGluayBhcyB0aGF0IGJ1ZyBy
ZXBvcnQgaGFkIGJlZW4Kd29ycnlpbmcgbWUsIGFuZCBuZXZlciBvbmNlIGRpZCBJIHN1c3BlY3Qg
aXQgd2FzIHRoZSBpcnEgc2VyaWFsaXNhdGlvbi4KCkFsbCBjYWxsc2l0ZXMgY29udmVydGVkLApS
ZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJp
cwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
