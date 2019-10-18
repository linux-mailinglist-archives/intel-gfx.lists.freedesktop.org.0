Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B4782DC50C
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 14:35:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD65B89B96;
	Fri, 18 Oct 2019 12:35:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E03489B0D;
 Fri, 18 Oct 2019 12:35:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18882223-1500050 for multiple; Fri, 18 Oct 2019 13:35:25 +0100
MIME-Version: 1.0
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <b9cb0903-0209-7818-62a0-e34913f39b45@linux.intel.com>
References: <20191017143018.6957-1-chris@chris-wilson.co.uk>
 <b9cb0903-0209-7818-62a0-e34913f39b45@linux.intel.com>
Message-ID: <157140212324.10597.18408185821837390154@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Fri, 18 Oct 2019 13:35:23 +0100
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBUdnJ0a28gVXJzdWxpbiAoMjAxOS0xMC0xOCAxMzoyMzo1MykKPiAKPiBPbiAxNy8x
MC8yMDE5IDE1OjMwLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4gPiBEeW5hbWljIHN1YnRlc3RzIQo+
IAo+IE91Y2ghIDopCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiA+IC0tLQo+ID4gK3N0YXRpYyB2b2lkIHRlc3RfdGltZW91dChp
bnQgaTkxNSwgaW50IGVuZ2luZSkKPiA+ICt7Cj4gPiArICAgICBpbnQgZGVsYXlzW10gPSB7IDEs
IDUwLCAxMDAsIDUwMCB9Owo+ID4gKyAgICAgdW5zaWduZWQgaW50IHNhdmVkLCBkZWxheTsKPiA+
ICsKPiA+ICsgICAgIGlndF9hc3NlcnQoaWd0X3N5c2ZzX3NjYW5mKGVuZ2luZSwgInByZWVtcHRf
dGltZW91dF9tcyIsICIldSIsICZzYXZlZCkgPT0gMSk7Cj4gPiArICAgICBpZ3RfZGVidWcoIklu
aXRpYWwgcHJlZW1wdF90aW1lb3V0X21zOiV1XG4iLCBzYXZlZCk7Cj4gPiArCj4gPiArICAgICBn
ZW1fcXVpZXNjZW50X2dwdShpOTE1KTsKPiA+ICsgICAgIGlndF9yZXF1aXJlKGVuYWJsZV9oYW5n
Y2hlY2soaTkxNSwgZmFsc2UpKTsKPiA+ICsKPiA+ICsgICAgIGZvciAoaW50IGkgPSAwOyBpIDwg
QVJSQVlfU0laRShkZWxheXMpOyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgdWludDY0X3QgZWxh
cHNlZDsKPiA+ICsKPiA+ICsgICAgICAgICAgICAgZWxhcHNlZCA9IF9fdGVzdF90aW1lb3V0KGk5
MTUsIGVuZ2luZSwgZGVsYXlzW2ldKTsKPiA+ICsgICAgICAgICAgICAgaWd0X2luZm8oInByZWVt
cHRfdGltZW91dF9tczolZCwgZWxhcHNlZD0lLjNmbXNcbiIsCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgIGRlbGF5c1tpXSwgZWxhcHNlZCAqIDFlLTYpOwo+IAo+IE5vIGNoZWNraW5nIHRoYXQg
bWVhc3VyZWQgdGltZSByZWxhdGVzIHRvIGNvbmZpZ3VyZWQgdGltZW91dD8KCkhhdmUgbm93LiBK
dXN0IG5lZWRlZCBzb21lIHNvYWtpbmcgdG8gZGVjaWRlIG9uIHRocmVzaG9sZHMuIEkndmUgNTBt
cwpidXQgdGhhdCBtYXkgY2hhbmdlIGFzIENJIHRlbmRzIHRvIGhhdmUgbW9yZSBzY2hlZHVsaW5n
IGludG9sZXJhbmNlIHRoYW4KbG9jYWwgbWFjaGluZXMuCgo+ID4gKyAgICAgfQo+ID4gKwo+ID4g
KyAgICAgaWd0X2Fzc2VydChlbmFibGVfaGFuZ2NoZWNrKGk5MTUsIHRydWUpKTsKPiA+ICsgICAg
IGdlbV9xdWllc2NlbnRfZ3B1KGk5MTUpOwo+ID4gKwo+ID4gKyAgICAgaWd0X3N5c2ZzX3ByaW50
ZihlbmdpbmUsICJwcmVlbXB0X3RpbWVvdXRfbXMiLCAiJXUiLCBzYXZlZCk7Cj4gPiArICAgICBp
Z3Rfc3lzZnNfc2NhbmYoZW5naW5lLCAicHJlZW1wdF90aW1lb3V0X21zIiwgIiV1IiwgJmRlbGF5
KTsKPiA+ICsgICAgIGlndF9hc3NlcnRfZXEoZGVsYXksIHNhdmVkKTsKPiA+ICt9Cj4gPiArCj4g
PiAraWd0X21haW4KPiA+ICt7Cj4gPiArICAgICBpbnQgaTkxNSwgc3lzID0gLTE7Cj4gPiArICAg
ICBzdHJ1Y3QgZGlyZW50ICpkZTsKPiA+ICsgICAgIGludCBlbmdpbmVzOwo+ID4gKyAgICAgRElS
ICpkaXI7Cj4gPiArCj4gPiArICAgICBpZ3RfZml4dHVyZSB7Cj4gPiArICAgICAgICAgICAgIGk5
MTUgPSBkcm1fb3Blbl9kcml2ZXIoRFJJVkVSX0lOVEVMKTsKPiA+ICsgICAgICAgICAgICAgaWd0
X3JlcXVpcmVfZ2VtKGk5MTUpOwo+ID4gKwo+ID4gKyAgICAgICAgICAgICBzeXMgPSBpZ3Rfc3lz
ZnNfb3BlbihpOTE1KTsKPiA+ICsgICAgICAgICAgICAgaWd0X3JlcXVpcmUoc3lzICE9IC0xKTsK
PiAKPiBpZ3RfYXNzZXJ0X2ZkPwoKRG8gd2UgZ3VhcmFudGVlIHRoYXQgdGhlIHN5c2FkbWluIGhh
cyBtb3VudGVkIHN5c2ZzPyBXZSBkb24ndCBhdXRvbW91bnQKaXQgdW5saWtlIGRlYnVnZnMuCgo+
ID4gKyAgICAgICAgICAgICBpZ3Rfc3VidGVzdF9ncm91cCB7Cj4gPiArICAgICAgICAgICAgICAg
ICAgICAgaWd0X2ZpeHR1cmUgewo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaWd0
X3JlcXVpcmUoZnN0YXRhdChlbmdpbmUsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICJwcmVlbXB0X3RpbWVvdXRfbXMiLAo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAmc3QsIDApID09IDApOwo+
ID4gKyAgICAgICAgICAgICAgICAgICAgIH0KPiA+ICsKPiA+ICsgICAgICAgICAgICAgICAgICAg
ICBpZ3Rfc3VidGVzdF9mKCIlcy1pZGVtcG90ZW50IiwgbmFtZSkKPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIHRlc3RfaWRlbXBvdGVudChpOTE1LCBlbmdpbmUpOwo+ID4gKyAgICAg
ICAgICAgICAgICAgICAgIGlndF9zdWJ0ZXN0X2YoIiVzLWludmFsaWQiLCBuYW1lKQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdGVzdF9pbnZhbGlkKGk5MTUsIGVuZ2luZSk7Cj4g
PiArICAgICAgICAgICAgICAgICAgICAgaWd0X3N1YnRlc3RfZigiJXMtdGltZW91dCIsIG5hbWUp
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICB0ZXN0X3RpbWVvdXQoaTkxNSwgZW5n
aW5lKTsKPiA+ICsgICAgICAgICAgICAgfQo+ID4gKwo+ID4gKyAgICAgICAgICAgICBmcmVlKG5h
bWUpOwo+ID4gKyAgICAgICAgICAgICBjbG9zZShlbmdpbmUpOwo+ID4gKyAgICAgfQo+IAo+IFlv
dSBwcm9iYWJseSBzaG91bGQgdXNlIF9fZm9yX2VhY2hfc3RhdGljX2VuZ2luZSBhbmQgdGhlbiBv
cGVuIHN5c2ZzIAo+IG5vZGVzIGJhc2VkIG9uIHRoYXQuIEdldHMgYXJvdW5kIHRoZSBkeW5hbWlj
IHN1YnRlc3RzIG5vLW5vIGF0IGxlYXN0LgoKRGVmZWF0aXN0IQotQ2hyaXMKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0
b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
