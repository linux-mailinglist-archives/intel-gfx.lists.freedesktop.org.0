Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C83638C678
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 14:27:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACE346E4AE;
	Fri, 21 May 2021 12:27:01 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44436E4AA;
 Fri, 21 May 2021 12:26:59 +0000 (UTC)
IronPort-SDR: rfX4sT2/U0fecP0QtjTnx4tARn+rRIV/ePwsMXxxl7D3NTI+eezE3QqQxt/fdXXNHtYor6d6BH
 ZM2+Q/aD7qrA==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="199528914"
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="199528914"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 05:26:59 -0700
IronPort-SDR: rECR73jZIUZT5rcch2f7cc7udzLP/T4zNg5LznAyHE5XQx9R8oUS2HoNhZtkdLyvRgxZHFdgyU
 GFhwJu7exXMw==
X-IronPort-AV: E=Sophos;i="5.82,319,1613462400"; d="scan'208";a="474503425"
Received: from damienpo-mobl.ger.corp.intel.com (HELO [10.213.241.253])
 ([10.213.241.253])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2021 05:26:57 -0700
To: Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
References: <20210520151254.959958-1-tvrtko.ursulin@linux.intel.com>
 <20210520151254.959958-8-tvrtko.ursulin@linux.intel.com>
 <BYAPR12MB28401B22CACDC249926C0A19F42A9@BYAPR12MB2840.namprd12.prod.outlook.com>
 <38a6d339-bca5-13f0-1cc8-db96f1b587bb@amd.com>
 <CAKMK7uEKwWhfMDrBUh394U99bXipHrAb+YUCOryOV-FU4k07Eg@mail.gmail.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1159220c-1a40-3e38-5885-2c8c72408da0@linux.intel.com>
Date: Fri, 21 May 2021 13:26:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAKMK7uEKwWhfMDrBUh394U99bXipHrAb+YUCOryOV-FU4k07Eg@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 7/7] drm/i915: Expose client engine
 utilisation via fdinfo
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
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "Nieto,
 David M" <David.Nieto@amd.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDIwLzA1LzIwMjEgMTg6NDcsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24gVGh1LCBNYXkg
