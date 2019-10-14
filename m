Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73604D5D47
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2019 10:20:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72AB089F77;
	Mon, 14 Oct 2019 08:20:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8155689F77
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2019 08:20:55 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Oct 2019 01:20:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,295,1566889200"; d="scan'208";a="194161124"
Received: from alinamex-mobl3.ger.corp.intel.com (HELO [10.252.56.163])
 ([10.252.56.163])
 by fmsmga008.fm.intel.com with ESMTP; 14 Oct 2019 01:20:54 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-9-maarten.lankhorst@linux.intel.com>
 <20191008170643.GT1208@intel.com>
 <2f46b9c3-f354-1ebf-98dc-e9e401dd7420@linux.intel.com>
 <20191010144700.GG1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <3d425b1f-4cd1-3a3b-2140-3255ae2b0385@linux.intel.com>
Date: Mon, 14 Oct 2019 10:20:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191010144700.GG1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/24] drm/i915: Prepare to split crtc state
 in uapi and hw state
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTAtMTAtMjAxOSBvbSAxNjo0NyBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IE9jdCAxMCwgMjAxOSBhdCAwNDoyMTowMFBNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gT3AgMDgtMTAtMjAxOSBvbSAxOTowNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPj4+
IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM0OjU4UE0gKzAyMDAsIE1hYXJ0ZW4gTGFua2hv
cnN0IHdyb3RlOgo+Pj4+IFdlIHdhbnQgdG8gc3BsaXQgZHJtX2NydGNfc3RhdGUgaW50byB0aGUg
dXNlciB2aXNpYmxlIHN0YXRlCj4+Pj4gYW5kIGFjdHVhbCBoYXJkd2FyZSBzdGF0ZS4gVG8gcHJl
cGFyZSBmb3IgdGhpcywgd2UgbmVlZCBzb21lCj4+Pj4gZ3JvdW5kIHJ1bGVzIHdoYXQgc2hvdWxk
IGJlIGluIGVhY2ggc3RhdGU6Cj4+Pj4KPj4+PiBJbiB1YXBpIHdlIHVzZToKPj4+PiAtIGNydGMs
ICpfY2hhbmdlZCBmbGFncywgZXZlbnQsIGNvbW1pdCwgc3RhdGUsIG1vZGVfYmxvYiwKPj4+PiAg
IChwbGFuZS9jb25uZWN0b3IvZW5jb2RlcilfbWFzay4KPj4+Pgo+Pj4+IEluIGh3IHN0YXRlIHdl
IHVzZSB3aGF0J3MgZGlzcGxheWVkIGluIGhhcmR3YXJlOgo+Pj4+IC0gZW5hYmxlLCBhY3RpdmUs
IChhZGp1c3RlZCkgbW9kZSwgY29sb3IgcHJvcGVydHkgYmxvYnMuCj4+Pj4KPj4+PiBjbGVhcl9p
bnRlbF9jcnRjX3N0YXRlIGFuZCBodyByZWFkb3V0IG5lZWQgdG8gYmUgdXBkYXRlZCBmb3IgdGhl
c2UgcnVsZXMsCj4+Pj4gd2hpY2ggd2lsbCBhbGxvdyB1cyB0byBlbmFibGUgMiBqb2luZWQgcGlw
ZXMuCj4+PiBJIHN0aWxsIGhhdmUgaGFyZCB0aW1lIHdpdGggcmVhZGluZyB0aGlzIHBhdGNoLiBJ
IHN0aWxsIHRoaW5rIGl0Cj4+PiB3b3VsZCBiZSBlYXNpZXIgdG8gcmVhZCBpZiB3ZSBkaWRuJ3Qg
ZG8gYm90aCB0aGUgInVhcGkiIGFuZCAiaHciIGNoYW5nZXMKPj4+IGF0IHRoZSBzYW1lIHRpbWUu
Cj4+Pgo+Pj4gc3RlcCAxLgo+Pj4gCXN0cnVjdCBkcm1fY3J0Y19zdGF0ZSB1YXBpOwo+Pj4gCXN0
cnVjdCB7Cj4+PiAJCS8vIGh3IHN0YXRlCj4+PiAJfSBiYXNlOwo+Pj4KPj4+IHN0ZXAgMi4gCj4+
PiAJcy9iYXNlL2h3Lwo+Pj4KPj4+IEkgdGhpbmsgdGhhdCB3b3VsZCBtYWtlIGl0IG1vcmUgb2J2
aW91cyB3aGljaCBwYXJ0cyBvZiB0aGUgY29kZSBhcmUKPj4+IGxvb2tpbmcgYXQgd2hpY2ggc3Rh
dGUuCj4+IEl0IHdvdWxkbid0IEkgdGhpbmssIGJ1dCBoZXJlJ3MKPj4gYSBkdW1iIGNoYW5nZSB3
aXRoIHNwYXRjaCBvbiB0aGlzIHBhdGNoLgo+Pgo+PiAvLysgICAgICAgc3RydWN0IHsKPj4gLy8r
ICAgICAgICAgICAgICAgYm9vbCBhY3RpdmUsIGVuYWJsZTsKPj4gLy8rICAgICAgICAgICAgICAg
c3RydWN0IGRybV9wcm9wZXJ0eV9ibG9iICpkZWdhbW1hX2x1dCwgKmdhbW1hX2x1dCwgKmN0bTsK
Pj4gLy8rICAgICAgICAgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgbW9kZSwgYWRqdXN0
ZWRfbW9kZTsKPj4gLy8rICAgICAgIH0gaHc7Cj4+Cj4+IEBACj4+IHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpUOwo+PiBAQAo+PiAtVC0+dWFwaS5hY3RpdmUKPj4gK1QtPmh3LmFjdGl2ZQo+IFRo
aXMgZG9lc24ndCByZWFsbHkgaGVscCBtZS4gVGhlcmUgaXMgbm8gLnVhcGkgaW4gdXBzdHJlYW0K
PiBjb2RlLiBJIHdvdWxkIGxpa2UgdG8gc2VlIGp1c3QgdGhlIC5iYXNlLT4udWFwaSBjaGFuZ2Vz
Cj4gYWxvbmUgZmlyc3Qgc28gSSBjYW4gcmV2aWV3IHdoaWNoIHBhcnRzIHN0YXJ0IHRvIGxvb2sg
YXQKPiB0aGUgdWFwaSBzdGF0ZSB0byBtYWtlIHN1cmUgd2UgYXJlbid0IGNoYW5naW5nIHRvbyBt
dWNoLgo+IFRoZW4gSSdkIGxpa2UgdG8gdG8gc2VlIHRoZSAuYmFzZS0+Lmh3IGNoYW5nZXMgc28g
dGhhdCBJCj4gY29udmluY2UgbXlzZWxmIHdlIGRpZG4ndCBtaXNzIGFueXRoaW5nIGluIHRoZSAu
YmFzZS0+LnVhcGkKPiBjb252ZXJzaW9uLgo+Cj4gQW5kIGFsbCB0aGUgcmVtYWluaW5nIGRybV9j
cnRjX3N0YXRlIHVzYWdlIGlzIGdvaW5nIHRvCj4gbWFrZSB1cyBtaXNzIHNvbWV0aGluZyBmb3Ig
c3VyZSwgc28gZ2V0dGluZyByaWQgb2YgYWxsIHRoYXQKPiBmaXJzdCB3b3VsZCBwcm9iYWJseSBo
ZWxwLgoKSGV5LAoKWW91IGFyZSBjb3JyZWN0IHRoYXQgdGhlcmUgaXMgbm8gdXBzdHJlYW0gdXNl
IGZvciB1YXBpLCBidXQgaXQncyBzaW1wbHkKY2FsbGVkICdiYXNlJywgc28gaXQgd291bGQgYmUg
anVzdCBhIGJpZyByZW5hbWUgcGF0Y2guCgpGb3IgIWJpZ2pvaW5lciwgdGhlIGh3IGFuZCB1YXBp
IHN0YXRlIGFyZSBhbGlhc2VzLiBTbwpmb3IgZXhhbXBsZSBzZHZvL3R2IGl0IGRvZXNuJ3QgbWF0
dGVyIHRoYXQgZHJtX2NydGNfc3RhdGUgaXMgdXNlZC4KClRoZSBzcGF0Y2ggSSBtYWRlIHNob3dz
IHRoYXQgb25seSBpbnRlbF9nZXRfbG9hZF9kZXRlY3RfcGlwZSBhbmQgY29sb3IgcmVhZG91dAp1
c2UgdGhlIHVhcGkgbWVtYmVycyBpbnN0ZWFkIG9mIHRoZSBodyBtZW1iZXJzLCBhbmQgdGhlcmUg
YXJlIGdvb2QgcmVhc29ucyB0byBkbyBzby4KQWxsIG90aGVyIGluc3RhbmNlcyBhbGwgdXNlIGh3
LgoKQXMgZmFyIGFzIEkgY2FuIHRlbGwsIGV2ZW4gd2l0aG91dCBwYXRjaCA5LzI0IGl0IHdpbGwg
d29yawpjb3JyZWN0bHksIGJlY2F1c2UgaW4gaW50ZWxfaW5pdGlhbF9jb21taXQoKSBhdG9taWNf
Y2hlY2sgd2lsbCBwdWxsCmluIHRoZSBzbGF2ZSBjcnRjLCBpbnRlbF9kcF9tc3RfYXRvbWljX2No
ZWNrKCkgYW5kIGludGVsX3Bzcl9mYXN0c2V0X2ZvcmNlKCkKYXJlIG9ubHkgY2FsbGVkIGZvciB0
aGUgbWFzdGVyIGNydGMuCgpNYW51YWwgdmVyaWZpY2F0aW9uIG9uIHRoZSByZW1haW5pbmcgdXNl
cnMgb2YgZHJtX2NydGNfc3RhdGUgc2hvdyB0aGF0IHRoZXJlCmlzIG5vIGlzc3VlIHRoYXQgZHJt
X2NydGNfc3RhdGUgaXMgdXNlZC4gVGhleSBjb3VsZCBiZSBmaXhlZCBidXQgd291bGQgbmV2ZXIK
YmUgYWZmZWN0ZWQgYnkgYmlnam9pbmVyLgoKfk1hYXJ0ZW4KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
