Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA00B7FBA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2019 19:11:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A04C46F45B;
	Thu, 19 Sep 2019 17:11:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D438A6F45B
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2019 17:11:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Sep 2019 10:11:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,524,1559545200"; d="scan'208";a="199464376"
Received: from leonidf-mobl.ger.corp.intel.com (HELO [10.252.3.171])
 ([10.252.3.171])
 by orsmga002.jf.intel.com with ESMTP; 19 Sep 2019 10:11:16 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190919111912.21631-1-chris@chris-wilson.co.uk>
 <5202f44e-a251-f4e0-f27c-1f96fab24078@linux.intel.com>
 <156889956418.31102.4110265390892262636@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <8b0b57de-6d4b-57f8-be31-7201d3f235ec@linux.intel.com>
Date: Thu, 19 Sep 2019 18:11:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <156889956418.31102.4110265390892262636@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915: Mark i915_request.timeline
 as a volatile, rcu pointer
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

Ck9uIDE5LzA5LzIwMTkgMTQ6MjYsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTA5LTE5IDE0OjAyOjE5KQo+Pgo+PiBPbiAxOS8wOS8yMDE5IDEyOjE5
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiArc3RhdGljIHN0cnVjdCBpbnRlbF90aW1lbGluZSAq
Z2V0X3RpbWVsaW5lKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+Pj4gK3sKPj4+ICsgICAgIHN0
cnVjdCBpbnRlbF90aW1lbGluZSAqdGw7Cj4+PiArCj4+PiArICAgICAvKgo+Pj4gKyAgICAgICog
RXZlbiB0aG91Z2ggd2UgYXJlIGhvbGRpbmcgdGhlIGVuZ2luZS0+YWN0aXZlLmxvY2sgaGVyZSwg
dGhlcmUKPj4+ICsgICAgICAqIGlzIG5vIGNvbnRyb2wgb3ZlciB0aGUgc3VibWlzc2lvbiBxdWV1
ZSBwZXItc2UgYW5kIHdlIGFyZQo+Pj4gKyAgICAgICogaW5zcGVjdGluZyB0aGUgYWN0aXZlIHN0
YXRlIGF0IGEgcmFuZG9tIHBvaW50IGluIHRpbWUsIHdpdGggYW4KPj4+ICsgICAgICAqIHVua25v
d24gcXVldWUuIFBsYXkgc2FmZSBhbmQgbWFrZSBzdXJlIHRoZSB0aW1lbGluZSByZW1haW5zIHZh
bGlkLgo+Pj4gKyAgICAgICogKE9ubHkgYmVpbmcgdXNlZCBmb3IgcHJldHR5IHByaW50aW5nLCBv
bmUgZXh0cmEga3JlZiBzaG91bGRuJ3QKPj4+ICsgICAgICAqIGNhdXNlIGEgY2FtZWwgc3RhbXBl
ZGUhKQo+Pj4gKyAgICAgICovCj4+PiArICAgICByY3VfcmVhZF9sb2NrKCk7Cj4+PiArICAgICB0
bCA9IHJjdV9kZXJlZmVyZW5jZShycS0+dGltZWxpbmUpOwo+Pj4gKyAgICAgaWYgKCFrcmVmX2dl
dF91bmxlc3NfemVybygmdGwtPmtyZWYpKQo+Pj4gKyAgICAgICAgICAgICB0bCA9IE5VTEw7Cj4+
PiArICAgICByY3VfcmVhZF91bmxvY2soKTsKPj4KPj4gSG93IGNhbiBpdCBiZSBOVUxMIHVuZGVy
IHRoZSBhY3RpdmUgbG9jaz8gSXNuJ3QgdGhhdCB0aGUgc2FtZSBhc3NlcnRpb24KPj4gZnJvbSBp
OTE1X3RpbWVsaW5lX2dldF9hY3RpdmUuCj4gCj4gTm90IE5VTEwsIGJ1dCByZXRpcmVkLiBUaGUg
ZGlmZmVyZW5jZSBpcyB0aGF0IGR1cmluZyBzdWJtaXNzaW9uIHdlIGtub3cKPiB0aGF0IHRoaXMg
cmVxdWVzdCdzIGNvbnRleHQvdGltZWxpbmUgbXVzdCBiZSBjdXJyZW50bHkgcGlubmVkIHVudGls
Cj4gYSBzdWJzZXF1ZW50IHJlcXVlc3QgKGNvbnRhaW5pbmcgdGhlIGlkbGUtYmFycmllcnMpIGlz
IHN1Ym1pdHRlZC4gVGhlCj4gZGFuZ2VyIEkgd29ycnkgYWJvdXQgaGVyZSBpcyB0aGF0IHN1YnNl
cXVlbnQgaWRsZSByZXF1ZXN0IG1heSBiZSBhbHJlYWR5Cj4gc3VibWl0dGVkIGFuZCBzaW5jZSB0
aGUgcXVldWVkIHJlcXVlc3RzIG1heSAqYWxyZWFkeSogaGF2ZSBiZWVuIHJldGlyZWQsCj4gdGhl
IHRpbWVsaW5lIG1heSBiZSB1bnBpbm5lZCBhbmQgaW5kZWVkIGRyb3BwZWQgaXQncyBsYXN0IHJl
ZmVyZW5jZS4KCkJ1dCBoZXJlIGl0IGlzIHVuZGVyIHRoZSBlbmdpbmUtPmFjdGl2ZS5sb2NrIHdp
dGggaW50ZXJydXB0cyBkaXNhYmxlZCAKYW5kIHRoZSByZXF1ZXN0cyBhcmUgZmV0Y2hlZCBmcm9t
IGV4ZWNsaXN0cyBwb3J0cy4gVGltZWxpbmUgaXMgbm90IApndWFyYW50ZWVkIHRvIGJlIGtlcHQg
YWxpdmUgdW5kZXIgdGhlc2UgY29uZGl0aW9ucz8gaW50ZWxfY29udGV4dCAKcmVmZXJlbmNlIHdp
bGwgYmUgaGVsZCB1bnRpbCBwcm9jZXNzX2NzYiBzY2hlZHVsZXMgaXQgb3V0IHNvIEknZCBleHBl
Y3QgCnRpbWVsaW5lIGFuZCBod3NwIHRvIGJlIHRoZXJlLiBCdXQgSSBjb3VsZCBiZSBsb3N0IGlu
IHRoZSBuZXcgc2NoZW1lIG9mIAp0aGluZ3MuCgpSZWdhcmRzLAoKVHZydGtvCgo+Pj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L3NlbGZ0ZXN0X2NvbnRleHQuYwo+Pj4gaW5kZXggOWQxZWEyNmM3
YTJkLi40Y2UxZTI1NDMzZDIgMTAwNjQ0Cj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9zZWxmdGVzdF9jb250ZXh0LmMKPj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Nl
bGZ0ZXN0X2NvbnRleHQuYwo+Pj4gQEAgLTE0LDIyICsxNCwyOCBAQAo+Pj4gICAgCj4+PiAgICBz
dGF0aWMgaW50IHJlcXVlc3Rfc3luYyhzdHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkKPj4+ICAgIHsK
Pj4+ICsgICAgIHN0cnVjdCBpbnRlbF90aW1lbGluZSAqdGwgPSBpOTE1X3JlcXVlc3RfdGltZWxp
bmUocnEpOwo+Pj4gICAgICAgIGxvbmcgdGltZW91dDsKPj4+ICAgICAgICBpbnQgZXJyID0gMDsK
Pj4+ICAgIAo+Pj4gKyAgICAgaW50ZWxfdGltZWxpbmVfZ2V0KHRsKTsKPj4+ICAgICAgICBpOTE1
X3JlcXVlc3RfZ2V0KHJxKTsKPj4+ICAgIAo+Pj4gLSAgICAgaTkxNV9yZXF1ZXN0X2FkZChycSk7
Cj4+PiArICAgICAvKiBPcGVuY29kZSBpOTE1X3JlcXVlc3RfYWRkKCkgc28gd2UgY2FuIGtlZXAg
dGhlIHRpbWVsaW5lIGxvY2tlZC4gKi8KPj4+ICsgICAgIF9faTkxNV9yZXF1ZXN0X2NvbW1pdChy
cSk7Cj4+PiArICAgICBfX2k5MTVfcmVxdWVzdF9xdWV1ZShycSwgTlVMTCk7Cj4+Cj4+IExvb2tp
bmcgYXQgaTkxNV9yZXF1ZXN0X2FkZCBoZXJlIHdlIGFsc28gaGF2ZSB0YXNrbGV0IGtpY2tpbmcg
YnV0IEkKPj4gZ3Vlc3MgZm9yIHNlbGZ0ZXN0cyBpdCdzIG5vdCBpbXBvcnRhbnQuCj4gCj4gWXVw
LCBhbmQgaW1tZWRpYXRlbHkgYmVmb3JlIGEgd2FpdCwgdGhhdCB0YXNrbGV0IHNob3VsZCBiZSBz
Y2hlZHVsZWQKPiBuYXR1cmFsbHkgaW4gdGhlIG5lYXIgZnV0dXJlLgo+IC1DaHJpcwo+IApfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
