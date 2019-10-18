Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BE1DC526
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 14:39:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95FE36E0FD;
	Fri, 18 Oct 2019 12:39:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFA476E0FD;
 Fri, 18 Oct 2019 12:39:42 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 05:39:42 -0700
X-IronPort-AV: E=Sophos;i="5.67,311,1566889200"; d="scan'208";a="186815391"
Received: from dwiesing-mobl.ger.corp.intel.com (HELO [10.252.31.172])
 ([10.252.31.172])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 18 Oct 2019 05:39:39 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191017143018.6957-1-chris@chris-wilson.co.uk>
 <b9cb0903-0209-7818-62a0-e34913f39b45@linux.intel.com>
 <157140212324.10597.18408185821837390154@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <bd989ba8-e1dd-9e2c-baaf-416612aa5c72@linux.intel.com>
Date: Fri, 18 Oct 2019 13:39:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <157140212324.10597.18408185821837390154@skylake-alporthouse-com>
Content-Language: en-US
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDE4LzEwLzIwMTkgMTM6MzUsIENocmlzIFdpbHNvbiB3cm90ZToKPiBRdW90aW5nIFR2cnRr
byBVcnN1bGluICgyMDE5LTEwLTE4IDEzOjIzOjUzKQo+Pgo+PiBPbiAxNy8xMC8yMDE5IDE1OjMw
LCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBEeW5hbWljIHN1YnRlc3RzIQo+Pgo+PiBPdWNoISA6
KQo+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24u
Y28udWs+Cj4+PiAtLS0KPj4+ICtzdGF0aWMgdm9pZCB0ZXN0X3RpbWVvdXQoaW50IGk5MTUsIGlu
dCBlbmdpbmUpCj4+PiArewo+Pj4gKyAgICAgaW50IGRlbGF5c1tdID0geyAxLCA1MCwgMTAwLCA1
MDAgfTsKPj4+ICsgICAgIHVuc2lnbmVkIGludCBzYXZlZCwgZGVsYXk7Cj4+PiArCj4+PiArICAg
ICBpZ3RfYXNzZXJ0KGlndF9zeXNmc19zY2FuZihlbmdpbmUsICJwcmVlbXB0X3RpbWVvdXRfbXMi
LCAiJXUiLCAmc2F2ZWQpID09IDEpOwo+Pj4gKyAgICAgaWd0X2RlYnVnKCJJbml0aWFsIHByZWVt
cHRfdGltZW91dF9tczoldVxuIiwgc2F2ZWQpOwo+Pj4gKwo+Pj4gKyAgICAgZ2VtX3F1aWVzY2Vu
dF9ncHUoaTkxNSk7Cj4+PiArICAgICBpZ3RfcmVxdWlyZShlbmFibGVfaGFuZ2NoZWNrKGk5MTUs
IGZhbHNlKSk7Cj4+PiArCj4+PiArICAgICBmb3IgKGludCBpID0gMDsgaSA8IEFSUkFZX1NJWkUo
ZGVsYXlzKTsgaSsrKSB7Cj4+PiArICAgICAgICAgICAgIHVpbnQ2NF90IGVsYXBzZWQ7Cj4+PiAr
Cj4+PiArICAgICAgICAgICAgIGVsYXBzZWQgPSBfX3Rlc3RfdGltZW91dChpOTE1LCBlbmdpbmUs
IGRlbGF5c1tpXSk7Cj4+PiArICAgICAgICAgICAgIGlndF9pbmZvKCJwcmVlbXB0X3RpbWVvdXRf
bXM6JWQsIGVsYXBzZWQ9JS4zZm1zXG4iLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICBkZWxh
eXNbaV0sIGVsYXBzZWQgKiAxZS02KTsKPj4KPj4gTm8gY2hlY2tpbmcgdGhhdCBtZWFzdXJlZCB0
aW1lIHJlbGF0ZXMgdG8gY29uZmlndXJlZCB0aW1lb3V0Pwo+IAo+IEhhdmUgbm93LiBKdXN0IG5l
ZWRlZCBzb21lIHNvYWtpbmcgdG8gZGVjaWRlIG9uIHRocmVzaG9sZHMuIEkndmUgNTBtcwo+IGJ1
dCB0aGF0IG1heSBjaGFuZ2UgYXMgQ0kgdGVuZHMgdG8gaGF2ZSBtb3JlIHNjaGVkdWxpbmcgaW50
b2xlcmFuY2UgdGhhbgo+IGxvY2FsIG1hY2hpbmVzLgo+IAo+Pj4gKyAgICAgfQo+Pj4gKwo+Pj4g
KyAgICAgaWd0X2Fzc2VydChlbmFibGVfaGFuZ2NoZWNrKGk5MTUsIHRydWUpKTsKPj4+ICsgICAg
IGdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwo+Pj4gKwo+Pj4gKyAgICAgaWd0X3N5c2ZzX3ByaW50
ZihlbmdpbmUsICJwcmVlbXB0X3RpbWVvdXRfbXMiLCAiJXUiLCBzYXZlZCk7Cj4+PiArICAgICBp
Z3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1IiwgJmRlbGF5
KTsKPj4+ICsgICAgIGlndF9hc3NlcnRfZXEoZGVsYXksIHNhdmVkKTsKPj4+ICt9Cj4+PiArCj4+
PiAraWd0X21haW4KPj4+ICt7Cj4+PiArICAgICBpbnQgaTkxNSwgc3lzID0gLTE7Cj4+PiArICAg
ICBzdHJ1Y3QgZGlyZW50ICpkZTsKPj4+ICsgICAgIGludCBlbmdpbmVzOwo+Pj4gKyAgICAgRElS
ICpkaXI7Cj4+PiArCj4+PiArICAgICBpZ3RfZml4dHVyZSB7Cj4+PiArICAgICAgICAgICAgIGk5
MTUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKPj4+ICsgICAgICAgICAgICAgaWd0
X3JlcXVpcmVfZ2VtKGk5MTUpOwo+Pj4gKwo+Pj4gKyAgICAgICAgICAgICBzeXMgPSBpZ3Rfc3lz
ZnNfb3BlbihpOTE1KTsKPj4+ICsgICAgICAgICAgICAgaWd0X3JlcXVpcmUoc3lzICE9IC0xKTsK
Pj4KPj4gaWd0X2Fzc2VydF9mZD8KPiAKPiBEbyB3ZSBndWFyYW50ZWUgdGhhdCB0aGUgc3lzYWRt
aW4gaGFzIG1vdW50ZWQgc3lzZnM/IFdlIGRvbid0IGF1dG9tb3VudAo+IGl0IHVubGlrZSBkZWJ1
Z2ZzLgo+IAo+Pj4gKyAgICAgICAgICAgICBpZ3Rfc3VidGVzdF9ncm91cCB7Cj4+PiArICAgICAg
ICAgICAgICAgICAgICAgaWd0X2ZpeHR1cmUgewo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgaWd0X3JlcXVpcmUoZnN0YXRhdChlbmdpbmUsCj4+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJwcmVlbXB0X3RpbWVvdXRfbXMiLAo+Pj4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmc3QsIDAp
ID09IDApOwo+Pj4gKyAgICAgICAgICAgICAgICAgICAgIH0KPj4+ICsKPj4+ICsgICAgICAgICAg
ICAgICAgICAgICBpZ3Rfc3VidGVzdF9mKCIlcy1pZGVtcG90ZW50IiwgbmFtZSkKPj4+ICsgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHRlc3RfaWRlbXBvdGVudChpOTE1LCBlbmdpbmUpOwo+
Pj4gKyAgICAgICAgICAgICAgICAgICAgIGlndF9zdWJ0ZXN0X2YoIiVzLWludmFsaWQiLCBuYW1l
KQo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVzdF9pbnZhbGlkKGk5MTUsIGVu
Z2luZSk7Cj4+PiArICAgICAgICAgICAgICAgICAgICAgaWd0X3N1YnRlc3RfZigiJXMtdGltZW91
dCIsIG5hbWUpCj4+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0ZXN0X3RpbWVvdXQo
aTkxNSwgZW5naW5lKTsKPj4+ICsgICAgICAgICAgICAgfQo+Pj4gKwo+Pj4gKyAgICAgICAgICAg
ICBmcmVlKG5hbWUpOwo+Pj4gKyAgICAgICAgICAgICBjbG9zZShlbmdpbmUpOwo+Pj4gKyAgICAg
fQo+Pgo+PiBZb3UgcHJvYmFibHkgc2hvdWxkIHVzZSBfX2Zvcl9lYWNoX3N0YXRpY19lbmdpbmUg
YW5kIHRoZW4gb3BlbiBzeXNmcwo+PiBub2RlcyBiYXNlZCBvbiB0aGF0LiBHZXRzIGFyb3VuZCB0
aGUgZHluYW1pYyBzdWJ0ZXN0cyBuby1ubyBhdCBsZWFzdC4KPiAKPiBEZWZlYXRpc3QhCgpXZWxs
IEkgaGF2ZSBjaGFsbGVuZ2VkIHRoaXMgc3RhdHVzIHF1byBhIGZldyB0aW1lcyBhbmQgbm93IEkg
YW0gCmVtYnJhY2luZyBpdCwgb3Igc2hvdWxkIEkgc2F5IGRpc2FncmVlaW5nIGFuZCBjb21taXR0
aW5nLCBzbyBib251cyAKcG9pbnRzIGFsbCByb3VuZC4gOikKClJlZ2FyZHMsCgpUdnJ0a28KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
