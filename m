Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDD6245062
	for <lists+intel-gfx@lfdr.de>; Sat, 15 Aug 2020 04:17:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E33AF6EC55;
	Sat, 15 Aug 2020 02:17:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA4C6EC55
 for <intel-gfx@lists.freedesktop.org>; Sat, 15 Aug 2020 02:17:00 +0000 (UTC)
IronPort-SDR: zcCpt+udzOrKApT4oaOv/uf4UDXWPy6aYiionvLGGeBxK+76gnHXKRoNUme0FpsnFalPpjyKl9
 shcsHTrjSaig==
X-IronPort-AV: E=McAfee;i="6000,8403,9713"; a="134571255"
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="134571255"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Aug 2020 19:16:59 -0700
IronPort-SDR: b2aaqcIH1wZ3Chnl5PaiKjRLx+9QWc5M+MXUMCMq66HKUzIOVTuolrb9myYxhkpGoJiDI+bArh
 hNX6pGV04OEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,314,1592895600"; d="scan'208";a="333564935"
Received: from orsmsx606-2.jf.intel.com (HELO ORSMSX606.amr.corp.intel.com)
 ([10.22.229.86])
 by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2020 19:16:59 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 14 Aug 2020 19:16:59 -0700
Received: from [10.209.97.116] (10.22.254.132) by ORSMSX610.amr.corp.intel.com
 (10.22.229.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 14 Aug
 2020 19:16:58 -0700
From: "Chang, Bruce" <yu.bruce.chang@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, <intel-gfx@lists.freedesktop.org>
References: <20200814155735.29138-1-chris@chris-wilson.co.uk>
 <20200814155735.29138-2-chris@chris-wilson.co.uk>
 <4e8f3929-06d9-9183-f5ed-9cf18abf40dc@intel.com>
 <159743033592.31882.10893400044974332038@build.alporthouse.com>
 <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
Message-ID: <1e1abf15-21ed-5c8a-56b2-da34fc67439d@intel.com>
Date: Fri, 14 Aug 2020 19:16:58 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <66272f87-c6c1-2b45-87f4-cf54303ab44b@intel.com>
Content-Language: en-US
X-Originating-IP: [10.22.254.132]
X-ClientProxiedBy: orsmsx607.amr.corp.intel.com (10.22.229.20) To
 ORSMSX610.amr.corp.intel.com (10.22.229.23)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: Wait for CSB entries on
 Tigerlake
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
Cc: stable@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gOC8xNC8yMDIwIDU6MzYgUE0sIENoYW5nLCBCcnVjZSB3cm90ZToKPgo+Pj4+IEBAIC0yNDk4
LDkgKzI0OTgsMjIgQEAgaW52YWxpZGF0ZV9jc2JfZW50cmllcyhjb25zdCB1NjQgKmZpcnN0LCAK
Pj4+PiBjb25zdCB1NjQgKmxhc3QpCj4+Pj4gwqDCoMKgICovCj4+Pj4gwqDCoCBzdGF0aWMgaW5s
aW5lIGJvb2wgZ2VuMTJfY3NiX3BhcnNlKGNvbnN0IHU2NCAqY3NiKQo+Pj4+IMKgwqAgewo+Pj4+
IC3CoMKgwqDCoCB1NjQgZW50cnkgPSBSRUFEX09OQ0UoKmNzYik7Cj4+Pj4gLcKgwqDCoMKgIGJv
b2wgY3R4X2F3YXlfdmFsaWQgPSBHRU4xMl9DU0JfQ1RYX1ZBTElEKHVwcGVyXzMyX2JpdHMoZW50
cnkpKTsKPj4+PiAtwqDCoMKgwqAgYm9vbCBuZXdfcXVldWUgPQo+Pj4+ICvCoMKgwqDCoCBib29s
IGN0eF9hd2F5X3ZhbGlkOwo+Pj4+ICvCoMKgwqDCoCBib29sIG5ld19xdWV1ZTsKPj4+PiArwqDC
oMKgwqAgdTY0IGVudHJ5Owo+Pj4+ICsKPj4+PiArwqDCoMKgwqAgLyogWFhYIEhTRCAqLwo+Pj4+
ICvCoMKgwqDCoCBlbnRyeSA9IFJFQURfT05DRSgqY3NiKTsKPj4+PiArwqDCoMKgwqAgaWYgKHVu
bGlrZWx5KGVudHJ5ID09IC0xKSkgewo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJl
ZW1wdF9kaXNhYmxlKCk7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpZiAod2FpdF9m
b3JfYXRvbWljX3VzKChlbnRyeSA9IFJFQURfT05DRSgqY3NiKSkgIT0gCj4+Pj4gLTEsIDUwKSkK
Pj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBHRU1fV0FSTl9P
TigiNTB1cyBDU0IgdGltZW91dCIpOwo+Pj4gT3V0IHRlc3RzIHNob3dlZCB0aGF0IDEwdXMgaXMg
bm90IGxvbmcgZW5vdWdoLCBidXQgMjB1cyB3b3JrZWQgd2VsbC4gU28KPj4+IDUwdXMgc2hvdWxk
IGJlIGdvb2QgZW5vdWdoLgo+Cj4gSnVzdCByZWFsaXplZCB0aGlzIG1heSBub3QgZnVsbHkgd29y
aywgYXMgb25lIG9mIHRoZSBjb21tb24gaXNzdWUgd2UgCj4gcnVuIGludG8gaXMgdGhhdCBoaWdo
ZXIgMzJiaXQgaXMgdXBkYXRlZCBmcm9tIHRoZSBIVywgYnV0IGxvd2VyIDMyYml0IAo+IHVwZGF0
ZSBhdCBhIGxhdGVyIHRpbWU6IG1lYW5pbmcgdGhlIGNzYiB3aWxsIHJlYWQgbGlrZSAKPiAweEZG
RkZGRkZGOnh4eHh4eHh4IChsb3c6aGlnaCkgLiBTbyB0aGlzIGNoZWNrICghPSAtMSkgY2FuIHN0
aWxsIHBhc3MgCj4gYnV0IHdpdGggYSBwYXJ0aWFsIGludmFsaWQgY3NiIHN0YXR1cy4gU28sIHdl
IG1heSBuZWVkIHRvIGNoZWNrIGVhY2ggCj4gMzJiaXQgc2VwYXJhdGVseS4KPgpBZnRlciB0ZXN0
ZWQsIHdpdGggdGhlIG5ldyA2NGJpdCByZWFkLCB0aGUgYWJvdmUgaXNzdWUgbmV2ZXIgaGFwcGVu
ZWQgc28gCmZhci4gU28sIGl0IHNlZW1zIHRoaXMgb25seSBhcHBsaWNhYmxlIHRvIDMyYml0IHJl
YWQgKENTQiB1cGRhdGVkIApiZXR3ZWVuIHRoZSB0d28gbG93ZXIgYW5kIGhpZ2ggMzJiaXQgcmVh
ZHMpLiBBc3N1bWluZyB0aGUgSFcgNjRiaXQgQ1NCIAp1cGRhdGUgaXMgYWxzbyBhdG9taWMsIHRo
ZSBhYm92ZSBjb2RlIHNob3VsZCBiZSBmaW5lLgoKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgIHByZWVtcHRfZW5hYmxlKCk7Cj4+Pj4gK8KgwqDCoMKgIH0KPj4+PiArwqDCoMKgwqAgV1JJ
VEVfT05DRSgqKHU2NCAqKWNzYiwgLTEpOwo+Pj4gQSB3bWIoKSBpcyBwcm9iYWJseSBuZWVkZWQg
aGVyZS4gaXQgc2hvdWxkIGJlIG9rIGlmIENTQiBpcyBpbiBTTUVNLCBidXQKPj4+IGluIHRoZSBj
YXNlIENTQiBpcyBhbGxvY2F0ZWQgaW4gTE1FTSwgdGhlIG1lbW9yeSB0eXBlIHdpbGwgYmUgV0Ms
IHNvIAo+Pj4gdGhlCj4+PiBtZW1vcnkgd3JpdGUgKFdSSVRFX09OQ0UpIGlzIHBvdGVudGlhbGx5
IHN0aWxsIGluIHRoZSB3cml0ZSBjb21iaW5lCj4+PiBidWZmZXIgYW5kIG5vdCBpbiBhbnkgY2Fj
aGUgc3lzdGVtLCBpLmUuLCBub3QgdmlzaWJsZSB0byBIVy4KPiBfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxt
YW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
