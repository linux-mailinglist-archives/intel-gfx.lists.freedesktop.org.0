Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 248F566F3A
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 14:54:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88BEC89A60;
	Fri, 12 Jul 2019 12:54:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B02B589A60;
 Fri, 12 Jul 2019 12:54:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 05:54:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="166673600"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
 by fmsmga008.fm.intel.com with ESMTP; 12 Jul 2019 05:54:02 -0700
Received: from irsmsx155.ger.corp.intel.com (163.33.192.3) by
 IRSMSX102.ger.corp.intel.com (163.33.3.155) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 12 Jul 2019 13:54:02 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.40]) by
 irsmsx155.ger.corp.intel.com ([169.254.14.201]) with mapi id 14.03.0439.000;
 Fri, 12 Jul 2019 13:54:02 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Liviu.Dudau@arm.com" <Liviu.Dudau@arm.com>, "Hiler, Arkadiusz"
 <arkadiusz.hiler@intel.com>, "Brian.Starkey@arm.com" <Brian.Starkey@arm.com>, 
 "Latvala, Petri" <petri.latvala@intel.com>, "rodrigosiqueiramelo@gmail.com"
 <rodrigosiqueiramelo@gmail.com>, "daniel@ffwll.ch" <daniel@ffwll.ch>
Thread-Topic: [igt-dev] [PATCH V6 i-g-t 5/6] lib/igt_kms: Add
 igt_output_clone_pipe for cloning
Thread-Index: AQHVIY5hTqY2Gbba6Ei0GxtccidMxKbHDdSA
Date: Fri, 12 Jul 2019 12:54:01 +0000
Message-ID: <43c3d3c9150fbfd24e0fdf63747fc523b1890c75.camel@intel.com>
References: <cover.1560374714.git.rodrigosiqueiramelo@gmail.com>
 <9f4a3f1d1c9df084ec2bf8e9b7475bbeda5f0985.1560374714.git.rodrigosiqueiramelo@gmail.com>
