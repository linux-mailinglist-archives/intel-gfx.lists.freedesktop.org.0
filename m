Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 301D830DAE8
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Feb 2021 14:20:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 247C86EAC7;
	Wed,  3 Feb 2021 13:20:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E915F6EA98
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Feb 2021 13:20:28 +0000 (UTC)
IronPort-SDR: N6vXPLKFQ2qjUufM+32osslrqtW+f2v0+cN+kDHEkkwLfDMlWOfOxt6L/6g9aaaujZAhgX6LP+
 JPtHjyKsS2hg==
X-IronPort-AV: E=McAfee;i="6000,8403,9883"; a="180264019"
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="180264019"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 05:20:28 -0800
IronPort-SDR: Lm17S7Izdc/rq+emvmtAZG9Ef3KoQwNtM+8T3Ae1/YymuxJc7iju2kBT2h78rWENITdGomLP/q
 SAgA16S9UAlA==
X-IronPort-AV: E=Sophos;i="5.79,398,1602572400"; d="scan'208";a="392435417"
Received: from jconneax-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.21.179])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2021 05:20:26 -0800
MIME-Version: 1.0
In-Reply-To: <20210203121119.481146-1-matthew.auld@intel.com>
References: <20210203121119.481146-1-matthew.auld@intel.com>
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <161235842339.15744.14184562382251401217@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Wed, 03 Feb 2021 15:20:23 +0200
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Distinction of memory regions
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNYXR0aGV3IEF1bGQgKDIwMjEtMDItMDMgMTQ6MTE6MTYpCj4gRnJvbTogWmJpZ25p
ZXcgS2VtcGN6ecWEc2tpIDx6Ymlnbmlldy5rZW1wY3p5bnNraUBpbnRlbC5jb20+Cj4gCj4gSW4g
cHJlcGFyYXRpb24gZm9yIFhlIEhQIG11bHRpLXRpbGUgYXJjaGl0ZWN0dXJlIHdpdGggbXVsdGlw
bGUgbWVtb3J5Cj4gcmVnaW9ucywgd2UgbmVlZCB0byBiZSBhYmxlIGRpZmZlcmVudGlhdGUgbXVs
dGlwbGUgaW5zdGFuY2VzIG9mIGRldmljZQo+IGxvY2FsLW1lbW9yeS4KCldvdWxkIGJlIGdvb2Qg
dG8gY29tbWVudCBoZXJlIG9uIHdoZXJlIHRoaXMgbmFtZSBpcyB1c2VkLCBhbmQgYnJpZWZseQpl
eHBsYWluIHdoeSBpdCdzIG5vdCBBUEkgY2hhbmdlLgoKUmVnYXJkcywgSm9vbmFzCgo+IFNpZ25l
ZC1vZmYtYnk6IFpiaWduaWV3IEtlbXBjennFhHNraSA8emJpZ25pZXcua2VtcGN6eW5za2lAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVs
LmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYyAgICAgICAg
ICB8IDIgKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYyB8
IDIgLS0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jCj4gaW5kZXggMzVmZjY4YWRhNGYxLi5j
YTc2ZjkzYmMwM2QgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
Z3QuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0LmMKPiBAQCAtNjgs
NiArNjgsOCBAQCBpbnQgaW50ZWxfZ3RfcHJvYmVfbG1lbShzdHJ1Y3QgaW50ZWxfZ3QgKmd0KQo+
ICAgICAgICAgbWVtLT50eXBlID0gSU5URUxfTUVNT1JZX0xPQ0FMOwo+ICAgICAgICAgbWVtLT5p
bnN0YW5jZSA9IDA7Cj4gIAo+ICsgICAgICAgaW50ZWxfbWVtb3J5X3JlZ2lvbl9zZXRfbmFtZSht
ZW0sICJsb2NhbCV1IiwgbWVtLT5pbnN0YW5jZSk7Cj4gKwo+ICAgICAgICAgR0VNX0JVR19PTigh
SEFTX1JFR0lPTihpOTE1LCBpZCkpOwo+ICAgICAgICAgR0VNX0JVR19PTihpOTE1LT5tbS5yZWdp
b25zW2lkXSk7Cj4gICAgICAgICBpOTE1LT5tbS5yZWdpb25zW2lkXSA9IG1lbTsKPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVnaW9uX2xtZW0uYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JlZ2lvbl9sbWVtLmMKPiBpbmRleCA4YzQ5OGU5NmIw
MWQuLmJlNmYyYzhmNTE4NCAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZWdpb25fbG1lbS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cmVnaW9uX2xtZW0uYwo+IEBAIC05MCw4ICs5MCw2IEBAIHJlZ2lvbl9sbWVtX2luaXQoc3RydWN0
IGludGVsX21lbW9yeV9yZWdpb24gKm1lbSkKPiAgICAgICAgIGlmIChyZXQpCj4gICAgICAgICAg
ICAgICAgIGlvX21hcHBpbmdfZmluaSgmbWVtLT5pb21hcCk7Cj4gIAo+IC0gICAgICAgaW50ZWxf
bWVtb3J5X3JlZ2lvbl9zZXRfbmFtZShtZW0sICJsb2NhbCIpOwo+IC0KPiAgICAgICAgIHJldHVy
biByZXQ7Cj4gIH0KPiAgCj4gLS0gCj4gMi4yNi4yCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGluZyBsaXN0Cj4gSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
