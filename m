Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2236D4C
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2019 09:26:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66EE289838;
	Thu,  6 Jun 2019 07:26:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB8EC89801;
 Thu,  6 Jun 2019 07:26:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Jun 2019 00:26:24 -0700
X-ExtLoop1: 1
Received: from irsmsx151.ger.corp.intel.com ([163.33.192.59])
 by orsmga001.jf.intel.com with ESMTP; 06 Jun 2019 00:26:22 -0700
Received: from irsmsx156.ger.corp.intel.com (10.108.20.68) by
 IRSMSX151.ger.corp.intel.com (163.33.192.59) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Thu, 6 Jun 2019 08:26:22 +0100
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.227]) by
 IRSMSX156.ger.corp.intel.com ([169.254.3.125]) with mapi id 14.03.0415.000;
 Thu, 6 Jun 2019 08:26:22 +0100
From: "Ser, Simon" <simon.ser@intel.com>
To: "Hiler, Arkadiusz" <arkadiusz.hiler@intel.com>,
 "guillaume.tucker@collabora.com" <guillaume.tucker@collabora.com>
Thread-Topic: [igt-dev] [PATCH i-g-t 2/4] gitlab-ci: add libatomic to Fedora
 docker image
Thread-Index: AQHVGgM3AQkiPUtt6E276Jj4oMmeXKaOLC0AgAABUwA=
Date: Thu, 6 Jun 2019 07:26:20 +0000
Message-ID: <b6543a8d7086abe7a15a5fe689de6ead0fbe62f1.camel@intel.com>
References: <73773a5061681c502db373df698d2d24b4ad267a.1559562608.git.guillaume.tucker@collabora.com>
 <11db9a1438142d413ad228e6d1953463dfbb9236.1559562608.git.guillaume.tucker@collabora.com>
 <20190606072140.rgmp6twpi4z5mvjk@ahiler-desk1.fi.intel.com>
In-Reply-To: <20190606072140.rgmp6twpi4z5mvjk@ahiler-desk1.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.237.72.181]
Content-ID: <DCEA34DA10CB084BA265879F9E7E1719@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 2/4] gitlab-ci: add
 libatomic to Fedora docker image
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
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDE5LTA2LTA2IGF0IDEwOjIxICswMzAwLCBBcmthZGl1c3ogSGlsZXIgd3JvdGU6
DQo+IE9uIE1vbiwgSnVuIDAzLCAyMDE5IGF0IDEyOjU0OjQ4UE0gKzAxMDAsIEd1aWxsYXVtZSBU
dWNrZXIgd3JvdGU6DQo+ID4gQWRkIGxpYmF0b21pYyB0byB0aGUgRmVkb3JhIGRvY2tlciBpbWFn
ZSBzbyBpdCBjYW4gbGluayBiaW5hcmllcyB0aGF0DQo+ID4gdXNlIF9fYXRvbWljXyogZnVuY3Rp
b25zLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEd1aWxsYXVtZSBUdWNrZXIgPGd1aWxsYXVt
ZS50dWNrZXJAY29sbGFib3JhLmNvbT4NCj4gPiAtLS0NCj4gPiAgRG9ja2VyZmlsZS5mZWRvcmEg
fCAyICstDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigt
KQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9Eb2NrZXJmaWxlLmZlZG9yYSBiL0RvY2tlcmZpbGUu
ZmVkb3JhDQo+ID4gaW5kZXggNjY4NmU1ODc2MTNkLi5jODRiNDEyYjA3MjMgMTAwNjQ0DQo+ID4g
LS0tIGEvRG9ja2VyZmlsZS5mZWRvcmENCj4gPiArKysgYi9Eb2NrZXJmaWxlLmZlZG9yYQ0KPiA+
IEBAIC0xLDcgKzEsNyBAQA0KPiA+ICBGUk9NIGZlZG9yYTozMA0KPiA+ICANCj4gPiAgUlVOIGRu
ZiBpbnN0YWxsIC15IFwNCj4gPiAtCWdjYyBmbGV4IGJpc29uIG1lc29uIG5pbmphLWJ1aWxkIHhk
b3Rvb2wgXA0KPiA+ICsJZ2NjIGZsZXggYmlzb24gbGliYXRvbWljIG1lc29uIG5pbmphLWJ1aWxk
IHhkb3Rvb2wgXA0KPiA+ICAJJ3BrZ2NvbmZpZyhsaWJkcm0pJyBcDQo+ID4gIAkncGtnY29uZmln
KHBjaWFjY2VzcyknIFwNCj4gPiAgCSdwa2djb25maWcobGlia21vZCknIFwNCj4gDQo+IFJldmll
d2VkLWJ5OiBBcmthZGl1c3ogSGlsZXIgPGFya2FkaXVzei5oaWxlckBpbnRlbC5jb20+DQo+IA0K
PiBJIHdvbmRlciBob3cgZG9lcyB0aGUgbGliYXRvbWljIGdldHMgaW5zdGFsbGVkIGltcGxpY2l0
bHkgaW4gRGViaWFuLg0KDQpJdCdzIGEgZGVwZW5kZW5jeSBvZiBHQ0MuIFByb2JhYmx5IGEgZ29v
ZCBpZGVhIHRvIGFkZCBpdCBhbnl3YXk/DQoNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18NCj4gaWd0LWRldiBtYWlsaW5nIGxpc3QNCj4gaWd0LWRldkBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pZ3QtZGV2DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZng=
