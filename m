Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2A5EC780
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Nov 2019 18:26:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 632626E09F;
	Fri,  1 Nov 2019 17:26:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0056E09F;
 Fri,  1 Nov 2019 17:26:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Nov 2019 10:26:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,256,1569308400"; d="scan'208";a="211818790"
Received: from bublath-mobl1.ger.corp.intel.com (HELO [10.252.55.164])
 ([10.252.55.164])
 by fmsmga001.fm.intel.com with ESMTP; 01 Nov 2019 10:26:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191101142123.18136-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d85f54be-4ef1-8647-7b9b-65adf93c30a8@intel.com>
Date: Fri, 1 Nov 2019 19:26:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191101142123.18136-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] i915/i915_selftests: Expose 'perf'
 selftests
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
Cc: igt-dev@lists.freedesktop.org, Tomi Sarvela <tomi.p.sarvela@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMDEvMTEvMjAxOSAxNjoyMSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEZpbmQgYWxsIHRoZSBw
ZXJmKiBzZWxmdGVzdHMgYW5kIGV4cG9zZSB0aGVtIGluIG91ciBpZ3QuIEluIENJIHdlIGV4cGVj
dAo+IHRoZXNlIG5vdCB0byBiZSBydW4gaW4gQkFUIChzaW5jZSB0aGV5IGFyZSBqdXN0IHBlcmZv
cm1hbmNlIHRlc3RzIHJhdGhlcgo+IHRoYW4gY29uZm9ybWFuY2UpLCBidXQgZXhwZWN0IHRoZSBy
ZXN1bHRzIHRvIGJlIGF2YWlsYWJsZSBmcm9tIHRoZQo+IHNoYXJkcy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBNYXR0aGV3
IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5w
LnNhcnZlbGFAaW50ZWwuY29tPgpBY2tlZC1ieTogTGlvbmVsIExhbmR3ZXJsaW4gPGxpb25lbC5n
LmxhbmR3ZXJsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgdGVzdHMvaTkxNS9pOTE1X3NlbGZ0ZXN0
LmMgfCA1ICsrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4KPiBkaWZm
IC0tZ2l0IGEvdGVzdHMvaTkxNS9pOTE1X3NlbGZ0ZXN0LmMgYi90ZXN0cy9pOTE1L2k5MTVfc2Vs
ZnRlc3QuYwo+IGluZGV4IDZkNTk3ZTY4Mi4uYWJjOGM5Yzc5IDEwMDY0NAo+IC0tLSBhL3Rlc3Rz
L2k5MTUvaTkxNV9zZWxmdGVzdC5jCj4gKysrIGIvdGVzdHMvaTkxNS9pOTE1X3NlbGZ0ZXN0LmMK
PiBAQCAtNDAsNCArNDAsOSBAQCBpZ3RfbWFpbgo+ICAgCQkJICAgICJsaXZlX3NlbGZ0ZXN0cz0t
MSBkaXNhYmxlX2Rpc3BsYXk9MSBzdF9maWx0ZXI9JXMiLAo+ICAgCQkJICAgIGVudikgPCBzaXpl
b2Yob3B0cykpOwo+ICAgCWlndF9rc2VsZnRlc3RzKCJpOTE1Iiwgb3B0cywgImxpdmVfc2VsZnRl
c3RzIiwgImxpdmUiKTsKPiArCj4gKwlpZ3RfYXNzZXJ0KHNucHJpbnRmKG9wdHMsIHNpemVvZihv
cHRzKSwKPiArCQkJICAgICJwZXJmX3NlbGZ0ZXN0cz0tMSBkaXNhYmxlX2Rpc3BsYXk9MSBzdF9m
aWx0ZXI9JXMiLAo+ICsJCQkgICAgZW52KSA8IHNpemVvZihvcHRzKSk7Cj4gKwlpZ3Rfa3NlbGZ0
ZXN0cygiaTkxNSIsIG9wdHMsICJwZXJmX3NlbGZ0ZXN0cyIsICJwZXJmIik7Cj4gICB9CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
