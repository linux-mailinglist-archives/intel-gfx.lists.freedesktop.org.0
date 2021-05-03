Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B5AC6371EC8
	for <lists+intel-gfx@lfdr.de>; Mon,  3 May 2021 19:38:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23BA589ED3;
	Mon,  3 May 2021 17:38:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 79F7689ED3
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 May 2021 17:38:22 +0000 (UTC)
IronPort-SDR: GrW366DxYh+T2M+04tCKKFgnr3wnx6GVXoanMChzzC1mSlBDGS0t1XyndNyWqz5hbXsiKv7BQt
 uRDna83tQ0DA==
X-IronPort-AV: E=McAfee;i="6200,9189,9973"; a="261748112"
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="261748112"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:38:21 -0700
IronPort-SDR: +TWkoORK0j5u3zr/1rSzP35P1vQnwKDiTLqgltmfQ89DB/0OfYoOvyKOS06ug3csoB6eI28Vim
 pVZsAT4xRdtA==
X-IronPort-AV: E=Sophos;i="5.82,270,1613462400"; d="scan'208";a="432847424"
Received: from tbashir-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.126])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2021 10:38:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210429134450.302912-1-janusz.krzysztofik@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210429134450.302912-1-janusz.krzysztofik@linux.intel.com>
Date: Mon, 03 May 2021 20:38:17 +0300
Message-ID: <87zgxbzpiu.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix wrong name announced on FB
 driver switching
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
Cc: , Daniel Vetter <daniel.vetter@ffwll.ch>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyOSBBcHIgMjAyMSwgSmFudXN6IEtyenlzenRvZmlrIDxqYW51c3oua3J6eXN6dG9m
aWtAbGludXguaW50ZWwuY29tPiB3cm90ZToKPiBDb21taXQgN2EwZjllZjk3MDNkICgiZHJtL2k5
MTU6IFVzZSBkcm1fZmJfaGVscGVyX2ZpbGxfaW5mbyIpCj4gZWZmZWN0aXZlbHkgY2hhbmdlZCBv
dXIgRkIgZHJpdmVyIG5hbWUgZnJvbSAiaW50ZWxkcm1mYiIgdG8KPiAiaTkxNWRybWZiIi4gIEhv
d2V2ZXIsIHdlIGFyZSBzdGlsbCB1c2luZyB0aGUgb2xkIG5hbWUgd2hlbiBraWNraW5nIG91dAo+
IGEgZmlybXdhcmUgZmJkZXYgZHJpdmVyIHBvdGVudGlhbGx5IGJvdW5kIHRvIG91ciBkZXZpY2Uu
ICBVc2UgdGhlIG5ldwo+IG5hbWUgdG8gYXZvaWQgY29uZnVzaW9uLgo+Cj4gTm90ZTogc2luY2Ug
dGhlIG5ldyBuYW1lIGlzIGFzc2lnbmVkIGJ5IGEgRFJNIGZiZGV2IGhlbHBlciBjYWxsZWQgYXQK
PiB0aGUgRFJNIGRyaXZlciByZWdpc3RyYXRpb24gdGltZSwgdGhhdCBuYW1lIGlzIG5vdCBhdmFp
bGFibGUgd2hlbiB3ZQo+IGtpY2sgdGhlIG90aGVyIGRyaXZlciBvdXQgZWFybHksIGhlbmNlIGEg
aGFyZGNvZGVkIG5hbWUgbXVzdCBiZSB1c2VkCj4gdW5sZXNzIHRoZSBEUk0gbGF5ZXIgZXhwb3Nl
cyBhIG1hY3JvIGZvciBjb252ZXJ0aW5nIGEgRFJNIGRyaXZlciBuYW1lCj4gdG8gaXRzIGFzc29j
aWF0ZWQgZmJkZXYgZHJpdmVyIG5hbWUuCj4KPiBTaWduZWQtb2ZmLWJ5OiBKYW51c3ogS3J6eXN6
dG9maWsgPGphbnVzei5rcnp5c3p0b2Zpa0BsaW51eC5pbnRlbC5jb20+CgpMR1RNLCBEYW5pZWw/
CgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4KCiQgZGlt
IGZpeGVzIDdhMGY5ZWY5NzAzZApGaXhlczogN2EwZjllZjk3MDNkICgiZHJtL2k5MTU6IFVzZSBk
cm1fZmJfaGVscGVyX2ZpbGxfaW5mbyIpCkNjOiBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0cm9u
bmVzLm9yZz4KQ2M6IEFsZXggRGV1Y2hlciA8YWxleGFuZGVyLmRldWNoZXJAYW1kLmNvbT4KQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4KQ2M6IEpvb25hcyBMYWh0aW5lbiA8am9vbmFz
LmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4KQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4KQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKQ2M6IDxzdGFi
bGVAdmdlci5rZXJuZWwub3JnPiAjIHY1LjIrCgoKPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9kcnYuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAx
IGRlbGV0aW9uKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9k
cnYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJ2LmMKPiBpbmRleCA3ODVkY2YyMGM3
N2IuLjQ2MDgyNDkwZGM5YSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X2Rydi5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcnYuYwo+IEBAIC01NTQs
NyArNTU0LDcgQEAgc3RhdGljIGludCBpOTE1X2RyaXZlcl9od19wcm9iZShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqZGV2X3ByaXYpCj4gIAlpZiAocmV0KQo+ICAJCWdvdG8gZXJyX3BlcmY7Cj4g
IAo+IC0JcmV0ID0gZHJtX2FwZXJ0dXJlX3JlbW92ZV9jb25mbGljdGluZ19wY2lfZnJhbWVidWZm
ZXJzKHBkZXYsICJpbnRlbGRybWZiIik7Cj4gKwlyZXQgPSBkcm1fYXBlcnR1cmVfcmVtb3ZlX2Nv
bmZsaWN0aW5nX3BjaV9mcmFtZWJ1ZmZlcnMocGRldiwgImk5MTVkcm1mYiIpOwo+ICAJaWYgKHJl
dCkKPiAgCQlnb3RvIGVycl9nZ3R0OwoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJj
ZSBHcmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
