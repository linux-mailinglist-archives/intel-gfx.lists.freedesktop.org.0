Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E1A58ED0
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Jun 2019 01:53:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938A06E853;
	Thu, 27 Jun 2019 23:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1D6C6E853
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 23:53:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 16:53:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="183566057"
Received: from lnapiera-mobl1.ger.corp.intel.com (HELO [10.249.140.163])
 ([10.249.140.163])
 by fmsmga001.fm.intel.com with ESMTP; 27 Jun 2019 16:53:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627090116.10847-1-lionel.g.landwerlin@intel.com>
 <20190627090116.10847-3-lionel.g.landwerlin@intel.com>
 <156163639890.9225.152357471609418453@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <473c7458-3e19-a768-f54e-4193a57b4c7c@intel.com>
Date: Fri, 28 Jun 2019 02:53:09 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156163639890.9225.152357471609418453@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 2/3] drm/i915: whitelist
 PS_(DEPTH|INVOCATION)_COUNT
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

T24gMjcvMDYvMjAxOSAxNDo1MywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMTA6MDE6MTUpCj4+IENGTDpDMCsgY2hhbmdlZCB0aGUg
c3RhdHVzIG9mIHRob3NlIHJlZ2lzdGVycyB3aGljaCBhcmUgbm93Cj4+IGJsYWNrbGlzdGVkIGJ5
IGRlZmF1bHQuCj4+Cj4+IFRoaXMgaXMgYnJlYWtpbmcgYSBudW1iZXIgb2YgQ1RTIHRlc3RzIG9u
IEdMICYgVnVsa2FuIDoKPj4KPj4gICAgS0hSLUdMNDUucGlwZWxpbmVfc3RhdGlzdGljc19xdWVy
eV90ZXN0c19BUkIuZnVuY3Rpb25hbF9mcmFnbWVudF9zaGFkZXJfaW52b2NhdGlvbnMgKEdMKQo+
Pgo+PiAgICBkRVFQLVZLLnF1ZXJ5X3Bvb2wuc3RhdGlzdGljc19xdWVyeS5mcmFnbWVudF9zaGFk
ZXJfaW52b2NhdGlvbnMuKiAoVnVsa2FuKQo+Pgo+PiB2MjogT25seSB1c2Ugb25lIHdoaXRlbGlz
dCBlbnRyeSAoTGlvbmVsKQo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8
bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L2ludGVsX3dvcmthcm91bmRzLmMgfCAxNyArKysrKysrKysrKysrKysrLQo+PiAg
IDEgZmlsZSBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Cj4+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiBpbmRleCA5OTM4
MDRkMDk1MTcuLmIxMTc1ODNlMzhiYiAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF93b3JrYXJvdW5kcy5jCj4+IEBAIC0xMDkyLDEwICsxMDkyLDI1IEBAIHN0YXRpYyB2
b2lkIGdsa193aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQo+
PiAgIAo+PiAgIHN0YXRpYyB2b2lkIGNmbF93aGl0ZWxpc3RfYnVpbGQoc3RydWN0IGludGVsX2Vu
Z2luZV9jcyAqZW5naW5lKQo+PiAgIHsKPj4gKyAgICAgICBzdHJ1Y3QgaTkxNV93YV9saXN0ICp3
ID0gJmVuZ2luZS0+d2hpdGVsaXN0Owo+PiArCj4+ICAgICAgICAgIGlmIChlbmdpbmUtPmNsYXNz
ICE9IFJFTkRFUl9DTEFTUykKPj4gICAgICAgICAgICAgICAgICByZXR1cm47Cj4+ICAgCj4+IC0g
ICAgICAgZ2VuOV93aGl0ZWxpc3RfYnVpbGQoJmVuZ2luZS0+d2hpdGVsaXN0KTsKPj4gKyAgICAg
ICBnZW45X3doaXRlbGlzdF9idWlsZCh3KTsKPj4gKwo+PiArICAgICAgIC8qCj4+ICsgICAgICAg
ICogV2FBbGxvd1BNRGVwdGhBbmRJbnZvY2F0aW9uQ291bnRBY2Nlc3NGcm9tVU1EOmNmbCx3aGws
Y21sLGFtbAo+PiArICAgICAgICAqCj4+ICsgICAgICAgICogVGhpcyBjb3ZlcnMgNCByZWdpc3Rl
ciB3aGljaCBhcmUgbmV4dCB0byBvbmUgYW5vdGhlciA6Cj4+ICsgICAgICAgICogICAtIFBTX0lO
Vk9DQVRJT05fQ09VTlQKPj4gKyAgICAgICAgKiAgIC0gUFNfSU5WT0NBVElPTl9DT1VOVF9VRFcK
Pj4gKyAgICAgICAgKiAgIC0gUFNfREVQVEhfQ09VTlQKPj4gKyAgICAgICAgKiAgIC0gUFNfREVQ
VEhfQ09VTlRfVURXCj4+ICsgICAgICAgICovCj4+ICsgICAgICAgd2hpdGVsaXN0X3JlZ19leHQo
dywgUFNfSU5WT0NBVElPTl9DT1VOVCwKPj4gKyAgICAgICAgICAgICAgICAgICAgICAgICBSSU5H
X0ZPUkNFX1RPX05PTlBSSVZfUkQgfAo+PiArICAgICAgICAgICAgICAgICAgICAgICAgIFJJTkdf
Rk9SQ0VfVE9fTk9OUFJJVl9SQU5HRV80KTsKPiBNYWdpYyEgQXMgd2UgY2FuJ3QgcmVseSBvbiBv
dXIgc2VsZnRlc3RzIHRvIHZlcmlmeSB0aGF0IHRoaXMgYWxsb3dzCj4gYWNjZXNzIGZyb20gdXNl
ciBiYXRjaGVzLCBjb3VsZCB5b3UgcG9rZSBBbnVqIGZvciBhbm90aGVyIHRlc3RlZCBieT8KPiAt
Q2hyaXMKPgpJJ2xsIGxldCBBbnVqIGFuc3dlci4KCkRvIEkgbmVlZCBDYzogc3RhYmxlQHZnZXIu
a2VybmVsLm9yZyA/CgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
