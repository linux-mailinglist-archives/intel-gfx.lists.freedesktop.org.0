Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 154BAADDA9
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2019 18:57:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E1B898C2;
	Mon,  9 Sep 2019 16:57:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E010C898C2
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2019 16:57:22 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 09:57:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,486,1559545200"; d="scan'208";a="183876465"
Received: from amanna-mobl.gar.corp.intel.com (HELO [10.252.93.73])
 ([10.252.93.73])
 by fmsmga008.fm.intel.com with ESMTP; 09 Sep 2019 09:57:19 -0700
To: "Sharma, Shashank" <shashank.sharma@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190907110735.10302-1-animesh.manna@intel.com>
 <20190907110735.10302-6-animesh.manna@intel.com>
 <01ce6461-6812-8e26-7132-b2a93ef76a36@intel.com>
From: Animesh Manna <animesh.manna@intel.com>
Message-ID: <67ef0867-b867-a4e5-6fde-550f7ad2c41c@intel.com>
Date: Mon, 9 Sep 2019 22:27:18 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <01ce6461-6812-8e26-7132-b2a93ef76a36@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 05/11] drm/i915/dsb: Check DSB engine
 status.
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
Cc: Michel Thierry <michel.thierry@intel.com>,
 Jani Nikula <jani.nikula@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA5LzkvMjAxOSA2OjQzIFBNLCBTaGFybWEsIFNoYXNoYW5rIHdyb3RlOgo+Cj4gT24gOS83
LzIwMTkgNDozNyBQTSwgQW5pbWVzaCBNYW5uYSB3cm90ZToKPj4gQXMgcGVyIGJzcGVjIGNoZWNr
IGZvciBEU0Igc3RhdHVzIGJlZm9yZSBwcm9ncmFtbWluZyBhbnkKPj4gb2YgaXRzIHJlZ2lzdGVy
LiBJbmxpbmUgZnVuY3Rpb24gYWRkZWQgdG8gY2hlY2sgdGhlIGRzYiBzdGF0dXMuCj4+Cj4+IENj
OiBNaWNoZWwgVGhpZXJyeSA8bWljaGVsLnRoaWVycnlAaW50ZWwuY29tPgo+PiBDYzogSmFuaSBO
aWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KPj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmln
by52aXZpQGludGVsLmNvbT4KPj4gQ2M6IFNoYXNoYW5rIFNoYXJtYSA8c2hhc2hhbmsuc2hhcm1h
QGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgfCA5ICsrKysrKysrKwo+PiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmggICAgICAgICAgfCA3ICsrKysrKysKPj4gICAyIGZpbGVzIGNoYW5nZWQsIDE2IGluc2VydGlv
bnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMgCj4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+
PiBpbmRleCAwZjU1ZWQ2ODNkNDEuLjJjODQxNTUxOGM2NSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYwo+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jCj4+IEBAIC0xNyw2ICsxNywxNSBAQAo+PiAgICNk
ZWZpbmUgRFNCX0JZVEVfRU5fU0hJRlQgICAgICAgIDIwCj4+ICAgI2RlZmluZSBEU0JfUkVHX1ZB
TFVFX01BU0sgICAgICAgIDB4ZmZmZmYKPj4gICArc3RhdGljIGlubGluZSBib29sIGlzX2RzYl9i
dXN5KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikKPj4gK3sKPj4gKyAgICBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0YyA9IGNvbnRhaW5lcl9vZihkc2IsIHR5cGVvZigqY3J0YyksIGRzYik7Cj4+ICsgICAg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRl
dik7Cj4+ICsgICAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOwo+PiArCj4+ICsgICAgcmV0
dXJuIERTQl9TVEFUVVMgJiBJOTE1X1JFQUQoRFNCX0NUUkwocGlwZSwgZHNiLT5pZCkpOwo+PiAr
fQo+PiArCj4+ICAgc3RydWN0IGludGVsX2RzYiAqCj4+ICAgaW50ZWxfZHNiX2dldChzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YykKPj4gICB7Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9pOTE1X3JlZy5oIAo+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4g
aW5kZXggMDA2Y2ZmZDU2YmUyLi5hMzA5OWY3MTJhZTYgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkx
NV9yZWcuaAo+PiBAQCAtMTE2NzYsNCArMTE2NzYsMTEgQEAgZW51bSBza2xfcG93ZXJfZ2F0ZSB7
Cj4+ICAgI2RlZmluZSBQT1JUX1RYX0RGTEVYRFBDU1NTKGZpYSkgICAgICAgIF9NTUlPX0ZJQSgo
ZmlhKSwgMHgwMDg5NCkKPj4gICAjZGVmaW5lICAgRFBfUEhZX01PREVfU1RBVFVTX05PVF9TQUZF
KHRjX3BvcnQpICAgICAgICAoMSA8PCAodGNfcG9ydCkpCj4+ICAgKy8qIFRoaXMgcmVnaXN0ZXIg
Y29udHJvbHMgdGhlIERpc3BsYXkgU3RhdGUgQnVmZmVyIChEU0IpIGVuZ2luZXMuICovCj4+ICsj
ZGVmaW5lIF9EU0JTTF9JTlNUQU5DRV9CQVNFICAgICAgICAweDcwQjAwCj4+ICsjZGVmaW5lIERT
QlNMX0lOU1RBTkNFKHBpcGUsIGlkKSAgICAoX0RTQlNMX0lOU1RBTkNFX0JBU0UgKyBcCj4+ICsg
ICAgICAgICAgICAgICAgICAgICAocGlwZSkgKiAweDEwMDAgKyAoaWQpICogMTAwKQo+Cj4gV2h5
IGlzIHBpcGUgaW4gKCkgPwoKbW1pbyBvZmZzZXQgcGVyIERTQiBkZXBlbmQgb24gcGlwZSBhbmQg
ZHNiLWlkICgzIERTQiBwZXIgcGlwZS4pCm9mZnNldCBvZiBQSVBFX0EgRFNCMS0+IDcwQjAwCm9m
ZnNldCBvZiBQSVBFX0IgRFNCMS0+IDcxQjAwIGFuZCBzbyBvbi4uLgoKUmVnYXJkcywKQW5pbWVz
aAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
