Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D46C0CCC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2019 22:45:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AD1B6E237;
	Fri, 27 Sep 2019 20:45:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DBA46E237
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Sep 2019 20:45:26 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Sep 2019 13:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,556,1559545200"; d="scan'208";a="180636543"
Received: from jjwhelan-mobl1.ger.corp.intel.com (HELO intel.intel)
 ([10.252.27.79])
 by orsmga007.jf.intel.com with ESMTP; 27 Sep 2019 13:45:24 -0700
Date: Fri, 27 Sep 2019 23:45:23 +0300
From: Andi Shyti <andi.shyti@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190927204523.GB2902@intel.intel>
References: <20190927191443.14126-1-chris@chris-wilson.co.uk>
 <20190927191443.14126-2-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190927191443.14126-2-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/selftests;
 Do not try to sanitize mock HW
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

SGkgQ2hyaXMsCgpPbiBGcmksIFNlcCAyNywgMjAxOSBhdCAwODoxNDo0M1BNICswMTAwLCBDaHJp
cyBXaWxzb24gd3JvdGU6Cj4gSWYgd2UgYXJlIG1vY2tpbmcgdGhlIGRldmljZSwgc2tpcCB0cnlp
bmcgdG8gc2FuaXRpemUgdGhlIHBtIEhXIHN0YXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBBbmRpIFNoeXRpIDxhbmRp
LnNoeXRpQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVs
ZXRpb24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3RfcG0uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmMKPiBpbmRleCA0
MmYxNzVkOWI5OGMuLjI5ZmExZGFiYmMyZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9wbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcG0uYwo+IEBAIC0xMzcsNyArMTM3LDggQEAgdm9pZCBpbnRlbF9ndF9zYW5pdGl6ZShz
dHJ1Y3QgaW50ZWxfZ3QgKmd0LCBib29sIGZvcmNlKQo+ICAKPiAgdm9pZCBpbnRlbF9ndF9wbV9k
aXNhYmxlKHN0cnVjdCBpbnRlbF9ndCAqZ3QpCj4gIHsKPiAtCWludGVsX3Nhbml0aXplX2d0X3Bv
d2Vyc2F2ZShndC0+aTkxNSk7Cj4gKwlpZiAoIWlzX21vY2tfZ3QoZ3QpKQo+ICsJCWludGVsX3Nh
bml0aXplX2d0X3Bvd2Vyc2F2ZShndC0+aTkxNSk7CgpDb29sIQoKUmV2aWV3ZWQtYnk6IEFuZGkg
U2h5dGkgPGFuZGkuc2h5dGlAaW50ZWwuY29tPgoKQW5kaQpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
