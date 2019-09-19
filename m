Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A41EAB7E42
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 17:33:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08C4C6F800;
	Thu, 19 Sep 2019 15:33:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29BDF6F800
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 15:33:35 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18548015-1500050 for multiple; Thu, 19 Sep 2019 16:32:46 +0100
MIME-Version: 1.0
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <0e7b95296179189308cb170958e5ce2037538dc7.1568901239.git.jani.nikula@intel.com>
References: <cover.1568901239.git.jani.nikula@intel.com>
 <0e7b95296179189308cb170958e5ce2037538dc7.1568901239.git.jani.nikula@intel.com>
Message-ID: <156890716420.1196.8985203069888923285@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Thu, 19 Sep 2019 16:32:44 +0100
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915: abstract
 intel_mode_config_init() from intel_modeset_init()
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
Cc: jani.nikula@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBKYW5pIE5pa3VsYSAoMjAxOS0wOS0xOSAxNTowMzo1MikKPiBUaGUgaTkxNSBzcGVj
aWZpYyBtb2RlIGNvbmZpZyBpbml0IGNvZGUgaXMgdG9vIHNwZWNpZmljIGFuZCBkZXRhaWxlZCB0
bwo+IGhhdmUgb3BlbiBpbiBhIGhpZ2ggbGV2ZWwgZnVuY3Rpb24uIEFic3RyYWN0IGF3YXkuIE5v
IGZ1bmN0aW9uYWwKPiBjaGFuZ2VzLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxq
YW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jIHwgODUgKysrKysrKysrKystLS0tLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDQ2IGluc2VydGlvbnMoKyksIDM5IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZWUwZDM0ZDc2YjA4
Li4wNDBlZTAwNmIwNDcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYwo+IEBAIC0xNjEwMCw2ICsxNjEwMCw1MCBAQCBzdGF0aWMgaW50IGludGVs
X2luaXRpYWxfY29tbWl0KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYpCj4gICAgICAgICByZXR1cm4g
cmV0Owo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpbnRlbF9tb2RlX2NvbmZpZ19pbml0KHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX21vZGVf
Y29uZmlnICptb2RlX2NvbmZpZyA9ICZpOTE1LT5kcm0ubW9kZV9jb25maWc7CgpOZXN0Cglkcm1f
bW9kZV9jb25maWdfaW5pdChtb2RlX2NvbmZpZyk7CmhlcmU/CgpSZXZpZXdlZC1ieTogQ2hyaXMg
V2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Ci1DaHJpcwpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
