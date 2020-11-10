Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 366BD2AD5A2
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Nov 2020 12:52:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEBE789A1E;
	Tue, 10 Nov 2020 11:52:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C855E89A1E;
 Tue, 10 Nov 2020 11:52:54 +0000 (UTC)
IronPort-SDR: YvNnMieaOwoJ5+s7tntwOiZIardD6V8Y4HAbbKgvOc06sR/GsbuavTkjyjCfJHbw80Q9kt+NxI
 wkSR8DkSo7Fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="157739979"
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="157739979"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:52:54 -0800
IronPort-SDR: bWKR0xLbCxc1lE+n6X/vLmzvyg0zp8azpjdju1sU7SnFxX78VXo6F1j5LKehy7/nJhZJVUoDKC
 zRcXdlFXhM4A==
X-IronPort-AV: E=Sophos;i="5.77,466,1596524400"; d="scan'208";a="541296948"
Received: from stadlerw-mobl2.ger.corp.intel.com (HELO [10.252.50.177])
 ([10.252.50.177])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2020 03:52:52 -0800
To: =?UTF-8?Q?Zbigniew_Kempczy=c5=84ski?= <zbigniew.kempczynski@intel.com>
References: <20201109104811.3773962-1-tvrtko.ursulin@linux.intel.com>
 <20201109104811.3773962-2-tvrtko.ursulin@linux.intel.com>
 <20201110111352.GD5736@zkempczy-mobl2>
 <92afca40-68e5-5233-b6c8-24e79540fa32@linux.intel.com>
 <20201110114602.GG5736@zkempczy-mobl2>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8edab1c5-6f7b-5cae-3bda-5288e6bd64fe@linux.intel.com>
