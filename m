Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0924826053
	for <lists+intel-gfx@lfdr.de>; Wed, 22 May 2019 11:19:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B465897D4;
	Wed, 22 May 2019 09:19:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7ECA897D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 May 2019 09:19:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 02:19:48 -0700
X-ExtLoop1: 1
Received: from gsimsek-mobl2.ger.corp.intel.com (HELO [10.252.2.167])
 ([10.252.2.167])
 by fmsmga007.fm.intel.com with ESMTP; 22 May 2019 02:19:45 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190521140855.3957-1-lionel.g.landwerlin@intel.com>
 <20190521140855.3957-5-lionel.g.landwerlin@intel.com>
 <155845847818.23981.11970035434652441216@skylake-alporthouse-com>
 <da6d6099-8996-1539-690d-3822faef4547@intel.com>
 <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <7d69dbe8-7fa1-a03a-47b3-7f2579ee38d5@intel.com>
Date: Wed, 22 May 2019 10:19:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <155846088372.23981.5205443926466113804@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: add a new perf configuration
 execbuf parameter
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

T24gMjEvMDUvMjAxOSAxODo0OCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDUtMjEgMTg6MTk6NTApCj4+IE9uIDIxLzA1LzIwMTkgMTg6MDcs
IENocmlzIFdpbHNvbiB3cm90ZToKPj4+IFF1b3RpbmcgTGlvbmVsIExhbmR3ZXJsaW4gKDIwMTkt
MDUtMjEgMTU6MDg6NTQpCj4+Pj4gKyAgICAgICBpZiAoZWItPm9hX2NvbmZpZyAmJgo+Pj4+ICsg
ICAgICAgICAgIGViLT5vYV9jb25maWcgIT0gZWItPmk5MTUtPnBlcmYub2EuZXhjbHVzaXZlX3N0
cmVhbS0+b2FfY29uZmlnKSB7Cj4+PiBCdXQgdGhlIG9hX2NvbmZpZyBpcyBub3Qgb3JkZXJlZCB3
aXRoIHJlc3BlY3QgdG8gcmVxdWVzdHMsIGFuZCB0aGUKPj4+IHJlZ2lzdGVycyBjaGFuZ2VkIGhl
cmUgYXJlIG5vdCBjb250ZXh0IHNhdmVkIGFuZCBzbyBtYXkgYmUgY2hhbmdlZCBieSBhCj4+PiB0
aGlyZCBwYXJ0eSBiZWZvcmUgZXhlY3V0aW9uLiBUaGUgZmlyc3QgcGFydHkgbXVzdCBwcmVzdW1h
Ymx5IGRyb3BwZWQKPj4+IHRoZSBwZXJmX2ZkIGJlZm9yZSB0aGVuLCBzbyBtYXliZSB5b3UgZG9u
J3QgY2FyZT8gSG1tLCBkb2Vzbid0IGV2ZW4gdGFrZQo+Pj4gYSB0aGlyZCBwYXJ0eSBhcyB0aGUg
cGVyZl9mZCBvd25lciBtYXkgY2hhbmdlIHRoZWlyIG1pbmQgZm9yIGRpZmZlcmVudAo+Pj4gY29u
dGV4dHMgYW5kIGJlIHN1cnByaXNlZCB3aGVuIHRoZSB3cm9uZyBzZXQgaXMgdXNlZC4KPj4KPj4g
VGhlIE9BIGNvbmZpZyBiYXRjaCBzaG91bGQgYmUgb3JkZXJlZCB3aXRoIHJlZ2FyZCB0byB0aGUg
TUlfQkJTIHdlJ3JlCj4+IGRvaW5nIGp1c3QgYmVsb3cgcmlnaHQ/Cj4gQnV0IHlvdSBvbmx5IGVt
aXQgaWYgdGhlIG9hX2NvbmZpZyBoYXMgY2hhbmdlZC4gRXJnbywgaXQgbWF5IGhhdmUKPiBjaGFu
Z2VkIGJldHdlZW4gc3VibWlzc2lvbiBhbmQgZXhlY3V0aW9uLgo+Cj4+IEl0J3Mgd3JpdHRlbiBi
ZWZvcmUgaW4gdGhlIHJpbmcgYnVmZmVyLgo+Pgo+Pgo+PiBUaGF0IGVzc2VudGlhbGx5IGFsbCB3
ZSBuZWVkIHNvIHRoYXQgYXMgdGhlIHBlcmYgcXVlcmllcyBydW4gaW4gdGhlCj4+IGJhdGNoIHN1
cHBsaWVkIGJ5IHRoZSBhcHBsaWNhdGlvbiBydW5zIHdpdGggdGhlIGNvbmZpZ3VyYXRpb24gbmVl
ZGVkLgo+Pgo+PiBJZiB0aGUgYXBwbGljYXRpb24gc2hhcmVzIHRoZSBwZXJmIEZEIGFuZCBzb21l
b25lIGVsc2UgcnVucyBhbm90aGVyCj4+IGNvbmZpZ3VyYXRpb24sIGl0J3MgdGhlIGFwcGxpY2F0
aW9uIGZhdWx0Lgo+Pgo+PiBJdCBuZWVkcyB0byBob2xkIHRoZSBwZXJmIEZEIGZvciBhcyBsb25n
IGFzIGl0J3MgZG9pbmcgcGVyZiBxdWVyaWVzIGFuZAo+PiBub3QgYWxsb3cgYW55Ym9keSBlbHNl
IHRvIGludGVyYWN0IHdpdGggdGhlIE9BIGNvbmZpZ3VyYXRpb24uCj4gSWYgb25lIGFwcCBpcyB0
cnlpbmcgdG8gdXNlIGRpZmZlcmVudCBjb25maWdzIG9uIGRpZmZlcmVudCBjb250ZXh0cwo+ICh3
aGljaCBzZWVtcyByZWFzb25hYmxlIGlmIGl0IGlzIHRyeWluZyB0byBzYW1wbGUgZGlmZmVyZW50
IHN0YXRzPykgdGhlbgo+IGl0IGNhbiBiZSBjYXVnaHQgb3V0LiBUaGUgb3JkZXIgb2YgZXhlY3V0
aW9uIGlzIG5vdCB0aGUgc2FtZSBhcyB0aGUKPiBvcmRlciBvZiBzdWJtaXNzaW9uICh1bmxlc3Mg
d2UgZW5mb3JjZSBpdCBieSBlLmcuIGRlZmluaW5nIHRoZQo+IHBlcmYub2FfY29uZmlnIGFzIGEg
YmFycmllcikuCgoKVGhpbmtpbmcgYWJvdXQgdGhpcyBhIGJpdCBtb3JlLCB0aGUgdXNlIGNhc2Ug
aGVyZSB3YXMgYWx3YXlzIHRoYXQgdGhlIAphcHAgaXMgdGhlIHNpbmdsZSB1c2VyIG9mIHRoZSBP
QSB1bml0LgoKSW4gdGhpcyBzY2VuYXJpbywgdGhlIGFwcCBpcyBkb2luZyBxdWVyaWVzIGFuZCBz
aG91bGQgbm90IHNoYXJlIHRoZSAKY29uZmlndXJhdGlvbiBvZiB0aGUgT0EgSFcgd2l0aCBhbnli
b2R5IGVsc2UuCgoKU28gYWxsIHRoZSBzYW1wbGluZyBzaG91bGQgYmUgb3JkZXJlZCB3aXRoIHJl
Z2FyZCB0byB0aGUgY29udGV4dCdzIHRpbWVsaW5lLgoKCi1MaW9uZWwKCgo+Cj4KPiBBbm90aGVy
IHdheSB3b3VsZCBiZSB0byB1bmNvbmRpdGlvbmFsbHkgZW1pdCB0aGUgQkJfU1RBUlQgZm9yIHRo
ZQo+IG9hX3ZtYSwgYW5kIGluc3RlYWQgZG8gdGhlIGVhcmx5IGV4aXQgd2l0aCBhIE1JX0NPTkRJ
VElPTkFMX0JCX0VORCBieQo+IGNvbXBhcmluZyBhZ2FpbnN0IGEgdmFsdWUgc3Rhc2hlZCBpbiB0
aGUgZW5naW5lIGh3c3AuIFlvdSBjb3VsZCBkbyBhCj4gcHJlZGljYXRlZCBCQl9TVEFSVCBpbnN0
ZWFkLCBidXQgdGhhdCBsb29rcyB0byBiZSBtb3JlIG9mIGEgbnVpc2FuY2UuCj4gLUNocmlzCj4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
