Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E93448ABC
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 19:46:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8E80892B6;
	Mon, 17 Jun 2019 17:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77097892B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Jun 2019 17:46:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Jun 2019 10:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,386,1557212400"; d="scan'208";a="185818596"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2019 10:46:39 -0700
Received: from orsmsx163.amr.corp.intel.com (10.22.240.88) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 17 Jun 2019 10:46:39 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.202]) by
 ORSMSX163.amr.corp.intel.com ([169.254.9.84]) with mapi id 14.03.0439.000;
 Mon, 17 Jun 2019 10:46:39 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [PATCH 9/9] drm/i915/dmc: protect against loading wrong firmware
Thread-Index: AQHVHRExxPEL6it/206gTU7fu2gbQKabmJ5wgACVUACABAECEA==
Date: Mon, 17 Jun 2019 17:46:38 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073480DCF0A@ORSMSX108.amr.corp.intel.com>
References: <20190607091230.1489-1-lucas.demarchi@intel.com>
 <20190607091230.1489-10-lucas.demarchi@intel.com>
 <83F5C7385F545743AD4FB2A62F75B073480D37AB@ORSMSX108.amr.corp.intel.com>
 <20190614213726.2rcikss7nynsi27q@ldmartin-desk1>
In-Reply-To: <20190614213726.2rcikss7nynsi27q@ldmartin-desk1>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.600.7
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMzg2YzllMGUtOWY2OS00ZjM2LWE2NWMtYTY2ZjI5YTA1M2JlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZUFKc1U5S0Q3YUJ4WDU2M3BHVWRkOVNveXRRNWl1QzEyZWY1Q0JpZDJ6TFVwYmdhdGZTQUMzWko0aE5WMjloZiJ9
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/dmc: protect against loading
 wrong firmware
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IERlIE1hcmNoaSwgTHVjYXMKPlNl
bnQ6IEZyaWRheSwgSnVuZSAxNCwgMjAxOSAyOjM3IFBNCj5UbzogU3JpdmF0c2EsIEFudXNoYSA8
YW51c2hhLnNyaXZhdHNhQGludGVsLmNvbT4KPkNjOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnOyBWaXZpLCBSb2RyaWdvIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPgo+U3ViamVjdDog
UmU6IFtQQVRDSCA5LzldIGRybS9pOTE1L2RtYzogcHJvdGVjdCBhZ2FpbnN0IGxvYWRpbmcgd3Jv
bmcgZmlybXdhcmUKPgo+T24gRnJpLCBKdW4gMTQsIDIwMTkgYXQgMTI6NDQ6NTBQTSAtMDcwMCwg
QW51c2hhIFNyaXZhdHNhIHdyb3RlOgo+Pgo+Pgo+Pj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQo+Pj5Gcm9tOiBEZSBNYXJjaGksIEx1Y2FzCj4+PlNlbnQ6IEZyaWRheSwgSnVuZSA3LCAyMDE5
IDI6MTMgQU0KPj4+VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPj4+Q2M6IFZp
dmksIFJvZHJpZ28gPHJvZHJpZ28udml2aUBpbnRlbC5jb20+OyBTcml2YXRzYSwgQW51c2hhCj4+
PjxhbnVzaGEuc3JpdmF0c2FAaW50ZWwuY29tPjsgRGUgTWFyY2hpLCBMdWNhcwo+Pj48bHVjYXMu
ZGVtYXJjaGlAaW50ZWwuY29tPgo+Pj5TdWJqZWN0OiBbUEFUQ0ggOS85XSBkcm0vaTkxNS9kbWM6
IHByb3RlY3QgYWdhaW5zdCBsb2FkaW5nIHdyb25nCj4+PmZpcm13YXJlCj4+Pgo+Pj5JbiBpbnRl
bF9wYWNrYWdlX2hlYWRlciB2ZXJzaW9uIDIgdGhlcmUncyBhIG5ldyBmaWVsZCBpbiB0aGUgZndf
aW5mbwo+Pj50YWJsZSB0aGF0IG11c3QgYmUgMCwgb3RoZXJ3aXNlIGl0J3Mgbm90IHRoZSBjb3Jy
ZWN0IERNQyBmaXJtd2FyZS4gQWRkCj4+PmEgY2hlY2sgZm9yIHZlcnNpb24gMiBvciBsYXRlci4K
Pj4+Cj4+PlNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50
ZWwuY29tPgo+Pj4tLS0KPj4+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5jIHwgMTQg
KysrKysrKysrKystLS0KPj4+IDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRpb25zKCspLCAzIGRl
bGV0aW9ucygtKQo+Pj4KPj4+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2Nzci5jCj4+PmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfY3NyLmMKPj4+aW5kZXggNzYw
OGU0ZTI5NTBkLi44NjQ1MzFhYWUxYTUgMTAwNjQ0Cj4+Pi0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Nzci5jCj4+PisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nzci5j
Cj4+PkBAIC0xMjAsNyArMTIwLDEwIEBAIHN0cnVjdCBpbnRlbF9jc3NfaGVhZGVyIHsgIH0gX19w
YWNrZWQ7Cj4+Pgo+Pj4gc3RydWN0IGludGVsX2Z3X2luZm8gewo+Pj4tCXUxNiByZXNlcnZlZDE7
Cj4+PisJdTggcmVzZXJ2ZWQxOwo+Pj4rCj4+PisJLyogcmVzZXJ2ZWQgb24gcGFja2FnZV9oZWFk
ZXIgdmVyc2lvbiAxLCBtdXN0IGJlIDAgb24gdmVyc2lvbiAyICovCj4+PisJdTggZG1jX2lkOwo+
Pj4KPj4+IAkvKiBTdGVwcGluZyAoQSwgQiwgQywgLi4uLCAqKS4gKiBpcyBhIHdpbGRjYXJkICov
Cj4+PiAJY2hhciBzdGVwcGluZzsKPj4+QEAgLTMyNSwxMiArMzI4LDE2IEBAIHZvaWQgaW50ZWxf
Y3NyX2xvYWRfcHJvZ3JhbShzdHJ1Y3QKPj4+ZHJtX2k5MTVfcHJpdmF0ZQo+Pj4qZGV2X3ByaXYp
Cj4+PiAgKi8KPj4+IHN0YXRpYyB1MzIgZmluZF9kbWNfZndfb2Zmc2V0KGNvbnN0IHN0cnVjdCBp
bnRlbF9md19pbmZvICpmd19pbmZvLAo+Pj4gCQkJICAgICAgdW5zaWduZWQgaW50IG51bV9lbnRy
aWVzLAo+Pj4tCQkJICAgICAgY29uc3Qgc3RydWN0IHN0ZXBwaW5nX2luZm8gKnNpKQo+Pj4rCQkJ
ICAgICAgY29uc3Qgc3RydWN0IHN0ZXBwaW5nX2luZm8gKnNpLAo+Pj4rCQkJICAgICAgdTggcGFj
a2FnZV92ZXIpCj4+PiB7Cj4+PiAJdTMyIGRtY19vZmZzZXQgPSBDU1JfREVGQVVMVF9GV19PRkZT
RVQ7Cj4+PiAJdW5zaWduZWQgaW50IGk7Cj4+Pgo+Pj4gCWZvciAoaSA9IDA7IGkgPCBudW1fZW50
cmllczsgaSsrKSB7Cj4+PisJCWlmIChwYWNrYWdlX3ZlciA+IDEgJiYgZndfaW5mb1tpXS5kbWNf
aWQgIT0gMCkKPj4+KwkJCWNvbnRpbnVlOwo+Pgo+PldvbnQgd2UgbmVlZCBhIG1lc3NhZ2UgaGVy
ZT8gIldyb25nIERNQyB2ZXJzaW9uLCBub3QgbG9hZGluZyB2X3guMHgiIG9yCj5zb21ldGhpbmc/
Li4iCj4KPkkgZG9uJ3QgdGhpbmsgc28uIEl0J3Mgbm9ybWFsIHRvIGhhdmUgb3RoZXIgYmxvYnMg
aW5zaWRlIHRoZSBmaXJtd2FyZSB0aGF0IHdlIGRvbid0Cj5jYXJlIGFib3V0LiBBdCBtb3N0IEkg
Y291bGQgcHV0IGEgZGVidWcsIGJ1dCBJIGRvbid0IHRoaW5rIHdlIHJlYWxseSBjYXJlLgo+Cj5B
cyBsb25nIGFzIHdlIGZpbmQgb25lIHdlIHNob3VsZCBiZSBmaW5lLiBBbmQgaWYgd2UgZG9uJ3Qs
IHRoZW4gd2Ugd2lsbCBjb21wbGFpbgo+bG91ZGx5IGxhdGVyIGluIHRoaXMgZnVuY3Rpb24gd2l0
aCBhIERSTV9FUlJPUigpLgo+ZG1jX29mZnNldCByZW1haW5pbmcgYXMgQ1NSX0RFRkFVTFRfRldf
T0ZGU0VUIGhhcyBhIGRvdWJsZSBtZWFuaW5nIGhlcmU6Cj5laXRoZXIgd2UgZGlkbid0IGZpbmQg
YW55IGVudHJ5IG9yIHdlIGZvdW5kIG9uZSB0aGF0IGhhZCB0aGUgb2Zmc2V0IHNldCB0byB0aGlz
Cj52YWx1ZS4KCk9rLiBNYWtlcyBzZW5zZS4KClJldmlld2VkLWJ5OiBBbnVzaGEgU3JpdmF0c2Eg
PGFudXNoYS5zcml2YXRzYUBpbnRlbC5jb20+Cgo+THVjYXMgRGUgTWFyY2hpCj4KPj4KPj5BbnVz
aGEKPj4+IAkJaWYgKGZ3X2luZm9baV0uc3Vic3RlcHBpbmcgPT0gJyonICYmCj4+PiAJCSAgICBz
aS0+c3RlcHBpbmcgPT0gZndfaW5mb1tpXS5zdGVwcGluZykgewo+Pj4gCQkJZG1jX29mZnNldCA9
IGZ3X2luZm9baV0ub2Zmc2V0Owo+Pj5AQCAtNTA4LDcgKzUxNSw4IEBAIHBhcnNlX2Nzcl9md19w
YWNrYWdlKHN0cnVjdCBpbnRlbF9jc3IgKmNzciwKPj4+Cj4+PiAJZndfaW5mbyA9IChjb25zdCBz
dHJ1Y3QgaW50ZWxfZndfaW5mbyAqKQo+Pj4gCQkoKHU4ICopcGFja2FnZV9oZWFkZXIgKyBzaXpl
b2YoKnBhY2thZ2VfaGVhZGVyKSk7Cj4+Pi0JZG1jX29mZnNldCA9IGZpbmRfZG1jX2Z3X29mZnNl
dChmd19pbmZvLCBudW1fZW50cmllcywgc2kpOwo+Pj4rCWRtY19vZmZzZXQgPSBmaW5kX2RtY19m
d19vZmZzZXQoZndfaW5mbywgbnVtX2VudHJpZXMsIHNpLAo+Pj4rCQkJCQlwYWNrYWdlX2hlYWRl
ci0+aGVhZGVyX3Zlcik7Cj4+PiAJaWYgKGRtY19vZmZzZXQgPT0gQ1NSX0RFRkFVTFRfRldfT0ZG
U0VUKSB7Cj4+PiAJCURSTV9FUlJPUigiRE1DIGZpcm13YXJlIG5vdCBzdXBwb3J0ZWQgZm9yICVj
IHN0ZXBwaW5nXG4iLAo+Pj4gCQkJICBzaS0+c3RlcHBpbmcpOwo+Pj4tLQo+Pj4yLjIxLjAKPj4K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
