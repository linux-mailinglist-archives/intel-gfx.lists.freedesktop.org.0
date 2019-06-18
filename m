Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A4749C0F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 10:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572B46E117;
	Tue, 18 Jun 2019 08:33:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B603F6E117;
 Tue, 18 Jun 2019 08:33:45 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: gtucker) with ESMTPSA id 868DA27E950
To: "Ser, Simon" <simon.ser@intel.com>,
 "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "Latvala, Petri" <petri.latvala@intel.com>
References: <cover.1560433744.git.guillaume.tucker@collabora.com>
 <b1e0d69a8352f9fd2e65293f2292086f4ef260e7.1560433744.git.guillaume.tucker@collabora.com>
 <d479de99f2729dbd0f2f0615b41ebeaff025cc9a.camel@intel.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <250e4bb0-efa6-1f23-6195-9cf3a7398c06@collabora.com>
Date: Tue, 18 Jun 2019 09:33:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <d479de99f2729dbd0f2f0615b41ebeaff025cc9a.camel@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t v2 1/4] meson: add libatomic
 dependency
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTQvMDYvMjAxOSAwOTowNywgU2VyLCBTaW1vbiB3cm90ZToKPiBPbiBUaHUsIDIwMTktMDYt
MTMgYXQgMTQ6NTMgKzAxMDAsIEd1aWxsYXVtZSBUdWNrZXIgd3JvdGU6Cj4+IEFkZCBjb25kaXRp
b25hbCBkZXBlbmRlbmN5IG9uIGxpYmF0b21pYyBpbiBvcmRlciB0byBiZSBhYmxlIHRvIHVzZSB0
aGUKPj4gX19hdG9taWNfKiBmdW5jdGlvbnMgaW5zdGVhZCBvZiB0aGUgb2xkZXIgX19zeW5jXyog
b25lcy4gIFRoZQo+PiBsaWJhdG9taWMgbGlicmFyeSBpcyBvbmx5IG5lZWRlZCB3aGVuIHRoZXJl
IGFyZW4ndCBhbnkgbmF0aXZlIHN1cHBvcnQKPj4gb24gdGhlIGN1cnJlbnQgYXJjaGl0ZWN0dXJl
LCBzbyBhIGxpbmtlciB0ZXN0IGlzIHVzZWQgZm9yIHRoaXMKPj4gcHVycG9zZS4gIFRoaXMgZW5h
YmxlcyBhdG9taWMgb3BlcmF0aW9ucyB0byBiZSBvbiBhIHdpZGVyIG51bWJlciBvZgo+PiBhcmNo
aXRlY3R1cmVzIGluY2x1ZGluZyBNSVBTLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBHdWlsbGF1bWUg
VHVja2VyIDxndWlsbGF1bWUudHVja2VyQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+PiAgbWVzb24u
YnVpbGQgfCAxMyArKysrKysrKysrKysrCj4+ICAxIGZpbGUgY2hhbmdlZCwgMTMgaW5zZXJ0aW9u
cygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvbWVzb24uYnVpbGQgYi9tZXNvbi5idWlsZAo+PiBpbmRl
eCA2MjY4YzU4ZDM2MzQuLmRhMjVhMjhmMzI2OCAxMDA2NDQKPj4gLS0tIGEvbWVzb24uYnVpbGQK
Pj4gKysrIGIvbWVzb24uYnVpbGQKPj4gQEAgLTE3OSw2ICsxNzksMTkgQEAgbWF0aCA9IGNjLmZp
bmRfbGlicmFyeSgnbScpCj4+ICByZWFsdGltZSA9IGNjLmZpbmRfbGlicmFyeSgncnQnKQo+PiAg
ZGxzeW0gPSBjYy5maW5kX2xpYnJhcnkoJ2RsJykKPj4gIHpsaWIgPSBjYy5maW5kX2xpYnJhcnko
J3onKQo+PiAraWYgY2MubGlua3MoJycnCj4+ICsjaW5jbHVkZSA8c3RkaW50Lmg+Cj4+ICtpbnQg
bWFpbih2b2lkKSB7Cj4+ICsgIHVpbnQzMl90IHgzMiA9IDA7Cj4+ICsgIHVpbnQ2NF90IHg2NCA9
IDA7Cj4+ICsgIF9fYXRvbWljX2xvYWRfbigmeDMyLCBfX0FUT01JQ19TRVFfQ1NUKTsKPj4gKyAg
X19hdG9taWNfbG9hZF9uKCZ4NjQsIF9fQVRPTUlDX1NFUV9DU1QpOwo+IAo+IE1pbm9yOiBtYXli
ZSB3ZSBjb3VsZCd2ZSB1c2VkIHN0ZGF0b21pYy5oJ3MgYXRvbWljXyogZnVuY3Rpb25zICh3aXRo
b3V0Cj4gdGhlICJfXyIgcHJlZml4KSBmb3IgY29uc2lzdGVuY3kgd2l0aCB0aGUgYWN0dWFsIElH
VCBjb2RlPwoKSSBhY3R1YWxseSB0aG91Z2h0IGl0IHdhcyBtb3JlIGNvcnJlY3QgdG8gdXNlIHRo
ZSBfX2F0b21pY18qCmZ1bmN0aW9ucyBkaXJlY3RseSBmcm9tIHRoZSBsaWJhdG9taWMgbGlicmFy
eSBhcyB0aGlzIGlzIGEgbGlua2VyCnRlc3QuICBJZiBmb3IgYW55IHJlYXNvbiBzdGRhdG9taWMu
aCBjaGFuZ2VzIGJldHdlZW4gdmVyc2lvbnMgb3IKY29tcGlsZXJzIGFuZCB1c2VzIHNvbWV0aGlu
ZyBlbHNlIHRoYW4gbGliYXRvbWljLCB0aGVuIHRoaXMgdGVzdAp3b3VsZCBiZWNvbWUgaW52YWxp
ZC4KCj4+ICsgIHJldHVybiAwOwo+PiArfScnJywgbmFtZSA6ICdidWlsdC1pbiBhdG9taWNzJykK
Pj4gKwlsaWJhdG9taWMgPSBbXQo+IAo+IFdlIGNvdWxkIHVzZSBudWxsX2RlcCBpbnN0ZWFkLCB0
byBtYWtlIGl0IGNvbnNpc3RlbnQgd2l0aCB0aGUgb3RoZXIKPiBicmFuY2guCgpBY2ssIHdpbGwg
Zml4IHRoYXQgaW4gdjMuCgo+PiArZWxzZQo+PiArCWxpYmF0b21pYyA9IGNjLmZpbmRfbGlicmFy
eSgnYXRvbWljJykKPj4gK2VuZGlmCj4+ICAKPj4gIGlmIGNjLmhhc19oZWFkZXIoJ2xpbnV4L2tk
LmgnKQo+PiAgCWNvbmZpZy5zZXQoJ0hBVkVfTElOVVhfS0RfSCcsIDEpCgpUaGFua3MsCkd1aWxs
YXVtZQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