MjAsIDIwMjEgYXQgNjozMSBQTSBDaHJpc3RpYW4gS8O2bmlnCj4gPGNocmlzdGlhbi5rb2VuaWdA
YW1kLmNvbT4gd3JvdGU6Cj4+Cj4+IFllYWgsIGhhdmluZyB0aGUgdGltZXN0YW1wIGlzIGEgZ29v
ZCBpZGVhIGFzIHdlbGwuCj4+Cj4+ICAgIGRybS1kcml2ZXI6IGk5MTUKPj4KPj4gSSB0aGluayB3
ZSBzaG91bGQgcmF0aGVyIGFkZCBzb21ldGhpbmcgbGlrZSBwcmludGluZyBmaWxlX29wZXJhdGlv
bnMtPm93bmVyLT5uYW1lIHRvIHRoZSBjb21tb24gZmRpbmZvIGNvZGUuCj4+Cj4+IFRoaXMgd2F5
IHdlIHdvdWxkIGhhdmUgc29tZXRoaW5nIGNvbW1vbiBmb3IgYWxsIGRyaXZlcnMgaW4gdGhlIHN5
c3RlbS4gSSdtIGp1c3Qgbm90IHN1cmUgaWYgdGhhdCBhbHNvIHdvcmtzIGlmIHRoZXkgYXJlIGNv
bXBpbGVkIGludG8gdGhlIGtlcm5lbC4KPiAKPiBZZWFoIGNvbW1vbiBjb2RlIGNvdWxkIHByaW50
IGRyaXZlciBuYW1lLCBidXNpZCBhbmQgYWxsIHRoYXQgc3R1ZmYuIEkKPiB0aGluayB0aGUgY29t
bW9uIGNvZGUgc2hvdWxkIGFsc28gcHJvdmlkZSBzb21lIGhlbHBlcnMgZm9yIHRoZSBrZXk6Cj4g
dmFsdWUgcGFpciBmb3JtYXR0aW5nIChhbmQgbWF5YmUgY2hlY2sgZm9yIGFsbCBsb3dlci1jYXNl
IGFuZCBzdHVmZgo+IGxpa2UgdGhhdCkgYmVjYXVzZSBpZiB3ZSBkb24ndCB0aGVuIHRoaXMgaXMg
Z29pbmcgdG8gYmUgYSBjb21wbGV0ZQo+IG1lc3MgdGhhdCdzIG5vdCBwYXJzZWFibGUuCgpJIHNl
ZSB3ZSBjb3VsZCBoYXZlIGEgZmV3IG9wdGlvbnMgaGVyZSwgbm9uIGV4aGF1c3RpdmUgbGlzdCAo
ZXNwZWNpYWxseSAKb21pdHRpbmcgc29tZSBzdWItb3B0aW9ucyk6CgoxKQpEUk0gY29yZSBpbXBs
ZW1lbnRzIGZkaW5mbywgd2hpY2ggZW1pdHMgdGhlIGNvbW1vbiBwYXJ0cywgY2FsbGluZyBpbnRv
IAp0aGUgZHJpdmVyIHRvIGRvIHRoZSByZXN0LgoKMikKRFJNIGFkZHMgaGVscGVycyBmb3IgZHJp
dmVyIHRvIGVtaXQgY29tbW9uIHBhcnRzIG9mIGZkaW5mby4KCjMpCkRSTSBjb3JlIGVzdGFibGlz
aGVzIGEgInNwZWMiIGRlZmluaW5nIHRoZSBjb21tb24gZmllbGRzLCB0aGUgb3B0aW9uYWwgCm9u
ZXMsIGFuZCBmb3JtYXRzLgoKSSB3YXMgdHJlbmRpbmcgdG93YXJkcyAzKSBiZWNhdXNlIGl0IGlz
IG1vc3QgbGlnaHR3ZWlnaHQgYW5kIGZlZWxpbmcgaXMgCnRoZXJlIGlzbid0IHRoYXQgbXVjaCB2
YWx1ZSBpbiBleHRyYWN0aW5nIGEgdGlueSBiaXQgb2YgY29tbW9uYWxpdHkgaW4gCmNvZGUuIFBy
b29mIGluIHRoZSBwdWRkaW5nIGlzIGhvdyBzaG9ydCB0aGUgZmRpbmZvIHZmdW5jIGlzIGluIHRo
aXMgcGF0Y2guCgo+IEFuZCB2YWx1ZSBzaG91bGQgYmUgcmVhbCBzZW1hbnRpYyBzdHVmZiwgbm90
ICJoZXJlJ3MgYSBzdHJpbmciLiBTbwo+IGFjY3VtdWxhdGVkIHRpbWUgYXMgYSBzdHJ1Y3Qga3Rp
bWUgYXMgdGhlIGV4YW1wbGUuCgpJZGVhbGx5IHllcywgYnV0IEkgaGF2ZSBhIGZlZWxpbmcgdGhl
IHdheXMgaG93IGFtZGdwdSBhbmQgaTkxNSB0cmFjayAKdGhpbmdzIGFyZSBzbyBkaWZmZXJlbnQg
c28gZmlyc3QgbGV0cyBsZWFybiBtb3JlIGFib3V0IHRoYXQuCgo+PiBBbSAyMC4wNS4yMSB1bSAx
ODoyNiBzY2hyaWViIE5pZXRvLCBEYXZpZCBNOgo+Pgo+PiBbQU1EIE9mZmljaWFsIFVzZSBPbmx5
XQo+Pgo+Pgo+PiBpIHdvdWxkIGxpa2UgdG8gYWRkIGEgdW5pdCBtYXJrZXIgZm9yIHRoZSBzdGF0
cyB0aGF0IHdlIG1vbml0b3IgaW4gdGhlIGZkLCBhcyB3ZSBkaXNjdXNzZWQgY3VycmVudGx5IHdl
IGFyZSBkaXNwbGF5aW5nIHRoZSB1c2FnZSBwZXJjZW50YWdlLCBiZWNhdXNlIHdlIHdhbnRlZCB0
byB0byBwcm92aWRlIHNpbmdsZSBxdWVyeSBwZXJjZW50YWdlcywgYnV0IHRoaXMgbWF5IGV2b2x2
ZSB3aXRoIHRpbWUuCj4+Cj4+IE1heSBJIHN1Z2dlc3QgdG8gYWRkIHR3byBuZXcgZmllbGRzCj4+
Cj4+IGRybS1zdGF0LWludGVydmFsOiA8NjQgYml0PiBucwo+PiBkcm0tc3RhdC10aW1lc3RhbXA6
IDw2NCBiaXQ+IG5zCj4+Cj4+IElmIGludGVydmFsIGlzIHNldCwgZW5naW5lIHV0aWxpemF0aW9u
IGlzIGNhbGN1bGF0ZWQgYnkgZG9pbmcgPHBlcmMgcmVuZGVyPiA9IDEwMCo8ZHJtX2VuZ2luZV9y
ZW5kZXI+Lzxkcm1fc3RhdF9pbnRlcnZhbD4KPj4gaWYgaW50ZXJ2YWwgaXMgbm90IHNldCwgdHdv
IHJlYWRzIGFyZSBuZWVkZWQgOiA8cGVyYyByZW5kZXI+ID0gMTAwKjxkcm1fZW5naW5lX3JlbmRl
cjEgLSBkcm1fZW5naW5lX3JlbmRlcjA+IC8gPGRybS1zdGF0LXRpbWVzdGFtcDEgLSBkcm0tc3Rh
dC10aW1lc3RhbXAwPgoKSSB3b3VsZCBsaWtlIHRvIHVuZGVyc3RhbmQgaG93IGFkbWdwdSB0cmFj
a3MgR1BVIHRpbWUgc2luY2UgSSBhbSBub3QgCmdldHRpbmcgdGhlc2UgZmllbGRzIHlldC4KCjEp
CllvdSBzdWdnZXN0IHRvIGhhdmUgYSB0aW1lc3RhbXAgYmVjYXVzZSBvZiBkaWZmZXJlbnQgY2xv
Y2sgZG9tYWlucz8KCjIpCldpdGggdGhlIGludGVydmFsIG9wdGlvbiAtIHlvdSBhY3R1YWxseSBo
YXZlIGEgcmVzdGFydGluZyBjb3VudGVyPyBEbyAKeW91IGtlZXAgdGhhdCBpbiB0aGUgZHJpdmVy
IG9yIGdldCBpdCBmcm9tIGh3IGl0c2VsZj8KClJlZ2FyZHMsCgpUdnJ0a28KX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
