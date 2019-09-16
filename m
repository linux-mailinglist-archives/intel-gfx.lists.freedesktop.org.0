Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA41B42EC
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 23:21:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D41656EA89;
	Mon, 16 Sep 2019 21:21:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DAE26EA89
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 21:21:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 14:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,514,1559545200"; d="scan'208";a="361649313"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 16 Sep 2019 14:21:09 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190914082550.11547-1-chris@chris-wilson.co.uk>
 <68a86006-4113-d8fd-4ca5-4f7a00b1d21f@intel.com>
 <156866724977.5729.14683483492813044307@skylake-alporthouse-com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <ab3bfd30-e26e-91b5-56f5-8ad7082a34c0@intel.com>
Date: Mon, 16 Sep 2019 14:21:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156866724977.5729.14683483492813044307@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Suspend pre-parser across GTT
 invalidations
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

CgpPbiA5LzE2LzE5IDE6NTQgUE0sIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIERhbmll
bGUgQ2VyYW9sbyBTcHVyaW8gKDIwMTktMDktMTYgMjE6Mzc6MjYpCj4+Cj4+Cj4+IE9uIDkvMTQv
MTkgMToyNSBBTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+Pj4gQmVmb3JlIHdlIGV4ZWN1dGUgYSBi
YXRjaCwgd2UgbXVzdCBmaXJzdCBpc3N1ZSBhbnkgYW5kIGFsbCBUTEIKPj4+IGludmFsaWRhdGlv
bnMgc28gdGhhdCBiYXRjaCBwaWNrcyB1cCB0aGUgbmV3IHBhZ2UgdGFibGUgZW50cmllcy4KPj4+
IFRpZ2VybGFrZSdzIHByZXBhcnNlciBpcyB3ZWFrZW5pbmcgb3VyIHBvc3Qtc3luYyBDU19TVEFM
TCBpbnNpZGUgdGhlCj4+PiBpbnZhbGlkYXRlIHBpcGUtY29udHJvbCBhbmQgYWxsb3dpbmcgdGhl
IGxvYWRpbmcgb2YgdGhlIGJhdGNoIGJ1ZmZlcgo+Pj4gYmVmb3JlIHdlIGhhdmUgc2V0dXAgaXRz
IHBhZ2UgdGFibGUgKGFuZCBzbyBpdCBsb2FkcyB0aGUgd3JvbmcgcGFnZSBhbmQKPj4+IGV4ZWN1
dGVzIGluZGVmaW5pdGVseSkuCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxj
aHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4+PiBDYzogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8
ZGFuaWVsZS5jZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPj4+IENjOiBNaWthIEt1b3BwYWxhIDxt
aWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KPj4+IC0tLQo+Pj4gU3VnZ2VzdGlvbnMgd2Vs
Y29tZSBhcyB0aGlzIGRvZXMgbm90IHNlZW0gaW50ZW5kZWQgYmVoYXZpb3VyLCBzbyBJCj4+PiBz
dXNwZWN0IHRoZXJlIGlzIGEgc3Ryb25nIHBpcGVjb250cm9sIGZsYWcgd2UgYXJlIG1pc3Npbmcu
Cj4+Cj4+IFdoZW4gSSBkaXNjdXNzZWQgdGhlIHByZS1wYXJzZXIgd2l0aCB0aGUgSFcgdGVhbSB0
aGUgZmVlZGJhY2sgSSBnb3Qgd2FzCj4+IHRoYXQgdGhlIG9ubHkgd2F5IHRvIG1ha2Ugc3VyZSB3
ZSBkb24ndCByYWNlIHRoZSBtZW1vcnkgdXBkYXRlIGlzIHRvCj4+IGVpdGhlciBsZWF2ZSBlbm91
Z2ggQ0wgb2Ygc3BhY2Ugb3IgdHVybiB0aGUgcGFyc2VyIG9mZiBsaWtlIHlvdSBkaWQKPj4gYmVs
b3cuIFRoYXQgZGlzY3Vzc2lvbiB3YXMgYWJvdXQgYWN0dWFsIHBoeXNpY2FsIG1lbW9yeSBhY2Nl
c3MgdGhvdWdoCj4+IGFuZCBub3QgVExCLgo+PiBBbnl3YXksIHR1cm5pbmcgb2ZmIHRoZSBwYXJz
ZXIgYXJvdW5kIHRoZSBwaXBlIGNvbnRyb2wsIGlmIGl0IGZpeGVzIHRoZQo+PiBwcm9ibGVtLCBz
aG91bGRuJ3QgYmUgdG9vIGJhZCBzaW5jZSB0aGUgbWFpbiBwZXJmb3JtYW5jZSBhZHZhbnRhZ2Ug
b2YKPj4gdGhlIHBhcnNlciBpcyBleHBlY3RlZCBpbnNpZGUgdGhlIHVzZXIgYmF0Y2guIFRoZSBh
bHRlcm5hdGl2ZSB3b3VsZAo+PiBwcm9iYWJseSBiZSB0byBzdG9wIGludmFsaWRhdGluZyB0aGUg
VExCcyBmcm9tIHdpdGhpbiB0aGUgcmluZyBhbmQKPj4gc3dpdGNoIHRvIE1NSU8gaW52YWxpZGF0
aW9ucyB3aGVuIGxpdGUtcmVzdG9yaW5nIGEgbmV3IHJlcXVlc3QgaW4gdGhlCj4+IHJpbmcgKHRo
ZSBDUyB3aWxsIGltcGxpY2l0bHkgc3RvcCB0aGUgcGFyc2VyIGFuZCBpbnZhbGlkYXRlIGV2ZXJ5
dGhpbmcKPj4gb24gYSBmdWxsIGN0eCBzd2l0Y2gpLgo+IAo+IEkgYWxzbyBvbmx5IG9ic2VydmUg
dGhlIGVmZmVjdCBvbiByY3MwIGF0bS4gRG9lcyB0aGF0IHRpZSBpbiB3aXRoIHRoZQo+IHByZXBh
cnNlciB0aGVvcnk/IGkuZS4gdGhhdCBlaXRoZXIgdGhlIE1JX0ZMVVNIX0RXIGlzIGEgc3Ryb25n
IGJhcnJpZXIKPiBvciB0aGUgcHJlcGFyc2VyIGlzIHJjczAgb25seS4gKFN0cmljdGx5IHNwZWFr
aW5nIEkgaGF2ZW4ndCB5ZXQgcnVuIHRoZQo+IGlndF9jc190bGIgdGVzdCBvbiB0Z2wvYmNzMCBz
byBJIGFtIGJhc2luZyB0aGUgYWJvdmUgb2ZmIHRoZSBpZ3QgdGVzdAo+IHJlc3VsdHMgdGhhdCBw
YXNzIG9uIGJjczAgYnV0IGNvbnNpc3RlbnRseSBmYWlsZWQgb24gcmNzMC4pCj4gLUNocmlzCj4g
CgpBRkFJSyB0aGUgcHJlLXBhcnNlciBpcyBwYXJ0IG9mIHRoZSBjb3JlIENTIGxvZ2ljLCB3aGlj
aCBzaG91bGQgYmUgdGhlIApzYW1lIG9uIGFsbCBlbmdpbmVzIChhbHRob3VnaCB0aGUgbmV3IGJl
aGF2aW9yIHdhcyBtYWlubHkgcmVxdWlyZWQgZm9yIApSQ1Mgd29ya2xvYWRzKS4gVGhlIHNwZWNz
IGFsc28gZG9uJ3QgbWVudGlvbiBhIGRpZmZlcmVudCBiZWhhdmlvciBvbiAKTUlfRkxVU0guIEl0
IG1pZ2h0IGp1c3QgYmUgYSB0aW1pbmcgdGhpbmcsIHNpbmNlIEknZCBleHBlY3QgdGhlIE1JX0ZM
VVNIIAp0byBiZSBmYXN0ZXIgdG8gZXhlY3V0ZSBjb21wYXJlZCB0byB0aGUgcGlwZSBjb250cm9s
IGFuZCB0aHVzIGxlc3MgCmluc3RydWN0aW9ucyB3aWxsIGJlIGFjY3VtdWxhdGVkIGluIHRoZSBw
cmUtZmV0Y2ggRklGTyBpbiB0aGUgbWVhbnRpbWUsIAphbHNvIGNvbnNpZGVyaW5nIHRoYXQgd2Ug
aGF2ZSAyIGNhbGxzIGNsb3NlIHRvIGVhY2ggb3RoZXIgKG9uZSBmcm9tIHRoZSAKYnJlYWRjcnVt
YiBmaW5pIG9mIHRoZSBwcmV2aW91cyByZXF1ZXN0KS4KCkRhbmllbGUKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
