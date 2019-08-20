Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 020D19620B
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Aug 2019 16:11:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C746E807;
	Tue, 20 Aug 2019 14:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B5C66E807
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Aug 2019 14:11:02 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 07:10:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="195778368"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by fmsmga001.fm.intel.com with ESMTP; 20 Aug 2019 07:10:51 -0700
Date: Tue, 20 Aug 2019 19:40:18 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190820141018.GF7668@intel.com>
References: <20190820134019.13229-1-jani.nikula@intel.com>
 <20190820134019.13229-3-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190820134019.13229-3-jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/dp: make hdcp2_dp_msg_data
 const
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjAxOS0wOC0yMCBhdCAxNjo0MDoxNyArMDMwMCwgSmFuaSBOaWt1bGEgd3JvdGU6Cj4gSXQn
cyBzdGF0aWMgY29uc3QgZGF0YSwgbWFrZSBpdCBzby4KPiAKPiBDYzogUmFtYWxpbmdhbSBDIDxy
YW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2Ft
LmNAaW50ZWwuY29tPgoKLVJhbQo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwLmMgfCAxMCArKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlv
bnMoKyksIDUgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+IGluZGV4IDBkOGE4YzQ3Mjk2Yi4uOTIxYWQwYTJmN2JhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC01ODIwLDcgKzU4MjAsNyBAQCBz
dHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgewo+ICAJdTMyIHRpbWVvdXQyOyAvKiBBZGRlZCBmb3Ig
bm9uX3BhaXJlZCBzaXR1YXRpb24gKi8KPiAgfTsKPiAgCj4gLXN0YXRpYyBzdHJ1Y3QgaGRjcDJf
ZHBfbXNnX2RhdGEgaGRjcDJfZHBfbXNnX2RhdGFbXSA9IHsKPiArc3RhdGljIGNvbnN0IHN0cnVj
dCBoZGNwMl9kcF9tc2dfZGF0YSBoZGNwMl9kcF9tc2dfZGF0YVtdID0gewo+ICAJeyBIRENQXzJf
Ml9BS0VfSU5JVCwgRFBfSERDUF8yXzJfQUtFX0lOSVRfT0ZGU0VULCBmYWxzZSwgMCwgMCB9LAo+
ICAJeyBIRENQXzJfMl9BS0VfU0VORF9DRVJULCBEUF9IRENQXzJfMl9BS0VfU0VORF9DRVJUX09G
RlNFVCwKPiAgCSAgZmFsc2UsIEhEQ1BfMl8yX0NFUlRfVElNRU9VVF9NUywgMCB9LAo+IEBAIC01
OTA4LDcgKzU5MDgsNyBAQCBpbnQgaGRjcDJfZGV0ZWN0X21zZ19hdmFpbGFiaWxpdHkoc3RydWN0
IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gIAo+ICBzdGF0aWMgc3NpemVf
dAo+ICBpbnRlbF9kcF9oZGNwMl93YWl0X2Zvcl9tc2coc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqaW50ZWxfZGlnX3BvcnQsCj4gLQkJCSAgICBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgKmhk
Y3AyX21zZ19kYXRhKQo+ICsJCQkgICAgY29uc3Qgc3RydWN0IGhkY3AyX2RwX21zZ19kYXRhICpo
ZGNwMl9tc2dfZGF0YSkKPiAgewo+ICAJc3RydWN0IGludGVsX2RwICpkcCA9ICZpbnRlbF9kaWdf
cG9ydC0+ZHA7Cj4gIAlzdHJ1Y3QgaW50ZWxfaGRjcCAqaGRjcCA9ICZkcC0+YXR0YWNoZWRfY29u
bmVjdG9yLT5oZGNwOwo+IEBAIC01OTQ3LDcgKzU5NDcsNyBAQCBpbnRlbF9kcF9oZGNwMl93YWl0
X2Zvcl9tc2coc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gIAly
ZXR1cm4gcmV0Owo+ICB9Cj4gIAo+IC1zdGF0aWMgc3RydWN0IGhkY3AyX2RwX21zZ19kYXRhICpn
ZXRfaGRjcDJfZHBfbXNnX2RhdGEodTggbXNnX2lkKQo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGhk
Y3AyX2RwX21zZ19kYXRhICpnZXRfaGRjcDJfZHBfbXNnX2RhdGEodTggbXNnX2lkKQo+ICB7Cj4g
IAlpbnQgaTsKPiAgCj4gQEAgLTU5NjcsNyArNTk2Nyw3IEBAIGludCBpbnRlbF9kcF9oZGNwMl93
cml0ZV9tc2coc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqaW50ZWxfZGlnX3BvcnQsCj4gIAl1
bnNpZ25lZCBpbnQgb2Zmc2V0Owo+ICAJdTggKmJ5dGUgPSBidWY7Cj4gIAlzc2l6ZV90IHJldCwg
Ynl0ZXNfdG9fd3JpdGUsIGxlbjsKPiAtCXN0cnVjdCBoZGNwMl9kcF9tc2dfZGF0YSAqaGRjcDJf
bXNnX2RhdGE7Cj4gKwljb25zdCBzdHJ1Y3QgaGRjcDJfZHBfbXNnX2RhdGEgKmhkY3AyX21zZ19k
YXRhOwo+ICAKPiAgCWhkY3AyX21zZ19kYXRhID0gZ2V0X2hkY3AyX2RwX21zZ19kYXRhKCpieXRl
KTsKPiAgCWlmICghaGRjcDJfbXNnX2RhdGEpCj4gQEAgLTYwMzEsNyArNjAzMSw3IEBAIGludCBp
bnRlbF9kcF9oZGNwMl9yZWFkX21zZyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICppbnRlbF9k
aWdfcG9ydCwKPiAgCXVuc2lnbmVkIGludCBvZmZzZXQ7Cj4gIAl1OCAqYnl0ZSA9IGJ1ZjsKPiAg
CXNzaXplX3QgcmV0LCBieXRlc190b19yZWN2LCBsZW47Cj4gLQlzdHJ1Y3QgaGRjcDJfZHBfbXNn
X2RhdGEgKmhkY3AyX21zZ19kYXRhOwo+ICsJY29uc3Qgc3RydWN0IGhkY3AyX2RwX21zZ19kYXRh
ICpoZGNwMl9tc2dfZGF0YTsKPiAgCj4gIAloZGNwMl9tc2dfZGF0YSA9IGdldF9oZGNwMl9kcF9t
c2dfZGF0YShtc2dfaWQpOwo+ICAJaWYgKCFoZGNwMl9tc2dfZGF0YSkKPiAtLSAKPiAyLjIwLjEK
PiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
