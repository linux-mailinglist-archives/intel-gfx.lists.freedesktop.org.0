Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8939A10478E
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2019 01:33:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4FE06EAA8;
	Thu, 21 Nov 2019 00:33:18 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30A726EAA6
 for <Intel-GFX@lists.freedesktop.org>; Thu, 21 Nov 2019 00:33:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Nov 2019 16:33:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,223,1571727600"; d="scan'208";a="209729146"
Received: from johnharr-mobl3.ger.corp.intel.com (HELO [10.254.43.76])
 ([10.254.43.76])
 by orsmga003.jf.intel.com with ESMTP; 20 Nov 2019 16:33:16 -0800
To: Intel-GFX@Lists.FreeDesktop.Org
References: <20191121003108.34633-1-John.C.Harrison@Intel.com>
From: John Harrison <John.C.Harrison@Intel.com>
Message-ID: <a100d32c-d963-8a1f-d729-3518c959a71e@Intel.com>
Date: Wed, 20 Nov 2019 16:33:16 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <20191121003108.34633-1-John.C.Harrison@Intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/uc: Extra info notice about FW
 version mis-match vs overrides
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

T29wcy4gSWdub3JlIHRoaXMgZW1haWwuIEFjY2lkZW50YWxseSBzZW50IHRoZSBzYW1lIHRoaW5n
IHR3aWNlLgoKT24gMTEvMjAvMjAxOSAxNjozMSwgSm9obi5DLkhhcnJpc29uQEludGVsLmNvbSB3
cm90ZToKPiBGcm9tOiBKb2huIEhhcnJpc29uIDxKb2huLkMuSGFycmlzb25ASW50ZWwuY29tPgo+
Cj4gSWYgYSBGVyBvdmVycmlkZSBpcyBwcmVzZW50IHRoZW4gYSB2ZXJzaW9uIG1pcy1tYXRjaCBp
cyBhY3R1YWxseQo+IGlnbm9yZWQuIFRoZSB3YXJuaW5nIG1lc3NhZ2Ugd2FzIHN0aWxsIGJlaW5n
IHByaW50ZWQsIHRob3VnaC4gV2hpY2gKPiBjb3VsZCBjb25mdXNlIHBlb3BsZSBieSBpbXBseWlu
ZyB0aGF0IHRoZSBsb2FkIGhhZCBmYWlsZWQgZHVlIHRvIHRoZQo+IG1pcy1tYXRjaCB3aGVuIGFj
dHVhbGx5IHNvbWV0aGluZyBlbHNlIGhhZCBmYWlsZWQuCj4KPiBUaGlzIHBhdGNoIGFkZHMgYW4g
ZXh0cmEgbWVzc2FnZSB0byBzYXkgdGhhdCB0aGUgbWlzLW1hdGNoIGlzIGJlaW5nCj4gaWdub3Jl
ZCBpZiBhbiBvdmVycmlkZSBpcyBwcmVzZW50Lgo+Cj4gU2lnbmVkLW9mZi1ieTogSm9obiBIYXJy
aXNvbiA8Sm9obi5DLkhhcnJpc29uQEludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMgfCAzICsrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX3VjX2Z3LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF91Y19mdy5j
Cj4gaW5kZXggNjZhMzBhYjcwNDRhLi5jMWFlODA3YjA3YWUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiBAQCAtMzYxLDYgKzM2MSw5IEBAIGludCBpbnRl
bF91Y19md19mZXRjaChzdHJ1Y3QgaW50ZWxfdWNfZncgKnVjX2Z3LCBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSkKPiAgIAkJCWVyciA9IC1FTk9FWEVDOwo+ICAgCQkJZ290byBmYWlsOwo+
ICAgCQl9Cj4gKwo+ICsJCWRldl9ub3RpY2UoZGV2LCAiJXMgZmlybXdhcmUgJXM6IEZpcm13YXJl
IG92ZXJyaWRlIHNvIGlnbm9yaW5nIHZlcnNpb24gbWlzLW1hdGNoXG4iLAo+ICsJCQkgICBpbnRl
bF91Y19md190eXBlX3JlcHIodWNfZnctPnR5cGUpLCB1Y19mdy0+cGF0aCk7Cj4gICAJfQo+ICAg
Cj4gICAJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9zaG1lbV9mcm9tX2RhdGEoaTkxNSwg
ZnctPmRhdGEsIGZ3LT5zaXplKTsKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeA==
