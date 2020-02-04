Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D57152299
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2020 00:00:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E53C6E926;
	Tue,  4 Feb 2020 23:00:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6B8D6E926
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 23:00:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 15:00:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="249507380"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
 by orsmga002.jf.intel.com with ESMTP; 04 Feb 2020 15:00:31 -0800
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
 ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 15:00:31 -0800
Received: from vkasired-desk2.fm.intel.com (10.22.254.140) by
 ORSMSX157.amr.corp.intel.com (10.22.240.23) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 4 Feb 2020 15:00:30 -0800
Date: Tue, 4 Feb 2020 14:56:15 -0800
From: Vivek Kasireddy <vivek.kasireddy@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200204145615.071387fc@vkasired-desk2.fm.intel.com>
In-Reply-To: <87y2to7yu0.fsf@intel.com>
References: <0b0038baaa75ed086bf8ba27d126136f601d6bce.camel@intel.com>
 <20200131001816.32741-1-vivek.kasireddy@intel.com>
 <87y2to7yu0.fsf@intel.com>
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Originating-IP: [10.22.254.140]
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hotplug: Use phy to get the
 hpd_pin instead of the port (v3)
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAzMSBKYW4gMjAyMCAxMTozNTozNSArMDIwMApKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAaW50ZWwuY29tPiB3cm90ZToKSGkgSmFuaSwKCj4gT24gVGh1LCAzMCBKYW4gMjAyMCwgVml2
ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlAaW50ZWwuY29tPgo+IHdyb3RlOgo+ID4gT24g
c29tZSBwbGF0Zm9ybXMgc3VjaCBhcyBFbGtoYXJ0IExha2UsIGFsdGhvdWdoIHdlIG1heSB1c2Ug
RERJIEQKPiA+IHRvIGRyaXZlIGEgY29ubmVjdG9yLCB3ZSBoYXZlIHRvIHVzZSBQSFkgQSAoQ29t
Ym8gUGh5IFBPUlQgQSkgdG8KPiA+IGRldGVjdCB0aGUgaG90cGx1ZyBpbnRlcnJ1cHRzIGFzIHBl
ciB0aGUgc3BlYyBiZWNhdXNlIHRoZXJlIGlzIG5vCj4gPiBvbmUtdG8tb25lIG1hcHBpbmcgYmV0
d2VlbiBERElzIGFuZCBQSFlzLiBUaGVyZWZvcmUsIHVzZSB0aGUKPiA+IGZ1bmN0aW9uIGludGVs
X3BvcnRfdG9fcGh5KCkgd2hpY2ggY29udGFpbnMgdGhlIGxvZ2ljIGZvciBzdWNoCj4gPiBtYXBw
aW5nKHMpIHRvIGZpbmQgdGhlIGNvcnJlY3QgaHBkX3Bpbi4KPiA+Cj4gPiBUaGlzIGNoYW5nZSBz
aG91bGQgbm90IGFmZmVjdCBvdGhlciBwbGF0Zm9ybXMgYXMgdGhlcmUgaXMgYWx3YXlzCj4gPiBh
IG9uZS10by1vbmUgbWFwcGluZyBiZXR3ZWVuIERESXMgYW5kIFBIWXMuCj4gPgo+ID4gdjI6Cj4g
PiAtIENvbnZlcnQgdGhlIGNhc2Ugc3RhdGVtZW50cyB0byB1c2UgUEhZcyBpbnN0ZWFkIG9mIFBP
UlRzIChKYW5pKQo+ID4KPiA+IHYzOgo+ID4gLSBSZWZhY3RvciB0aGUgZnVuY3Rpb24gdG8gcmVk
dWNlIHRoZSBudW1iZXIgb2YgcmV0dXJuIHN0YXRlbWVudHMgYnkKPiA+ICAgbHVtcGluZyBhbGwg
dGhlIGNhc2Ugc3RhdGVtZW50cyB0b2dldGhlciBleGNlcHQgUEhZX0Ygd2hpY2ggbmVlZHMKPiA+
ICAgc3BlY2lhbCBoYW5kbGluZyAoSm9zZSkKPiA+Cj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiA+IENjOiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50
ZWwuY29tPgo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwu
Y29tPgo+ID4gU2lnbmVkLW9mZi1ieTogVml2ZWsgS2FzaXJlZGR5IDx2aXZlay5rYXNpcmVkZHlA
aW50ZWwuY29tPgo+ID4gLS0tCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9ob3RwbHVnLmMgfCAzNwo+ID4gKysrKysrKystLS0tLS0tLS0tLS0gMSBmaWxlIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKyksIDIyCj4gPiBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMKPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgaW5kZXgKPiA+IDA0MmQ5
OGJhZTFlYS4uMjdlMzAzMzI3OGEwIDEwMDY0NCAtLS0KPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9ob3RwbHVnLmMgKysrCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jIEBAIC04OSwyOSArODksMjIgQEAKPiA+ICBlbnVtIGhw
ZF9waW4gaW50ZWxfaHBkX3Bpbl9kZWZhdWx0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlCj4gPiAq
ZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQo+ID4gIHsKPiA+IC0Jc3dpdGNoIChwb3J0KSB7Cj4g
PiAtCWNhc2UgUE9SVF9BOgo+ID4gLQkJcmV0dXJuIEhQRF9QT1JUX0E7Cj4gPiAtCWNhc2UgUE9S
VF9COgo+ID4gLQkJcmV0dXJuIEhQRF9QT1JUX0I7Cj4gPiAtCWNhc2UgUE9SVF9DOgo+ID4gLQkJ
cmV0dXJuIEhQRF9QT1JUX0M7Cj4gPiAtCWNhc2UgUE9SVF9EOgo+ID4gLQkJcmV0dXJuIEhQRF9Q
T1JUX0Q7Cj4gPiAtCWNhc2UgUE9SVF9FOgo+ID4gLQkJcmV0dXJuIEhQRF9QT1JUX0U7Cj4gPiAt
CWNhc2UgUE9SVF9GOgo+ID4gLQkJaWYgKElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikpCj4g
PiAtCQkJcmV0dXJuIEhQRF9QT1JUX0U7Cj4gPiAtCQlyZXR1cm4gSFBEX1BPUlRfRjsKPiA+IC0J
Y2FzZSBQT1JUX0c6Cj4gPiAtCQlyZXR1cm4gSFBEX1BPUlRfRzsKPiA+IC0JY2FzZSBQT1JUX0g6
Cj4gPiAtCQlyZXR1cm4gSFBEX1BPUlRfSDsKPiA+IC0JY2FzZSBQT1JUX0k6Cj4gPiAtCQlyZXR1
cm4gSFBEX1BPUlRfSTsKPiA+ICsJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoZGV2
X3ByaXYsIHBvcnQpOwo+ID4gKwo+ID4gKwlzd2l0Y2ggKHBoeSkgewo+ID4gKwljYXNlIFBIWV9G
Ogo+ID4gKwkJcmV0dXJuIElTX0NOTF9XSVRIX1BPUlRfRihkZXZfcHJpdikgPyBIUERfUE9SVF9F
IDoKPiA+IEhQRF9QT1JUX0Y7Cj4gPiArCWNhc2UgUEhZX0E6Cj4gPiArCWNhc2UgUEhZX0I6Cj4g
PiArCWNhc2UgUEhZX0M6Cj4gPiArCWNhc2UgUEhZX0Q6Cj4gPiArCWNhc2UgUEhZX0U6Cj4gPiAr
CWNhc2UgUEhZX0c6Cj4gPiArCWNhc2UgUEhZX0g6Cj4gPiArCWNhc2UgUEhZX0k6Cj4gPiArCQly
ZXR1cm4gSFBEX1BPUlRfQSArIHBoeTsgIAo+IAo+IEkga25vdyBKb3PDqSBhc2tlZCB5b3UgdG8g
ZG8gdGhpcywgYnV0IG5vdyB5b3UndmUgdGllZCB0d28gZW51bQo+IHNlcXVlbmNlcyB0b2dldGhl
ciB3aXRob3V0IGV4cGxhaW5pbmcgaXQgYW55d2hlcmUuIEJlZm9yZSB0aGlzLAo+IEFGQUlDVCwg
ZW51bSBocGRfcGluIHdhcyBqdXN0IGFuIGFic3RyYWN0IGVudW1lcmF0aW9uIHdoZXJlIHRoZQo+
IGFjdHVhbCB2YWx1ZXMgb2YgdGhlIGVudW1zIGRpZG4ndCBtZWFuIGEgdGhpbmcsIGFwYXJ0IGZy
b20gMCBmb3IKPiBIUERfTk9ORS4KPiAKPiBNYXliZSB0aGlzIGlzIHdoYXQgd2Ugd2FudCB0byBk
bywgYnV0IHdlIHNob3VsZCBuZXZlciBiZSBzbyBjYXN1YWwKPiBhYm91dCBpdC4KRG8geW91IHN1
Z2dlc3QgdGhhdCBJIGV4cGxhaW4gdGhpcyBpbiB0aGUgZGVzY3JpcHRpb24gYXNzb2NpYXRlZAp3
aXRoIHYzIHRoYXQgd2Ugbm93IGhhdmUgYSBzd2l0Y2gvY2FzZSBmYWxsdGhyb3VnaCBpbiB0aGlz
IGZ1bmN0aW9uPwpPciwgZG8geW91IHdhbnQgbWUgdG8gc2VuZCBhIHY0IHRvIGluY2x1ZGUgdGhp
cyBpbiBhIGNvbW1lbnQ/CgpUaGFua3MsClZpdmVrCgo+IAo+IAo+IEJSLAo+IEphbmkuCj4gCj4g
Cj4gPiAgCWRlZmF1bHQ6Cj4gPiAtCQlNSVNTSU5HX0NBU0UocG9ydCk7Cj4gPiArCQlNSVNTSU5H
X0NBU0UocGh5KTsKPiA+ICAJCXJldHVybiBIUERfTk9ORTsKPiA+ICAJfQo+ID4gIH0gIAo+IAoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
