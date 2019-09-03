Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CFA31A6363
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Sep 2019 10:02:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA6D98973E;
	Tue,  3 Sep 2019 08:02:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39A138973E
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Sep 2019 08:02:25 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Sep 2019 01:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,462,1559545200"; d="scan'208";a="266215348"
Received: from sharmash-mobl3.gar.corp.intel.com (HELO [10.252.76.92])
 ([10.252.76.92])
 by orsmga001.jf.intel.com with ESMTP; 03 Sep 2019 01:02:23 -0700
To: Jani Nikula <jani.nikula@intel.com>,
 "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20190830124533.26573-1-animesh.manna@intel.com>
 <20190830124533.26573-9-animesh.manna@intel.com> <878sra6ap4.fsf@intel.com>
 <FF3DDC77922A8A4BB08A3BC48A1EA8CB8DFD252C@BGSMSX101.gar.corp.intel.com>
 <8736hd6c9g.fsf@intel.com>
From: "Sharma, Shashank" <shashank.sharma@intel.com>
Message-ID: <a68b4519-177a-b4b0-a4eb-08db38b100b5@intel.com>
Date: Tue, 3 Sep 2019 13:32:21 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8736hd6c9g.fsf@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 08/10] drm/i915/dsb: Enable gamma lut
 programming using DSB.
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

Ck9uIDkvMy8yMDE5IDE6MjkgUE0sIEphbmkgTmlrdWxhIHdyb3RlOgo+IE9uIFR1ZSwgMDMgU2Vw
IDIwMTksICJTaGFybWEsIFNoYXNoYW5rIiA8c2hhc2hhbmsuc2hhcm1hQGludGVsLmNvbT4gd3Jv
dGU6Cj4+PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQo+Pj4gRnJvbTogSW50ZWwtZ2Z4IFtt
YWlsdG86aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnXSBPbiBCZWhhbGYg
T2YgSmFuaQo+Pj4gTmlrdWxhCj4+PiBTZW50OiBGcmlkYXksIEF1Z3VzdCAzMCwgMjAxOSA3OjAy
IFBNCj4+PiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+Pj4gU3ViamVjdDogUmU6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2NCAwOC8xMF0gZHJtL2k5MTUvZHNiOiBFbmFibGUgZ2FtbWEgbHV0Cj4+PiBwcm9n
cmFtbWluZyB1c2luZyBEU0IuCj4+PiBZb3UgaGF2ZSB0b25zIG9mIGZ1bmN0aW9ucyBoZXJlIHRo
YXQgd2lsbCBuZXZlciBoYXZlIGEgRFNCIGVuZ2luZSwgaXQKPj4+IG1ha2VzIG5vIHNlbnNlIHRv
IGNvbnZlcnQgYWxsIG9mIHRoZW0gdG8gdXNlIHRoZSBEU0IuCj4+Pgo+PiBKYW5pLAo+PiBJIHdh
cyB0aGlua2luZyBldmVuIGFtb25nIHRoZSAzIGVuZ2luZXMgYXZhaWxhYmxlIHBlciBwaXBlLCB3
b3VsZCBpdAo+PiBtYWtlIG1vcmUgc2Vuc2UgdG8ga2VlcCB0aGVtIHJlc2VydmUgb24gdGhlIGJh
c2lzIG9mIHVzZXIgPyBsaWtlIERTQjAKPj4gZm9yIGFsbCBwaXBlIG9wZXJhdGlvbnMsIERTQjEg
Zm9yIGFsbCBwbGFuZSwgYW5kIERTQjIgZm9yIGFsbCBlbmNvZGVyCj4+IHJlbGF0ZWQgc3R1ZmYu
IFdlIGNhbiBjcmVhdGUgYSBEU0IgdXNlciAobGlrZSB3ZSBoYXZlIGZvciBzY2FsZXIpIGFuZAo+
PiBpbmRleCB0aGVzZSBlbmdpbmVzIGJhc2VkIG9uIHRoYXQuIERvIHlvdSB0aGluayBzbyA/Cj4g
QW5kIHBlcmhhcHMgdXNlIHNvbWUgRFNCIGVuZ2luZXMgdG8gd3JpdGUgaW1tZWRpYXRlbHksIHNv
bWUgdG8gd3JpdGUgYXQKPiB2YmxhbmsuIEhvd2V2ZXIsIGFsbCBvZiB0aGlzIHNob3VsZCBiZSBw
b3N0cG9uZWQgdG8gZm9sbG93LXVwIHdvcmsuCj4KPiBGb3Igbm93LCBpZiB3ZSB1c2UgaW50ZWxf
ZHNiX3dyaXRlIGFuZCBmcmllbmRzIHdpdGggdGhlIGRzYiBwYXJhbWV0ZXIgYXMKPiBsb2NhbCB2
YXJpYWJsZSBwYXNzZWQgaW4sIGNvbnZlcnRpbmcgdG8gdXNlIGEgZGlmZmVyZW50IGVuZ2luZSBp
cyBhCj4gbWV0dGVyIG9mIGNoYW5naW5nIHRoZSBwcmVjZWRpbmcgaW50ZWxfZHNiX2dldCBjYWxs
IHRvIGZldGNoIHRoZSBkc2IKPiBwb2ludGVyLgo+Cj4gQ29uc2lkZXJpbmcgdGhlIHByb2dyZXNz
IG9mIGEgcGF0Y2ggc2VyaWVzLCB0aGUgZm9jdXMgc2hvdWxkIGJlIG9uCj4gZ2V0dGluZyBwYXRj
aGVzIG1lcmdlZC4gR2V0dGluZyB0aGUgbWluaW11bSBzZWJzaWJsZSBlbmFibGluZyBvZiBEU0IK
PiBtZXJnZWQgc2hvdWxkIGJlIHRoZSBmb2N1cyBoZXJlLiBUaGUgZnVydGhlciBpdGVyYXRpb24g
c2hvdWxkIGhhcHBlbgo+IGluLXRyZWUsIG5vdCBvdXQtb2YtdHJlZS4KClN1cmUsIGl0IG1ha2Vz
IHNlbnNlIHRvIHNpbXBsaWZ5IHRoaXMgaW4gc3RlcHMuCgotIFNoYXNoYW5rCgo+IEJSLAo+IEph
bmkuCj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
