Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF306B50C4
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2019 16:52:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 572C06ECC1;
	Tue, 17 Sep 2019 14:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CE896ECC1
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Sep 2019 14:52:24 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Sep 2019 07:52:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,516,1559545200"; d="scan'208";a="193768427"
Received: from mseifert-mobl.ger.corp.intel.com (HELO [10.252.54.177])
 ([10.252.54.177])
 by FMSMGA003.fm.intel.com with ESMTP; 17 Sep 2019 07:52:22 -0700
To: Manasi Navare <manasi.d.navare@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190909034325.20006-1-manasi.d.navare@intel.com>
 <20190909034325.20006-3-manasi.d.navare@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <da60e91e-798a-5b73-afa6-f6eb75ef0b9b@linux.intel.com>
Date: Tue, 17 Sep 2019 16:52:21 +0200
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
VFJBTlNDT0RFUl9DOgo+ICsJCW1hc3Rlcl9zZWxlY3QgPSAzOwo+ICsJCWJyZWFrOwo+ICsJY2Fz
ZSBUUkFOU0NPREVSX0VEUDoKPiArCWRlZmF1bHQ6Cj4gKwkJbWFzdGVyX3NlbGVjdCA9IDA7Cj4g
KwkJYnJlYWs7Cj4gKwl9CmRlZmF1bHQgc2hvdWxkIHVzZSBNSVNTSU5HX0NBU0UoKSBPdGhlcndp
c2UgbG9va3MgZ29vZC4KPiArCS8qIFNldCB0aGUgbWFzdGVyIHNlbGVjdCBiaXRzIGZvciBUcmFu
YXNjb2RlciBQb3J0IFN5bmMgKi8KPiArCXRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsID0gKFBPUlRf
U1lOQ19NT0RFX01BU1RFUl9TRUxFQ1QobWFzdGVyX3NlbGVjdCkgJgo+ICsJCQkJICAgUE9SVF9T
WU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLKSA8PAo+ICsJCVBPUlRfU1lOQ19NT0RFX01BU1RF
Ul9TRUxFQ1RfU0hJRlQ7Cj4gKwkvKiBFbmFibGUgVHJhbnNjb2RlciBQb3J0IFN5bmMgKi8KPiAr
CXRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsIHw9IFBPUlRfU1lOQ19NT0RFX0VOQUJMRTsKPiArCj4g
KwlJOTE1X1dSSVRFKFRSQU5TX0RESV9GVU5DX0NUTDIoY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29k
ZXIpLAo+ICsJCSAgIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKPiArfQo+ICsKPiAgc3RhdGlj
IHZvaWQgaW50ZWxfdXBkYXRlX3BpcGVfY29uZmlnKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpvbGRfY3J0Y19zdGF0ZSwKPiAgCQkJCSAgICAgY29uc3Qgc3RydWN0IGludGVsX2NydGNf
c3RhdGUgKm5ld19jcnRjX3N0YXRlKQo+ICB7Cj4gQEAgLTY0NDgsNiArNjQ4OCw5IEBAIHN0YXRp
YyB2b2lkIGhhc3dlbGxfY3J0Y19lbmFibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKnBpcGVf
Y29uZmlnLAo+ICAJaWYgKCF0cmFuc2NvZGVyX2lzX2RzaShjcHVfdHJhbnNjb2RlcikpCj4gIAkJ
aW50ZWxfc2V0X3BpcGVfdGltaW5ncyhwaXBlX2NvbmZpZyk7Cj4gIAo+ICsJaWYgKElOVEVMX0dF
TihkZXZfcHJpdikgPj0gMTEpCj4gKwkJaWNsX2VuYWJsZV90cmFuc19wb3J0X3N5bmMocGlwZV9j
b25maWcpOwo+ICsKPiAgCWludGVsX3NldF9waXBlX3NyY19zaXplKHBpcGVfY29uZmlnKTsKPiAg
Cj4gIAlpZiAoY3B1X3RyYW5zY29kZXIgIT0gVFJBTlNDT0RFUl9FRFAgJiYKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
