Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4874364BB6
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jul 2019 19:52:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A72A6E120;
	Wed, 10 Jul 2019 17:52:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE396E120
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Jul 2019 17:52:54 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Jul 2019 10:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,475,1557212400"; d="scan'208";a="189246734"
Received: from irvmail001.ir.intel.com ([163.33.26.43])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2019 10:52:52 -0700
Received: from mwajdecz-mobl1.ger.corp.intel.com
 (mwajdecz-mobl1.ger.corp.intel.com [172.28.180.238])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 x6AHqqsW030740; Wed, 10 Jul 2019 18:52:52 +0100
To: intel-gfx@lists.freedesktop.org, "Daniele Ceraolo Spurio"
 <daniele.ceraolospurio@intel.com>
References: <20190710005437.3496-1-daniele.ceraolospurio@intel.com>
 <20190710005437.3496-8-daniele.ceraolospurio@intel.com>
Date: Wed, 10 Jul 2019 19:52:52 +0200
MIME-Version: 1.0
From: "Michal Wajdeczko" <michal.wajdeczko@intel.com>
Message-ID: <op.z4p3yek2xaggs7@mwajdecz-mobl1.ger.corp.intel.com>
In-Reply-To: <20190710005437.3496-8-daniele.ceraolospurio@intel.com>
User-Agent: Opera Mail/1.0 (Win32)
Subject: Re: [Intel-gfx] [PATCH 07/12] drm/i915/uc: move GuC and HuC files
 under gt/uc/
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

T24gV2VkLCAxMCBKdWwgMjAxOSAwMjo1NDozMiArMDIwMCwgRGFuaWVsZSBDZXJhb2xvIFNwdXJp
byAgCjxkYW5pZWxlLmNlcmFvbG9zcHVyaW9AaW50ZWwuY29tPiB3cm90ZToKCj4gQm90aCBtaWNy
b2NvbnRyb2xsZXJzIGFyZSBwYXJ0IG9mIHRoZSBHVCBIVyBhbmQgYXJlIGNsb3NlbHkgcmVsYXRl
ZCB0bwo+IEdUIG9wZXJhdGlvbnMuIFRvIGtlZXAgYWxsIHRoZSBmaWxlcyBjbGVhbmx5IHRvZ2V0
aGVyLCB0aGV5J3ZlIGJlZW4KPiBwbGFjZWQgaW4gdGhlaXIgb3duIHN1YmRpciBpbnNpZGUgdGhl
IGd0LyBmb2xkZXIKPgo+IFNpZ25lZC1vZmYtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRh
bmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IE1pY2hhbCBXYWpkZWN6a28gPG1p
Y2hhbC53YWpkZWN6a29AaW50ZWwuY29tPgo+IENjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlz
LXdpbHNvbi5jby51az4KPiAtLS0KCkFja2VkLWJ5OiBNaWNoYWwgV2FqZGVjemtvIDxtaWNoYWwu
d2FqZGVjemtvQGludGVsLmNvbT4KCndpdGggc29tZSBuaXRzIGJlbG93Cgo8c25hcD4KCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxlICAKPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlCj4gaW5kZXggNTI2NmRiZWFiMDFmLi41MjQ1MTYyNTFhNDAgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+IEBAIC0xMzksMTYgKzEzOSwxNyBAQCBpOTE1LXkgKz0g
XAo+ICAJICBpbnRlbF93b3BjbS5vCj4gIyBnZW5lcmFsLXB1cnBvc2UgbWljcm9jb250cm9sbGVy
IChHdUMpIHN1cHBvcnQKPiAtaTkxNS15ICs9IGludGVsX3VjLm8gXAo+IC0JICBpbnRlbF91Y19m
dy5vIFwKPiAtCSAgaW50ZWxfZ3VjLm8gXAo+IC0JICBpbnRlbF9ndWNfYWRzLm8gXAo+IC0JICBp
bnRlbF9ndWNfY3QubyBcCj4gLQkgIGludGVsX2d1Y19mdy5vIFwKPiAtCSAgaW50ZWxfZ3VjX2xv
Zy5vIFwKPiAtCSAgaW50ZWxfZ3VjX3N1Ym1pc3Npb24ubyBcCj4gLQkgIGludGVsX2h1Yy5vIFwK
PiAtCSAgaW50ZWxfaHVjX2Z3Lm8KPiArb2JqLXkgKz0gZ3QvdWMvCj4gK2k5MTUteSArPSBndC91
Yy9pbnRlbF91Yy5vIFwKCm5pdDogY2FuIHdlIHB1dCBmaXJzdCBmaWxlIG9uIHNlcGFyYXRlIGxp
bmUgYXMgd2VsbCwgc28KCmk5MTUteSArPSBcCgo+ICsJICBndC91Yy9pbnRlbF91Y19mdy5vIFwK
PiArCSAgZ3QvdWMvaW50ZWxfZ3VjLm8gXAo+ICsJICBndC91Yy9pbnRlbF9ndWNfYWRzLm8gXAo+
ICsJICBndC91Yy9pbnRlbF9ndWNfY3QubyBcCj4gKwkgIGd0L3VjL2ludGVsX2d1Y19mdy5vIFwK
PiArCSAgZ3QvdWMvaW50ZWxfZ3VjX2xvZy5vIFwKPiArCSAgZ3QvdWMvaW50ZWxfZ3VjX3N1Ym1p
c3Npb24ubyBcCj4gKwkgIGd0L3VjL2ludGVsX2h1Yy5vIFwKPiArCSAgZ3QvdWMvaW50ZWxfaHVj
X2Z3Lm8KCmFuZCBpaXJjIGJrbSBpcyB0byBvcmRlciBhbGwgZmlsZXMgYnkgbmFtZSwgc28gdWMq
IHNob3VsZCBiZSBsYXN0CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
