Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 484D65E61D
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 16:09:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFD6289F4F;
	Wed,  3 Jul 2019 14:09:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 884CE89F4F
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 14:09:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 07:09:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="184752663"
Received: from dglazik-mobl2.ger.corp.intel.com (HELO [10.251.94.160])
 ([10.251.94.160])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jul 2019 07:09:38 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190703135805.7310-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <b13d37dd-c01f-59ef-1fb7-8079f7a969e8@linux.intel.com>
Date: Wed, 3 Jul 2019 15:09:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190703135805.7310-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Dump w/a lists on all engines
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDAzLzA3LzIwMTkgMTQ6NTgsIENocmlzIFdpbHNvbiB3cm90ZToKPiBXZSBzdG9yZSBzZXBh
cmF0ZSB3YV9saXN0IG9uIGV2ZXJ5IGVuZ2luZSwgc28gYmUgc3VyZSB0byBpbmNsdWRlIGFsbAo+
IHdoZW4gZHVtcGluZyB0aGUgY3VycmVudCBzZXQgdmlhIGRlYnVnZnMuCj4gCj4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IFR2cnRr
byBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyB8IDI4ICsrKysrKysrKysrKysrKysrKysrKy0tLS0t
LS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZGVidWdmcy5jCj4gaW5kZXggNjM0MGNlYzczM2QyLi5m
YThmZjI3MDRiNmUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kZWJ1
Z2ZzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuYwo+IEBAIC0y
OTYwLDE0ICsyOTYwLDI4IEBAIHN0YXRpYyBpbnQgaTkxNV9zaGFyZWRfZHBsbHNfaW5mbyhzdHJ1
Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQgKnVudXNlZCkKPiAgIHN0YXRpYyBpbnQgaTkxNV93YV9yZWdp
c3RlcnMoc3RydWN0IHNlcV9maWxlICptLCB2b2lkICp1bnVzZWQpCj4gICB7Cj4gICAJc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBub2RlX3RvX2k5MTUobS0+cHJpdmF0ZSk7Cj4gLQlj
b25zdCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwgPSAmaTkxNS0+ZW5naW5lW1JDUzBdLT5jdHhf
d2FfbGlzdDsKPiAtCXN0cnVjdCBpOTE1X3dhICp3YTsKPiAtCXVuc2lnbmVkIGludCBpOwo+ICsJ
c3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lOwo+ICsJZW51bSBpbnRlbF9lbmdpbmVfaWQg
aWQ7Cj4gICAKPiAtCXNlcV9wcmludGYobSwgIldvcmthcm91bmRzIGFwcGxpZWQ6ICV1XG4iLCB3
YWwtPmNvdW50KTsKPiAtCWZvciAoaSA9IDAsIHdhID0gd2FsLT5saXN0OyBpIDwgd2FsLT5jb3Vu
dDsgaSsrLCB3YSsrKQo+IC0JCXNlcV9wcmludGYobSwgIjB4JVg6IDB4JTA4WCwgbWFzazogMHgl
MDhYXG4iLAo+IC0JCQkgICBpOTE1X21taW9fcmVnX29mZnNldCh3YS0+cmVnKSwgd2EtPnZhbCwg
d2EtPm1hc2spOwo+ICsJZm9yX2VhY2hfZW5naW5lKGVuZ2luZSwgaTkxNSwgaWQpIHsKPiArCQlj
b25zdCBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3YWwgPSAmZW5naW5lLT5jdHhfd2FfbGlzdDsKPiAr
CQljb25zdCBzdHJ1Y3QgaTkxNV93YSAqd2E7Cj4gKwkJdW5zaWduZWQgaW50IGNvdW50Owo+ICsK
PiArCQljb3VudCA9IHdhbC0+Y291bnQ7Cj4gKwkJaWYgKCFjb3VudCkKPiArCQkJY29udGludWU7
Cj4gKwo+ICsJCXNlcV9wcmludGYobSwgIiVzOiBXb3JrYXJvdW5kcyBhcHBsaWVkOiAldVxuIiwK
PiArCQkJICAgZW5naW5lLT5uYW1lLCBjb3VudCk7CgpDb21wbGljYXRpbmcgY29kZSB0byBwcmVz
ZXJ2ZSBsaW5lLWJ5LWxpbmUgb3V0cHV0IGluIGRlYnVnZnM/IDopCgo+ICsKPiArCQlmb3IgKHdh
ID0gd2FsLT5saXN0OyBjb3VudC0tOyB3YSsrKQo+ICsJCQlzZXFfcHJpbnRmKG0sICIweCVYOiAw
eCUwOFgsIG1hc2s6IDB4JTA4WFxuIiwKPiArCQkJCSAgIGk5MTVfbW1pb19yZWdfb2Zmc2V0KHdh
LT5yZWcpLAo+ICsJCQkJICAgd2EtPnZhbCwgd2EtPm1hc2spOwo+ICsKPiArCQlzZXFfcHJpbnRm
KG0sICJcbiIpOwo+ICsJfQo+ICAgCj4gICAJcmV0dXJuIDA7Cj4gICB9Cj4gCgpSZXZpZXdlZC1i
eTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4KClJlZ2FyZHMsCgpU
dnJ0a28KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
