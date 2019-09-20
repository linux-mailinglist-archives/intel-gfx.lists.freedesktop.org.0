Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A197BB9466
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 17:51:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E4FF06E084;
	Fri, 20 Sep 2019 15:50:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59F976E084
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 15:50:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Sep 2019 08:50:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,529,1559545200"; d="scan'208";a="188426092"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga007.fm.intel.com with ESMTP; 20 Sep 2019 08:50:58 -0700
Received: from fmsmsx113.amr.corp.intel.com (10.18.116.7) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 20 Sep 2019 08:50:58 -0700
Received: from fmsmsx119.amr.corp.intel.com ([169.254.14.227]) by
 FMSMSX113.amr.corp.intel.com ([169.254.13.68]) with mapi id 14.03.0439.000;
 Fri, 20 Sep 2019 08:50:58 -0700
From: "Bloomfield, Jon" <jon.bloomfield@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
Thread-Index: AQHVb46ZFzksLVXs/0GvhgxCEUHVCac1HbEAgAAEJoD//5QfkA==
Date: Fri, 20 Sep 2019 15:50:57 +0000
Message-ID: <AD48BB7FB99B174FBCC69E228F58B3B68CE44225@FMSMSX119.amr.corp.intel.com>
References: <20190920083624.4601-1-chris@chris-wilson.co.uk>
 <156899145257.10086.14761802446237119901@skylake-alporthouse-com>
 <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
In-Reply-To: <baf00b47-396b-fa55-8965-ef02ad5900ff@linux.intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTBiMmVhYjctYTA1Ni00YzM3LWEyOTItMjQxMTA2N2IxYjAwIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoid0NWWXhYOGNZZUorbGhkczE0T3FVWFwvTXR2cnF2WXluN0JtbFprUkxTTHZuRCtoNGlIVXZXU0d1dWpnRFdJSUsifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Prevent bonded requests from
 overtaking each other on preemption
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFR2cnRrbw0KPiBV
cnN1bGluDQo+IFNlbnQ6IEZyaWRheSwgU2VwdGVtYmVyIDIwLCAyMDE5IDg6MTIgQU0NCj4gVG86
IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPjsgaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0v
aTkxNTogUHJldmVudCBib25kZWQgcmVxdWVzdHMgZnJvbQ0KPiBvdmVydGFraW5nIGVhY2ggb3Ro
ZXIgb24gcHJlZW1wdGlvbg0KPiANCj4gDQo+IE9uIDIwLzA5LzIwMTkgMTU6NTcsIENocmlzIFdp
bHNvbiB3cm90ZToNCj4gPiBRdW90aW5nIENocmlzIFdpbHNvbiAoMjAxOS0wOS0yMCAwOTozNjoy
NCkNCj4gPj4gRm9yY2UgYm9uZGVkIHJlcXVlc3RzIHRvIHJ1biBvbiBkaXN0aW5jdCBlbmdpbmVz
IHNvIHRoYXQgdGhleSBjYW5ub3QgYmUNCj4gPj4gc2h1ZmZsZWQgb250byB0aGUgc2FtZSBlbmdp
bmUgd2hlcmUgdGltZXNsaWNpbmcgd2lsbCByZXZlcnNlIHRoZSBvcmRlci4NCj4gPj4gQSBib25k
ZWQgcmVxdWVzdCB3aWxsIG9mdGVuIHdhaXQgb24gYSBzZW1hcGhvcmUgc2lnbmFsZWQgYnkgaXRz
IG1hc3RlciwNCj4gPj4gY3JlYXRpbmcgYW4gaW1wbGljaXQgZGVwZW5kZW5jeSAtLSBpZiB3ZSBp
Z25vcmUgdGhhdCBpbXBsaWNpdCBkZXBlbmRlbmN5DQo+ID4+IGFuZCBhbGxvdyB0aGUgYm9uZGVk
IHJlcXVlc3QgdG8gcnVuIG9uIHRoZSBzYW1lIGVuZ2luZSBhbmQgYmVmb3JlIGl0cw0KPiA+PiBt
YXN0ZXIsIHdlIHdpbGwgY2F1c2UgYSBHUFUgaGFuZy4NCj4gPg0KPiA+IFRoaW5raW5nIG1vcmUs
IGl0IHNob3VsZCBub3QgZGlyZWN0bHkgY2F1c2UgYSBHUFUgaGFuZywgYXMgdGhlIHN0dWNrIHJl
cXVlc3QNCj4gPiBzaG91bGQgYmUgdGltZXNsaWNlZCBhd2F5LCBhbmQgZWFjaCBwcmVlbXB0aW9u
IHNob3VsZCBiZSBlbm91Z2ggdG8ga2VlcA0KPiA+IGhhbmdjaGVjayBhdCBiYXkgKHRob3VnaCB3
ZSBoYXZlIGV2aWRlbmNlIGl0IG1heSBub3QpLiBTbyBhdCBiZXN0IGl0IHJ1bnMNCj4gPiBhdCBo
YWxmLXNwZWVkLCBhdCB3b3JzdCBhIHRoaXJkIChpZiBteSBtb2RlbCBpcyBjb3JyZWN0KS4NCj4g
DQo+IEJ1dCBJIHRoaW5rIGl0IGlzIHN0aWxsIGNvcnJlY3QgdG8gZG8gc2luY2Ugd2UgZG9uJ3Qg
aGF2ZSB0aGUgY291cGxpbmcNCj4gaW5mb3JtYXRpb24gb24gcmUtc3VibWl0LiBIbS4uIGJ1dCBk
b24ndCB3ZSBuZWVkIHRvIHByZXZlbnQgc2xhdmUgZnJvbQ0KPiBjaGFuZ2luZyBlbmdpbmVzIGFz
IHdlbGw/DQoNClVubGVzcyBJJ20gbWlzc2luZyBzb21ldGhpbmcsIHRoZSBwcm9wb3NhbCBoZXJl
IGlzIHRvIHNldCB0aGUgZW5naW5lcyBpbiBzdG9uZSBhdCBmaXJzdCBzdWJtaXNzaW9uLCBhbmQg
bmV2ZXIgY2hhbmdlIHRoZW0/DQpJZiBzbywgdGhhdCBkb2VzIHNvdW5kIG92ZXJseSByZXN0cmlj
dGl2ZSwgYW5kIHdpbGwgcHJldmVudCBhbnkga2luZCBvZiByZWJhbGFuY2luZyBhcyB3b3JrbG9h
ZHMgKG9mIHZhcnlpbmcgc2xhdmUgY291bnRzKSBjb21lIGFuZCBnby4NCkR1cmluZyB0aGUgb3Jp
Z2luYWwgZGVzaWduIGl0IHdhcyBjYWxsZWQgb3V0IHRoYXQgdGhlIHdvcmtsb2FkcyBzaG91bGQg
YmUgcHJlLWVtcHRlZCBhdG9taWNhbGx5LiBUaGF0IGFsbG93cyB0aGUgZW50aXJlIGJvbmRpbmcg
bWFzayB0byBiZSByZS1ldmFsdWF0ZWQgYXQgZXZlcnkgY29udGV4dCBzd2l0Y2ggYW5kIHNvIHdl
IGNhbiB0aGVuIHJlYmFsYW5jZS4gU3RpbGwgbm90IGVhc3kgdG8gYWNoaWV2ZSBJIGFncmVlIDot
KA0KIA0KPiANCj4gUmVnYXJkcywNCj4gDQo+IFR2cnRrbw0KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0DQo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngNCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
