Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA6CD936D
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 16:13:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70BDF6E0A0;
	Wed, 16 Oct 2019 14:13:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1D16E0A0
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 14:13:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 07:13:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="186161315"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
 by orsmga007.jf.intel.com with ESMTP; 16 Oct 2019 07:13:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 07:13:29 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Oct 2019 07:13:29 -0700
Received: from bgsmsx153.gar.corp.intel.com (10.224.23.4) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 16 Oct 2019 07:13:29 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX153.gar.corp.intel.com ([169.254.2.14]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 19:43:27 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v1 6/6] drm/i915/display: Reduce blanking to support
 4k60@10bpp for LSPCON
Thread-Index: AQHVhAkFQykNvI3FvkeCPJwO+NxZu6dc4sMAgABe7RD//6zsAIAAXMaA
Date: Wed, 16 Oct 2019 14:13:26 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F82274584@BGSMSX104.gar.corp.intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
 <20191016103249.32121-7-uma.shankar@intel.com>
 <20191016131336.GM1208@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F822744FC@BGSMSX104.gar.corp.intel.com>
 <20191016135600.GP1208@intel.com>
In-Reply-To: <20191016135600.GP1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMTUwYzBmNjItNjI0Yi00YzkwLTk4ZjYtOWVlZWUyM2RjY2Q3IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoicmoxS09KNEtFS1FKNll5VFdLbmo4U25RTG96S2w2VGhiY0hid2ZVQ0ozdDVhRlRwZmNZR0hTZ0crM2tYS1IrcSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v1 6/6] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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

