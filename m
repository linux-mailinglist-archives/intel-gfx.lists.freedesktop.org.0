Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D9990215615
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jul 2020 13:05:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D9906E039;
	Mon,  6 Jul 2020 11:05:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751B26E039
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jul 2020 11:05:48 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 21727546-1500050 for multiple; Mon, 06 Jul 2020 12:05:45 +0100
MIME-Version: 1.0
In-Reply-To: <20200706104953.139261-1-michal@hardline.pl>
References: <20200706104953.139261-1-michal@hardline.pl>
From: Chris Wilson <chris@chris-wilson.co.uk>
To: Michał Winiarski <michal@hardline.pl>, intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jul 2020 12:05:44 +0100
Message-ID: <159403354435.24180.2705194108778408763@build.alporthouse.com>
User-Agent: alot/0.9
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Reboot CI if we get wedged
 during driver init
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: Michał Winiarski <michal.winiarski@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYcWCIFdpbmlhcnNraSAoMjAyMC0wNy0wNiAxMTo0OTo1MikKPiBGcm9tOiBN
aWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlhcnNraUBpbnRlbC5jb20+Cj4gCj4gR2V0dGlu
ZyB3ZWRnZWQgZGV2aWNlIG9uIGRyaXZlciBpbml0IGlzIHByZXR0eSBtdWNoIHVucmVjb3ZlcmFi
bGUuCj4gU2luY2Ugd2UncmUgcnVubmluZyB2YXJpb3VzIHNjZW5hcmlvcyB0aGF0IG1heSBwb3Rl
bnRpYWxseSBoaXQgdGhpcyBpbgo+IENJIChtb2R1bGUgcmVsb2FkIC8gc2VsZnRlc3RzIC8gaG90
dW5wbHVnKSwgYW5kIGlmIGl0IGhhcHBlbnMsIGl0IG1lYW5zCj4gdGhhdCB3ZSBjYW4ndCB0cnVz
dCBhbnkgc3Vic2VxdWVudCBDSSByZXN1bHRzLCB3ZSBzaG91bGQganVzdCBhcHBseSB0aGUKPiB0
YWludCB0byBsZXQgdGhlIENJIGtub3cgdGhhdCBpdCBzaG91bGQgcmVib290IChDSSBjaGVja3Mg
dGFpbnQgYmV0d2Vlbgo+IHRlc3QgcnVucykuCj4gCj4gdjI6IENvbW1lbnQgdGhhdCBXRURHRURf
T05fSU5JVCBpcyBub24tcmVjb3ZlcmFibGUsIGRpc3Rpbmd1aXNoCj4gICAgIFdFREdFRF9PTl9J
TklUIGZyb20gV0VER0VEX09OX0ZJTkkgKENocmlzKQo+IAo+IFNpZ25lZC1vZmYtYnk6IE1pY2hh
xYIgV2luaWFyc2tpIDxtaWNoYWwud2luaWFyc2tpQGludGVsLmNvbT4KPiBDYzogQ2hyaXMgV2ls
c29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2
YWxhQGludGVsLmNvbT4KCisxIGZvciBoYXNfdW5yZWNvdmVyYWJsZV9lcnJvcigpClJldmlld2Vk
LWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KCj4gLXN0YXRpYyBp
bmxpbmUgYm9vbCBpbnRlbF9ndF9oYXNfaW5pdF9lcnJvcihjb25zdCBzdHJ1Y3QgaW50ZWxfZ3Qg
Kmd0KQo+ICtzdGF0aWMgaW5saW5lIGJvb2wgaW50ZWxfZ3RfaXNfd2VkZ2VkKGNvbnN0IHN0cnVj
dCBpbnRlbF9ndCAqZ3QpCj4gIHsKPiAtICAgICAgIHJldHVybiB0ZXN0X2JpdChJOTE1X1dFREdF
RF9PTl9JTklULCAmZ3QtPnJlc2V0LmZsYWdzKTsKPiArICAgICAgIEdFTV9CVUdfT04oaW50ZWxf
Z3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoZ3QpID8KPiArICAgICAgICAgICAgICAgICAgIXRl
c3RfYml0KEk5MTVfV0VER0VELCAmZ3QtPnJlc2V0LmZsYWdzKSA6IGZhbHNlKTsKCkdFTV9CVUdf
T04oaW50ZWxfZ3RfaGFzX3VucmVjb3ZlcmFibGVfZXJyb3IoZ3QpICYmCgkgICAhdGVzdF9iaXQo
STkxNV9XRURHRUQsICZndC0+cmVzZXQuZmxhZ3MpKTsKClBlcmhhcHMgYSBiaXQgbW9yZSBjb252
ZW50aW9uYWwgd2F5IG9mIHNheWluZyB0aGUgc2FtZSA6KQotQ2hyaXMKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
