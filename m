Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7CBD3F21
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2019 14:00:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C39656EC28;
	Fri, 11 Oct 2019 12:00:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B23BF6EC39
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2019 12:00:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Oct 2019 05:00:04 -0700
X-IronPort-AV: E=Sophos;i="5.67,284,1566889200"; d="scan'208";a="197560345"
Received: from hemavenk-mobl1.ger.corp.intel.com (HELO [10.251.81.25])
 ([10.251.81.25])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 11 Oct 2019 05:00:02 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191011103345.26013-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <0a22ccc8-dbad-b014-73e5-eaca07f93b6a@linux.intel.com>
Date: Fri, 11 Oct 2019 13:00:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20191011103345.26013-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Only mark incomplete
 requests as -EIO on cancelling
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

Ck9uIDExLzEwLzIwMTkgMTE6MzMsIENocmlzIFdpbHNvbiB3cm90ZToKPiBPbmx5IHRoZSByZXF1
ZXN0cyB0aGF0IGhhdmUgbm90IGNvbXBsZXRlZCBkbyB3ZSB3YW50IHRvIGNoYW5nZSB0aGUKPiBz
dGF0dXMgb2YgdG8gc2lnbmFsIHRoZSAtRUlPIHdoZW4gY2FuY2VsbGluZyB0aGUgaW5mbGlnaHQg
c2V0IG9mIHJlcXVlc3RzCj4gdXBvbiB3ZWRnaW5nLgo+IAo+IFJlcG9ydGVkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IENocmlz
IFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBUdnJ0a28gVXJzdWxpbiA8
dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfbHJjLmMgfCA4ICsrKysrKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5j
Cj4gaW5kZXggYjAwNDk5Y2M3NTg2Li4xZjQ3NzIzMjkwMjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9scmMuYwo+IEBAIC0yNDcsOCArMjQ3LDEyIEBAIHN0YXRpYyB2b2lkIF9fY29u
dGV4dF9waW5fcmVsZWFzZShzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2UpCj4gICAKPiAgIHN0YXRp
YyB2b2lkIG1hcmtfZWlvKHN0cnVjdCBpOTE1X3JlcXVlc3QgKnJxKQo+ICAgewo+IC0JaWYgKCFp
OTE1X3JlcXVlc3Rfc2lnbmFsZWQocnEpKQo+IC0JCWRtYV9mZW5jZV9zZXRfZXJyb3IoJnJxLT5m
ZW5jZSwgLUVJTyk7Cj4gKwlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBsZXRlZChycSkpCj4gKwkJcmV0
dXJuOwo+ICsKPiArCUdFTV9CVUdfT04oaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKHJxKSk7Cj4gKwo+
ICsJZG1hX2ZlbmNlX3NldF9lcnJvcigmcnEtPmZlbmNlLCAtRUlPKTsKPiAgIAlpOTE1X3JlcXVl
c3RfbWFya19jb21wbGV0ZShycSk7Cj4gICB9Cj4gICAKPiAKClJldmlld2VkLWJ5OiBUdnJ0a28g
VXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29tPgoKUmVnYXJkcywKClR2cnRrbwpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
