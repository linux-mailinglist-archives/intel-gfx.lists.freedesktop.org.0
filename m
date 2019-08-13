Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4774F8B22D
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Aug 2019 10:19:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C24866E08A;
	Tue, 13 Aug 2019 08:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C61E6E08A
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Aug 2019 08:19:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Aug 2019 01:02:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,380,1559545200"; d="scan'208";a="194144962"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 13 Aug 2019 01:02:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <87r269ng3a.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <87r269ng3a.fsf@intel.com>
Date: Tue, 13 Aug 2019 11:06:45 +0300
Message-ID: <87k1bhh4kq.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] Fixes that failed to apply to v5.3-rc2
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

T24gTW9uLCAyOSBKdWwgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gVGhlIGZvbGxvd2luZyBjb21taXRzIGhhdmUgYmVlbiBtYXJrZWQgYXMgQ2M6IHN0
YWJsZSBvciBmaXhpbmcgc29tZXRoaW5nCj4gaW4gdjUuMy1yYzIgb3IgZWFybGllciwgYnV0IGZh
aWxlZCB0byBjaGVycnktcGljayB0bwo+IGRybS1pbnRlbC1maXhlcy4gUGxlYXNlIHNlZSBpZiB0
aGV5IGFyZSB3b3J0aCBiYWNrcG9ydGluZywgYW5kIHBsZWFzZSBkbwo+IHNvIGlmIHRoZXkgYXJl
Lgo+Cj4gRmFpbGVkIHRvIGNoZXJyeS1waWNrOgo+IDE4Mzk4OTA0Y2E5ZSAoImRybS9pOTE1OiBP
bmx5IHJlY292ZXIgYWN0aXZlIGVuZ2luZXMiKQo+IDA5MmJlMzgyYTI2MCAoImRybS9pOTE1OiBM
aWZ0IGludGVsX2VuZ2luZXNfcmVzdW1lKCkgdG8gY2FsbGVycyIpCgpUaGVzZSBoYXZlIGJlZW4g
YmFja3BvcnRlZCBhbmQgbWVyZ2VkLgoKPiBmZmY4MTAyYWFlZDUgKCJkcm0vaTkxNS9leGVjbGlz
dHM6IFByb2Nlc3MgaW50ZXJydXB0ZWQgY29udGV4dCBvbiByZXNldCIpCj4gNmMyYjAxMDNhZDky
ICgiZHJtL2k5MTU6IEZpeCBhbmQgaW1wcm92ZSBNQ1Igc2VsZWN0aW9uIGxvZ2ljIikKClRoZXNl
IGFyZSBzdGlsbCBvcGVuLgoKVGhpcyBpcyBhIG5ldyBvbmU6CgpkOGFmMDVmZjM4YWUgKCJkcm0v
aTkxNTogQWxsb3cgc2hhcmluZyB0aGUgaWRsZS1iYXJyaWVyIGZyb20gb3RoZXIga2VybmVsIHJl
cXVlc3RzIikKCj4gQ2hlcnJ5LXBpY2sgZmluZSBidXQgZmFpbCB0byBidWlsZCAoKik6Cj4gMmE4
ZGI1NjMzMTFhICgiZHJtL2k5MTU6IFVzZSBtYXhpbXVtIHdyaXRlIGZsdXNoIGZvciBwd3JpdGVf
Z3R0IikKClRoaXMgaXMgYSBuZXcgb25lOgoKNTc2ZjA1ODY1NTgxICgiZHJtL2k5MTU6IEZsdXNo
IGV4dHJhIGhhcmQgYWZ0ZXIgd3JpdGluZyByZWxvY2F0aW9ucyB0aHJvdWdoIHRoZSBHVFQiKQoK
Pgo+Cj4gQlIsCj4gSmFuaS4KPgo+Cj4gKCopCj4KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2dlbS5jOiBJbiBmdW5jdGlvbiDigJhpOTE1X2dlbV9ndHRfcHdyaXRlX2Zhc3TigJk6Cj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0uYzo2NTM6NDogZXJyb3I6IGltcGxpY2l0IGRlY2xh
cmF0aW9uIG9mIGZ1bmN0aW9uIOKAmGludGVsX2d0X2ZsdXNoX2dndHRfd3JpdGVz4oCZOyBkaWQg
eW91IG1lYW4g4oCYaTkxNV9nZW1fZmx1c2hfZ2d0dF93cml0ZXPigJk/IFstV2Vycm9yPWltcGxp
Y2l0LWZ1bmN0aW9uLWRlY2xhcmF0aW9uXQo+ICAgICBpbnRlbF9ndF9mbHVzaF9nZ3R0X3dyaXRl
cyhnZ3R0LT52bS5ndCk7Cj4gICAgIF5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+Cj4gICAgIGk5
MTVfZ2VtX2ZsdXNoX2dndHRfd3JpdGVzCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW0u
Yzo2NTM6Mzk6IGVycm9yOiDigJhzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl4oCZIGhhcyBubyBt
ZW1iZXIgbmFtZWQg4oCYZ3TigJkKPiAgICAgaW50ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXMoZ2d0
dC0+dm0uZ3QpOwo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF4KPiBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dlbS5jOjY4MjozNzogZXJyb3I6IOKAmHN0cnVjdCBp
OTE1X2FkZHJlc3Nfc3BhY2XigJkgaGFzIG5vIG1lbWJlciBuYW1lZCDigJhndOKAmQo+ICAgaW50
ZWxfZ3RfZmx1c2hfZ2d0dF93cml0ZXMoZ2d0dC0+dm0uZ3QpOwo+ICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBeCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
