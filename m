Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 619B6517A6
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 17:50:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C908389CB3;
	Mon, 24 Jun 2019 15:50:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA1B289CB3
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 15:50:50 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Jun 2019 08:50:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,412,1557212400"; d="scan'208";a="336538901"
Received: from tlim24-mobl1.gar.corp.intel.com (HELO [10.252.23.133])
 ([10.252.23.133])
 by orsmga005.jf.intel.com with ESMTP; 24 Jun 2019 08:50:48 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190624141630.11015-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <c3bd9bbe-5b4a-a07c-6a70-b5fbb0261ca7@intel.com>
Date: Mon, 24 Jun 2019 16:50:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190624141630.11015-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Clear read/write domains for
 GPU clear
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

T24gMjQvMDYvMjAxOSAxNToxNiwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFVwZGF0ZSB0aGUgZG9t
YWlucyBmb3IgdGhlIHdyaXRlIHZpYSB0aGUgR1BVIHNvIHRoYXQgd2UgZG8gbm90Cj4gc2hvcnRj
aXJjdWl0IGFueSBzZXQtZG9tYWluIHdhaXQgYWZ0ZXJ3YXJkcy4KCkknbSBsb3N0LiBIb3cgZG8g
d2Ugc2hvcnQtY2lyY3VpdCB0aGUgc2V0LWRvbWFpbiB3YWl0PwoKPiAKPiBCdWd6aWxsYTogaHR0
cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwOTc4Cj4gRml4ZXM6
IGIyZGJmOGQ5ODJhNCAoImRybS9pOTE1L2JsdDogUmVtb3ZlIHJlY3Vyc2l2ZSB2bWEtPmxvY2si
KQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jIHwgMyArKy0KPiAg
IDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPiAKPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9jbGllbnRfYmx0LmMKPiBpbmRleCA5
YjAxYzNiNWIzMWQuLjZmNTM3ZThlNGRlYSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fY2xpZW50X2JsdC5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX2NsaWVudF9ibHQuYwo+IEBAIC0xNjIsMTEgKzE2MiwxMiBAQCBzdGF0
aWMgdm9pZCBjbGVhcl9wYWdlc193b3JrZXIoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICAg
CQlnb3RvIG91dF9zaWduYWw7Cj4gICAKPiAgIAlpZiAob2JqLT5jYWNoZV9kaXJ0eSkgewo+IC0J
CW9iai0+d3JpdGVfZG9tYWluID0gMDsKPiAgIAkJaWYgKGk5MTVfZ2VtX29iamVjdF9oYXNfc3Ry
dWN0X3BhZ2Uob2JqKSkKPiAgIAkJCWRybV9jbGZsdXNoX3NnKHctPnNsZWV2ZS0+cGFnZXMpOwo+
ICAgCQlvYmotPmNhY2hlX2RpcnR5ID0gZmFsc2U7Cj4gICAJfQo+ICsJb2JqLT5yZWFkX2RvbWFp
bnMgPSBJOTE1X0dFTV9HUFVfRE9NQUlOUzsKPiArCW9iai0+d3JpdGVfZG9tYWluID0gMDsKPiAg
IAo+ICAgCS8qIFhYWDogd2UgbmVlZCB0byBraWxsIHRoaXMgKi8KPiAgIAltdXRleF9sb2NrKCZp
OTE1LT5kcm0uc3RydWN0X211dGV4KTsKPiAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
