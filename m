Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C5553A1429
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 14:21:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BAB488E3F;
	Wed,  9 Jun 2021 12:21:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 709466E2C7;
 Wed,  9 Jun 2021 12:20:58 +0000 (UTC)
IronPort-SDR: d7C19KG0B5Y1ToAZOUl5tCnqG8TFdwG0W6iUWn6i/+F8tdw+ZY+si64VlNcK6YA3vQHXQjJS43
 Rosqh+0sxE1Q==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="204873215"
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="204873215"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 05:20:57 -0700
IronPort-SDR: 9W2lNE1DGkmylqlo1zkI5ksJCbEzMg8kS4YOXJNPtOGNycrn/fea7+s4IavCGha9+tNBf65S/V
 TsZ+25ffddKw==
X-IronPort-AV: E=Sophos;i="5.83,260,1616482800"; d="scan'208";a="419261382"
Received: from gbwalsh-mobl6.ger.corp.intel.com (HELO [10.252.10.147])
 ([10.252.10.147])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2021 05:20:55 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel@ffwll.ch>
References: <20210609063436.284332-1-thomas.hellstrom@linux.intel.com>
 <YMCqm48rZIKLYk/s@phenom.ffwll.local>
 <9f38fc28-15fb-2736-ba01-503821fdbe54@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <4d570a5b-0ea7-71ab-5082-e67f0cd668a7@intel.com>
