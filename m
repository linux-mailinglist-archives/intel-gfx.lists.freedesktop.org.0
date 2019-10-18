Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 47EABDC6E3
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 16:06:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C2C6EB5D;
	Fri, 18 Oct 2019 14:06:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 618546EB5D;
 Fri, 18 Oct 2019 14:06:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 07:06:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,312,1566889200"; d="scan'208";a="280235903"
Received: from thrakatuluk.fi.intel.com (HELO thrakatuluk) ([10.237.68.154])
 by orsmga001.jf.intel.com with ESMTP; 18 Oct 2019 07:06:11 -0700
Received: from platvala by thrakatuluk with local (Exim 4.91)
 (envelope-from <petri.latvala@intel.com>)
 id 1iLStO-0006BN-KP; Fri, 18 Oct 2019 17:06:10 +0300
Date: Fri, 18 Oct 2019 17:06:10 +0300
From: Petri Latvala <petri.latvala@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20191018140610.GB25209@platvala-desk.ger.corp.intel.com>
References: <20191017143018.6957-1-chris@chris-wilson.co.uk>
 <b9cb0903-0209-7818-62a0-e34913f39b45@linux.intel.com>
 <157140212324.10597.18408185821837390154@skylake-alporthouse-com>
 <bd989ba8-e1dd-9e2c-baaf-416612aa5c72@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd989ba8-e1dd-9e2c-baaf-416612aa5c72@linux.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t] i915: Exercise preemption
 timeout controls in sysfs
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMTgsIDIwMTkgYXQgMDE6Mzk6MzdQTSArMDEwMCwgVHZydGtvIFVyc3VsaW4g
d3JvdGU6Cj4gCj4gT24gMTgvMTAvMjAxOSAxMzozNSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+ID4g
UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xOCAxMzoyMzo1MykKPiA+ID4gCj4gPiA+
IE9uIDE3LzEwLzIwMTkgMTU6MzAsIENocmlzIFdpbHNvbiB3cm90ZToKPiA+ID4gPiBEeW5hbWlj
IHN1YnRlc3RzIQo+ID4gPiAKPiA+ID4gT3VjaCEgOikKPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gPiA+ID4gLS0t
Cj4gPiA+ID4gK3N0YXRpYyB2b2lkIHRlc3RfdGltZW91dChpbnQgaTkxNSwgaW50IGVuZ2luZSkK
PiA+ID4gPiArewo+ID4gPiA+ICsgICAgIGludCBkZWxheXNbXSA9IHsgMSwgNTAsIDEwMCwgNTAw
IH07Cj4gPiA+ID4gKyAgICAgdW5zaWduZWQgaW50IHNhdmVkLCBkZWxheTsKPiA+ID4gPiArCj4g
PiA+ID4gKyAgICAgaWd0X2Fzc2VydChpZ3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAicHJlZW1wdF90
aW1lb3V0X21zIiwgIiV1IiwgJnNhdmVkKSA9PSAxKTsKPiA+ID4gPiArICAgICBpZ3RfZGVidWco
IkluaXRpYWwgcHJlZW1wdF90aW1lb3V0X21zOiV1XG4iLCBzYXZlZCk7Cj4gPiA+ID4gKwo+ID4g
PiA+ICsgICAgIGdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwo+ID4gPiA+ICsgICAgIGlndF9yZXF1
aXJlKGVuYWJsZV9oYW5nY2hlY2soaTkxNSwgZmFsc2UpKTsKPiA+ID4gPiArCj4gPiA+ID4gKyAg
ICAgZm9yIChpbnQgaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGRlbGF5cyk7IGkrKykgewo+ID4gPiA+
ICsgICAgICAgICAgICAgdWludDY0X3QgZWxhcHNlZDsKPiA+ID4gPiArCj4gPiA+ID4gKyAgICAg
ICAgICAgICBlbGFwc2VkID0gX190ZXN0X3RpbWVvdXQoaTkxNSwgZW5naW5lLCBkZWxheXNbaV0p
Owo+ID4gPiA+ICsgICAgICAgICAgICAgaWd0X2luZm8oInByZWVtcHRfdGltZW91dF9tczolZCwg
ZWxhcHNlZD0lLjNmbXNcbiIsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICBkZWxheXNb
aV0sIGVsYXBzZWQgKiAxZS02KTsKPiA+ID4gCj4gPiA+IE5vIGNoZWNraW5nIHRoYXQgbWVhc3Vy
ZWQgdGltZSByZWxhdGVzIHRvIGNvbmZpZ3VyZWQgdGltZW91dD8KPiA+IAo+ID4gSGF2ZSBub3cu
IEp1c3QgbmVlZGVkIHNvbWUgc29ha2luZyB0byBkZWNpZGUgb24gdGhyZXNob2xkcy4gSSd2ZSA1
MG1zCj4gPiBidXQgdGhhdCBtYXkgY2hhbmdlIGFzIENJIHRlbmRzIHRvIGhhdmUgbW9yZSBzY2hl
ZHVsaW5nIGludG9sZXJhbmNlIHRoYW4KPiA+IGxvY2FsIG1hY2hpbmVzLgo+ID4gCj4gPiA+ID4g
KyAgICAgfQo+ID4gPiA+ICsKPiA+ID4gPiArICAgICBpZ3RfYXNzZXJ0KGVuYWJsZV9oYW5nY2hl
Y2soaTkxNSwgdHJ1ZSkpOwo+ID4gPiA+ICsgICAgIGdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwo+
ID4gPiA+ICsKPiA+ID4gPiArICAgICBpZ3Rfc3lzZnNfcHJpbnRmKGVuZ2luZSwgInByZWVtcHRf
dGltZW91dF9tcyIsICIldSIsIHNhdmVkKTsKPiA+ID4gPiArICAgICBpZ3Rfc3lzZnNfc2NhbmYo
ZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1IiwgJmRlbGF5KTsKPiA+ID4gPiArICAg
ICBpZ3RfYXNzZXJ0X2VxKGRlbGF5LCBzYXZlZCk7Cj4gPiA+ID4gK30KPiA+ID4gPiArCj4gPiA+
ID4gK2lndF9tYWluCj4gPiA+ID4gK3sKPiA+ID4gPiArICAgICBpbnQgaTkxNSwgc3lzID0gLTE7
Cj4gPiA+ID4gKyAgICAgc3RydWN0IGRpcmVudCAqZGU7Cj4gPiA+ID4gKyAgICAgaW50IGVuZ2lu
ZXM7Cj4gPiA+ID4gKyAgICAgRElSICpkaXI7Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgIGlndF9m
aXh0dXJlIHsKPiA+ID4gPiArICAgICAgICAgICAgIGk5MTUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJ
VkVSX0lOVEVMKTsKPiA+ID4gPiArICAgICAgICAgICAgIGlndF9yZXF1aXJlX2dlbShpOTE1KTsK
PiA+ID4gPiArCj4gPiA+ID4gKyAgICAgICAgICAgICBzeXMgPSBpZ3Rfc3lzZnNfb3BlbihpOTE1
KTsKPiA+ID4gPiArICAgICAgICAgICAgIGlndF9yZXF1aXJlKHN5cyAhPSAtMSk7Cj4gPiA+IAo+
ID4gPiBpZ3RfYXNzZXJ0X2ZkPwo+ID4gCj4gPiBEbyB3ZSBndWFyYW50ZWUgdGhhdCB0aGUgc3lz
YWRtaW4gaGFzIG1vdW50ZWQgc3lzZnM/IFdlIGRvbid0IGF1dG9tb3VudAo+ID4gaXQgdW5saWtl
IGRlYnVnZnMuCj4gPiAKPiA+ID4gPiArICAgICAgICAgICAgIGlndF9zdWJ0ZXN0X2dyb3VwIHsK
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgaWd0X2ZpeHR1cmUgewo+ID4gPiA+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIGlndF9yZXF1aXJlKGZzdGF0YXQoZW5naW5lLAo+ID4g
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgInBy
ZWVtcHRfdGltZW91dF9tcyIsCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAmc3QsIDApID09IDApOwo+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICB9Cj4gPiA+ID4gKwo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICBpZ3Rfc3Vi
dGVzdF9mKCIlcy1pZGVtcG90ZW50IiwgbmFtZSkKPiA+ID4gPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICB0ZXN0X2lkZW1wb3RlbnQoaTkxNSwgZW5naW5lKTsKPiA+ID4gPiArICAgICAg
ICAgICAgICAgICAgICAgaWd0X3N1YnRlc3RfZigiJXMtaW52YWxpZCIsIG5hbWUpCj4gPiA+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVzdF9pbnZhbGlkKGk5MTUsIGVuZ2luZSk7
Cj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgIGlndF9zdWJ0ZXN0X2YoIiVzLXRpbWVvdXQi
LCBuYW1lKQo+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHRlc3RfdGltZW91
dChpOTE1LCBlbmdpbmUpOwo+ID4gPiA+ICsgICAgICAgICAgICAgfQo+ID4gPiA+ICsKPiA+ID4g
PiArICAgICAgICAgICAgIGZyZWUobmFtZSk7Cj4gPiA+ID4gKyAgICAgICAgICAgICBjbG9zZShl
bmdpbmUpOwo+ID4gPiA+ICsgICAgIH0KPiA+ID4gCj4gPiA+IFlvdSBwcm9iYWJseSBzaG91bGQg
dXNlIF9fZm9yX2VhY2hfc3RhdGljX2VuZ2luZSBhbmQgdGhlbiBvcGVuIHN5c2ZzCj4gPiA+IG5v
ZGVzIGJhc2VkIG9uIHRoYXQuIEdldHMgYXJvdW5kIHRoZSBkeW5hbWljIHN1YnRlc3RzIG5vLW5v
IGF0IGxlYXN0Lgo+ID4gCj4gPiBEZWZlYXRpc3QhCj4gCj4gV2VsbCBJIGhhdmUgY2hhbGxlbmdl
ZCB0aGlzIHN0YXR1cyBxdW8gYSBmZXcgdGltZXMgYW5kIG5vdyBJIGFtIGVtYnJhY2luZwo+IGl0
LCBvciBzaG91bGQgSSBzYXkgZGlzYWdyZWVpbmcgYW5kIGNvbW1pdHRpbmcsIHNvIGJvbnVzIHBv
aW50cyBhbGwgcm91bmQuCj4gOikKCgpQZXJoYXBzIG5leHQgd2VlayBJJ2xsIGdldCBhcm91bmQg
dG8gcmVzaGFwaW5nIHRoZSBkeW5hbWljIHN1YnRlc3RzCnNlcmllcy4gV2F0Y2ggdGhpcyBzcGFj
ZSEKCihNZWFud2hpbGUsIEkgaG9wZSBpdCBnb2VzIHdpdGhvdXQgc2F5aW5nLCBkeW5hbWljIHN1
YnRlc3RzIGFyZSBpbmRlZWQKYSBuby1ubykKCgotLSAKUGV0cmkgTGF0dmFsYQpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