Cgo+PiA+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPj4gPkZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4+ID5TZW50OiBXZWRuZXNkYXksIE9j
dG9iZXIgMTYsIDIwMTkgNjo0NCBQTQo+PiA+VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPgo+PiA+Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE11biwg
R3dhbi1neWVvbmcgPGd3YW4tCj4+ID5neWVvbmcubXVuQGludGVsLmNvbT47IFNoYXJtYSwgU2hh
c2hhbmsgPHNoYXNoYW5rLnNoYXJtYUBpbnRlbC5jb20+Cj4+ID5TdWJqZWN0OiBSZTogW3YxIDYv
Nl0gZHJtL2k5MTUvZGlzcGxheTogUmVkdWNlIGJsYW5raW5nIHRvIHN1cHBvcnQKPj4gPjRrNjBA
MTBicHAgZm9yIExTUENPTgo+PiA+Cj4+ID5PbiBXZWQsIE9jdCAxNiwgMjAxOSBhdCAwNDowMjo0
OVBNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToKPj4gPj4gQmxhbmtpbmcgbmVlZHMgdG8gYmUg
cmVkdWNlZCB0byBpbmNvcnBvcmF0ZSBEUCBhbmQgSERNSSB0aW1pbmcvbGluawo+PiA+PiBiYW5k
d2lkdGggbGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtANjAgYXQgMTAgYnBwKS4gRFAgY2Fu
IGRyaXZlCj4+ID4+IDE3LjI4R2JzIHdoaWxlIDRrIG1vZGVzIChWSUM5NyBldGMpIGF0IDEwIGJw
cCByZXF1aXJlZCAxNy44IEdicHMuCj4+ID4+IFRoaXMgd2lsbCBjYXVzZSBtb2RlIHRvIGJsYW5r
IG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0aGUKPj4gPj4gYmFjayBwb3JjaCBh
bmQgZnJvbnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPj4gPj4KPj4gPj4gU2ln
bmVkLW9mZi1ieTogVW1hIFNoYW5rYXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPj4gPj4gLS0t
Cj4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgfCAxNyArKysr
KysrKysrKysrKysrKwo+PiA+PiAgMSBmaWxlIGNoYW5nZWQsIDE3IGluc2VydGlvbnMoKykKPj4g
Pj4KPj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYwo+PiA+PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+
PiBpbmRleCBkOTI3NzdiZDNiZWQuLmExMmI2OTE2MDIzZCAxMDA2NDQKPj4gPj4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jCj4+ID4+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+PiA+PiBAQCAtNTk3LDggKzU5NywxMCBA
QCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29ubmVjdG9yCj4+ID4+ICpjb25uZWN0
b3IsICB7Cj4+ID4+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGludGVsX2F0dGFjaGVk
X2RwKGNvbm5lY3Rvcik7Cj4+ID4+ICAJc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29u
bmVjdG9yID0KPj4gPj4gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4+ID4+ICsJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmludGVsX2VuY29kZXIgPQo+PiA+PiAraW50ZWxfYXR0YWNoZWRf
ZW5jb2Rlcihjb25uZWN0b3IpOwo+PiA+PiAgCXN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICpmaXhl
ZF9tb2RlID0gaW50ZWxfY29ubmVjdG9yLQo+PiA+PnBhbmVsLmZpeGVkX21vZGU7Cj4+ID4+ICAJ
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRl
dik7Cj4+ID4+ICsJc3RydWN0IGludGVsX2xzcGNvbiAqbHNwY29uID0KPj4gPj4gK2VuY190b19p
bnRlbF9sc3Bjb24oJmludGVsX2VuY29kZXItPmJhc2UpOwo+PiA+PiAgCWludCB0YXJnZXRfY2xv
Y2sgPSBtb2RlLT5jbG9jazsKPj4gPj4gIAlpbnQgbWF4X3JhdGUsIG1vZGVfcmF0ZSwgbWF4X2xh
bmVzLCBtYXhfbGlua19jbG9jazsKPj4gPj4gIAlpbnQgbWF4X2RvdGNsazsKPj4gPj4gQEAgLTYy
MCw2ICs2MjIsMjEgQEAgaW50ZWxfZHBfbW9kZV92YWxpZChzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcgo+
KmNvbm5lY3RvciwKPj4gPj4gIAkJdGFyZ2V0X2Nsb2NrID0gZml4ZWRfbW9kZS0+Y2xvY2s7Cj4+
ID4+ICAJfQo+PiA+Pgo+PiA+PiArCS8qCj4+ID4+ICsJICogUmVkdWNpbmcgQmxhbmtpbmcgdG8g
aW5jb3Jwb3JhdGUgRFAgYW5kIEhETUkgdGltaW5nL2xpbmsgYmFuZHdpZHRoCj4+ID4+ICsJICog
bGltaXRhdGlvbnMgZm9yIENFQSBtb2RlcyAoNGtANjAgYXQgMTAgYnBwKS4gRFAgY2FuIGRyaXZl
IDE3LjI4R2JzCj4+ID4+ICsJICogd2hpbGUgNGsgbW9kZXMgKFZJQzk3IGV0YykgYXQgMTAgYnBw
IHJlcXVpcmVkIDE3LjggR2Jwcy4gVGhpcyB3aWxsCj4+ID4+ICsJICogY2F1c2UgbW9kZSB0byBi
bGFuayBvdXQuIFJlZHVjZWQgSHRvdGFsIGJ5IHNob3J0ZW5pbmcgdGhlIGJhY2sgcG9yY2gKPj4g
Pj4gKwkgKiBhbmQgZnJvbnQgcG9yY2ggd2l0aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPj4gPj4g
KwkgKi8KPj4gPj4gKwlpZiAobHNwY29uLT5hY3RpdmUgJiYgbHNwY29uLT5oZHJfc3VwcG9ydGVk
ICYmCj4+ID4+ICsJICAgIG1vZGUtPmNsb2NrID4gNTcwMDAwKSB7Cj4+ID4+ICsJCW1vZGUtPmNs
b2NrID0gNTcwMDAwOwo+PiA+PiArCQltb2RlLT5odG90YWwgLT0gMTgwOwo+PiA+PiArCQltb2Rl
LT5oc3luY19zdGFydCAtPSA3MjsKPj4gPj4gKwkJbW9kZS0+aHN5bmNfZW5kIC09IDcyOwo+PiA+
PiArCX0KPj4gPgo+PiA+SSBkb24ndCB0aGluayB3ZSB3YW50IHRoZXNlIGtpbmQgb2YgaGFja3Mu
IEVpdGhlciB0aGUgbW9kZSB3b3JrcyBvciBpdCBkb2Vzbid0Lgo+Pgo+PiBIaSBWaWxsZSwKPj4g
WWVhaCB0aGlzIGlzIG5vdCBpZGVhbC4gQnV0IGluIG9yZGVyIHRvIGVuYWJsZSBIRFIgd2hpY2gg
aXMgbW9zdGx5Cj4+IDEwYml0IGNvbnRlbnQgb24gTHNwY29uIGJhc2VkCj4+IEdlbjkgZGV2aWNl
cyB0aGVyZSBhcmUgbGltaXRhdGlvbnMgb24gYmFuZHdpZHRoIHNpZGUgb24gRFAuIFNvIHdpdGgK
Pj4gdGhhdCBsaW1pdCwgd2UgY2Fubm90IGRyaXZlIDEwYml0IGNvbnRlbnQgYXQgNGtANjAuIEJ1
dCBwcmFjdGljYWxseSB3ZQo+PiBjYW4gZ2V0IHRoaXMgd29ya2luZyBhbmQgYWJsZSB0byBkcml2
ZSB0aGUgc2luayB3aXRob3V0IGFueSByZWFsCj4+IGlzc3VlcyB3aXRoIGFib3ZlIHRpbWluZyBh
ZGp1c3RtZW50cy4gVGhpcyBnZXRzIGVuYWJsZWQgaWYgZmlybXdhcmUgYWR2ZXJ0aXNlIEhEUgo+
Y2FwYWJpbGl0aWVzLCAgc28gaW4gY2FzZSBhIHZlbmRvciBkb2Vzbid0IHdhbnQgdGhpcywgaXQg
Y2FuIGJlIGRpc2FibGVkIGluIHRoZSBMU1BDT04KPmZpcm13YXJlLgo+Pgo+PiBJIHRlc3RlZCBv
biBIRE1JIGFuYWx5emVyIGFuZCBtdWx0aXBsZSBzaW5rcyBhbmQgYWxzbyBkYXRhIGZyb20gb3Ro
ZXIKPj4gT1MgdGVhbXMgc3VnZ2VzdCB0aGF0IHRoaXMgY29uZmlndXJhdGlvbiB3b3JrcyBhbmQg
aXMgZW5hYmxlZCBpbiBzb21lIG9mIHRoZQo+cHJvZHVjdHMgYXMgd2VsbC4KPj4KPj4gRGVmaW5p
dGVseSBub3QgaWRlYWwsIGJ1dCBhdCBsZWFzdCB3ZSBnZXQgSERSIHdvcmtpbmcgb24gR2VuOSBk
ZXZpY2VzCj4+IHdpdGggdGhpcywgd2l0aCBhbiBvcHRpb24gb2YgZGlzYWJsaW5nIGlmIG5vdCBy
ZXF1aXJlZC4gVGhpcyBjYW4gYmUgbW9yZSBvZiBxdWlyayBraW5kCj5vZiB0aGluZy4KPj4KPj4g
V2hhdCBkbyB5b3Ugc3VnZ2VzdC4KPgo+SWYgdXNlciB3YW50cyBIRFIgdXNlciBvdmVycmlkZXMg
dGhlIG1vZGUgbWFudWFsbHkuCgpZZWFoIHRoYXQgY2FuIGFsc28gYmUgYW4gb3B0aW9uLiBXZSBj
YW4gdGVsbCBwcm9kdWN0IHRlYW1zIHRvIGhhdmUgdGhlc2UgaGFja3Mgb24gdGhlCnVzZXJzcGFj
ZSBzaWRlLiBXZSBqdXN0IG5lZWQgdG8gZWR1Y2F0ZSB0aGVtIG9mIHRoZXNlLgoKVGhhbmtzIFZp
bGxlIGZvciB5b3VyIGlucHV0cy4gV2lsbCBkcm9wIHRoaXMgZnJvbSB0aGUgc2VyaWVzLgoKUmVn
YXJkcywKVW1hIFNoYW5rYXIKCj4tLQo+VmlsbGUgU3lyasOkbMOkCj5JbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
