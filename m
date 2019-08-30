Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3C1A3100
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Aug 2019 09:29:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C51116E233;
	Fri, 30 Aug 2019 07:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77CF86E233;
 Fri, 30 Aug 2019 07:29:28 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Aug 2019 00:29:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; d="scan'208";a="381043267"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
 by fmsmga005.fm.intel.com with ESMTP; 30 Aug 2019 00:29:26 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.21]) by
 IRSMSX103.ger.corp.intel.com ([169.254.3.144]) with mapi id 14.03.0439.000;
 Fri, 30 Aug 2019 08:29:25 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH i-g-t v2] tests/kms_plane_lowres: Skip if no suitable
 mode is possible
Thread-Index: AQHVXqvK3/0DupH1aEu5n6pm9HUzoacTO3cA
Date: Fri, 30 Aug 2019 07:29:25 +0000
Message-ID: <5b07516ed5f8ace8e1860ebfe3e9c6a92548c3b0.camel@intel.com>
References: <5b979337dee5e5e56dfee60af4b33f68961b6fc7.camel@intel.com>
 <20190829205255.862-1-matthew.d.roper@intel.com>
In-Reply-To: <20190829205255.862-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.188]
Content-ID: <C5B411F6713252439B1112021333EBF0@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH i-g-t v2] tests/kms_plane_lowres: Skip if no
 suitable mode is possible
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

T24gVGh1LCAyMDE5LTA4LTI5IGF0IDEzOjUyIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0KPiBX
aGVuIGNob29zaW5nIGEgbG93IHJlc29sdXRpb24gbW9kZSB0byBzd2l0Y2ggdG8sIHdlIHNlYXJj
aCB0aGUNCj4gY29ubmVjdG9yJ3MgbW9kZSBsaXN0IGZvciBhIG1vZGUgdGhhdCdzIHNtYWxsIGVu
b3VnaCB0aGF0IGEgcGxhbmUNCj4gcG9zaXRpb25lZCBpbiB0aGUgYm90dG9tIGxlZnQgY29ybmVy
IG9mIHRoZSBzY3JlZW4gaW4gdGhlIG9yaWdpbmFsIG1vZGUNCj4gd2lsbCBiZSBmdWxseSBvZmZz
Y3JlZW4gaW4gdGhlIG5ldywgc21hbGxlciBtb2RlLiAgSG93ZXZlciBpZiBubw0KPiBzdWl0YWJs
ZSBtb2RlcyBhcmUgZm91bmQgaW4gdGhlIG1vZGVsaXN0LCB3ZSBibGluZGx5IGZhbGwgYmFjayB0
byBhIDEweDcNCj4gbW9kZSB3aXRob3V0IGFjdHVhbGx5IGNoZWNraW5nIHRoYXQgdGhlIGNhbmFy
eSBwbGFuZSB3aWxsIG5vdyBiZQ0KPiBvZmZzY3JlZW4uICBJZiwgZm9yIGV4YW1wbGUsIHRoZSBv
cmlnaW5hbCBtb2RlIHdhcyAxM3g3LCB0aGVuIHN3aXRjaGluZw0KPiB0byAxMHg3IHdpbGwgbGVh
dmUgdGhlIHBsYW5lIHZpc2libGUgb25zY3JlZW4sIGNhdXNpbmcgdGhlIHRlc3QgdG8gZmFpbC4N
Cj4gDQo+IEJlZm9yZSBmYWxsaW5nIGJhY2sgdG8gYSAxMHg3IG1vZGUsIGNoZWNrIHdoZXRoZXIg
dGhhdCdzIGFjdHVhbGx5IHNtYWxsDQo+IGVub3VnaC4gIElmIGl0IGlzbid0IGp1c3Qgc2tpcCB0
aGlzIHN1YnRlc3QuDQo+IA0KPiB2MjogUmVzdHJ1Y3R1cmUgdGhlIHNraXAgY29uZGl0aW9uIHRv
IG1ha2UgaXQgbW9yZSBvYnZpb3VzIHdoeSB0aGlzIHNpemUNCj4gICAgIGxpbWl0YXRpb24gaXMg
aW1wb3J0YW50LiAgKFNpbW9uKQ0KPiANCj4gQ2M6IFNpbW9uIFNlciA8c2ltb24uc2VyQGludGVs
LmNvbT4NCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hvd19idWcu
Y2dpP2lkPTEwNTU4MQ0KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9w
ZXJAaW50ZWwuY29tPg0KDQpUaGFua3MhDQoNClJldmlld2VkLWJ5OiBTaW1vbiBTZXIgPHNpbW9u
LnNlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+ICB0ZXN0cy9rbXNfcGxhbmVfbG93cmVzLmMgfCA2
ICsrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL3Rlc3RzL2ttc19wbGFuZV9sb3dyZXMuYyBiL3Rlc3RzL2tt
c19wbGFuZV9sb3dyZXMuYw0KPiBpbmRleCA2OGI4NTAyNS4uMWEzMTZjODQgMTAwNjQ0DQo+IC0t
LSBhL3Rlc3RzL2ttc19wbGFuZV9sb3dyZXMuYw0KPiArKysgYi90ZXN0cy9rbXNfcGxhbmVfbG93
cmVzLmMNCj4gQEAgLTU5LDggKzU5LDEyIEBAIGdldF9sb3dyZXNfbW9kZShpbnQgZHJtZmQsIGln
dF9vdXRwdXRfdCAqb3V0cHV0LCBkcm1Nb2RlTW9kZUluZm8gKm1vZGVfZGVmYXVsdCkNCj4gIAkJ
fQ0KPiAgCX0NCj4gIA0KPiAtCWlmICghZm91bmQpDQo+ICsJaWYgKCFmb3VuZCkgew0KPiArCQlp
Z3RfcmVxdWlyZV9mKG1vZGVfZGVmYXVsdC0+dmRpc3BsYXkgLSBTSVpFID4gNzY4LA0KPiArCQkJ
ICAgICAgIkN1cnJlbnQgbW9kZSBub3QgdGFsbCBlbm91Z2g7IHBsYW5lIHdvdWxkIHN0aWxsIGJl
IG9uc2NyZWVuIGFmdGVyIHN3aXRjaCB0byAxMHg3LlxuIik7DQo+ICsNCj4gIAkJcmV0dXJuICpp
Z3Rfc3RkXzEwMjRfbW9kZV9nZXQoKTsNCj4gKwl9DQo+ICANCj4gIAlyZXR1cm4gbW9kZTsNCj4g
IH0NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
