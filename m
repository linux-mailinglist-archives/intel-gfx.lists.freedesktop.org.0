Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F66DB938
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Oct 2019 23:43:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AF046EADC;
	Thu, 17 Oct 2019 21:42:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EAE16EADD
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Oct 2019 21:42:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Oct 2019 14:42:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,309,1566889200"; d="scan'208";a="199509832"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 17 Oct 2019 14:42:57 -0700
To: Stuart Summers <stuart.summers@intel.com>, intel-gfx@lists.freedesktop.org
References: <20191017193719.137439-1-stuart.summers@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <3b118644-e952-b5ff-10f2-5b071cd15351@intel.com>
Date: Thu, 17 Oct 2019 14:42:27 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191017193719.137439-1-stuart.summers@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Do not end i915 batch buffers
 prematurely
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

CgpPbiAxMC8xNy8xOSAxMjozNyBQTSwgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6Cj4gRHVyaW5nIGVu
Z2luZSBpbml0aWFsaXphdGlvbiBpbiBpOTE1IGxvYWQsIHRoZSBiYXRjaCBidWZmZXJzCj4gYmVp
bmcgdXNlZCB0byBzZXQgdXAgdGhlIGluaXRpYWwgY29udGV4dCBhcmUgYmVpbmcgcHJlbWF0dXJl
bHkKPiBlbmRlZC4gSW4gbW9zdCBzY2VuYXJpb3MsIHRoaXMgZG9lcyBub3QgY2F1c2UgYSBwcm9i
bGVtLCBidXQKClRoYXQncyBub3QgYSBiYXRjaCB0aGF0IHdlIGFkZCB0aGUgQkJFTkQgdG8sIHRo
YXQncyB0aGUgY29udGV4dCBpdHNlbGYuCgo+IGluIHRoZSByYXJlIGV2ZW50IHRoZSBlbmdpbmUg
ZXhwZWN0cyB0aGUgY29udGV4dCB0byBiZSBhZGRlZAo+IHdpdGhvdXQgYW4gZXhwbGljaXQgTUlf
QkFUQ0hfQlVGRkVSX0VORCBpbnN0cnVjdGlvbiwgZG8gbm90Cj4gaW5zZXJ0IHRoaXMgaW5zdHJ1
Y3Rpb24gcHJlbWF0dXJlbHkuCj4gCgpXZSBvbmx5IGFkZCB0aGUgQkJFTkQgd2hlbiB0aGVyZSBp
cyBubyBzdGF0ZSB0byByZXN0b3JlLCBzbyB3aHkgd291bGQgCnRoZSBlbmdpbmUgZXhwZWN0IHRv
IGV4ZWN1dGUgYSBidW5jaCBvZiBuby1vcHM/CgpEYW5pZWxlCgo+IFNpZ25lZC1vZmYtYnk6IFN0
dWFydCBTdW1tZXJzIDxzdHVhcnQuc3VtbWVyc0BpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAx
IGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X2xyYy5jCj4gaW5kZXggZTlmZTlmNzljZWRkLi5lYzA2N2MyOWFjNjUgMTAwNjQ0Cj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+IEBAIC0zODA1LDcgKzM4MDUsNyBAQCBwb3B1bGF0ZV9s
cl9jb250ZXh0KHN0cnVjdCBpbnRlbF9jb250ZXh0ICpjZSwKPiAgIAkvKiBUaGUgc2Vjb25kIHBh
Z2Ugb2YgdGhlIGNvbnRleHQgb2JqZWN0IGNvbnRhaW5zIHNvbWUgZmllbGRzIHdoaWNoIG11c3QK
PiAgIAkgKiBiZSBzZXQgdXAgcHJpb3IgdG8gdGhlIGZpcnN0IGV4ZWN1dGlvbi4gKi8KPiAgIAly
ZWdzID0gdmFkZHIgKyBMUkNfU1RBVEVfUE4gKiBQQUdFX1NJWkU7Cj4gLQlleGVjbGlzdHNfaW5p
dF9yZWdfc3RhdGUocmVncywgY2UsIGVuZ2luZSwgcmluZywgaW5oaWJpdCk7Cj4gKwlleGVjbGlz
dHNfaW5pdF9yZWdfc3RhdGUocmVncywgY2UsIGVuZ2luZSwgcmluZywgZmFsc2UpOwo+ICAgCWlm
IChpbmhpYml0KQo+ICAgCQlyZWdzW0NUWF9DT05URVhUX0NPTlRST0xdIHw9Cj4gICAJCQlfTUFT
S0VEX0JJVF9FTkFCTEUoQ1RYX0NUUkxfRU5HSU5FX0NUWF9SRVNUT1JFX0lOSElCSVQpOwo+IApf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
