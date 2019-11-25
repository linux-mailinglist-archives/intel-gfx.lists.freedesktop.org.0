Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F89D109305
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 18:44:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7CC9E89DA4;
	Mon, 25 Nov 2019 17:44:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7ACB089DA4
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 17:44:01 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 09:44:00 -0800
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="202438003"
Received: from ldmartin-desk1.jf.intel.com (HELO ldmartin-desk1)
 ([10.24.11.38])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 09:44:00 -0800
Date: Mon, 25 Nov 2019 09:43:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Message-ID: <20191125174354.mkpqqjbdil23b2xx@ldmartin-desk1>
References: <20191120234608.17775-1-lucas.demarchi@intel.com>
 <20191120234608.17775-3-lucas.demarchi@intel.com>
 <878so9wf4g.fsf@intel.com>
 <20191121185429.aqc2ga7ciiqkoovg@ldmartin-desk1>
 <20191122135532.GL1208@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122135532.GL1208@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/i915: assume vbt is 4-byte
 aligned into oprom
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBOb3YgMjIsIDIwMTkgYXQgMDM6NTU6MzJQTSArMDIwMCwgVmlsbGUgU3lyasOkbMOk
IHdyb3RlOgo+T24gVGh1LCBOb3YgMjEsIDIwMTkgYXQgMTA6NTQ6MjlBTSAtMDgwMCwgTHVjYXMg
RGUgTWFyY2hpIHdyb3RlOgo+PiBPbiBUaHUsIE5vdiAyMSwgMjAxOSBhdCAwMzowOTowM1BNICsw
MjAwLCBKYW5pIE5pa3VsYSB3cm90ZToKPj4gPk9uIFdlZCwgMjAgTm92IDIwMTksIEx1Y2FzIERl
IE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToKPj4gPj4gVGhlIHVuYWxp
Z25lZCBpb3JlYWQzMigpIHdpbGwgbWFrZSB1cyByZWFkIGJ5dGUgYnkgYnl0ZSBsb29raW5nIGZv
ciB0aGUKPj4gPj4gdmJ0LiBXZSBjb3VsZCBqdXN0IGFzIHdlbGwgaGF2ZSBkb25lIGEgaW9yZWFk
OCgpICsgYSBzaGlmdCBhbmQgYXZvaWQgdGhlCj4+ID4+IGV4dHJhIGNvbmZ1c2lvbiBvbiBob3cg
d2UgYXJlIGxvb2tpbmcgZm9yICIkVkJUIi4KPj4gPj4KPj4gPj4gSG93ZXZlciB3aGVuIHVzaW5n
IEFDUEkgaXQncyBndWFyYW50ZWVkIHRoZSBWQlQgaXMgNC1ieXRlIGFsaWduZWQKPj4gPj4gcGVy
IHNwZWMsIHNvIHdlIGNhbiBwcm9iYWJseSBhc3N1bWUgaXQgaGVyZSBhcyB3ZWxsLgo+PiA+Pgo+
PiA+PiBTaWduZWQtb2ZmLWJ5OiBMdWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVs
LmNvbT4KPj4gPj4gLS0tCj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Jpb3MuYyB8IDE5ICsrKysrKy0tLS0tLS0tLS0tLS0KPj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA2
IGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+PiA+Pgo+PiA+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYwo+PiA+PiBpbmRleCBhYTliMTgyZWZlZTUuLjZi
ZjU3YjFhZDA1NiAxMDA2NDQKPj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMKPj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9iaW9zLmMKPj4gPj4gQEAgLTE5MDIsMjcgKzE5MDIsMjAgQEAgc3RhdGljIHN0cnVjdCB2
YnRfaGVhZGVyICpvcHJvbV9nZXRfdmJ0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
dikKPj4gPj4gIAl2b2lkIF9faW9tZW0gKnAgPSBOVUxMLCAqb3Byb207Cj4+ID4+ICAJc3RydWN0
IHZidF9oZWFkZXIgKnZidDsKPj4gPj4gIAl1MTYgdmJ0X3NpemU7Cj4+ID4+IC0Jc2l6ZV90IGks
IHNpemU7Cj4+ID4+ICsJc2l6ZV90IHNpemU7Cj4+ID4+Cj4+ID4+ICAJb3Byb20gPSBwY2lfbWFw
X3JvbShwZGV2LCAmc2l6ZSk7Cj4+ID4+ICAJaWYgKCFvcHJvbSkKPj4gPj4gIAkJcmV0dXJuIE5V
TEw7Cj4+ID4+Cj4+ID4+ICAJLyogU2NvdXIgbWVtb3J5IGxvb2tpbmcgZm9yIHRoZSBWQlQgc2ln
bmF0dXJlLiAqLwo+PiA+PiAtCWZvciAoaSA9IDA7IGkgKyA0IDwgc2l6ZTsgaSsrKSB7Cj4+ID4+
IC0JCWlmIChpb3JlYWQzMihvcHJvbSArIGkpICE9ICooKGNvbnN0IHUzMiAqKSIkVkJUIikpCj4+
ID4+IC0JCQljb250aW51ZTsKPj4gPj4gLQo+PiA+PiAtCQlwID0gb3Byb20gKyBpOwo+PiA+PiAt
CQlzaXplIC09IGk7Cj4+ID4+IC0JCWJyZWFrOwo+PiA+PiAtCX0KPj4gPj4gLQo+PiA+PiAtCWlm
ICghcCkKPj4gPj4gLQkJZ290byBlcnJfdW5tYXBfb3Byb207Cj4+ID4+ICsJZm9yIChwID0gb3By
b207IHNpemUgPj0gNDsgcCArPSA0LCBzaXplIC09IDQpCj4+ID4+ICsJCWlmIChpb3JlYWQzMihw
KSA9PSAqKChjb25zdCB1MzIgKikiJFZCVCIpKQo+PiA+PiArCQkJYnJlYWs7Cj4+ID4KPj4gPkkg
dGhpbmsgdGhlIG9yaWdpbmFsIGlzIGVhc2llciB0byByZWFkLiBZb3Ugb25seSByZWFsbHkgbmVl
ZCB0byBjaGFuZ2UKPj4gPiJpKysiIHRvICJpICs9IDQiIGFuZCBiZSBkb25lIHdpdGggaXQuCj4+
Cj4+IEkgcmVhbGx5IGxpa2VkIHRoaXMgdmVyc2lvbiBtdWNoIG1vcmUuLi4gc2hvcnRlciBhbmQg
d2l0aCBvbmx5IG9uZSBjb250cm9sCj4+IHZhcmlhYmxlIHJhdGhlciB0aGFuIGtlZXBpbmcgdGhl
IGNvbnRyb2wgaW4gMyBkaWZmZXJlbnQgcGxhY2VzIChpLCBzaXplCj4+IGFuZCBwKS4KPgo+SSB0
aGluayBJJ20gd2l0aCBKYW5pIGhlcmUuIEdlbmVyYWxseSBub3QgYSBodWdlIGZhbiBvZiBwb2lu
dGVyCj5hcml0aG1ldGljLCBhbmQgaGF2aW5nIGp1c3Qgb25lIHZhcmlhYmxlIG1vZGlmaWVkIGJ5
IHRoZSBsb29wIGlzCj5tb3JlIGN1c3RvbWFyeSBzbyB1c3VhbGx5IGRvZXNuJ3QgcmVxdWlyZSBt
ZSB0byByZWFkIG1vcmUgdGhhbgoKd2Ugd2VyZSBwcmV2aW91c2x5IG1vZGlmeWluZyAzOiBpLCBw
IGFuZCBzaXplLiBBbmQgYWRkaXRpb25hbGx5IHVzaW5nCm9wcm9tLi4uLiB2ZXJzdXMgd2Ugb25s
eSBjYXJlIGFib3V0IHAgaW5zaWRlIHRoZSBsb29wLCB3aGljaCBwb2ludHMgdG8Kd2hhdGV2ZXIg
d2UganVzdCByZWFkLi4uIGFuZCB3ZSB3ZSBrZWVwIHVwZGF0ZXMgb24gc2l6ZSB0byBjb250cm9s
IHRoZQpzdG9wIGNvbmRpdGlvbi4KCj5vbmNlLiBUaGlzIHRoaW5nIEkgaGFkIHRvIHJlYWQgYSBm
ZXcgdGltZXMgdG8gbWFrZSBzdXJlIEkKPnVuZGVyc3Rvb2Qgd2hhdCBpdCdzIGRvaW5nLgoKT2ss
IDIgYWdhaW5zdCAxLiBJIHdpbGwgcmVzcGluIHRoaXMuCgpMdWNhcyBEZSBNYXJjaGkKCj4KPi0t
IAo+VmlsbGUgU3lyasOkbMOkCj5JbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
