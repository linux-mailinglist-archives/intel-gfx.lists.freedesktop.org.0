Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72B5D13FB69
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 22:27:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A545F6E46C;
	Thu, 16 Jan 2020 21:27:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B0D46E46C
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 21:27:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 13:27:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="248976929"
Received: from brianwel-mobl1.amr.corp.intel.com (HELO [10.144.157.237])
 ([10.144.157.237])
 by fmsmga004.fm.intel.com with ESMTP; 16 Jan 2020 13:27:54 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200116192047.22303-1-brian.welty@intel.com>
 <157920301401.7612.15247641307789572716@skylake-alporthouse-com>
From: Brian Welty <brian.welty@intel.com>
Message-ID: <bbe98681-bb75-f093-6723-a5ab3d3de9b2@intel.com>
Date: Thu, 16 Jan 2020 13:27:53 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <157920301401.7612.15247641307789572716@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make use of drm_gem_object_release
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiAxLzE2LzIwMjAgMTE6MzAgQU0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIEJy
aWFuIFdlbHR5ICgyMDIwLTAxLTE2IDE5OjIwOjQ3KQo+PiBBcyBpOTE1IGlzIHVzaW5nIGRybV9n
ZW1fcHJpdmF0ZV9vYmplY3RfaW5pdCwgaXQgaXMgYmVzdCB0bwo+PiB1c2UgdGhlIGludmVyc2Ug
ZnVuY3Rpb24gZm9yIGNsZWFudXA6IGRybV9nZW1fb2JqZWN0X3JlbGVhc2UuCj4+IFRoaXMgcmVt
b3ZlcyBuZWVkIGZvciBhIHNobWVtX3JlbGVhc2UgYW5kIHBoeXNfcmVsZWFzZS4KPj4KPj4gU2ln
bmVkLW9mZi1ieTogQnJpYW4gV2VsdHkgPGJyaWFuLndlbHR5QGludGVsLmNvbT4KPj4gLS0tCj4+
IENocmlzLCB0aGUgY2xlYW51cCBzZXF1ZW5jZSBpbiBkcm1fZ2VtX29iamVjdF9yZWxlYXNlKCkg
dnMgdGhlIHJlcGxhY2VkCj4+IGk5MTUgY29kZSBpcyBkaWZmZXJlbnQsIGJ1dCBzaG91bGQgYmUg
b2theT8gIExpZ2h0IHRlc3RpbmcgZGlkbid0IGZpbmQKPj4gYW55IGlzc3Vlcy4KPiAKPiBjb21t
aXQgMGMxNTlmZmVmNjI4ZmE5NGQwZjRmOTEyOGU3ZjJiNmYyYjVlODZlZgo+IEF1dGhvcjogQ2hy
aXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gRGF0ZTogICBXZWQgSnVsIDMg
MTk6MDY6MDEgMjAxOSArMDEwMAo+IAo+ICAgICBkcm0vaTkxNS9nZW06IERlZmVyIG9iai0+YmFz
ZS5yZXN2IGZpbmkgdW50aWwgUkNVIGNhbGxiYWNrCj4gCj4gICAgIFNpbmNlIHJlc2VydmF0aW9u
X29iamVjdF9maW5pKCkgZG9lcyBhbiBpbW1lZGlhdGUgZnJlZSwgcmF0aGVyIHRoYW4KPiAgICAg
a2ZyZWVfcmN1IGFzIG5vcm1hbCwgd2UgaGF2ZSB0byBkZWxheSB0aGUgcmVsZWFzZSB1bnRpbCBh
ZnRlciB0aGUgUkNVCj4gICAgIGdyYWNlIHBlcmlvZCBoYXMgZWxhcHNlZCAoaS5lLiBmcm9tIHRo
ZSByY3UgY2xlYW51cCBjYWxsYmFjaykgc28gdGhhdCB3ZQo+ICAgICBjYW4gcmVseSBvbiB0aGUg
UkNVIHByb3RlY3RlZCBhY2Nlc3MgdG8gdGhlIGZlbmNlcyB3aGlsZSB0aGUgb2JqZWN0IGlzIGEK
PiAgICAgem9tYmllLgo+IAo+ICAgICBpOTE1X2dlbV9idXN5X2lvY3RsIHJlbGllcyBvbiBoYXZp
bmcgYW4gUkNVIGJhcnJpZXIgdG8gcHJvdGVjdCB0aGUKPiAgICAgcmVzZXJ2YXRpb24gaW4gb3Jk
ZXIgdG8gYXZvaWQgaGF2aW5nIHRvIHRha2UgYSByZWZlcmVuY2UgYW5kIHN0cm9uZwo+ICAgICBt
ZW1vcnkgYmFycmllcnMuCj4gCj4gICAgIHYyOiBPcmRlciBpcyBpbXBvcnRhbnQ7IG9ubHkgcmVs
ZWFzZSBhZnRlciBwdXR0aW5nIHRoZSBwYWdlcyEKPiAKPiAgICAgRml4ZXM6IGMwMzQ2N2JhNDBm
NyAoImRybS9pOTE1L2dlbTogRnJlZSBwYWdlcyBiZWZvcmUgcmN1LWZyZWVpbmcgdGhlIG9iamVj
dAo+ICIpCj4gICAgIFRlc3RjYXNlOiBpZ3QvZ2VtX2J1c3kvY2xvc2UtcmFjZQo+ICAgICBTaWdu
ZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiAgICAg
Q2M6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAgICAgUmV2aWV3ZWQt
Ynk6IE1pa2EgS3VvcHBhbGEgPG1pa2Eua3VvcHBhbGFAbGludXguaW50ZWwuY29tPgo+ICAgICBM
aW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvcGF0Y2gvbXNnaWQvMjAxOTA3
MDMxODA2MDEuMTA5NTAtMS1jCj4gaHJpc0BjaHJpcy13aWxzb24uY28udWsKPiAKClRoYW5rcywg
SSBkaWRuJ3QgY2hlY2sgdGhlIGhpc3RvcnkgdG8gc2VlIHRoaXMgd2FzIHVzaW5nIGRybV9nZW1f
b2JqZWN0X3JlbGVhc2UgaW4gcGFzdC4KQnV0IGxvb2tzIHRvIGJlIHVzaW5nIGtmcmVlX3JjdSBu
b3cgZm9yIHRoZSBmcmVlLgoKQXJlIHdlIG9rYXkgbm93IGFzIHRoaXMgcGF0Y2ggaGFzIGdvbmUg
aW4gc2luY2U/OgoKY29tbWl0IDk2ZTk1NDk2YjAyZGJmMWIxOWEyZDRjZTIzODgxMDU3MmUxNDk2
MDYKQXV0aG9yOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkRh
dGU6ICAgVHVlIEF1ZyA2IDEzOjMzOjEyIDIwMTkgKzAyMDAKCiAgICBkbWEtYnVmOiBmaXggc2hh
cmVkIGZlbmNlIGxpc3QgaGFuZGxpbmcgaW4gcmVzZXJ2YXRpb25fb2JqZWN0X2NvcHlfZmVuY2Vz
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
