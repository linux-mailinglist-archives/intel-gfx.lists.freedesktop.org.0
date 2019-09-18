Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 402F5B6DDC
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Sep 2019 22:39:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CC9C72E24;
	Wed, 18 Sep 2019 20:39:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E509772E24
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Sep 2019 20:39:10 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Sep 2019 13:39:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,522,1559545200"; d="scan'208";a="362299803"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 18 Sep 2019 13:39:08 -0700
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190918173121.183132-1-stuart.summers@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <23b52537-1d81-eca9-87c7-ffefc1c8936e@intel.com>
Date: Wed, 18 Sep 2019 13:39:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190918173121.183132-1-stuart.summers@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Allow set context SSEU on
 platforms after gen 11
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

CgpPbiA5LzE4LzE5IDEwOjMxIEFNLCBTdHVhcnQgU3VtbWVycyB3cm90ZToKPiBCdWd6aWxsYTog
aHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwNTU5Cj4gCgpX
aGF0J3MgdGhlIHBsYW5uZWQgdXNhZ2UgaGVyZT8gVEdMIEhXIG9ubHkgc3VwcG9ydHMgc2xpY2Ut
bGV2ZWwgCnBvd2VyLWdhdGluZyBhbmQgd2l0aCBvbmx5IDEgc2xpY2Ugb24gVEdMIHdlIGRvbid0
IHJlYWxseSBoYXZlIGEgY2hvaWNlIApvZiB3aGF0IHRvIHByb2dyYW0sIGRvIHdlPwoKRGFuaWVs
ZQoKPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4K
PiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29t
Pgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYyB8
IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+
IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fY29udGV4
dC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2NvbnRleHQuYwo+IGluZGV4
IGYxYzBlNWQ5NThmMy4uMzlhZjRjODFiMjlhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2dlbS9pOTE1X2dlbV9jb250ZXh0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9nZW0vaTkxNV9nZW1fY29udGV4dC5jCj4gQEAgLTEzMTAsNyArMTMxMCw3IEBAIHN0YXRpYyBp
bnQgc2V0X3NzZXUoc3RydWN0IGk5MTVfZ2VtX2NvbnRleHQgKmN0eCwKPiAgIAlpZiAoYXJncy0+
c2l6ZSA8IHNpemVvZih1c2VyX3NzZXUpKQo+ICAgCQlyZXR1cm4gLUVJTlZBTDsKPiAgIAo+IC0J
aWYgKCFJU19HRU4oaTkxNSwgMTEpKQo+ICsJaWYgKElOVEVMX0dFTihpOTE1KSA8IDExKQo+ICAg
CQlyZXR1cm4gLUVOT0RFVjsKPiAgIAo+ICAgCWlmIChjb3B5X2Zyb21fdXNlcigmdXNlcl9zc2V1
LCB1NjRfdG9fdXNlcl9wdHIoYXJncy0+dmFsdWUpLAo+IApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
