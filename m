Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 767377BC71
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2019 11:01:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7F6989B9F;
	Wed, 31 Jul 2019 09:01:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90CAF89B9F
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2019 09:01:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 31 Jul 2019 02:01:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,329,1559545200"; d="scan'208";a="191195380"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2019 02:00:59 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.174.50])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6V90wgr014691; Wed, 31 Jul 2019 10:00:58 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190730230743.19542-1-daniele.ceraolospurio@intel.com>
 <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
Date: Wed, 31 Jul 2019 11:00:57 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z5sbbvfmxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190730230743.19542-2-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH v2 2/5] drm/i915/uc: Move uC WOPCM setup in
 uc_init_hw
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAzMSBKdWwgMjAxOSAwMTowNzo0MCArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gVGhlIHJlZ2lz
dGVyIHdlIHdyaXRlIGFyZSBub3QgV09QQ00gcmVncyBidXQgdUMgb25lcyByZWxhdGVkIHRvIGhv
dwo+IEd1QyBhbmQgSHVDIGFyZSBnb2luZyB0byB1c2UgdGhlIFdPUENNLCBzbyBpdCBtYWtlcyBs
b2dpY2FsIHNlbnNlCj4gZm9yIHRoZW0gdG8gYmUgcHJvZ3JhbW1lZCBhcyBwYXJ0IG9mIHVjX2lu
aXRfaHcuIFRoZSBXT1BDTSBtYXAgb24gdGhlCj4gb3RoZXIgc2lkZSBpcyBub3QgdUMtc3BlY2lm
aWMgKGFsdGhvdWdoIHRoYXQgaXMgb3VyIG1haW4gdXNlLWNhc2UpLCBzbwo+IGtlZXAgdGhhdCBz
ZXBhcmF0ZS4KPgo+IHYyOiBtb3ZlIHdyaXRlX2FuZF92ZXJpZnkgdG8gdW5jb3JlLCBmaXggbG9n
LCByZS11c2UgZXJyX291dCB0YWcsCj4gICAgIGFkZCBpbnRlbF93b3BjbV9ndWNfYmFzZSwgZml4
IGxvZwo+Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsZSBDZXJhb2xvIFNwdXJpbyA8ZGFuaWVsZS5j
ZXJhb2xvc3B1cmlvQGludGVsLmNvbT4KPiBDYzogTWljaGFsIFdhamRlY3prbyA8bWljaGFsLndh
amRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29u
LmNvLnVrPgo+IC0tLQoKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUu
aAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5oCj4gQEAgLTM5Myw2
ICszOTMsMTggQEAgc3RhdGljIGlubGluZSB2b2lkIGludGVsX3VuY29yZV9ybXdfZncoc3RydWN0
ICAKPiBpbnRlbF91bmNvcmUgKnVuY29yZSwKPiAgCWludGVsX3VuY29yZV93cml0ZV9mdyh1bmNv
cmUsIHJlZywgdmFsKTsKPiAgfQo+ICtzdGF0aWMgaW5saW5lIGludCBpbnRlbF91bmNvcmVfd3Jp
dGVfYW5kX3ZlcmlmeShzdHJ1Y3QgaW50ZWxfdW5jb3JlICAKPiAqdW5jb3JlLAo+ICsJCQkJCQlp
OTE1X3JlZ190IHJlZywgdTMyIHZhbCwKPiArCQkJCQkJdTMyIG1hc2ssIHUzMiBleHBlY3RlZF92
YWwpCj4gK3sKPiArCXUzMiByZWdfdmFsOwo+ICsKPiArCWludGVsX3VuY29yZV93cml0ZSh1bmNv
cmUsIHJlZywgdmFsKTsKPiArCXJlZ192YWwgPSBpbnRlbF91bmNvcmVfcmVhZCh1bmNvcmUsIHJl
Zyk7Cj4gKwo+ICsJcmV0dXJuIChyZWdfdmFsICYgbWFzaykgIT0gZXhwZWN0ZWRfdmFsID8gLUVJ
TlZBTCA6IDA7Cj4gK30KCm5pdDogSSdtIG5vdCBzdXJlIHRoYXQgLUVJTlZBTCBpcyB0aGUgYmVz
dCBjaG9pY2UgKG5vdCBzdXJlIGFib3V0Ci1FTk9EQVRBIG9yIC1FTk9LRVkgZWl0aGVyKSB0aGF0
J3Mgd2h5IEkgd2FudGVkIHRvIHVzZSBib29sIDspCgpSZXZpZXdlZC1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
