Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9599FDA657
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 09:24:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 010176E9F7;
	Thu, 17 Oct 2019 07:24:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50D8D6E9F7
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 07:24:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 00:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,306,1566889200"; d="scan'208";a="396165506"
Received: from orsosgc001.ra.intel.com (HELO orsosgc001.amr.corp.intel.com)
 ([10.23.184.150])
 by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2019 00:24:03 -0700
Date: Thu, 17 Oct 2019 00:24:03 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Chris Wilson <chris.p.wilson@intel.com>
Message-ID: <20191017072403.GB30305@orsosgc001.amr.corp.intel.com>
References: <20191017061106.22640-1-umesh.nerlige.ramappa@intel.com>
 <20191017061106.22640-3-umesh.nerlige.ramappa@intel.com>
 <157129381882.4427.3317408143085236930@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157129381882.4427.3317408143085236930@skylake-alporthouse-com>
User-Agent: Mutt/1.12.0 (2019-05-25)
Subject: Re: [Intel-gfx] [PATCH v2 3/3] drm/i915/perf: enable OAR context
 save/restore of performance counters
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBPY3QgMTcsIDIwMTkgYXQgMDc6MzA6MThBTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+UXVvdGluZyBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgKDIwMTktMTAtMTcgMDc6MTE6MDYp
Cj4+ICtzdGF0aWMgaW50IGdlbjEyX2VtaXRfb2FyX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2UsIGJvb2wgZW5hYmxlKQo+PiArewo+PiArICAgICAgIHN0cnVjdCBpOTE1X3JlcXVlc3Qg
KnJxOwo+PiArICAgICAgIHUzMiAqY3M7Cj4+ICsgICAgICAgaW50IGVyciA9IDA7Cj4+ICsKPj4g
KyAgICAgICBycSA9IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOwo+PiArICAgICAgIGlmIChJU19F
UlIocnEpKQo+PiArICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocnEpOwo+PiArCj4+ICsg
ICAgICAgY3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA0KTsKPj4gKyAgICAgICBpZiAoSVNfRVJS
KGNzKSkgewo+PiArICAgICAgICAgICAgICAgZXJyID0gUFRSX0VSUihjcyk7Cj4+ICsgICAgICAg
ICAgICAgICBnb3RvIG91dDsKPj4gKyAgICAgICB9Cj4+ICsKPj4gKyAgICAgICAqY3MrKyA9IE1J
X0xPQURfUkVHSVNURVJfSU1NKDEpOwo+PiArICAgICAgICpjcysrID0gaTkxNV9tbWlvX3JlZ19v
ZmZzZXQoUklOR19DT05URVhUX0NPTlRST0woY2UtPmVuZ2luZS0+bW1pb19iYXNlKSk7Cj4+ICsg
ICAgICAgKmNzKysgPSBpbnRlbF9scmNfbWFrZV9jdHhfY29udHJvbChjZS0+ZW5naW5lKSB8Cj4K
Pkl0J3MgYSBtYXNrZWQgdXBkYXRlLiBJdCBvbmx5IGNoYW5nZXMgdGhlIGJpdCBpbiB0aGUgcmVn
aXN0ZXIgaWRlbnRpZmllZAo+YnkgdGhlIG1hc2suCj4KPipjcysrID0gX01BU0tFRF9GSUVMRChH
RU4xMl9DVFhfQ1RSTF9PQVJfQ09OVEVYVF9FTkFCTEUsCj4JCSAgICAgIGVuYWJsZSA/IEdFTjEy
X0NUWF9DVFJMX09BUl9DT05URVhUX0VOQUJMRSA6IDApOwo+Cgpnb3QgaXQuIGluIHRoYXQgY2Fz
ZSBjaGFuZ2VzIHJlbGF0ZWQgdG8gaW50ZWxfbHJjX21ha2VfY3R4X2NvbnRyb2wgYXJlIApub3Qg
bmVlZGVkLgo+Cj4+ICsgICAgICAgICAgICAgICAoZW5hYmxlID8KPj4gKyAgICAgICAgICAgICAg
ICBfTUFTS0VEX0JJVF9FTkFCTEUoR0VOMTJfQ1RYX0NUUkxfT0FSX0NPTlRFWFRfRU5BQkxFKSA6
Cj4+ICsgICAgICAgICAgICAgICAgX01BU0tFRF9CSVRfRElTQUJMRShHRU4xMl9DVFhfQ1RSTF9P
QVJfQ09OVEVYVF9FTkFCTEUpKTsKPj4gKyAgICAgICAqY3MrKyA9IE1JX05PT1A7Cj4+ICsKPj4g
KyAgICAgICBpbnRlbF9yaW5nX2FkdmFuY2UocnEsIGNzKTsKPj4gKwo+PiArb3V0Ogo+PiArICAg
ICAgIGk5MTVfcmVxdWVzdF9hZGQocnEpOwo+PiArCj4+ICsgICAgICAgcmV0dXJuIGVycjsKPj4g
K30KPgo+PiAgLyoKPj4gICAqIE1hbmFnZXMgdXBkYXRpbmcgdGhlIHBlci1jb250ZXh0IGFzcGVj
dHMgb2YgdGhlIE9BIHN0cmVhbQo+PiAgICogY29uZmlndXJhdGlvbiBhY3Jvc3MgYWxsIGNvbnRl
eHRzLgo+PiBAQCAtMjMxNiw2ICsyMzc1LDE3IEBAIHN0YXRpYyBpbnQgbHJjX2NvbmZpZ3VyZV9h
bGxfY29udGV4dHMoc3RydWN0IGk5MTVfcGVyZl9zdHJlYW0gKnN0cmVhbSwKPj4gICAgICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIGVycjsKPj4gICAgICAgICAgICAgICAgIH0KPj4KPj4gKyAg
ICAgICAgICAgICAgIC8qCj4+ICsgICAgICAgICAgICAgICAgKiBGb3IgR2VuMTIsIHBlcmZvcm1h
bmNlIGNvdW50ZXJzIGFyZSBjb250ZXh0Cj4+ICsgICAgICAgICAgICAgICAgKiBzYXZlZC9yZXN0
b3JlZC4gT25seSBlbmFibGUgaXQgZm9yIHRoZSBjb250ZXh0IHRoYXQKPj4gKyAgICAgICAgICAg
ICAgICAqIHJlcXVlc3RlZCB0aGlzLgo+PiArICAgICAgICAgICAgICAgICovCj4+ICsgICAgICAg
ICAgICAgICBpZiAoY3R4ID09IHN0cmVhbS0+Y3R4ICYmIElTX0dFTihpOTE1LCAxMikpIHsKPj4g
KyAgICAgICAgICAgICAgICAgICAgICAgZXJyID0gZ2VuMTJfY29uZmlndXJlX2NvbnRleHRfb2Fy
KGN0eCwgb2FfY29uZmlnICE9IE5VTEwpOwo+Cj5Zb3UgaGF2ZSB0aGUgaW50ZWxfY29udGV4dCBw
aW5uZWQgYWxyZWFkeSBhcyBzdHJlYW0tPnBpbm5lZF9jdHguCgpJIHNlZSwgdGhhdCdzIHNpbXBs
ZXIuIEkgd2lsbCBjYWxsIGVtaXQgZnVuY3Rpb24gZGlyZWN0bHkgb24gcGlubmVkIApjb250ZXh0
LgoKVGhhbmtzLApVbWVzaAoKPi1DaHJpcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
