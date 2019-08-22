Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE59A9A990
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Aug 2019 10:04:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27B1D6EBE8;
	Fri, 23 Aug 2019 08:04:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 481B56EBE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Aug 2019 08:04:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:43:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="208234170"
Received: from anshuma1-mobl1.gar.corp.intel.com (HELO [10.252.69.203])
 ([10.252.69.203])
 by fmsmga002.fm.intel.com with ESMTP; 22 Aug 2019 09:43:00 -0700
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-7-lucas.demarchi@intel.com>
 <6939d64c-eae0-fd7b-e3d3-88b5809b5621@intel.com>
Message-ID: <ad72a444-58c1-7301-e81f-eacd3238f94f@intel.com>
Date: Thu, 22 Aug 2019 22:12:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <6939d64c-eae0-fd7b-e3d3-88b5809b5621@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 06/39] drm/i915/bdw+: Enable PSR in any eDP
 port
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
Cc: Dhinakaran Pandiyan <dhinakaran.pandiyan@intel.com>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpPbiA4LzIyLzIwMTkgOTo1MCBQTSwgR3VwdGEsIEFuc2h1bWFuIHdyb3RlOgo+IFZlcmlmaWVk
IGZyb20gQi5TcGVjczo3NzIzIGFuZCBCLlNwZWM6ODA0MQo+IAo+IE9uIDgvMTYvMjAxOSAxOjM0
IFBNLCBMdWNhcyBEZSBNYXJjaGkgd3JvdGU6Cj4+IEZyb206IEpvc8OpIFJvYmVydG8gZGUgU291
emEgPGpvc2Uuc291emFAaW50ZWwuY29tPgo+Pgo+PiDCoEZyb20gQkRXKyB0aGUgUFNSIHJlZ2lz
dGVycyBtb3ZlZCBmcm9tIERESUEgdG8gdHJhbnNjb2Rlciwgc28gYW55IHBvcnQKPj4gd2l0aCBh
IGVEUCBwYW5lbCBjb25uZWN0ZWQgY2FuIGhhdmUgUFNSLCBzbyBsZXRzIHJlbW92ZSB0aGlzIGxp
bWl0YXRpb24uCj4+Cj4+IENjOiBEaGluYWthcmFuIFBhbmRpeWFuIDxkaGluYWthcmFuLnBhbmRp
eWFuQGludGVsLmNvbT4KPj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNv
bT4KPj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBp
bnRlbC5jb20+Cj4+IFNpZ25lZC1vZmYtYnk6IEx1Y2FzIERlIE1hcmNoaSA8bHVjYXMuZGVtYXJj
aGlAaW50ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3Vw
dGFAaW50ZWwuY29tPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYyB8IDcgKysrLS0tLQo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25z
KCspLCA0IGRlbGV0aW9ucygtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAKPj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4+IGluZGV4IDM2YmRjMTZmYjQzYi4uNmVlZGQ4MjgxZTcyIDEwMDY0NAo+
PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPj4gQEAgLTU3OCwxMSAr
NTc4LDEwIEBAIHZvaWQgaW50ZWxfcHNyX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcCAK
Pj4gKmludGVsX2RwLAo+PiDCoMKgwqDCoMKgIC8qCj4+IMKgwqDCoMKgwqDCoCAqIEhTVyBzcGVj
IGV4cGxpY2l0bHkgc2F5cyBQU1IgaXMgdGllZCB0byBwb3J0IEEuCj4+IC3CoMKgwqDCoCAqIEJE
VysgcGxhdGZvcm1zIGhhdmUgYSBpbnN0YW5jZSBvZiBQU1IgcmVnaXN0ZXJzIHBlciB0cmFuc2Nv
ZGVyIAo+PiBidXQKPj4gLcKgwqDCoMKgICogZm9yIG5vdyBpdCBvbmx5IHN1cHBvcnRzIG9uZSBp
bnN0YW5jZSBvZiBQU1IsIHNvIGxldHMga2VlcCBpdAo+PiAtwqDCoMKgwqAgKiBoYXJkY29kZWQg
dG8gUE9SVF9BCj4+ICvCoMKgwqDCoMKgwqDCoMKgICogQkRXKyBwbGF0Zm9ybXMgd2l0aCBEREkg
aW1wbGVtZW50YXRpb24gb2YgUFNSIGhhdmUgZGlmZmVyZW50Cj4+ICvCoMKgwqDCoCAqIFBTUiBy
ZWdpc3RlcnMgcGVyIHRyYW5zY29kZXIuCj4+IMKgwqDCoMKgwqDCoCAqLwo+PiAtwqDCoMKgIGlm
IChkaWdfcG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkgewo+PiArwqDCoMKgIGlmIChJU19IQVNX
RUxMKGRldl9wcml2KSAmJiBkaWdfcG9ydC0+YmFzZS5wb3J0ICE9IFBPUlRfQSkgewo+PiDCoMKg
wqDCoMKgwqDCoMKgwqAgRFJNX0RFQlVHX0tNUygiUFNSIGNvbmRpdGlvbiBmYWlsZWQ6IFBvcnQg
bm90IHN1cHBvcnRlZFxuIik7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCByZXR1cm47Cj4+IMKgwqDC
oMKgwqAgfQo+Pgo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
