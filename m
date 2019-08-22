Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFAC99649
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Aug 2019 16:21:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2AF486EB5C;
	Thu, 22 Aug 2019 14:20:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3C3C6EB56
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Aug 2019 14:20:57 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 05:55:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,416,1559545200"; d="scan'208";a="203399983"
Received: from gkoczot-mobl.ger.corp.intel.com (HELO [10.252.52.80])
 ([10.252.52.80])
 by fmsmga004.fm.intel.com with ESMTP; 22 Aug 2019 05:55:14 -0700
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
References: <20190816080503.28594-1-lucas.demarchi@intel.com>
 <20190816080503.28594-15-lucas.demarchi@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <c28f06e8-dc27-aed7-ffbb-c59791a92a75@linux.intel.com>
Date: Thu, 22 Aug 2019 14:55:14 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190816080503.28594-15-lucas.demarchi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/39] drm/i915: Add
 for_each_new_intel_connector_in_state()
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTYtMDgtMjAxOSBvbSAxMDowNCBzY2hyZWVmIEx1Y2FzIERlIE1hcmNoaToKPiBGcm9tOiBK
b3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPgo+IFRoZSBzYW1l
IG1hY3JvIGFzIGZvcl9lYWNoX25ld19jb25uZWN0b3JfaW5fc3RhdGUoKSBidXQgaXQgdXNlcwo+
IGludGVsL2k5MTUgdHlwZXMgaW5zdGVhZCBvZiB0aGUgZHJtIG9uZXMuCj4KPiBTaWduZWQtb2Zm
LWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0K
PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCA4ICsrKysr
KysrCj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggZTU3ZTY5NjkwNTFkLi5m
ZDMwNDNlNzdiNTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuaAo+IEBAIC00MTEsNiArNDExLDE0IEBAIGVudW0gcGh5X2ZpYSB7Cj4gIAkgICAg
IChfX2kpKyspIFwKPiAgCQlmb3JfZWFjaF9pZihjcnRjKQo+ICAKPiArI2RlZmluZSBmb3JfZWFj
aF9uZXdfaW50ZWxfY29ubmVjdG9yX2luX3N0YXRlKF9fc3RhdGUsIGNvbm5lY3RvciwgbmV3X2Nv
bm5lY3Rvcl9zdGF0ZSwgX19pKSBcCj4gKwlmb3IgKChfX2kpID0gMDsgXAo+ICsJICAgICAoX19p
KSA8IChfX3N0YXRlKS0+YmFzZS5udW1fY29ubmVjdG9yOyBcCj4gKwkgICAgIChfX2kpKyspIFwK
PiArCQlmb3JfZWFjaF9pZiAoKF9fc3RhdGUpLT5iYXNlLmNvbm5lY3RvcnNbX19pXS5wdHIgJiYg
XAo+ICsJCQkgICAgICgoY29ubmVjdG9yKSA9IHRvX2ludGVsX2Nvbm5lY3RvcigoX19zdGF0ZSkt
PmJhc2UuY29ubmVjdG9yc1tfX2ldLnB0ciksIFwKPiArCQkJICAgICAobmV3X2Nvbm5lY3Rvcl9z
dGF0ZSkgPSB0b19pbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSgoX19zdGF0ZSktPmJhc2Uu
Y29ubmVjdG9yc1tfX2ldLm5ld19zdGF0ZSksIDEpKQo+ICsKPiAgdm9pZCBpbnRlbF9saW5rX2Nv
bXB1dGVfbV9uKHUxNiBicHAsIGludCBubGFuZXMsCj4gIAkJCSAgICBpbnQgcGl4ZWxfY2xvY2ss
IGludCBsaW5rX2Nsb2NrLAo+ICAJCQkgICAgc3RydWN0IGludGVsX2xpbmtfbV9uICptX24sCgpI
ZXksCgpUaGlzIGlzIHNsaWdodGx5IGludmFsaWQsIGFzIGludGVsX3R2X2Nvbm5lY3Rvcl9zdGF0
ZSBkb2Vzbid0IHN1YmNsYXNzIGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlLCBpdCBzdWJj
bGFzc2VzIGRybV9jb25uZWN0b3Jfc3RhdGUgZGlyZWN0bHkuCgpJIHdvdWxkIGF0IGxlYXN0IGZp
eCBpbnRlbF90di5jIHRvIHRha2UgYSBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSBhcyBi
YXNlIGNsYXNzLgoKV2l0aCB0aGF0IHBhdGNoIGFzIHByZXJlcXVpc2l0ZToKClJldmlld2VkLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4
IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