Date: Tue, 10 Nov 2020 11:52:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201110114602.GG5736@zkempczy-mobl2>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/3] intel_gpu_top: User friendly device
 listing
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzExLzIwMjAgMTE6NDYsIFpiaWduaWV3IEtlbXBjennFhHNraSB3cm90ZToKCltzbmlw
XQoKPj4+PiBkaWZmIC0tZ2l0IGEvdG9vbHMvaW50ZWxfZ3B1X3RvcC5jIGIvdG9vbHMvaW50ZWxf
Z3B1X3RvcC5jCj4+Pj4gaW5kZXggMjk4ZGVmYTRlNmVkLi41MjMwNDcyZDJhZjQgMTAwNjQ0Cj4+
Pj4gLS0tIGEvdG9vbHMvaW50ZWxfZ3B1X3RvcC5jCj4+Pj4gKysrIGIvdG9vbHMvaW50ZWxfZ3B1
X3RvcC5jCj4+Pj4gQEAgLTEzMTMsNyArMTMxMyw2IEBAIGludCBtYWluKGludCBhcmdjLCBjaGFy
ICoqYXJndikKPj4+PiAgICAJdW5zaWduZWQgaW50IGk7Cj4+Pj4gICAgCWludCByZXQgPSAwLCBj
aDsKPj4+PiAgICAJYm9vbCBsaXN0X2RldmljZSA9IGZhbHNlOwo+Pj4+IC0JZW51bSBpZ3RfZGV2
aWNlc19wcmludF90eXBlIHByaW50dHlwZSA9IElHVF9QUklOVF9TSU1QTEU7Cj4+Pj4gICAgCWNo
YXIgKnBtdV9kZXZpY2UsICpvcHRfZGV2aWNlID0gTlVMTDsKPj4+PiAgICAJc3RydWN0IGlndF9k
ZXZpY2VfY2FyZCBjYXJkOwo+Pj4+IEBAIC0xMzg4LDcgKzEzODcsNyBAQCBpbnQgbWFpbihpbnQg
YXJnYywgY2hhciAqKmFyZ3YpCj4+Pj4gICAgCWlndF9kZXZpY2VzX3NjYW4oZmFsc2UpOwo+Pj4+
ICAgIAlpZiAobGlzdF9kZXZpY2UpIHsKPj4+PiAtCQlpZ3RfZGV2aWNlc19wcmludChwcmludHR5
cGUpOwo+Pj4+ICsJCWlndF9kZXZpY2VzX3ByaW50KElHVF9QUklOVF9VU0VSKTsKPj4+Cj4+PiBJ
IHdvdWxkIGFkZCBhdCBsZWFzdCBwb3NzaWJpbGl0eSB0byB1c2Ugc2ltcGxlIHZpZXcgdG8gc3Vn
Z2VzdAo+Pj4gaG93IHRvIHVzZSBwY2kvc3lzIGZpbHRlci4gV2l0aCBVU0VSIHByaW50IGZvcm1h
dCB3ZSBzZWUgb25seQo+Pgo+PiBZb3UgbWVhbiB0aGUgYmx1cmIgcHJpbnRlZCBvdXQgYnkgaWd0
X2RldmljZV9wcmludF9maWx0ZXJfdHlwZXMgKGN1cnJlbnRseQo+PiBwcmludGVkIGFzIHBhcnQg
b2YgaGVscCB0ZXh0KSBvciBzb21ldGhpbmcgZWxzZT8KPiAKPiBZZXMuIFdlIGtub3cgbHNncHUg
YW5kIGludGVsX2dwdV90b3Agc2VsZWN0aW9uIGlzIHNhbWUgYW5kIHlvdSdyZQo+IGFsc28gcHJp
bnRpbmcgZmlsdGVyIHN5bnRheCBvbiAnaW50ZWxfZ3B1X3RvcCAtaCcuIEJ1dCB3aXRob3V0Cj4g
dXNpbmcgJ2xzZ3B1IC1zJyB5b3Ugd29uJ3QgZ3Vlc3MgaG93IHRvIHNwZWNpZnkgc3lzOi4uLiBm
aWx0ZXIuCgpNeSB0aGlua2luZyBpcyB0aGF0IHR5cGljYWwgaW50ZWxfZ3B1X3RvcCB1c2VyIHdv
dWxkbid0IHdhbnQvbmVlZCB0byAKY29uY2VybiB0aGVtc2VsdmVzIHdpdGggZGlmZmVyZW50IGZp
bHRlcnMgYnV0IGp1c3QgY29weSZwYXN0ZSB3aGF0IHdhcyAKbGlzdGVkIGZyb20gaW50ZWxfZ3B1
X3RvcCAtTC4gSW4gd2hpY2ggY2FzZS4uCgo+Pgo+Pj4gZHJtIHBhdGhzLiBCdXQgSSB3b24ndCBp
bnNpc3QgZm9yIHRoYXQsIHVzaW5nIGRybSBzZWxlY3Rpb24KPj4+IGlzIG9rIGZvciBtZS4KPj4K
Pj4gR29vZCBwb2ludCBhY3R1YWxseSwgaW50ZWxfZ3B1X3RvcCBzaG91bGQgcHJvYmFibHkgZGVm
YXVsdCB0byAiLS1wY2kiCj4+IGxpc3RpbmcgdHlwZSBzaW5jZSBpdCBtb25pdG9ycyBHUFVzIHdp
dGggbm8gbm90aW9uIG9mIERSTSBtYXN0ZXIvcmVuZGVyLgo+Pgo+Pj4gUmV2aWV3ZWQtYnk6IFpi
aWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50ZWwuY29tPgo+Pgo+
PiBUaGFua3MhIExldCBtZSBrbm93IGlmIHlvdSBhZ3JlZSB3aXRoICItLXBjaSIgYnkgZGVmYXVs
dCBmb3IgaW50ZWxfZ3B1X3RvcAo+PiBhbmQgaWYgaXQgaXMgb2theSB0byBrZWVwIHRoZSByLWI/
Cj4gCj4gSWYgaXQgaXMgbm90IHByb2JsZW0geW91IGNvdWxkIHByb3ZpZGUgLS1wY2kgYW5kIC0t
c3lzZnMgdG9vIHRvIGJlIGNvbXBsaWFudAo+IHdpdGggbHNncHUgc3dpdGNoZXMuIEJ1dCB0aGVy
ZSBhcmUgbWlub3Igbml0cyBhbmQgeW91IGNhbiBrZWVwIHItYiB3aXRoCj4gdGhlIGNvZGUgYXMg
aXQgaXMuCgouLi4gSSBkaWQgbm90IHNlZSB0aGUgdmFsdWUgb2Ygc3VwcG9ydGluZyAtLWRybS8t
LXBjaS8tLXN5c2ZzIGZyb20gCmludGVsX2dwdV90b3AuCgpTbyAiLS1wY2kiIGJ5IGRlZmF1bHQg
c2hvdWxkICJKdXN0V29yayIgYW5kIG1ha2UgZW5kIHVzZXJzIGhhcHB5LiBBcyAKbG9uZyBhcyB0
aGUgaGVscCB0ZXh0IGlzIGNsZWFyIGVub3VnaCB3aGF0IG5lZWRzIHRvIGJlIGNvcHkmcGFzdGVk
LCAKd2hpY2ggbWF5IG5lZWQgaW1wcm92ZW1lbnQuIElmIEkgYW0gbm90IG1pc3Npbmcgc29tZXRo
aW5nIGVsc2UuCgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeAo=
