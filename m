Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DFBA1B3697
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Sep 2019 10:48:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D732D6E883;
	Mon, 16 Sep 2019 08:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 688AC6E883
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Sep 2019 08:48:13 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 01:48:12 -0700
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="191010147"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Sep 2019 01:48:10 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.de.marchi@gmail.com>, =?utf-8?Q?Jos=C3=A9?=
 Roberto de Souza <jose.souza@intel.com>
In-Reply-To: <CAKi4VA+H5Wjgggu=L7Foa3XK14mmt196S8BRW0nhdyyf71Y-ig@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190913223251.354877-1-jose.souza@intel.com>
 <20190913223251.354877-8-jose.souza@intel.com>
 <CAKi4VA+H5Wjgggu=L7Foa3XK14mmt196S8BRW0nhdyyf71Y-ig@mail.gmail.com>
Date: Mon, 16 Sep 2019 11:48:07 +0300
Message-ID: <8736gwzkxk.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 07/14] drm/i915/tgl: Add support for dkl pll
 write
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMyBTZXAgMjAxOSwgTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZS5tYXJjaGlAZ21h
aWwuY29tPiB3cm90ZToKPiBPbiBGcmksIFNlcCAxMywgMjAxOSBhdCAzOjMzIFBNIEpvc8OpIFJv
YmVydG8gZGUgU291emEKPiA8am9zZS5zb3V6YUBpbnRlbC5jb20+IHdyb3RlOgo+Pgo+PiBGcm9t
OiBWYW5kaXRhIEt1bGthcm5pIDx2YW5kaXRhLmt1bGthcm5pQGludGVsLmNvbT4KPj4KPj4gQWRk
IGEgbmV3IGZ1bmN0aW9uIHRvIHdyaXRlIHRvIGRrbCBwaHkgcGxsIHJlZ2lzdGVycy4gQXMgcGVy
IHRoZQo+PiBic3BlYyBhbGwgdGhlIHJlZ2lzdGVycyBhcmUgcmVhZCBtb2RpZnkgd3JpdGUuCj4+
Cj4+IFNpZ25lZC1vZmYtYnk6IFZhbmRpdGEgS3Vsa2FybmkgPHZhbmRpdGEua3Vsa2FybmlAaW50
ZWwuY29tPgo+PiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNv
dXphQGludGVsLmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5k
ZW1hcmNoaUBpbnRlbC5jb20+Cj4+IC0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcGxsX21nci5jIHwgNjUgKysrKysrKysrKysrKysrKysrLQo+PiAgMSBmaWxlIGNo
YW5nZWQsIDY0IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYwo+PiBpbmRleCA0MjRmOTIxM2M4
MGQuLmFmYzliNjA5YjYzZCAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcGxsX21nci5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuYwo+PiBAQCAtMzI5Myw3ICszMjkzLDcwIEBAIHN0YXRpYyB2b2lk
IGljbF9tZ19wbGxfd3JpdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAg
c3RhdGljIHZvaWQgZGtsX3BsbF93cml0ZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYsCj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX3NoYXJlZF9kcGxs
ICpwbGwpCj4+ICB7Cj4+IC0gICAgICAgLyogVE9ETyAqLwo+PiArICAgICAgIHN0cnVjdCBpbnRl
bF9kcGxsX2h3X3N0YXRlICpod19zdGF0ZSA9ICZwbGwtPnN0YXRlLmh3X3N0YXRlOwo+PiArICAg
ICAgIGVudW0gdGNfcG9ydCB0Y19wb3J0ID0gaWNsX3BsbF9pZF90b190Y19wb3J0KHBsbC0+aW5m
by0+aWQpOwo+PiArICAgICAgIHUzMiB2YWw7Cj4+ICsKPj4gKyAgICAgICAvKgo+PiArICAgICAg
ICAqIEFsbCByZWdpc3RlcnMgcHJvZ3JhbW1lZCBoZXJlIGhhdmUgdGhlIHNhbWUgSElQX0lOREVY
X1JFRyBldmVuCj4+ICsgICAgICAgICogdGhvdWdoIG9uIGRpZmZlcmVudCBidWlsZGluZyBibG9j
awo+PiArICAgICAgICAqLwo+PiArICAgICAgIEk5MTVfV1JJVEUoSElQX0lOREVYX1JFRyh0Y19w
b3J0KSwgMHgyKTsKPj4gKwo+PiArICAgICAgIC8qIEFsbCB0aGUgcmVnaXN0ZXJzIGFyZSBSTVcg
Ki8KPgo+IEkgd2lzaCB3ZSBjb3VsZCB1c2UgaW50ZWxfdW5jb3JlX3JtdygpIGhlcmUgdG8gbWFr
ZSB0aGlzIGNvbW1lbnQgZ28KPiBhd2F5IGFuZCBtYWtlIGl0IHNpbXBsZXIKPiBpbiBnZW5lcmFs
LiBCdXQgSSB1bmRlcnN0YW5kIHRoZSBjb252ZXJzaW9uIHRvIHVzZSB1bmNvcmUgc2hvdWxkIHN0
aWxsCj4gbm90IGJlIGRvbmUgaW4gZGlzcGxheS4gU2hvdWxkIHdlIGFkZAo+IEkxOTVfUk1XKCkg
bWVhbndoaWxlIG9yIGl0J3Mgbm90IHdvcnRoIGl0PyArSmFuaS4KCldlIGhhdmUgdG9ucyBvZiBj
b2RlIGxpa2UgdGhpcyBpbiBkaXNwbGF5LyBhbmQgaW4gdGhlIGJpZyBwaWN0dXJlIHRoaXMKbWFr
ZXMgbm8gZGlmZmVyZW5jZS4gUGxlYXNlIGxldCdzIG5vdCBhZGQgSTkxNV9STVcgb3IgYW55dGhp
bmcgc3VjaAp3aGlsZSB3ZSBkbyBoYXZlIGEgcGF0aCBmb3J3YXJkIHdpdGggaW50ZWxfZGVfe3Jl
YWQsd3JpdGUscndtfS4gSXQganVzdApoYXNuJ3QgaGFwcGVuZWQgeWV0LgoKQlIsCkphbmkuCgoK
Cj4KPiBMdWNhcyBEZSBNYXJjaGkKPgo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xfUkVG
Q0xLSU5fQ1RMKHRjX3BvcnQpKTsKPj4gKyAgICAgICB2YWwgJj0gfk1HX1JFRkNMS0lOX0NUTF9P
RF8yX01VWF9NQVNLOwo+PiArICAgICAgIHZhbCB8PSBod19zdGF0ZS0+bWdfcmVmY2xraW5fY3Rs
Owo+PiArICAgICAgIEk5MTVfV1JJVEUoREtMX1JFRkNMS0lOX0NUTCh0Y19wb3J0KSwgdmFsKTsK
Pj4gKwo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xfQ0xLVE9QMl9DT1JFQ0xLQ1RMMSh0
Y19wb3J0KSk7Cj4+ICsgICAgICAgdmFsICY9IH5NR19DTEtUT1AyX0NPUkVDTEtDVEwxX0FfRElW
UkFUSU9fTUFTSzsKPj4gKyAgICAgICB2YWwgfD0gaHdfc3RhdGUtPm1nX2Nsa3RvcDJfY29yZWNs
a2N0bDE7Cj4+ICsgICAgICAgSTkxNV9XUklURShES0xfQ0xLVE9QMl9DT1JFQ0xLQ1RMMSh0Y19w
b3J0KSwgdmFsKTsKPj4gKwo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xfQ0xLVE9QMl9I
U0NMS0NUTCh0Y19wb3J0KSk7Cj4+ICsgICAgICAgdmFsICY9IH4oTUdfQ0xLVE9QMl9IU0NMS0NU
TF9UTElORURSVl9DTEtTRUxfTUFTSyB8Cj4+ICsgICAgICAgICAgICAgIE1HX0NMS1RPUDJfSFND
TEtDVExfQ09SRV9JTlBVVFNFTF9NQVNLIHwKPj4gKyAgICAgICAgICAgICAgTUdfQ0xLVE9QMl9I
U0NMS0NUTF9IU0RJVl9SQVRJT19NQVNLIHwKPj4gKyAgICAgICAgICAgICAgTUdfQ0xLVE9QMl9I
U0NMS0NUTF9EU0RJVl9SQVRJT19NQVNLKTsKPj4gKyAgICAgICB2YWwgfD0gaHdfc3RhdGUtPm1n
X2Nsa3RvcDJfaHNjbGtjdGw7Cj4+ICsgICAgICAgSTkxNV9XUklURShES0xfQ0xLVE9QMl9IU0NM
S0NUTCh0Y19wb3J0KSwgdmFsKTsKPj4gKwo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xf
UExMX0RJVjAodGNfcG9ydCkpOwo+PiArICAgICAgIHZhbCAmPSB+KERLTF9QTExfRElWMF9JTlRF
R19DT0VGRl9NQVNLIHwKPj4gKyAgICAgICAgICAgICAgIERLTF9QTExfRElWMF9QUk9QX0NPRUZG
X01BU0sgfAo+PiArICAgICAgICAgICAgICAgREtMX1BMTF9ESVYwX0ZCUFJFRElWX01BU0sgfAo+
PiArICAgICAgICAgICAgICAgREtMX1BMTF9ESVYwX0ZCRElWX0lOVF9NQVNLKTsKPj4gKyAgICAg
ICB2YWwgfD0gaHdfc3RhdGUtPm1nX3BsbF9kaXYwOwo+PiArICAgICAgIEk5MTVfV1JJVEUoREtM
X1BMTF9ESVYwKHRjX3BvcnQpLCB2YWwpOwo+PiArCj4+ICsgICAgICAgdmFsID0gSTkxNV9SRUFE
KERLTF9QTExfRElWMSh0Y19wb3J0KSk7Cj4+ICsgICAgICAgdmFsICY9IH4oREtMX1BMTF9ESVYx
X0lSRUZfVFJJTV9NQVNLIHwKPj4gKyAgICAgICAgICAgICAgICBES0xfUExMX0RJVjFfVERDX1RB
UkdFVF9DTlRfTUFTSyk7Cj4+ICsgICAgICAgdmFsIHw9IGh3X3N0YXRlLT5tZ19wbGxfZGl2MTsK
Pj4gKyAgICAgICBJOTE1X1dSSVRFKERLTF9QTExfRElWMSh0Y19wb3J0KSwgdmFsKTsKPj4gKwo+
PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xfUExMX1NTQyh0Y19wb3J0KSk7Cj4+ICsgICAg
ICAgdmFsICY9IH4oREtMX1BMTF9TU0NfSVJFRl9ORElWX1JBVElPX01BU0sgfAo+PiArICAgICAg
ICAgICAgICAgREtMX1BMTF9TU0NfU1RFUF9MRU5fTUFTSyB8Cj4+ICsgICAgICAgICAgICAgICBE
S0xfUExMX1NTQ19TVEVQX05VTV9NQVNLIHwKPj4gKyAgICAgICAgICAgICAgIERLTF9QTExfU1ND
X0VOKTsKPj4gKyAgICAgICB2YWwgfD0gaHdfc3RhdGUtPm1nX3BsbF9zc2M7Cj4+ICsgICAgICAg
STkxNV9XUklURShES0xfUExMX1NTQyh0Y19wb3J0KSwgdmFsKTsKPj4gKwo+PiArICAgICAgIHZh
bCA9IEk5MTVfUkVBRChES0xfUExMX0JJQVModGNfcG9ydCkpOwo+PiArICAgICAgIHZhbCAmPSB+
KERLTF9QTExfQklBU19GUkFDX0VOX0ggfAo+PiArICAgICAgICAgICAgICAgREtMX1BMTF9CSUFT
X0ZCRElWX0ZSQUNfTUFTSyk7Cj4+ICsgICAgICAgdmFsIHw9IGh3X3N0YXRlLT5tZ19wbGxfYmlh
czsKPj4gKyAgICAgICBJOTE1X1dSSVRFKERLTF9QTExfQklBUyh0Y19wb3J0KSwgdmFsKTsKPj4g
Kwo+PiArICAgICAgIHZhbCA9IEk5MTVfUkVBRChES0xfUExMX1REQ19DT0xEU1RfQklBUyh0Y19w
b3J0KSk7Cj4+ICsgICAgICAgdmFsICY9IH4oREtMX1BMTF9URENfU1NDX1NURVBfU0laRV9NQVNL
IHwKPj4gKyAgICAgICAgICAgICAgIERLTF9QTExfVERDX0ZFRURfRldEX0dBSU5fTUFTSyk7Cj4+
ICsgICAgICAgdmFsIHw9IGh3X3N0YXRlLT5tZ19wbGxfdGRjX2NvbGRzdF9iaWFzOwo+PiArICAg
ICAgIEk5MTVfV1JJVEUoREtMX1BMTF9URENfQ09MRFNUX0JJQVModGNfcG9ydCksIHZhbCk7Cj4+
ICsKPj4gKyAgICAgICBQT1NUSU5HX1JFQUQoREtMX1BMTF9URENfQ09MRFNUX0JJQVModGNfcG9y
dCkpOwo+PiAgfQo+Pgo+PiAgc3RhdGljIHZvaWQgaWNsX3BsbF9wb3dlcl9lbmFibGUoc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAtLQo+PiAyLjIzLjAKPj4KPj4gX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+PiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+IGh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
