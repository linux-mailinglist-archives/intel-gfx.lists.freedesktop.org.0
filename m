Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B30041CF1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2019 08:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1926C890D4;
	Wed, 12 Jun 2019 06:55:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8473D89276
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jun 2019 06:54:02 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Jun 2019 23:54:01 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.249.140.198]) ([10.249.140.198])
 by orsmga001.jf.intel.com with ESMTP; 11 Jun 2019 23:53:59 -0700
To: Kenneth Graunke <kenneth@whitecape.org>, intel-gfx@lists.freedesktop.org
References: <20190610081914.25428-1-lionel.g.landwerlin@intel.com>
 <2412677.VNyTJ0fQGL@kirito>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <b3f2f339-2108-a1ff-c319-130c47fb16b5@intel.com>
Date: Wed, 12 Jun 2019 09:53:59 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <2412677.VNyTJ0fQGL@kirito>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/perf: fix ICL perf register offsets
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

T24gMTAvMDYvMjAxOSAxODoyNSwgS2VubmV0aCBHcmF1bmtlIHdyb3RlOgo+IE9uIE1vbmRheSwg
SnVuZSAxMCwgMjAxOSAxOjE5OjE0IEFNIFBEVCBMaW9uZWwgTGFuZHdlcmxpbiB3cm90ZToKPj4g
V2UgZ290IHRoZSB3cm9uZyBvZmZzZXRzIChjb3VsZCB0aGV5IGhhdmUgY2hhbmdlZD8pLiBOZXcg
dmFsdWVzIHdlcmUKPj4gY29tcHV0ZWQgb2ZmIGFuIGVycm9yIHN0YXRlIGJ5IGxvb2tpbmcgdXAg
dGhlIHJlZ2lzdGVyIG9mZnNldCBpbiB0aGUKPj4gY29udGV4dCBpbWFnZSBhcyB3cml0dGVuIGJ5
IHRoZSBIVy4KPj4KPj4gU2lnbmVkLW9mZi1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5n
LmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+PiBGaXhlczogMWRlNDAxYzA4ZmE4MDUgKCJkcm0vaTkx
NS9wZXJmOiBlbmFibGUgcGVyZiBzdXBwb3J0IG9uIElDTCIpCj4+IC0tLQo+PiAgIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcGVyZi5jIHwgMTAgKysrKysrKy0tLQo+PiAgIDEgZmlsZSBjaGFu
Z2VkLCA3IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4+Cj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcGVyZi5jCj4+IGluZGV4IDRhNzY3MDg3ZGUyNy4uNmM4NTE5MWZjNmM5IDEwMDY0NAo+PiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3BlcmYuYwo+PiBAQCAtMzYxMiw5ICszNjEyLDEzIEBAIHZvaWQgaTkx
NV9wZXJmX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2KQo+PiAgIAkJCWRl
dl9wcml2LT5wZXJmLm9hLm9wcy5lbmFibGVfbWV0cmljX3NldCA9IGdlbjhfZW5hYmxlX21ldHJp
Y19zZXQ7Cj4+ICAgCQkJZGV2X3ByaXYtPnBlcmYub2Eub3BzLmRpc2FibGVfbWV0cmljX3NldCA9
IGdlbjEwX2Rpc2FibGVfbWV0cmljX3NldDsKPj4gICAKPj4gLQkJCWRldl9wcml2LT5wZXJmLm9h
LmN0eF9vYWN0eGN0cmxfb2Zmc2V0ID0gMHgxMjg7Cj4+IC0JCQlkZXZfcHJpdi0+cGVyZi5vYS5j
dHhfZmxleGV1MF9vZmZzZXQgPSAweDNkZTsKPj4gLQo+PiArCQkJaWYgKElTX0dFTihkZXZfcHJp
diwgMTApKSB7Cj4+ICsJCQkJZGV2X3ByaXYtPnBlcmYub2EuY3R4X29hY3R4Y3RybF9vZmZzZXQg
PSAweDEyODsKPj4gKwkJCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhfZmxleGV1MF9vZmZzZXQgPSAw
eDNkZTsKPj4gKwkJCX0gZWxzZSB7Cj4+ICsJCQkJZGV2X3ByaXYtPnBlcmYub2EuY3R4X29hY3R4
Y3RybF9vZmZzZXQgPSAweDEyNDsKPj4gKwkJCQlkZXZfcHJpdi0+cGVyZi5vYS5jdHhfZmxleGV1
MF9vZmZzZXQgPSAweDc4ZTsKPj4gKwkJCX0KPj4gICAJCQlkZXZfcHJpdi0+cGVyZi5vYS5nZW44
X3ZhbGlkX2N0eF9iaXQgPSAoMTw8MTYpOwo+PiAgIAkJfQo+PiAgIAl9Cj4+Cj4gU291bmRzIGJl
bGlldmFibGUuCj4KPiBBY2tlZC1ieTogS2VubmV0aCBHcmF1bmtlIDxrZW5uZXRoQHdoaXRlY2Fw
ZS5vcmc+CgpUaGFua3MgS2VuLgoKClRoaXMgd2FzIGNvbmZpcm1lZCB0byBmaXggdGhlIGlzc3Vl
IHNlZW4gaW4gcGVyZm9ybWFuY2UgcXVlcmllcy4KCklzIGEgQWNrZWQtYnkgZW5vdWdoIHRvIGxh
bmQgdGhpcz8KCkNvdWxkIHNvbWVvbmUgZWxzZSBtYXliZSByZXZpZXc/CgoKVGhhbmtzIGEgbG90
LAoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
