Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 166352AA0A3
	for <lists+intel-gfx@lfdr.de>; Sat,  7 Nov 2020 00:02:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D5736EB4A;
	Fri,  6 Nov 2020 23:02:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6D816EB4A
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Nov 2020 23:02:30 +0000 (UTC)
IronPort-SDR: AZ9vU4JOY4P78gHnoBVyVV2xYPY287m1kqlk1Yp4wHpdf0Kbu/0TVE68p20OrxAW86Qc9iHVVL
 5V+7p19g1hjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9797"; a="166101037"
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="166101037"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 15:02:30 -0800
IronPort-SDR: YhRg9eI6YhbzXbd3oQRepeQYx7maaP/PNHgKxKx7SQFJnzkIhlHQno5+AfCuyvC3i9SZ5qa6Ab
 InODUrfkPXvw==
X-IronPort-AV: E=Sophos;i="5.77,457,1596524400"; d="scan'208";a="353509033"
Received: from cculman-mobl.amr.corp.intel.com (HELO [10.251.4.133])
 ([10.251.4.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Nov 2020 15:02:30 -0800
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20201106210006.837953-1-lucas.demarchi@intel.com>
From: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <60f49ea0-40ef-5f07-db59-204540c93c8c@intel.com>
Date: Fri, 6 Nov 2020 15:02:29 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201106210006.837953-1-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg1: map/unmap pll clocks
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

T24gMTEvNi8yMCAxOjAwIFBNLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4gREcxIHVzZXMgMiBy
ZWdpc3RlcnMgZm9yIHRoZSBkZGkgY2xvY2sgbWFwcGluZywgd2l0aCBQSFkgQSBhbmQgQiB1c2lu
Zwo+IERQQ0xLQV9DRkdDUjAgYW5kIFBIWSBDIGFuZCBEIHVzaW5nIERQQ0xLQTFfQ0ZHQ1IwLiBI
aWRlIHRoaXMgYmVoaW5kIGEKPiBzaW5nbGUgbWFjcm8gdGhhdCBjaG9vc2VzIHRoZSBjb3JyZWN0
IHJlZ2lzdGVyIGFjY29yZGluZyB0byB0aGUgcGh5Cj4gYmVpbmcgYWNjZXNzZWQsIHVzZSB0aGUg
Y29ycmVjdCBiaXRmaWVsZHMgZm9yIGVhY2ggcGxsL3BoeSBhbmQgaW1wbGVtZW50Cj4gc2VwYXJh
dGUgZnVuY3Rpb25zIGZvciBERzEgc2luY2UgaXQgZG9lc24ndCBzaGFyZSBtdWNoIHdpdGggSUNM
L1RHTAo+IGFueW1vcmUuCj4gCj4gVGhlIHByZXZpb3VzIHZhbHVlcyB3ZXJlIGNvcnJlY3QgZm9y
IFBIWSBBIGFuZCBCIHNpbmNlIHRoZXkgd2VyZSB1c2luZwo+IHRoZSBzYW1lIHJlZ2lzdGVyIGFz
IGJlZm9yZSBhbmQgdGhlIGJpdGZpZWxkcyB3ZXJlIG1hdGNoaW5nLgo+IAo+IHYyOiBBZGQgY29t
bWVudCBhbmQgdHJ5IHRvIHNpbXBsaWZ5IERHMV9EUENMS0EqIG1hY3JvcyBieSByZXVzaW5nCj4g
cHJldmlvdXMgb25lcwo+IHYzOgo+ICAgLSBGaXggREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19T
RUxfTUFTSygpIGFmdGVyIHdyb25nIG1hY3JvIHJldXNlCj4gICAtIE1vdmUgcGh5IC0+IGlkIG1h
cCB0byBhIHNlcGFyYXRlIG1hY3JvIChBZGl0eWEpCj4gICAtIFJlbW92ZSBERzFfRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX1NFTF9NQVNLIHdoZXJlIG5vdCByZXF1aXJlZAo+ICAgICAoQWRpdHlhKQo+
ICAgLSBVc2UgZHJtX1dBUk5fT04KPiAKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9z
ZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IENsaW50b24gVGF5bG9yIDxDbGludG9uLkEuVGF5bG9y
QGludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4K
PiBDYzogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Cj4gU2lnbmVkLW9m
Zi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+CgpMR1RNIQpS
ZXZpZXdlZC1ieTogQWRpdHlhIFN3YXJ1cCA8YWRpdHlhLnN3YXJ1cEBpbnRlbC5jb20+Cgo+IC0t
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jICAgICB8IDkxICsr
KysrKysrKysrKysrKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jIHwgMjQgKysrKystCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgg
ICAgICAgICAgICAgIHwgMjQgKysrKysrCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTM1IGluc2VydGlv
bnMoKyksIDQgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RkaS5jCj4gaW5kZXggMTliMTY1MTdhNTAyLi4zNmE0YTFmNGQ3NzUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYwo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMKPiBAQCAtMjk3MCw2ICsyOTcwLDQw
IEBAIHN0YXRpYyB1MzIgaWNsX2RwY2xrYV9jZmdjcjBfY2xrX29mZihzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYsCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQg
ZGcxX21hcF9wbGxzX3RvX3BvcnRzKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyLAo+ICsJ
CQkJICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkKPiArewo+ICsJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNl
LmRldik7Cj4gKwlzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgKnBsbCA9IGNydGNfc3RhdGUtPnNo
YXJlZF9kcGxsOwo+ICsJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2X3ByaXYs
IGVuY29kZXItPnBvcnQpOwo+ICsJdTMyIHZhbDsKPiArCj4gKwkvKgo+ICsJICogSWYgd2UgZmFp
bCB0aGlzLCBzb21ldGhpbmcgd2VudCB2ZXJ5IHdyb25nOiBmaXJzdCAyIFBMTHMgc2hvdWxkIGJl
Cj4gKwkgKiB1c2VkIGJ5IGZpcnN0IDIgcGh5cyBhbmQgbGFzdCAyIFBMTHMgYnkgbGFzdCBwaHlz
Cj4gKwkgKi8KPiArCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwKPiArCQkJKHBsbC0+
aW5mby0+aWQgPCBEUExMX0lEX0RHMV9EUExMMiAmJiBwaHkgPj0gUEhZX0MpIHx8Cj4gKwkJCShw
bGwtPmluZm8tPmlkID49IERQTExfSURfREcxX0RQTEwyICYmIHBoeSA8IFBIWV9DKSkpCj4gKwkJ
cmV0dXJuOwo+ICsKPiArCW11dGV4X2xvY2soJmRldl9wcml2LT5kcGxsLmxvY2spOwo+ICsKPiAr
CXZhbCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSkpOwo+
ICsJZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sCj4gKwkJICAgICh2YWwgJiBERzFfRFBDTEtB
X0NGR0NSMF9ERElfQ0xLX09GRihwaHkpKSA9PSAwKTsKPiArCj4gKwl2YWwgJj0gfkRHMV9EUENM
S0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX01BU0socGh5KTsKPiArCXZhbCB8PSBERzFfRFBDTEtBX0NG
R0NSMF9ERElfQ0xLX1NFTChwbGwtPmluZm8tPmlkLCBwaHkpOwo+ICsJaW50ZWxfZGVfd3JpdGUo
ZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSksIHZhbCk7Cj4gKwlpbnRlbF9kZV9wb3N0
aW5nX3JlYWQoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSkpOwo+ICsKPiArCXZhbCAm
PSB+REcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19PRkYocGh5KTsKPiArCWludGVsX2RlX3dyaXRl
KGRldl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpLCB2YWwpOwo+ICsKPiArCW11dGV4X3Vu
bG9jaygmZGV2X3ByaXYtPmRwbGwubG9jayk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGljbF9t
YXBfcGxsc190b19wb3J0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCQkJCSAg
Y29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpCj4gIHsKPiBAQCAtMzAx
Nyw2ICszMDUxLDE5IEBAIHN0YXRpYyB2b2lkIGljbF9tYXBfcGxsc190b19wb3J0cyhzdHJ1Y3Qg
aW50ZWxfZW5jb2RlciAqZW5jb2RlciwKPiAgCW11dGV4X3VubG9jaygmZGV2X3ByaXYtPmRwbGwu
bG9jayk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGRnMV91bm1hcF9wbGxzX3RvX3BvcnRzKHN0
cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ICt7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsKPiArCWVudW0gcGh5
IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBlbmNvZGVyLT5wb3J0KTsKPiArCj4g
KwltdXRleF9sb2NrKCZkZXZfcHJpdi0+ZHBsbC5sb2NrKTsKPiArCj4gKwlpbnRlbF9kZV9ybXco
ZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSksIDAsCj4gKwkJICAgICBERzFfRFBDTEtB
X0NGR0NSMF9ERElfQ0xLX09GRihwaHkpKTsKPiArCj4gKwltdXRleF91bmxvY2soJmRldl9wcml2
LT5kcGxsLmxvY2spOwo+ICt9Cj4gKwo+ICBzdGF0aWMgdm9pZCBpY2xfdW5tYXBfcGxsc190b19w
b3J0cyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiAgewo+ICAJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShlbmNvZGVyLT5iYXNlLmRldik7Cj4gQEAg
LTMwMzIsNiArMzA3OSwzNyBAQCBzdGF0aWMgdm9pZCBpY2xfdW5tYXBfcGxsc190b19wb3J0cyhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikKPiAgCW11dGV4X3VubG9jaygmZGV2X3ByaXYt
PmRwbGwubG9jayk7Cj4gIH0KPiAgCj4gK3N0YXRpYyB2b2lkIGRnMV9zYW5pdGl6ZV9wb3J0X2Ns
a19vZmYoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICsJCQkJICAgICAgdTMy
IHBvcnRfbWFzaywgYm9vbCBkZGlfY2xrX25lZWRlZCkKPiArewo+ICsJZW51bSBwb3J0IHBvcnQ7
Cj4gKwl1MzIgdmFsOwo+ICsKPiArCWZvcl9lYWNoX3BvcnRfbWFza2VkKHBvcnQsIHBvcnRfbWFz
aykgewo+ICsJCWVudW0gcGh5IHBoeSA9IGludGVsX3BvcnRfdG9fcGh5KGRldl9wcml2LCBwb3J0
KTsKPiArCQlib29sIGRkaV9jbGtfb2ZmOwo+ICsKPiArCQl2YWwgPSBpbnRlbF9kZV9yZWFkKGRl
dl9wcml2LCBERzFfRFBDTEtBX0NGR0NSMChwaHkpKTsKPiArCQlkZGlfY2xrX29mZiA9IHZhbCAm
IERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSk7Cj4gKwo+ICsJCWlmIChkZGlfY2xr
X25lZWRlZCA9PSAhZGRpX2Nsa19vZmYpCj4gKwkJCWNvbnRpbnVlOwo+ICsKPiArCQkvKgo+ICsJ
CSAqIFB1bnQgb24gdGhlIGNhc2Ugbm93IHdoZXJlIGNsb2NrIGlzIGdhdGVkLCBidXQgaXQgd291
bGQKPiArCQkgKiBiZSBuZWVkZWQgYnkgdGhlIHBvcnQuIFNvbWV0aGluZyBlbHNlIGlzIHJlYWxs
eSBicm9rZW4gdGhlbi4KPiArCQkgKi8KPiArCQlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5k
cm0sIGRkaV9jbGtfbmVlZGVkKSkKPiArCQkJY29udGludWU7Cj4gKwo+ICsJCWRybV9ub3RpY2Uo
JmRldl9wcml2LT5kcm0sCj4gKwkJCSAgICJQSFkgJWMgaXMgZGlzYWJsZWQgd2l0aCBhbiB1bmdh
dGVkIERESSBjbG9jaywgZ2F0ZSBpdFxuIiwKPiArCQkJICAgcGh5X25hbWUocGh5KSk7Cj4gKwkJ
dmFsIHw9IERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSk7Cj4gKwkJaW50ZWxfZGVf
d3JpdGUoZGV2X3ByaXYsIERHMV9EUENMS0FfQ0ZHQ1IwKHBoeSksIHZhbCk7Cj4gKwl9Cj4gK30K
PiArCj4gIHN0YXRpYyB2b2lkIGljbF9zYW5pdGl6ZV9wb3J0X2Nsa19vZmYoc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCQkJICAgICAgdTMyIHBvcnRfbWFzaywgYm9vbCBk
ZGlfY2xrX25lZWRlZCkKPiAgewo+IEBAIC0zMTE0LDcgKzMxOTIsMTAgQEAgdm9pZCBpY2xfc2Fu
aXRpemVfZW5jb2Rlcl9wbGxfbWFwcGluZyhzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlcikK
PiAgCQlkZGlfY2xrX25lZWRlZCA9IGZhbHNlOwo+ICAJfQo+ICAKPiAtCWljbF9zYW5pdGl6ZV9w
b3J0X2Nsa19vZmYoZGV2X3ByaXYsIHBvcnRfbWFzaywgZGRpX2Nsa19uZWVkZWQpOwo+ICsJaWYg
KElTX0RHMShkZXZfcHJpdikpCj4gKwkJZGcxX3Nhbml0aXplX3BvcnRfY2xrX29mZihkZXZfcHJp
diwgcG9ydF9tYXNrLCBkZGlfY2xrX25lZWRlZCk7Cj4gKwllbHNlCj4gKwkJaWNsX3Nhbml0aXpl
X3BvcnRfY2xrX29mZihkZXZfcHJpdiwgcG9ydF9tYXNrLCBkZGlfY2xrX25lZWRlZCk7Cj4gIH0K
PiAgCj4gIHN0YXRpYyB2b2lkIGludGVsX2RkaV9jbGtfc2VsZWN0KHN0cnVjdCBpbnRlbF9lbmNv
ZGVyICplbmNvZGVyLAo+IEBAIC0zNjY2LDcgKzM3NDcsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9k
ZGlfcHJlX2VuYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiAgCj4gIAlk
cm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNvZGVyKTsK
PiAgCj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiArCWlmIChJU19ERzEoZGV2
X3ByaXYpKQo+ICsJCWRnMV9tYXBfcGxsc190b19wb3J0cyhlbmNvZGVyLCBjcnRjX3N0YXRlKTsK
PiArCWVsc2UgaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0gMTEpCj4gIAkJaWNsX21hcF9wbGxz
X3RvX3BvcnRzKGVuY29kZXIsIGNydGNfc3RhdGUpOwo+ICAKPiAgCWludGVsX3NldF9jcHVfZmlm
b191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3ByaXYsIHBpcGUsIHRydWUpOwo+IEBAIC0zODQ4LDcg
KzM5MzEsOSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9kZGlfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ICAJCWludGVsX2RkaV9wb3N0X2Rpc2FibGVfZHAoc3Rh
dGUsIGVuY29kZXIsIG9sZF9jcnRjX3N0YXRlLAo+ICAJCQkJCSAgb2xkX2Nvbm5fc3RhdGUpOwo+
ICAKPiAtCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ICsJaWYgKElTX0RHMShkZXZf
cHJpdikpCj4gKwkJZGcxX3VubWFwX3BsbHNfdG9fcG9ydHMoZW5jb2Rlcik7Cj4gKwllbHNlIGlm
IChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ICAJCWljbF91bm1hcF9wbGxzX3RvX3BvcnRz
KGVuY29kZXIpOwo+ICAKPiAgCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKG9sZF9jcnRj
X3N0YXRlKSB8fCBpc190Y19wb3J0KQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gaW5kZXggNmZhY2ExZTczOWM4Li4yNzI5Yzg1MmM2NjggMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0x
MTAwMyw2ICsxMTAwMywyNiBAQCBzdGF0aWMgaW50IGhzd19jcnRjX2NvbXB1dGVfY2xvY2soc3Ry
dWN0IGludGVsX2NydGMgKmNydGMsCj4gIAlyZXR1cm4gMDsKPiAgfQo+ICAKPiArc3RhdGljIHZv
aWQgZGcxX2dldF9kZGlfcGxsKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgZW51
bSBwb3J0IHBvcnQsCj4gKwkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqcGlwZV9jb25m
aWcpCj4gK3sKPiArCWVudW0gaWNsX3BvcnRfZHBsbF9pZCBwb3J0X2RwbGxfaWQgPSBJQ0xfUE9S
VF9EUExMX0RFRkFVTFQ7Cj4gKwllbnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShkZXZf
cHJpdiwgcG9ydCk7Cj4gKwllbnVtIGludGVsX2RwbGxfaWQgaWQ7Cj4gKwl1MzIgY2xrX3NlbDsK
PiArCj4gKwljbGtfc2VsID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgREcxX0RQQ0xLQV9DRkdD
UjAocGh5KSkgJiBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBoeSk7Cj4gKwlp
ZCA9IERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX0RQTExfTUFQKGNsa19zZWwsIHBoeSk7
Cj4gKwo+ICsJaWYgKFdBUk5fT04oaWQgPiBEUExMX0lEX0RHMV9EUExMMykpCj4gKwkJcmV0dXJu
Owo+ICsKPiArCXBpcGVfY29uZmlnLT5pY2xfcG9ydF9kcGxsc1twb3J0X2RwbGxfaWRdLnBsbCA9
Cj4gKwkJaW50ZWxfZ2V0X3NoYXJlZF9kcGxsX2J5X2lkKGRldl9wcml2LCBpZCk7Cj4gKwo+ICsJ
aWNsX3NldF9hY3RpdmVfcG9ydF9kcGxsKHBpcGVfY29uZmlnLCBwb3J0X2RwbGxfaWQpOwo+ICt9
Cj4gKwo+ICBzdGF0aWMgdm9pZCBjbmxfZ2V0X2RkaV9wbGwoc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmRldl9wcml2LCBlbnVtIHBvcnQgcG9ydCwKPiAgCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRj
X3N0YXRlICpwaXBlX2NvbmZpZykKPiAgewo+IEBAIC0xMTMxMSw3ICsxMTMzMSw5IEBAIHN0YXRp
YyB2b2lkIGhzd19nZXRfZGRpX3BvcnRfc3RhdGUoc3RydWN0IGludGVsX2NydGMgKmNydGMsCj4g
IAkJCXBvcnQgPSBUUkFOU19ERElfRlVOQ19DVExfVkFMX1RPX1BPUlQodG1wKTsKPiAgCX0KPiAg
Cj4gLQlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiArCWlmIChJU19ERzEoZGV2X3By
aXYpKQo+ICsJCWRnMV9nZXRfZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9jb25maWcpOwo+
ICsJZWxzZSBpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMSkKPiAgCQlpY2xfZ2V0X2RkaV9w
bGwoZGV2X3ByaXYsIHBvcnQsIHBpcGVfY29uZmlnKTsKPiAgCWVsc2UgaWYgKElTX0NBTk5PTkxB
S0UoZGV2X3ByaXYpKQo+ICAJCWNubF9nZXRfZGRpX3BsbChkZXZfcHJpdiwgcG9ydCwgcGlwZV9j
b25maWcpOwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IGluZGV4IGJiMDY1Njg3NTY5Ny4uMzk2
NjRiYTU1M2VjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgK
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oCj4gQEAgLTIzMCwxMiArMjMw
LDE0IEBAIHN0YXRpYyBpbmxpbmUgYm9vbCBpOTE1X21taW9fcmVnX3ZhbGlkKGk5MTVfcmVnX3Qg
cmVnKQo+ICAjZGVmaW5lIF9UUkFOUyh0cmFuLCBhLCBiKQkJX1BJQ0tfRVZFTih0cmFuLCBhLCBi
KQo+ICAjZGVmaW5lIF9QT1JUKHBvcnQsIGEsIGIpCQlfUElDS19FVkVOKHBvcnQsIGEsIGIpCj4g
ICNkZWZpbmUgX1BMTChwbGwsIGEsIGIpCQkJX1BJQ0tfRVZFTihwbGwsIGEsIGIpCj4gKyNkZWZp
bmUgX1BIWShwaHksIGEsIGIpCQkJX1BJQ0tfRVZFTihwaHksIGEsIGIpCj4gIAo+ICAjZGVmaW5l
IF9NTUlPX1BJUEUocGlwZSwgYSwgYikJCV9NTUlPKF9QSVBFKHBpcGUsIGEsIGIpKQo+ICAjZGVm
aW5lIF9NTUlPX1BMQU5FKHBsYW5lLCBhLCBiKQlfTU1JTyhfUExBTkUocGxhbmUsIGEsIGIpKQo+
ICAjZGVmaW5lIF9NTUlPX1RSQU5TKHRyYW4sIGEsIGIpCQlfTU1JTyhfVFJBTlModHJhbiwgYSwg
YikpCj4gICNkZWZpbmUgX01NSU9fUE9SVChwb3J0LCBhLCBiKQkJX01NSU8oX1BPUlQocG9ydCwg
YSwgYikpCj4gICNkZWZpbmUgX01NSU9fUExMKHBsbCwgYSwgYikJCV9NTUlPKF9QTEwocGxsLCBh
LCBiKSkKPiArI2RlZmluZSBfTU1JT19QSFkocGh5LCBhLCBiKQkJX01NSU8oX1BIWShwaHksIGEs
IGIpKQo+ICAKPiAgI2RlZmluZSBfUEhZMyhwaHksIC4uLikJCQlfUElDSyhwaHksIF9fVkFfQVJH
U19fKQo+ICAKPiBAQCAtMTAzMDAsNiArMTAzMDIsNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsK
PiAgI2RlZmluZSAgRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBvcnQpCSgzIDw8IERQ
Q0xLQV9DRkdDUjBfRERJX0NMS19TRUxfU0hJRlQocG9ydCkpCj4gICNkZWZpbmUgIERQQ0xLQV9D
RkdDUjBfRERJX0NMS19TRUwocGxsLCBwb3J0KQkoKHBsbCkgPDwgRFBDTEtBX0NGR0NSMF9ERElf
Q0xLX1NFTF9TSElGVChwb3J0KSkKPiAgCj4gKy8qIElDTCBDbG9ja3MgKi8KPiAgI2RlZmluZSBJ
Q0xfRFBDTEtBX0NGR0NSMAkJCV9NTUlPKDB4MTY0MjgwKQo+ICAjZGVmaW5lICBJQ0xfRFBDTEtB
X0NGR0NSMF9ERElfQ0xLX09GRihwaHkpCSgxIDw8IF9QSUNLKHBoeSwgMTAsIDExLCAyNCkpCj4g
ICNkZWZpbmUgIFJLTF9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfT0ZGKHBoeSkJUkVHX0JJVCgocGh5
KSArIDEwKQo+IEBAIC0xMDMxNSw2ICsxMDMxOCwyNyBAQCBlbnVtIHNrbF9wb3dlcl9nYXRlIHsK
PiAgI2RlZmluZSAgUktMX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUwocGxsLCBwaHkpIFwKPiAg
CSgocGxsKSA8PCBSS0xfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElGVChwaHkpKQo+ICAK
PiArLyoKPiArICogREcxIENsb2Nrcwo+ICsgKiBGaXJzdCByZWdpc3RlcnMgY29udHJvbHMgdGhl
IGZpcnN0IEEgYW5kIEIsIHdoaWxlIHRoZSBzZWNvbmQgcmVnaXN0ZXIKPiArICogY29udHJvbHMg
dGhlIHBoeSBDIGFuZCBELiBUaGUgYml0cyBvbiB0aGVzZSByZWdpc3RlcnMgYXJlIHRoZQo+ICsg
KiBzYW1lLCBidXQgcmVmZXIgdG8gZGlmZmVyZW50IHBoeXMKPiArICovCj4gKyNkZWZpbmUgX0RH
MV9EUENMS0FfQ0ZHQ1IwCQkJCTB4MTY0MjgwCj4gKyNkZWZpbmUgX0RHMV9EUENMS0ExX0NGR0NS
MAkJCQkweDE2QzI4MAo+ICsjZGVmaW5lIF9ERzFfRFBDTEtBX1BIWV9JRFgocGh5KQkJCSgocGh5
KSAlIDIpCj4gKyNkZWZpbmUgX0RHMV9EUENMS0FfUExMX0lEWChwbGwpCQkJKChwbGwpICUgMikK
PiArI2RlZmluZSBfREcxX1BIWV9EUExMX01BUChwaHkpCQkJCSgocGh5KSA+PSBQSFlfQyA/IERQ
TExfSURfREcxX0RQTEwyIDogRFBMTF9JRF9ERzFfRFBMTDApCj4gKyNkZWZpbmUgREcxX0RQQ0xL
QV9DRkdDUjAocGh5KQkJCQlfTU1JT19QSFkoKHBoeSkgLyAyLCBcCj4gKwkJCQkJCQkJICBfREcx
X0RQQ0xLQV9DRkdDUjAsIFwKPiArCQkJCQkJCQkgIF9ERzFfRFBDTEtBMV9DRkdDUjApCj4gKyNk
ZWZpbmUgICBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX09GRihwaHkpCQlSRUdfQklUKF9ERzFf
RFBDTEtBX1BIWV9JRFgocGh5KSArIDEwKQo+ICsjZGVmaW5lICAgREcxX0RQQ0xLQV9DRkdDUjBf
RERJX0NMS19TRUxfU0hJRlQocGh5KQkoX0RHMV9EUENMS0FfUEhZX0lEWChwaHkpICogMikKPiAr
I2RlZmluZSAgIERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMKHBsbCwgcGh5KQkoX0RHMV9E
UENMS0FfUExMX0lEWChwbGwpIDw8IERHMV9EUENMS0FfQ0ZHQ1IwX0RESV9DTEtfU0VMX1NISUZU
KHBoeSkpCj4gKyNkZWZpbmUgICBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9NQVNLKHBo
eSkJKDB4MyA8PCBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9TSElGVChwaHkpKQo+ICsj
ZGVmaW5lICAgREcxX0RQQ0xLQV9DRkdDUjBfRERJX0NMS19TRUxfRFBMTF9NQVAoY2xrX3NlbCwg
cGh5KSBcCj4gKwkoKChjbGtfc2VsKSA+PiBERzFfRFBDTEtBX0NGR0NSMF9ERElfQ0xLX1NFTF9T
SElGVChwaHkpKSArIF9ERzFfUEhZX0RQTExfTUFQKHBoeSkpCj4gKwo+ICAvKiBDTkwgUExMICov
Cj4gICNkZWZpbmUgRFBMTDBfRU5BQkxFCQkweDQ2MDEwCj4gICNkZWZpbmUgRFBMTDFfRU5BQkxF
CQkweDQ2MDE0Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
ZngK
