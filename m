Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA334BA85
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2019 15:52:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 089996E3E4;
	Wed, 19 Jun 2019 13:52:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D82836E3E4
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Jun 2019 13:52:01 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 16953760-1500050 for multiple; Wed, 19 Jun 2019 14:51:53 +0100
MIME-Version: 1.0
From: Chris Wilson <chris@chris-wilson.co.uk>
User-Agent: alot/0.6
To: Intel-gfx@lists.freedesktop.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
References: <20190619132459.25351-1-tvrtko.ursulin@linux.intel.com>
 <20190619132459.25351-3-tvrtko.ursulin@linux.intel.com>
 <87lfxxlm8h.fsf@intel.com>
In-Reply-To: <87lfxxlm8h.fsf@intel.com>
Message-ID: <156095231503.21217.7937740232634043125@skylake-alporthouse-com>
Date: Wed, 19 Jun 2019 14:51:55 +0100
Subject: Re: [Intel-gfx] [PATCH 02/33] drm/i915: Introduce struct intel_gt
 as replacement for anonymous i915->gt
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

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wNi0xOSAxNDo0ODozMCkKPiBPbiBXZWQsIDE5IEp1
biAyMDE5LCBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3
cm90ZToKPiA+IEZyb206IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+
Cj4gPgo+ID4gV2UgaGF2ZSBsb25nIGJlZW4gc2xpZ2hsdHkgYW5ub3llZCBieSB0aGUgYW5vbnlt
b3VzIGk5MTUtPmd0Lgo+ID4KPiA+IFByb21vdGUgaXQgdG8gYSBzZXBhcmF0ZSBzdHJ1Y3R1cmUg
YW5kIGdpdmUgaXQgaXRzIG93biBoZWFkZXIuCj4gPgo+ID4gVGhpcyBpcyBhIGZpcnN0IHN0ZXAg
dG93YXJkcyBjbGVhbmluZyB1cCB0aGUgc2VwYXJhdGlvbiBiZXR3ZWVuIGk5MTUgYW5kIGd0Lgo+
ID4KPiA+IFNpZ25lZC1vZmYtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRl
bC5jb20+Cj4gPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF90eXBl
cy5oIHwgNTMgKysrKysrKysrKysrKysrKysrKysrKysrCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuaCAgICAgICAgICB8IDM0ICstLS0tLS0tLS0tLS0tLQo+ID4gIDIgZmlsZXMg
Y2hhbmdlZCwgNTUgaW5zZXJ0aW9ucygrKSwgMzIgZGVsZXRpb25zKC0pCj4gPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPiA+Cj4g
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVzLmgKPiA+IG5ldyBmaWxlIG1v
ZGUgMTAwNjQ0Cj4gPiBpbmRleCAwMDAwMDAwMDAwMDAuLmRjZGIxOGUwZGQ4NAo+ID4gLS0tIC9k
ZXYvbnVsbAo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfdHlwZXMu
aAo+ID4gQEAgLTAsMCArMSw1MyBAQAo+ID4gKy8qCj4gPiArICogU1BEWC1MaWNlbnNlLUlkZW50
aWZpZXI6IE1JVAo+ID4gKyAqCj4gPiArICogQ29weXJpZ2h0IMKpIDIwMTkgSW50ZWwgQ29ycG9y
YXRpb24KPiA+ICsgKi8KPiAKPiBodHRwOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9wYXRj
aC9tc2dpZC8yMDE5MDYxNTA0MzE0Mi5HQTE4OTBAbmlzaGFkCgpJIHV0dGVybHkgYWJob3IgdGhh
dC4gQnJlYWtpbmcgcHJpb3IgY29kaW5nIHN0eWxlIGFuZCBjb25zaXN0ZW5jeSBqdXN0CmZvciB0
aGUgc2FrZSBvZiBhIHBlcmwgc2NyaXB0LiBJIHdhbnQgdGhlIGNvcHlyaWdodCBpbmZvcm1hdGlv
biBhcyBwYXJ0Cm9mIHRoZSBsaWNlbmNlIGdyYW50IChhcyBpdCBpcyB3aG8gaXMgZ2l2aW5nIHRo
ZSBsaWNlbmNlIGdyYW50IGluIHRoZSBmaXJzdApwbGFjZSkuCi1DaHJpcwpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
