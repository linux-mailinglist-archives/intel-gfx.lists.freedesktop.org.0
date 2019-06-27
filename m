Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2B858150
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 13:18:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B010E6E0D1;
	Thu, 27 Jun 2019 11:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 323FF6E0D2
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 11:18:36 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 04:18:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,423,1557212400"; d="scan'208";a="189025637"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 04:18:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627080045.8814-1-lionel.g.landwerlin@intel.com>
 <20190627080045.8814-8-lionel.g.landwerlin@intel.com>
 <156162714216.20851.7683224794301212757@skylake-alporthouse-com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <cd730da3-eca0-5476-e4ee-21ef21a439bf@intel.com>
Date: Thu, 27 Jun 2019 14:18:32 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <156162714216.20851.7683224794301212757@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v5 07/10] drm/i915: add a new perf
 configuration execbuf parameter
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjcvMDYvMjAxOSAxMjoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgTGlvbmVs
IExhbmR3ZXJsaW4gKDIwMTktMDYtMjcgMDk6MDA6NDIpCj4+ICtzdGF0aWMgaW50Cj4+ICtnZXRf
ZXhlY2J1Zl9vYV9jb25maWcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgczMyIHBlcmZfZmQsIHU2NCBvYV9jb25maWdfaWQsCj4+ICsg
ICAgICAgICAgICAgICAgICAgICBzdHJ1Y3QgaTkxNV9vYV9jb25maWcgKipvdXRfb2FfY29uZmln
LAo+PiArICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKipv
dXRfb2Ffb2JqKQo+PiArewo+PiArICAgICAgIHN0cnVjdCBmaWxlICpwZXJmX2ZpbGU7Cj4+ICsg
ICAgICAgaW50IHJldDsKPj4gKwo+PiArICAgICAgIGlmICghZGV2X3ByaXYtPnBlcmYub2EuZXhj
bHVzaXZlX3N0cmVhbSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+
ICsgICAgICAgcGVyZl9maWxlID0gZmdldChwZXJmX2ZkKTsKPj4gKyAgICAgICBpZiAoIXBlcmZf
ZmlsZSkKPj4gKyAgICAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOwo+PiArCj4+ICsgICAgICAg
aWYgKHBlcmZfZmlsZS0+cHJpdmF0ZV9kYXRhICE9IGRldl9wcml2LT5wZXJmLm9hLmV4Y2x1c2l2
ZV9zdHJlYW0pCj4+ICsgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsKPiBMZWFrZWQgdGhl
IGZpbGUuCgoKVGhhbmtzIQoKCj4KPj4gKyAgICAgICBmcHV0KHBlcmZfZmlsZSk7Cj4gYW5kIHdl
IG5ldmVyIHVzZSBwZXJmX2ZpbGUgYWdhaW4/IEl0J3Mgb25seSB1c2UgaXMgYXMgYSBwZXJtaXNz
aW9uIGNoZWNrCj4gb24gdGhlIGlvY3RsPyBKdXN0IGNoZWNraW5nIGluIGNhc2UgcGVyZl9mZCBp
cyBkdXAoKWVkIGJ5IHRoZSB1c2VyIGFmdGVyCj4gd2UgY2hlY2sgaXQuCj4gLUNocmlzCj4KQ29y
cmVjdCwgaWYgaXQncyBkdXAoKWVkIHRoZW4gdGhlIGFwcGxpY2F0aW9uIGVudGVycyB1bmRlZmlu
ZWQgYmVoYXZpb3IgCnRlcnJpdG9yeS4KCk11Y2ggbGlrZSBub3Qgc3luY2hyb25pemluZyBidWZm
ZXIgYWNjZXNzIGFjcm9zcyBlbmdpbmVzIDspCgoKLUxpb25lbAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
