Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94ADEDD535
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Oct 2019 01:10:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E883B6E055;
	Fri, 18 Oct 2019 23:10:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 341D86E055
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 23:10:29 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 16:10:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,313,1566889200"; d="scan'208";a="396777688"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO intel.com) ([10.54.75.49])
 by fmsmga005.fm.intel.com with ESMTP; 18 Oct 2019 16:10:27 -0700
Date: Fri, 18 Oct 2019 16:12:39 -0700
From: Manasi Navare <manasi.d.navare@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20191018231239.GE13211@intel.com>
References: <20191018172725.1338-1-manasi.d.navare@intel.com>
 <20191018172725.1338-5-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191018172725.1338-5-manasi.d.navare@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [Intel-gfx] [CI v12 5/6] drm/i915/display/icl: Disable
 transcoder port sync as part of crtc_disable() sequence
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
Cc: Jani Nikula <jani.nikula@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UHVzaGVkIHRvIGRpbnEgdGhhbmtzIGZvciB0aGUgcmV2aWV3cwoKTWFuYXNpCgpPbiBGcmksIE9j
dCAxOCwgMjAxOSBhdCAxMDoyNzoyNEFNIC0wNzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+IFRo
aXMgY2xlYXJzIHRoZSB0cmFuc2NvZGVyIHBvcnQgc3luYyBiaXRzIG9mIHRoZSBUUkFOU19ERElf
RlVOQ19DVEwyCj4gcmVnaXN0ZXIgZHVyaW5nIGNydGNfZGlzYWJsZSgpLgo+IAo+IHYzOgo+ICog
UmViYXNlIG9uIG1hYXJ0ZW4ncyBwYXRjaGVzCj4gdjI6Cj4gKiBEaXJlY3RseSB3cml0ZSB0aGUg
dHJhbnNfcG9ydF9zeW5jIHJlZyB2YWx1ZSAoTWFhcnRlbikKPiAKPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFhcnRlbiBMYW5raG9y
c3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxh
QGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBNYW5hc2kgTmF2YXJlIDxtYW5hc2kuZC5uYXZh
cmVAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIyICsrKysrKysrKysrKysrKysrKysrCj4gIDEgZmls
ZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBiZmJmOTE2ZGMyNTAuLjIyZjViMjEzYjgw
YiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gQEAgLTQ0MzUsNiArNDQzNSwyNSBAQCBzdGF0aWMgdm9pZCBpY2xfZW5hYmxlX3RyYW5zX3Bv
cnRfc3luYyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZQo+ICAJCSAg
IHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsKTsKPiAgfQo+ICAKPiArc3RhdGljIHZvaWQgaWNsX2Rp
c2FibGVfdHJhbnNjb2Rlcl9wb3J0X3N5bmMoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlKQo+ICt7Cj4gKwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2lu
dGVsX2NydGMob2xkX2NydGNfc3RhdGUtPmJhc2UuY3J0Yyk7Cj4gKwlzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2UuZGV2KTsKPiArCWk5MTVfcmVn
X3QgcmVnOwo+ICsJdTMyIHRyYW5zX2RkaV9mdW5jX2N0bDJfdmFsOwo+ICsKPiArCWlmIChvbGRf
Y3J0Y19zdGF0ZS0+bWFzdGVyX3RyYW5zY29kZXIgPT0gSU5WQUxJRF9UUkFOU0NPREVSKQo+ICsJ
CXJldHVybjsKPiArCj4gKwlEUk1fREVCVUdfS01TKCJEaXNhYmxpbmcgVHJhbnNjb2RlciBQb3J0
IFN5bmMgb24gU2xhdmUgVHJhbnNjb2RlciAlc1xuIiwKPiArCQkgICAgICB0cmFuc2NvZGVyX25h
bWUob2xkX2NydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSk7Cj4gKwo+ICsJcmVnID0gVFJBTlNf
RERJX0ZVTkNfQ1RMMihvbGRfY3J0Y19zdGF0ZS0+Y3B1X3RyYW5zY29kZXIpOwo+ICsJdHJhbnNf
ZGRpX2Z1bmNfY3RsMl92YWwgPSB+KFBPUlRfU1lOQ19NT0RFX0VOQUJMRSB8Cj4gKwkJCQkgICAg
UE9SVF9TWU5DX01PREVfTUFTVEVSX1NFTEVDVF9NQVNLKTsKPiArCUk5MTVfV1JJVEUocmVnLCB0
cmFuc19kZGlfZnVuY19jdGwyX3ZhbCk7Cj4gK30KPiArCj4gIHN0YXRpYyB2b2lkIGludGVsX2Zk
aV9ub3JtYWxfdHJhaW4oc3RydWN0IGludGVsX2NydGMgKmNydGMpCj4gIHsKPiAgCXN0cnVjdCBk
cm1fZGV2aWNlICpkZXYgPSBjcnRjLT5iYXNlLmRldjsKPiBAQCAtNjYzOSw2ICs2NjU4LDkgQEAg
c3RhdGljIHZvaWQgaGFzd2VsbF9jcnRjX2Rpc2FibGUoc3RydWN0IGludGVsX2NydGNfc3RhdGUg
Km9sZF9jcnRjX3N0YXRlLAo+ICAJaWYgKGludGVsX2NydGNfaGFzX3R5cGUob2xkX2NydGNfc3Rh
dGUsIElOVEVMX09VVFBVVF9EUF9NU1QpKQo+ICAJCWludGVsX2RkaV9zZXRfdmNfcGF5bG9hZF9h
bGxvYyhvbGRfY3J0Y19zdGF0ZSwgZmFsc2UpOwo+ICAKPiArCWlmIChJTlRFTF9HRU4oZGV2X3By
aXYpID49IDExKQo+ICsJCWljbF9kaXNhYmxlX3RyYW5zY29kZXJfcG9ydF9zeW5jKG9sZF9jcnRj
X3N0YXRlKTsKPiArCj4gIAlpZiAoIXRyYW5zY29kZXJfaXNfZHNpKGNwdV90cmFuc2NvZGVyKSkK
PiAgCQlpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMob2xkX2NydGNfc3RhdGUpOwo+
ICAKPiAtLSAKPiAyLjE5LjEKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4