Date: Wed, 9 Jun 2021 13:20:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <9f38fc28-15fb-2736-ba01-503821fdbe54@linux.intel.com>
Content-Language: en-GB
Subject: Re: [Intel-gfx] [PATCH v2 0/9] Prereqs for TTM accelerated migration
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDkvMDYvMjAyMSAxMzoxNiwgVGhvbWFzIEhlbGxzdHLDtm0gd3JvdGU6Cj4gCj4gT24gNi85
LzIxIDE6NDggUE0sIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4+IE9uIFdlZCwgSnVuIDA5LCAyMDIx
IGF0IDA4OjM0OjI3QU0gKzAyMDAsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+Pj4gQSBjb3Vw
bGUgb2YgcGF0Y2hlcyBmcm9tIENocmlzIHdoaWNoIGltcGxlbWVudCBwaXBlbGluZWQgbWlncmF0
aW9uIGFuZAo+Pj4gY2xlYXJzIGJ5IGF0b21pY2FsbHkgd3JpdGluZyB0aGUgUFRFcyBpbiBwbGFj
ZSBiZWZvcmUgcGVyZm9ybWluZyB0aGUKPj4+IGFjdHVhbCBibGl0Lgo+Pj4KPj4+IFNvbWUgd3cg
dXRpbGl0aWVzIG1haW5seSBmb3IgdGhlIGFjY29tcGFueWluZyBzZWxmdGVzdHMgYWRkZWQgYnkg
VGhvbWFzLAo+Pj4gYXMgd2VsbCBhcyBtb2RpZmllZCB0aGUgYWJvdmUgcGF0Y2hlcyBmb3Igd3cg
bG9ja2luZy0gYW5kIGxtZW0gc3VwcG9ydC4KPj4+Cj4+PiBUaGUgYWN0dWFsIGhvb2sgdXAgdG8g
dGhlIGk5MTUgdHRtIGJhY2tlbmQgaXMgYmVpbmcgd29ya2VkIG9uIGFuZCBub3QKPj4+IGluY2x1
ZGVkIHlldCwgc28gdGhpcyBpcyBjb25zaWRlcmVkIHRvIGJlIGFuIGVhcmx5IHJldmlldyBvcHBv
cnR1bml0eS4KPj4+Cj4+PiB2MjoKPj4+IC0gQSBjb3VwbGUgb2YgbWlub3Igc3R5bGUgZml4ZXMg
cG9pbnRlZCBvdXQgYnkgTWF0dGhldyBBdWxkCj4+PiAtIEV4cG9ydCBhbmQgdXNlIGludGVsX2Vu
Z2luZV9kZXN0cm95X3Bpbm5lZF9jb250ZXh0KCkgdG8gYWRkcmVzcyBhCj4+PiBsc8KgwqAgQ0kg
d2FybmluZyAvIGZhaWx1cmUuCj4+IEp1c3QgdG8gY2hlY2sgbXkgdW5kZXJzdGFuZGluZyBvZiB0
aGUgcGxhbjogVGhlc2UgYXJlIHRoZSBuZXcgd2luZG93ZWQKPj4gY2xlYXIvYmx0IGZ1bmN0aW9u
cyB3aGljaCB3ZSBwbGFuIHRvIHVzZSBldmVyeXdoZXJlLCBiZWNhdXNlIGxlc3MgbmFzdHkKPj4g
bG9ja2luZyBpbXBsaWNhdGlvbnM/IEFuZCB0aGUgY2xlYXIvYmx0IHdlIGN1cnJlbnRseSBoYXZl
IGluIHVwc3RyZWFtIAo+PiB3aWxsCj4+IGJlIHJlcGxhY2VkPwo+IAo+IFllcy4gVGhlc2UgYXJl
IGZvciBMTUVNIGNsZWFyaW5nIGFuZCBtaWdyYXRpb24uIEl0IGxvb2tzIHRvIG1lIGxpa2UgdGhl
IAo+IG90aGVyIG9uZXMgd2UgaGF2ZSBpbiB1cHN0cmVhbSBhcmUgYWN0dWFsbHkgdW51c2VkIGV4
Y2VwdCBmb3Igc2VsZnRlc3RzLiAKPiBXZSdyZSBhY3R1YWxseSB1c2luZyBDUFUgY2xlYXJpbmcg
Zm9yIG5vdy4KPiAKPj4KPj4gSWYgc28gd291bGQgYmUgbmljZSBpZiB0aGlzIHBhdGNoIHNldCBp
bmNsdWRlcyB0aGF0IHJlcGxhY2VtZW50IHdvcmsgKEkKPj4gdGhpbmsgcmlnaHQgbm93IGFsbCB3
ZSBoYXZlIGlzIHRoZSBjbGVhciBmb3IgbG1lbSksIGluY2x1ZGluZyB1cGRhdGluZyBvZgo+PiBz
ZWxmdGVzdHMgYW5kIHN0dWZmIGxpa2UgdGhhdC4gSnVzdCB0byBhdm9pZCBoYXZpbmcgdHdvIHdh
eXMgdG8gZG8gdGhlCj4+IHNhbWUgdGhpbmcgaW4gdGhlIGRyaXZlci4KPiAKPiBPSywgSSdsbCBo
YXZlIGEgbG9vayBhdCBzdHJpcHBpbmcgdGhlIGV4aXN0aW5nIGNvZGUuIElmIHdlIG5lZWQgaXQg
Cj4gbW92aW5nIGZvcndhcmQsIHdlIGNhbiBhbHdheXMgcmUtYWRkLgoKU29tZSBsb3cgaGFuZ2lu
ZyBmcnVpdCB3b3VsZCBiZSBhbGwgdGhlIGNsaWVudF9ibHQgc3R1ZmYgd2hpY2ggY2FuIGZvciAK
c3VyZSBiZSBkZWxldGVkIG5vdy4KCj4gCj4gL1Rob21hcwo+IAo+IAo+PiAtRGFuaWVsCj4+Cj4+
PiBDaHJpcyBXaWxzb24gKDYpOgo+Pj4gwqDCoCBkcm0vaTkxNS9ndDogQWRkIGFuIGluc2VydF9l
bnRyeSBmb3IgZ2VuOF9wcGd0dAo+Pj4gwqDCoCBkcm0vaTkxNS9ndDogQWRkIGEgcm91dGluZSB0
byBpdGVyYXRlIG92ZXIgdGhlIHBhZ2V0YWJsZXMgb2YgYSBHVFQKPj4+IMKgwqAgZHJtL2k5MTUv
Z3Q6IEV4cG9ydCB0aGUgcGlubmVkIGNvbnRleHQgY29uc3RydWN0b3IgYW5kIGRlc3RydWN0b3IK
Pj4+IMKgwqAgZHJtL2k5MTUvZ3Q6IFBpcGVsaW5lZCBwYWdlIG1pZ3JhdGlvbgo+Pj4gwqDCoCBk
cm0vaTkxNS9ndDogUGlwZWxpbmVkIGNsZWFyCj4+PiDCoMKgIGRybS9pOTE1L2d0OiBTZXR1cCBh
IGRlZmF1bHQgbWlncmF0aW9uIGNvbnRleHQgb24gdGhlIEdUCj4+Pgo+Pj4gVGhvbWFzIEhlbGxz
dHLDtm0gKDMpOgo+Pj4gwqDCoCBkcm0vaTkxNTogUmVmZXJlbmNlIG9iamVjdHMgb24gdGhlIHd3
IG9iamVjdCBsaXN0Cj4+PiDCoMKgIGRybS9pOTE1OiBCcmVhayBvdXQgZG1hX3Jlc3Ygd3cgbG9j
a2luZyB1dGlsaXRpZXMgdG8gc2VwYXJhdGUgZmlsZXMKPj4+IMKgwqAgZHJtL2k5MTU6IEludHJv
ZHVjZSBhIHd3IHRyYW5zYWN0aW9uIGhlbHBlcgo+Pj4KPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiArCj4+
PiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0LmjCoMKgwqAgfMKg
wqAgOSArLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvZ2VuOF9wcGd0dC5jwqDCoMKg
wqDCoMKgwqDCoMKgIHzCoCA2OCArKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lLmjCoMKgwqDCoMKgwqDCoCB8wqAgMTIgKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmPCoMKgwqDCoCB8wqAgMjcgKy0KPj4+IMKgIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2dwdV9jb21tYW5kcy5owqAgfMKgwqAgMiArCj4+PiDC
oCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCB8wqDCoCA0ICsKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3R5cGVz
LmjCoMKgwqDCoMKgIHzCoMKgIDMgKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3R0LmjCoMKgwqDCoMKgwqDCoMKgwqDCoCB8wqDCoCA3ICsKPj4+IMKgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuY8KgwqDCoMKgwqDCoCB8IDY4NSArKysrKysrKysr
KysrKysrKysKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX21pZ3JhdGUuaMKg
wqDCoMKgwqDCoCB8wqAgNjUgKysKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X21pZ3JhdGVfdHlwZXMuaCB8wqAgMTUgKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfcmVuZGVyc3RhdGUuaMKgwqAgfMKgwqAgMSArCj4+PiDCoCBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9yaW5nLmjCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMSArCj4+PiDCoCBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9zZWxmdGVzdF9taWdyYXRlLmPCoMKgwqAgfCA2NzEgKysr
KysrKysrKysrKysrKysKPj4+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtLmPCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCA1MiAtLQo+Pj4gwqAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9nZW0uaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDEyIC0KPj4+
IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmPCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHzCoCA2MyArKwo+Pj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuaMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDUwICsrCj4+PiDCoCAuLi4vZHJtL2k5MTUvc2VsZnRl
c3RzL2k5MTVfbGl2ZV9zZWxmdGVzdHMuaMKgIHzCoMKgIDEgKwo+Pj4gwqAgLi4uL2RybS9pOTE1
L3NlbGZ0ZXN0cy9pOTE1X3BlcmZfc2VsZnRlc3RzLmjCoCB8wqDCoCAxICsKPj4+IMKgIDIxIGZp
bGVzIGNoYW5nZWQsIDE2NzUgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0pCj4+PiDCoCBj
cmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbWlncmF0ZS5j
Cj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
bWlncmF0ZS5oCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbWlncmF0ZV90eXBlcy5oCj4+PiDCoCBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3Qvc2VsZnRlc3RfbWlncmF0ZS5jCj4+PiDCoCBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9nZW1fd3cuYwo+Pj4gwqAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ2VtX3d3LmgKPj4+Cj4+PiAtLSAK
Pj4+IDIuMzEuMQo+Pj4KPj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCj4+PiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4+PiBJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCj4+PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZngK
