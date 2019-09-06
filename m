Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06340AC167
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 22:28:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5768D6E132;
	Fri,  6 Sep 2019 20:28:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB6F76E130
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 20:28:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 13:28:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,474,1559545200"; d="scan'208";a="183240460"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga008.fm.intel.com with ESMTP; 06 Sep 2019 13:28:47 -0700
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190906194757.10881-1-anusha.srivatsa@intel.com>
 <20190906194757.10881-2-anusha.srivatsa@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <2b372dbd-76a1-69f9-1231-14dd30659712@intel.com>
Date: Fri, 6 Sep 2019 13:28:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190906194757.10881-2-anusha.srivatsa@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/9] drm/i915/uc: Update MAKE_HUC_FW_PATH
 macro
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

T24gOS82LzE5IDEyOjQ3IFBNLCBBbnVzaGEgU3JpdmF0c2Egd3JvdGU6Cj4gVXBkYXRlIE1BS0Vf
SFVDX0ZXX1BBVEggbWFjcm8gdG8gZm9sbG93IHRoZSBzYW1lIGNvbnZlbnRpb24KPiBhcyB0aGUg
TUFLRV9HVUNfRldfUEFUSCB3aXRoIHRoZSBzZXBhcmF0b3IgY2hhbmdpbmcgZnJvbSAiXyIgdG8g
Ii4iCj4gYW5kIHJlbW92aW5nICJ2ZXIiLgo+IAo+IFRoZSBjdXJyZW50IGNvbnZlbnRpb24gYmVp
bmc6Cj4gPHBsYXRmb3JtPl88Zy9oPnVjXzxtYWpvcj4uPG1pbm9yPi5wYXRjaC5iaW4KPiAKPiBT
dWdnZXN0ZWQtYnk6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJp
b0BpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogQW51c2hhIFNyaXZhdHNhIDxhbnVzaGEuc3Jp
dmF0c2FAaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50
ZWxfdWNfZncuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9p
bnRlbF91Y19mdy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvaW50ZWxfdWNfZncuYwo+
IGluZGV4IDI5NmE4MjYwM2JlMC4uMTZhNWFhOGZlMTVhIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX3VjX2Z3LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF91Y19mdy5jCj4gQEAgLTU4LDcgKzU4LDcgQEAgdm9pZCBpbnRlbF91
Y19md19jaGFuZ2Vfc3RhdHVzKHN0cnVjdCBpbnRlbF91Y19mdyAqdWNfZncsCj4gICAJX19NQUtF
X1VDX0ZXX1BBVEgocHJlZml4XywgIl9ndWNfIiwgIi4iLCBtYWpvcl8sIG1pbm9yXywgcGF0Y2hf
KQo+ICAgCj4gICAjZGVmaW5lIE1BS0VfSFVDX0ZXX1BBVEgocHJlZml4XywgbWFqb3JfLCBtaW5v
cl8sIGJsZF9udW1fKSBcCj4gLQlfX01BS0VfVUNfRldfUEFUSChwcmVmaXhfLCAiX2h1Y192ZXIi
LCAiXyIsIG1ham9yXywgbWlub3JfLCBibGRfbnVtXykKPiArCV9fTUFLRV9VQ19GV19QQVRIKHBy
ZWZpeF8sICJfaHVjXyIsICIuIiwgbWFqb3JfLCBtaW5vcl8sIGJsZF9udW1fKQoKU2luY2UgdGhl
IGZvcm1hdCBpcyBub3cgdGhlIHNhbWUgYmV0d2VlbiBHdUMgYW5kIEh1QyB3ZSBjYW4gc3RvcCBw
YXNzaW5nIAp0aGUgc2VwYXJhdG9yIHRvIF9fTUFLRV9VQ19GV19QQVRIIGFuZCBqdXN0IGhhcmNv
ZGUgIi4iIGluIHRoZXJlLgoKRGFuaWVsZQoKPiAgIAo+ICAgLyogQWxsIGJsb2JzIG5lZWQgdG8g
YmUgZGVjbGFyZWQgdmlhIE1PRFVMRV9GSVJNV0FSRSgpICovCj4gICAjZGVmaW5lIElOVEVMX1VD
X01PRFVMRV9GVyhwbGF0Zm9ybV8sIHJldmlkXywgZ3VjXywgaHVjXykgXAo+IApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
