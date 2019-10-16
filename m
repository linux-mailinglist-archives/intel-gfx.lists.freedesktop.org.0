Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B8CAD93A8
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 16:21:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F4876E0B9;
	Wed, 16 Oct 2019 14:21:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D3A6E0B9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 14:21:35 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 07:21:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,304,1566889200"; d="scan'208";a="347438232"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 16 Oct 2019 07:21:34 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 16 Oct 2019 07:21:34 -0700
Received: from fmsmsx604.amr.corp.intel.com (10.18.126.84) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Oct 2019 07:21:33 -0700
Received: from bgsmsx155.gar.corp.intel.com (10.224.48.102) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 16 Oct 2019 07:21:33 -0700
Received: from bgsmsx104.gar.corp.intel.com ([169.254.5.228]) by
 BGSMSX155.gar.corp.intel.com ([169.254.12.52]) with mapi id 14.03.0439.000;
 Wed, 16 Oct 2019 19:51:30 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [v1 0/6] Enable HDR on MCA LSPCON based Gen9 devices
Thread-Index: AQHVhAj6+fiTibaguUuyCHIvCTLXtqdc4+gAgABswiA=
Date: Wed, 16 Oct 2019 14:21:30 +0000
Message-ID: <E7C9878FBA1C6D42A1CA3F62AEB6945F822745CD@BGSMSX104.gar.corp.intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
 <20191016131742.GO1208@intel.com>
In-Reply-To: <20191016131742.GO1208@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMGU2ZjQ3OGMtNDZmZC00Y2E3LWEwMjUtODIyNDE0NTU5ZDFjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiRzNDaVJPXC9KSFBsc3kyNHpnT3FCRFF2b2ZSZ3IwVDNnWldZdXBSUU8wUGIrcWV2OXVUSlEyc2Nza050TnBaaUwifQ==
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [v1 0/6] Enable HDR on MCA LSPCON based Gen9 devices
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

Cgo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0KPkZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmls
bGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj5TZW50OiBXZWRuZXNkYXksIE9jdG9iZXIgMTYs
IDIwMTkgNjo0OCBQTQo+VG86IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPgo+
Q2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IE11biwgR3dhbi1neWVvbmcgPGd3
YW4tCj5neWVvbmcubXVuQGludGVsLmNvbT47IFNoYXJtYSwgU2hhc2hhbmsgPHNoYXNoYW5rLnNo
YXJtYUBpbnRlbC5jb20+Cj5TdWJqZWN0OiBSZTogW3YxIDAvNl0gRW5hYmxlIEhEUiBvbiBNQ0Eg
TFNQQ09OIGJhc2VkIEdlbjkgZGV2aWNlcwo+Cj5PbiBXZWQsIE9jdCAxNiwgMjAxOSBhdCAwNDow
Mjo0M1BNICswNTMwLCBVbWEgU2hhbmthciB3cm90ZToKPj4gR2VuOSBoYXJkd2FyZSBzdXBwb3J0
cyBIRE1JMi4wIHRocm91Z2ggTFNQQ09OIGNoaXBzLiBFeHRlbmRpbmcgSERSCj4+IHN1cHBvcnQg
Zm9yIE1DQSBMU1BDT04gYmFzZWQgR0VOOSBkZXZpY2VzLgo+Cj5Db3VwbGUgb2YgZ2VuZXJhbCBj
b21tZW50cyBhYm91dCB0aGUgTFNQQ09OIHN0dWZmLgo+Cj5hKSB3ZSBuZWVkIGluZm9mcmFtZSBy
ZWFkb3V0IHN1cHBvcnQKCldlIGxhY2sgdGhhdCBpbiBnZW5lcmFsIGZvciBhbGwgdGhlIERQIFNE
UCBzdHVmZi4gRGlzY3Vzc2VkIHdpdGggR0cKYW5kIGhvcGVmdWxseSBoZSBoYXMgcGxhbnMgZm9y
IERQIHN0YXRlIHJlYWRvdXQuCgo+Yikgd2UgbmVlZCB0byBzdG9wIHNlbmRpbmcgaW5mb2ZyYW1l
cyB0byBEVkkgc2lua3MKClN1cmUsIHdpbGwgd29yayBvbiB0aGlzLgoKPmMpIHdlIG5lZWQgdG8g
ZmlndXJlIG91dCBob3cgdG8gZGlzYWJsZSB0aGUgQVZJIGluZm9mcmFtZQo+ICAgb25jZSBlbmFi
bGVkIChpZiBpdCBkb2Vzbid0IGdldCBhdXRvbWFnaWNhbGx5IGRpc2FibGVkCj4gICB3aGVuIGRv
IGEgbW9kZXNldCksIGJlY2F1c2Ugb3RoZXJ3aXNlIHdoZW4gd2Ugc3dpdGNoCj4gICBkaXNwbGF5
cyBmcm9tIEhETUkgdG8gRFZJIHdlIHdpbGwgc3RpbGwgc2VuZCB0aGUgaW5mb2ZyYW1lCj4gICB0
byB0aGUgRFZJIHNpbmsKCk9rLCB3aWxsICB3b3JrIG9uIHRvIGhhbmRsZSB0aGlzLgoKPkkgdGhp
bmsgdGhvc2Ugc2hvdWxkIGJlIGZpeGVkIGZpcnN0IGJlZm9yZSB3ZSBhZGQgbW9yZSBpbmZvZnJh
bWVzIHRvIHRoZSBtaXguCj4KPkFsc28gaWYgd2UgdXNlIHRoZSBTRFAgc3R1ZmYgZm9yIHRoZSBI
RFIgaW5mb2ZyYW1lIHdlIHNob3VsZCBqdXN0IGludGVncmF0ZSBpdCBwcm9wZXJseQo+d2l0aCB0
aGUgYWxyZWFkeSBleGlzdGluZyBEUCBIRFIgbWV0YWRhdGEgc3R1ZmYuIEFuZCB3ZSBuZWVkIHRv
IGFkZCByZWFkb3V0IHN1cHBvcnQKPmZvciB0aGF0LgoKU3VyZSwgd2lsbCBkaXNjdXNzIHdpdGgg
R0cgdG8gZ2V0IHRoZSBzdGF0ZSByZWFkb3V0IGZvciBEUCBTRFAuCgo+LS0KPlZpbGxlIFN5cmrD
pGzDpAo+SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
