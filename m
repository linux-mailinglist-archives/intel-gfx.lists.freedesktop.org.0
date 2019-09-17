Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 34213B50C6
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 16:53:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9A76ECC3;
	Tue, 17 Sep 2019 14:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1F0D6ECC3
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 14:52:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 07:52:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="193768526"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.54.177])
 ([10.252.54.177])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2019 07:52:55 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-3-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4ff2f04e-84dc-ea5f-2089-272969582f5d@linux.intel.com>
Date: Tue, 17 Sep 2019 16:52:54 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190909034325.20006-3-manasi.d.navare@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915/display/icl: Enable TRANSCODER
 PORT SYNC for tiled displays across separate ports
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMDktMDktMjAxOSBvbSAwNTo0MyBzY2hyZWVmIE1hbmFzaSBOYXZhcmU6Cj4gSW4gY2FzZSBv
ZiB0aWxlZCBkaXNwbGF5cyB3aGVyZSBkaWZmZXJlbnQgdGlsZXMgYXJlIGRpc3BsYXllZCBhY3Jv
c3MKPiBkaWZmZXJlbnQgcG9ydHMsIHdlIG5lZWQgdG8gc3luY2hyb25pemUgdGhlIHRyYW5zY29k
ZXJzIGludm9sdmVkLgo+IFRoaXMgcGF0Y2ggaW1wbGVtZW50cyB0aGUgdHJhbnNjb2RlciBwb3J0
IHN5bmMgZmVhdHVyZSBmb3IKPiBzeW5jaHJvbml6aW5nIG9uZSBtYXN0ZXIgdHJhbnNjb2RlciB3
aXRoIG9uZSBvciBtb3JlIHNsYXZlCj4gdHJhbnNjb2RlcnMuIFRoaXMgaXMgb25seSBlbmJhbGVk
IGluIHNsYXZlIHRyYW5zY29kZXIKPiBhbmQgdGhlIG1hc3RlciB0cmFuc2NvZGVyIGlzIHVuYXdh
cmUgdGhhdCBpdCBpcyBvcGVyYXRpbmcKPiBpbiB0aGlzIG1vZGUuCj4gVGhpcyBoYXMgYmVlbiB0
ZXN0ZWQgd2l0aCB0aWxlZCBkaXNwbGF5IGNvbm5lY3RlZCB0byBJQ0wuCj4KPiB2NDoKPiBSZWJh
c2UKPiB2MzoKPiAqIENoZWNrIG9mIERQX01TVCBtb3ZlZCB0byBhdG9taWNfY2hlY2sgKE1hYXJ0
ZW4pCj4gdjI6Cj4gKiBEbyBub3QgdXNlIFJNVywganVzdCB3cml0ZSB0byB0aGUgcmVnaXN0ZXIg
aW4gY29tbWl0IChKYW5pIE4pCj4KPiBDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBp
bnRlbC5jb20+Cj4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+Cj4gQ2M6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4g
Q2M6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTog
TWFuYXNpIE5hdmFyZSA8bWFuYXNpLmQubmF2YXJlQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0MyArKysrKysrKysrKysr
KysrKysrKwo+ICAxIGZpbGUgY2hhbmdlZCwgNDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCA4OTQyYzkwNWFl
NjYuLmI4ZjdhOTE5YjZkMyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gQEAgLTQzODAsNiArNDM4MCw0NiBAQCBzdGF0aWMgdm9pZCBpY2xf
c2V0X3BpcGVfY2hpY2tlbihzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiAgCUk5MTVfV1JJVEUo
UElQRV9DSElDS0VOKHBpcGUpLCB0bXApOwo+ICB9Cj4gIAo+ICtzdGF0aWMgdm9pZCBpY2xfZW5h
YmxlX3RyYW5zX3BvcnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSkKPiArewo+ICsJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSB0b19pbnRlbF9jcnRjKGNy
dGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3By
aXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArCXUzMiB0cmFuc19kZGlfZnVuY19jdGwy
X3ZhbDsKPiArCXU4IG1hc3Rlcl9zZWxlY3Q7Cj4gKwo+ICsJLyoKPiArCSAqIENvbmZpZ3VyZSB0
aGUgbWFzdGVyIHNlbGVjdCBhbmQgZW5hYmxlIFRyYW5zY29kZXIgUG9ydCBTeW5jIGZvcgo+ICsJ
ICogU2xhdmUgQ1JUQ3MgdHJhbnNjb2Rlci4KPiArCSAqLwo+ICsJaWYgKGNydGNfc3RhdGUtPm1h
c3Rlcl90cmFuc2NvZGVyID09IElOVkFMSURfVFJBTlNDT0RFUikKPiArCQlyZXR1cm47Cj4gKwo+
ICsJc3dpdGNoIChjcnRjX3N0YXRlLT5tYXN0ZXJfdHJhbnNjb2Rlcikgewo+ICsJY2FzZSBUUkFO
U0NPREVSX0E6Cj4gKwkJbWFzdGVyX3NlbGVjdCA9IDE7Cj4gKwkJYnJlYWs7Cj4gKwljYXNlIFRS
QU5TQ09ERVJfQjoKPiArCQltYXN0ZXJfc2VsZWN0ID0gMjsKPiArCQlicmVhazsKPiArCWNhc2Ug
VFJBTlNDT0RFUl9DOgo+ICsJCW1hc3Rlcl9zZWxlY3QgPSAzOwo+ICsJCWJyZWFrOwpUUkFOU0NP
REVSX0QgYnR3Pwo+ICsJY2FzZSBUUkFOU0NPREVSX0VEUDoKPiArCWRlZmF1bHQ6Cj4gKwkJbWFz
dGVyX3NlbGVjdCA9IDA7Cj4gKwkJYnJlYWs7Cj4gKwl9Cj4gKwkvKiBTZXQgdGhlIG1hc3RlciBz
ZWxlY3QgYml0cyBmb3IgVHJhbmFzY29kZXIgUG9ydCBTeW5jICovCj4gKwl0cmFuc19kZGlfZnVu
Y19jdGwyX3ZhbCA9IChQT1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUKG1hc3Rlcl9zZWxlY3Qp
ICYKPiArCQkJCSAgIFBPUlRfU1lOQ19NT0RFX01BU1RFUl9TRUxFQ1RfTUFTSykgPDwKPiArCQlQ
T1JUX1NZTkNfTU9ERV9NQVNURVJfU0VMRUNUX1NISUZUOwo+ICsJLyogRW5hYmxlIFRyYW5zY29k
ZXIgUG9ydCBTeW5jICovCj4gKwl0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCB8PSBQT1JUX1NZTkNf
TU9ERV9FTkFCTEU7Cj4gKwo+ICsJSTkxNV9XUklURShUUkFOU19ERElfRlVOQ19DVEwyKGNydGNf
c3RhdGUtPmNwdV90cmFuc2NvZGVyKSwKPiArCQkgICB0cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7
Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGludGVsX3VwZGF0ZV9waXBlX2NvbmZpZyhjb25zdCBz
dHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsCj4gIAkJCQkgICAgIGNvbnN0
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkKPiAgewo+IEBAIC02NDQ4
LDYgKzY0ODgsOSBAQCBzdGF0aWMgdm9pZCBoYXN3ZWxsX2NydGNfZW5hYmxlKHN0cnVjdCBpbnRl
bF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKPiAgCWlmICghdHJhbnNjb2Rlcl9pc19kc2koY3B1
X3RyYW5zY29kZXIpKQo+ICAJCWludGVsX3NldF9waXBlX3RpbWluZ3MocGlwZV9jb25maWcpOwo+
ICAKPiArCWlmIChJTlRFTF9HRU4oZGV2X3ByaXYpID49IDExKQo+ICsJCWljbF9lbmFibGVfdHJh
bnNfcG9ydF9zeW5jKHBpcGVfY29uZmlnKTsKPiArCj4gIAlpbnRlbF9zZXRfcGlwZV9zcmNfc2l6
ZShwaXBlX2NvbmZpZyk7Cj4gIAo+ICAJaWYgKGNwdV90cmFuc2NvZGVyICE9IFRSQU5TQ09ERVJf
RURQICYmCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