In-Reply-To: <9f4a3f1d1c9df084ec2bf8e9b7475bbeda5f0985.1560374714.git.rodrigosiqueiramelo@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <D4B316D51244EA47A250C4AD0C8500E9@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH V6 i-g-t 5/6] lib/igt_kms: Add
 igt_output_clone_pipe for cloning
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
Cc: "igt-dev@lists.freedesktop.org" <igt-dev@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "nd@arm.com" <nd@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U28sIHRvIHRlc3QgdGhlc2UgbGFzdCB0d28gcGF0Y2hlcyB3ZSdkIG5lZWQgc3BlY2lmaWMgaGFy
ZHdhcmUgcmlnaHQ/DQpCZWNhdXNlIFZLTVMgZG9lc24ndCBzdXBwb3J0IGNsb25pbmcgeWV0IChk
b2VzIGl0PykuDQoNCldoYXQga2luZCBvZiBoYXJkd2FyZSBzdXBwb3J0cyBjbG9uZWQgd3JpdGVi
YWNrIG91dHB1dHM/IEkgaGF2ZSBhDQpSYXNwYmVycnkgUGkgd2hpY2ggc3VwcG9ydHMgd3JpdGVi
YWNrIHZpYSBWQzQsIGJ1dCBJIGRvbid0IHRoaW5rIGl0IGhhcw0Kd3JpdGViYWNrIGNsb25pbmcu
IEknbSBhbHNvIG5vdCB3aWxsaW5nIHRvIGluc3RhbGwgYW55IHByb3ByaWV0YXJ5DQpkcml2ZXIu
DQoNCkkgZ3Vlc3Mgd2UgY291bGQgbGFuZCB0aGUgZmlyc3QgcGFydCBvZiB0aGUgc2VyaWVzLCBh
bmQgd2FpdCBmb3IgVktNUw0KdG8gc3VwcG9ydCBjbG9uZWQgb3V0cHV0cyB0byBsYW5kIHRoZSBs
YXN0IHR3byBwYXRjaGVzLg0KDQpBbnkgb3RoZXIgaWRlYXM/DQoNCk9uIFdlZCwgMjAxOS0wNi0x
MiBhdCAyMzoxOCAtMDMwMCwgQnJpYW4gU3RhcmtleSB3cm90ZToNCj4gQW4gb3V0cHV0IGNhbiBi
ZSBhZGRlZCBhcyBhIGNsb25lIG9mIGFueSBvdGhlciBvdXRwdXQocykgYXR0YWNoZWQgdG8gYQ0K
PiBwaXBlIHVzaW5nIGlndF9vdXRwdXRfY2xvbmVfcGlwZSgpDQo+IA0KPiB2NTogRHJvcCBmaWVs
ZCBvdXRfZmVuY2VfcmVxdWVzdGVkIGZyb20gc3RydWN0IGlndF9waXBlIChCcmlhbiBTdGFya2V5
KQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogQnJpYW4gU3RhcmtleSA8YnJpYW4uc3RhcmtleUBhcm0u
Y29tPg0KPiAtLS0NCj4gIGxpYi9pZ3Rfa21zLmMgfCAxMDAgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIGxpYi9pZ3Rfa21zLmggfCAgIDQgKysN
Cj4gIDIgZmlsZXMgY2hhbmdlZCwgNjYgaW5zZXJ0aW9ucygrKSwgMzggZGVsZXRpb25zKC0pDQo+
IA0KPiBkaWZmIC0tZ2l0IGEvbGliL2lndF9rbXMuYyBiL2xpYi9pZ3Rfa21zLmMNCj4gaW5kZXgg
MTQwZGIzNDYuLmI4NWEwNDA0IDEwMDY0NA0KPiAtLS0gYS9saWIvaWd0X2ttcy5jDQo+ICsrKyBi
L2xpYi9pZ3Rfa21zLmMNCj4gQEAgLTE3NjUsNiArMTc2NSwxNyBAQCBzdGF0aWMgdm9pZCBpZ3Rf
ZGlzcGxheV9sb2dfc2hpZnQoaWd0X2Rpc3BsYXlfdCAqZGlzcGxheSwgaW50IHNoaWZ0KQ0KPiAg
CWlndF9hc3NlcnQoZGlzcGxheS0+bG9nX3NoaWZ0ID49IDApOw0KPiAgfQ0KPiAgDQo+ICtzdGF0
aWMgaW50IGlndF9vdXRwdXRfaWR4KGlndF9vdXRwdXRfdCAqb3V0cHV0KQ0KPiArew0KPiArCWlu
dCBpOw0KPiArDQo+ICsJZm9yIChpID0gMDsgaSA8IG91dHB1dC0+ZGlzcGxheS0+bl9vdXRwdXRz
OyBpKyspDQo+ICsJCWlmICgmb3V0cHV0LT5kaXNwbGF5LT5vdXRwdXRzW2ldID09IG91dHB1dCkN
Cj4gKwkJCXJldHVybiBpOw0KPiArDQo+ICsJcmV0dXJuIC0xOw0KPiArfQ0KPiArDQo+ICBzdGF0
aWMgdm9pZCBpZ3Rfb3V0cHV0X3JlZnJlc2goaWd0X291dHB1dF90ICpvdXRwdXQpDQo+ICB7DQo+
ICAJaWd0X2Rpc3BsYXlfdCAqZGlzcGxheSA9IG91dHB1dC0+ZGlzcGxheTsNCj4gQEAgLTIzMTcs
NDIgKzIzMjgsNiBAQCB2b2lkIGlndF9kaXNwbGF5X2ZpbmkoaWd0X2Rpc3BsYXlfdCAqZGlzcGxh
eSkNCj4gIAlkaXNwbGF5LT5wbGFuZXMgPSBOVUxMOw0KPiAgfQ0KPiAgDQo+IC1zdGF0aWMgdm9p
ZCBpZ3RfZGlzcGxheV9yZWZyZXNoKGlndF9kaXNwbGF5X3QgKmRpc3BsYXkpDQo+IC17DQo+IC0J
aWd0X291dHB1dF90ICpvdXRwdXQ7DQo+IC0JaW50IGk7DQo+IC0NCj4gLQl1bnNpZ25lZCBsb25n
IHBpcGVzX2luX3VzZSA9IDA7DQo+IC0NCj4gLSAgICAgICAvKiBDaGVjayB0aGF0IHR3byBvdXRw
dXRzIGFyZW4ndCB0cnlpbmcgdG8gdXNlIHRoZSBzYW1lIHBpcGUgKi8NCj4gLQlmb3IgKGkgPSAw
OyBpIDwgZGlzcGxheS0+bl9vdXRwdXRzOyBpKyspIHsNCj4gLQkJb3V0cHV0ID0gJmRpc3BsYXkt
Pm91dHB1dHNbaV07DQo+IC0NCj4gLQkJaWYgKG91dHB1dC0+cGVuZGluZ19waXBlICE9IFBJUEVf
Tk9ORSkgew0KPiAtCQkJaWYgKHBpcGVzX2luX3VzZSAmICgxIDw8IG91dHB1dC0+cGVuZGluZ19w
aXBlKSkNCj4gLQkJCQlnb3RvIHJlcG9ydF9kdXA7DQo+IC0NCj4gLQkJCXBpcGVzX2luX3VzZSB8
PSAxIDw8IG91dHB1dC0+cGVuZGluZ19waXBlOw0KPiAtCQl9DQo+IC0NCj4gLQkJaWYgKG91dHB1
dC0+Zm9yY2VfcmVwcm9iZSkNCj4gLQkJCWlndF9vdXRwdXRfcmVmcmVzaChvdXRwdXQpOw0KPiAt
CX0NCj4gLQ0KPiAtCXJldHVybjsNCj4gLQ0KPiAtcmVwb3J0X2R1cDoNCj4gLQlmb3IgKDsgaSA+
IDA7IGktLSkgew0KPiAtCQlpZ3Rfb3V0cHV0X3QgKmIgPSAmZGlzcGxheS0+b3V0cHV0c1tpIC0g
MV07DQo+IC0NCj4gLQkJaWd0X2Fzc2VydF9mKG91dHB1dC0+cGVuZGluZ19waXBlICE9DQo+IC0J
CQkgICAgIGItPnBlbmRpbmdfcGlwZSwNCj4gLQkJCSAgICAgIiVzIGFuZCAlcyBhcmUgYm90aCB0
cnlpbmcgdG8gdXNlIHBpcGUgJXNcbiIsDQo+IC0JCQkgICAgIGlndF9vdXRwdXRfbmFtZShvdXRw
dXQpLCBpZ3Rfb3V0cHV0X25hbWUoYiksDQo+IC0JCQkgICAgIGttc3Rlc3RfcGlwZV9uYW1lKG91
dHB1dC0+cGVuZGluZ19waXBlKSk7DQo+IC0JfQ0KPiAtfQ0KPiAtDQo+ICBzdGF0aWMgaWd0X3Bp
cGVfdCAqaWd0X291dHB1dF9nZXRfZHJpdmluZ19waXBlKGlndF9vdXRwdXRfdCAqb3V0cHV0KQ0K
PiAgew0KPiAgCWlndF9kaXNwbGF5X3QgKmRpc3BsYXkgPSBvdXRwdXQtPmRpc3BsYXk7DQo+IEBA
IC0yMzc2LDYgKzIzNTEsNDAgQEAgc3RhdGljIGlndF9waXBlX3QgKmlndF9vdXRwdXRfZ2V0X2Ry
aXZpbmdfcGlwZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCkNCj4gIAlyZXR1cm4gJmRpc3BsYXktPnBp
cGVzW3BpcGVdOw0KPiAgfQ0KPiAgDQo+ICtzdGF0aWMgdm9pZCBpZ3RfZGlzcGxheV9yZWZyZXNo
KGlndF9kaXNwbGF5X3QgKmRpc3BsYXkpDQo+ICt7DQo+ICsJaWd0X291dHB1dF90ICpvdXRwdXQ7
DQo+ICsJaWd0X3BpcGVfdCAqcGlwZTsNCj4gKwlpbnQgaTsNCj4gKw0KPiArCXVuc2lnbmVkIGxv
bmcgcGlwZXNfaW5fdXNlID0gMDsNCj4gKwl1bnNpZ25lZCBsb25nIHBlbmRpbmdfY3J0Y19pZHhf
bWFzazsNCj4gKw0KPiArCS8qIENoZWNrIHRoYXQgb3V0cHV0cyBhbmQgcGlwZXMgYWdyZWUgd3J0
LiBjbG9uaW5nICovDQo+ICsJZm9yIChpID0gMDsgaSA8IGRpc3BsYXktPm5fb3V0cHV0czsgaSsr
KSB7DQo+ICsJCW91dHB1dCA9ICZkaXNwbGF5LT5vdXRwdXRzW2ldOw0KPiArCQlwZW5kaW5nX2Ny
dGNfaWR4X21hc2sgPSAxIDw8IG91dHB1dC0+cGVuZGluZ19waXBlOw0KPiArDQo+ICsJCXBpcGUg
PSBpZ3Rfb3V0cHV0X2dldF9kcml2aW5nX3BpcGUob3V0cHV0KTsNCj4gKwkJaWYgKHBpcGUpIHsN
Cj4gKwkJCWlndF9hc3NlcnRfZihwaXBlLT5vdXRwdXRzICYgKDEgPDwgaWd0X291dHB1dF9pZHgo
b3V0cHV0KSksDQo+ICsJCQkJICAgICAiT3V0cHV0ICVzIG5vdCBleHBlY3RlZCB0byBiZSB1c2lu
ZyBwaXBlICVzXG4iLA0KPiArCQkJCSAgICAgaWd0X291dHB1dF9uYW1lKG91dHB1dCksDQo+ICsJ
CQkJICAgICBrbXN0ZXN0X3BpcGVfbmFtZShwaXBlLT5waXBlKSk7DQo+ICsNCj4gKwkJCWlmIChw
aXBlc19pbl91c2UgJiBwZW5kaW5nX2NydGNfaWR4X21hc2spDQo+ICsJCQkJTE9HKGRpc3BsYXks
ICJPdXRwdXQgJXMgY2xvbmVzIHBpcGUgJXNcbiIsDQo+ICsJCQkJICAgIGlndF9vdXRwdXRfbmFt
ZShvdXRwdXQpLA0KPiArCQkJCSAgICBrbXN0ZXN0X3BpcGVfbmFtZShwaXBlLT5waXBlKSk7DQo+
ICsJCX0NCj4gKw0KPiArCQlwaXBlc19pbl91c2UgfD0gcGVuZGluZ19jcnRjX2lkeF9tYXNrOw0K
PiArDQo+ICsJCWlmIChvdXRwdXQtPmZvcmNlX3JlcHJvYmUpDQo+ICsJCQlpZ3Rfb3V0cHV0X3Jl
ZnJlc2gob3V0cHV0KTsNCj4gKwl9DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyBpZ3RfcGxhbmVfdCAq
aWd0X3BpcGVfZ2V0X3BsYW5lKGlndF9waXBlX3QgKnBpcGUsIGludCBwbGFuZV9pZHgpDQo+ICB7
DQo+ICAJaWd0X3JlcXVpcmVfZihwbGFuZV9pZHggPj0gMCAmJiBwbGFuZV9pZHggPCBwaXBlLT5u
X3BsYW5lcywNCj4gQEAgLTM3NjYsNiArMzc3NSw3IEBAIHZvaWQgaWd0X291dHB1dF9vdmVycmlk
ZV9tb2RlKGlndF9vdXRwdXRfdCAqb3V0cHV0LCBjb25zdCBkcm1Nb2RlTW9kZUluZm8gKm1vZGUp
DQo+ICAJb3V0cHV0LT51c2Vfb3ZlcnJpZGVfbW9kZSA9ICEhbW9kZTsNCj4gIA0KPiAgCWlmIChw
aXBlKSB7DQo+ICsJCWlndF9kZWJ1Zygib3ZlcnJpZGluZyBwaXBlIG1vZGUgaW4gJXMgd2F5XG4i
LCBvdXRwdXQtPmRpc3BsYXktPmlzX2F0b21pYyA/ICJhdG9taWMiIDogImxlZ2FjeSIpOw0KPiAg
CQlpZiAob3V0cHV0LT5kaXNwbGF5LT5pc19hdG9taWMpDQo+ICAJCQlpZ3RfcGlwZV9vYmpfcmVw
bGFjZV9wcm9wX2Jsb2IocGlwZSwgSUdUX0NSVENfTU9ERV9JRCwgaWd0X291dHB1dF9nZXRfbW9k
ZShvdXRwdXQpLCBzaXplb2YoKm1vZGUpKTsNCj4gIAkJZWxzZQ0KPiBAQCAtMzc3Myw2ICszNzgz
LDE2IEBAIHZvaWQgaWd0X291dHB1dF9vdmVycmlkZV9tb2RlKGlndF9vdXRwdXRfdCAqb3V0cHV0
LCBjb25zdCBkcm1Nb2RlTW9kZUluZm8gKm1vZGUpDQo+ICAJfQ0KPiAgfQ0KPiAgDQo+ICt2b2lk
IGlndF9vdXRwdXRfY2xvbmVfcGlwZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCwgZW51bSBwaXBlIHBp
cGUpDQo+ICt7DQo+ICsJaWd0X2Rpc3BsYXlfdCAqZGlzcGxheSA9IG91dHB1dC0+ZGlzcGxheTsN
Cj4gKwl1aW50MzJfdCBjdXJyZW50X2Nsb25lcyA9IGRpc3BsYXktPnBpcGVzW3BpcGVdLm91dHB1
dHM7DQo+ICsNCj4gKwlpZ3Rfb3V0cHV0X3NldF9waXBlKG91dHB1dCwgcGlwZSk7DQo+ICsNCj4g
KwlkaXNwbGF5LT5waXBlc1twaXBlXS5vdXRwdXRzIHw9IGN1cnJlbnRfY2xvbmVzOw0KPiArfQ0K
PiArDQo+ICAvKg0KPiAgICogaWd0X291dHB1dF9zZXRfcGlwZToNCj4gICAqIEBvdXRwdXQ6IFRh
cmdldCBvdXRwdXQgZm9yIHdoaWNoIHRoZSBwaXBlIGlzIGJlaW5nIHNldCB0bw0KPiBAQCAtMzc4
OSwxMSArMzgwOSwxNSBAQCB2b2lkIGlndF9vdXRwdXRfc2V0X3BpcGUoaWd0X291dHB1dF90ICpv
dXRwdXQsIGVudW0gcGlwZSBwaXBlKQ0KPiAgDQo+ICAJaWd0X2Fzc2VydChvdXRwdXQtPm5hbWUp
Ow0KPiAgDQo+IC0JaWYgKG91dHB1dC0+cGVuZGluZ19waXBlICE9IFBJUEVfTk9ORSkNCj4gKwlp
ZiAob3V0cHV0LT5wZW5kaW5nX3BpcGUgIT0gUElQRV9OT05FKSB7DQo+ICAJCW9sZF9waXBlID0g
aWd0X291dHB1dF9nZXRfZHJpdmluZ19waXBlKG91dHB1dCk7DQo+ICsJCW9sZF9waXBlLT5vdXRw
dXRzICY9IH4oMSA8PCBpZ3Rfb3V0cHV0X2lkeChvdXRwdXQpKTsNCj4gKwl9DQo+ICANCj4gLQlp
ZiAocGlwZSAhPSBQSVBFX05PTkUpDQo+ICsJaWYgKHBpcGUgIT0gUElQRV9OT05FKSB7DQo+ICAJ
CXBpcGVfb2JqID0gJmRpc3BsYXktPnBpcGVzW3BpcGVdOw0KPiArCQlwaXBlX29iai0+b3V0cHV0
cyA9ICgxIDw8IGlndF9vdXRwdXRfaWR4KG91dHB1dCkpOw0KPiArCX0NCj4gIA0KPiAgCUxPRyhk
aXNwbGF5LCAiJXM6IHNldF9waXBlKCVzKVxuIiwgaWd0X291dHB1dF9uYW1lKG91dHB1dCksDQo+
ICAJICAgIGttc3Rlc3RfcGlwZV9uYW1lKHBpcGUpKTsNCj4gZGlmZiAtLWdpdCBhL2xpYi9pZ3Rf
a21zLmggYi9saWIvaWd0X2ttcy5oDQo+IGluZGV4IGNhY2M2YjkwLi42NzY4MzliYiAxMDA2NDQN
Cj4gLS0tIGEvbGliL2lndF9rbXMuaA0KPiArKysgYi9saWIvaWd0X2ttcy5oDQo+IEBAIC0zNTQs
NiArMzU0LDggQEAgc3RydWN0IGlndF9waXBlIHsNCj4gIAl1aW50MzJfdCBjcnRjX2lkOw0KPiAg
DQo+ICAJaW50MzJfdCBvdXRfZmVuY2VfZmQ7DQo+ICsNCj4gKwl1aW50MzJfdCBvdXRwdXRzOw0K
PiAgfTsNCj4gIA0KPiAgdHlwZWRlZiBzdHJ1Y3Qgew0KPiBAQCAtNDExLDYgKzQxMyw4IEBAIGNv
bnN0IGNoYXIgKmlndF9vdXRwdXRfbmFtZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCk7DQo+ICBkcm1N
b2RlTW9kZUluZm8gKmlndF9vdXRwdXRfZ2V0X21vZGUoaWd0X291dHB1dF90ICpvdXRwdXQpOw0K
PiAgdm9pZCBpZ3Rfb3V0cHV0X292ZXJyaWRlX21vZGUoaWd0X291dHB1dF90ICpvdXRwdXQsIGNv
bnN0IGRybU1vZGVNb2RlSW5mbyAqbW9kZSk7DQo+ICB2b2lkIGlndF9vdXRwdXRfc2V0X3BpcGUo
aWd0X291dHB1dF90ICpvdXRwdXQsIGVudW0gcGlwZSBwaXBlKTsNCj4gK3ZvaWQgaWd0X291dHB1
dF9jbG9uZV9waXBlKGlndF9vdXRwdXRfdCAqb3V0cHV0LCBlbnVtIHBpcGUgcGlwZSk7DQo+ICsN
Cj4gIGlndF9wbGFuZV90ICppZ3Rfb3V0cHV0X2dldF9wbGFuZShpZ3Rfb3V0cHV0X3QgKm91dHB1
dCwgaW50IHBsYW5lX2lkeCk7DQo+ICBpZ3RfcGxhbmVfdCAqaWd0X291dHB1dF9nZXRfcGxhbmVf
dHlwZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCwgaW50IHBsYW5lX3R5cGUpOw0KPiAgaW50IGlndF9v
dXRwdXRfY291bnRfcGxhbmVfdHlwZShpZ3Rfb3V0cHV0X3QgKm91dHB1dCwgaW50IHBsYW5lX3R5
cGUpOw0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0K
PiBpZ3QtZGV2IG1haWxpbmcgbGlzdA0KPiBpZ3QtZGV2QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lndC1kZXYN
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
