Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703238F59D
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 00:28:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 57ED96E199;
	Mon, 24 May 2021 22:28:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D92316E199
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 May 2021 22:28:50 +0000 (UTC)
IronPort-SDR: hhiFMZBo/87S9ZojhzRxcWz0HiYdbHkCWnezQokJsl4QJrVfxHNu/4ziyT9r4r/ncGpPAUrG6l
 vZWf+hkB+tiA==
X-IronPort-AV: E=McAfee;i="6200,9189,9994"; a="202087081"
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="202087081"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:28:50 -0700
IronPort-SDR: KiL0njLnWh+DxMvM1sRymg8OTZmngxMFrkqJVO3LfvXCZW+PatvWfdjh9fxMg/dFhthQGO+agk
 mRUWZHw924RA==
X-IronPort-AV: E=Sophos;i="5.82,325,1613462400"; d="scan'208";a="470900596"
Received: from lpnguyen-mobl2.amr.corp.intel.com (HELO [10.209.115.31])
 ([10.209.115.31])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2021 15:28:49 -0700
To: intel-gfx@lists.freedesktop.org
References: <20210524214805.259692-1-jose.souza@intel.com>
 <20210524214805.259692-5-jose.souza@intel.com>
From: Clint Taylor <Clinton.A.Taylor@intel.com>
Message-ID: <eb417513-6d01-7aac-b020-4c03eefa84bf@intel.com>
Date: Mon, 24 May 2021 15:28:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210524214805.259692-5-jose.souza@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915/display/adl_p: Disable PSR2
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDUvMjQvMjEgMjo0OCBQTSwgSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSB3cm90ZToKPiBXZSBh
cmUgbWlzc2luZyB0aGUgaW1wbGVtZW50YXRpb24gb2Ygc29tZSB3b3JrYXJvdW5kcyB0byBlbmFi
bGVkIFBTUjIKPiBpbiBBbGRlcmxha2UgUCwgc28gdG8gYXZvaWQgYW55IENJIHJlcG9ydCBvZiBp
c3N1ZXMgYXJvdW5kIFBTUjIKPiBkaXNhYmxpbmcgaXQgdW50aWwgYWxsIFBTUjIgd29ya2Fyb3Vu
ZHMgYXJlIGltcGxlbWVudGVkLgo+Cj4gQ2M6IEd3YW4tZ3llb25nIE11biA8Z3dhbi1neWVvbmcu
bXVuQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxq
b3NlLnNvdXphQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCAxMCArKysrKysrKysrCj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4g
aW5kZXggYzU3MjEwODYyMjA2Li40NmJkNzc2NjllYWQgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiBAQCAtNzY1LDYgKzc2NSwxNiBAQCBzdGF0aWMgYm9v
bCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLAo+ICAg
CQlyZXR1cm4gZmFsc2U7Cj4gICAJfQo+ICAgCj4gKwkvKgo+ICsJICogV2UgYXJlIG1pc3Npbmcg
dGhlIGltcGxlbWVudGF0aW9uIG9mIHNvbWUgd29ya2Fyb3VuZHMgdG8gZW5hYmxlZCBQU1IyCj4g
KwkgKiBhbHNvIFdpbmRvd3MgdGVhbSBmb3VuZCBpc3N1ZXMgaW4gdGhpcyBzdGVwcGluZyB0aGF0
IGFyZSBjYXVzaW5nCj4gKwkgKiBpc3N1ZXMgaW4gbW9zdCBQU1IyIHBhbmVscy4KPiArCSAqLwo+
ICsJaWYgKElTX0FMREVSTEFLRV9QKGRldl9wcml2KSkgewo+ICsJCWRybV9kYmdfa21zKCZkZXZf
cHJpdi0+ZHJtLCAiUFNSMiBpcyBtaXNzaW5nIHRoZSBpbXBsZW1lbnRhdGlvbiBvZiB3b3JrYXJv
dW5kc1xuIik7Cj4gKwkJcmV0dXJuIGZhbHNlOwo+ICsJfQo+ICsKPiAgIAlpZiAoIXRyYW5zY29k
ZXJfaGFzX3BzcjIoZGV2X3ByaXYsIGNydGNfc3RhdGUtPmNwdV90cmFuc2NvZGVyKSkgewo+ICAg
CQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwKPiAgIAkJCSAgICAiUFNSMiBub3Qgc3VwcG9y
dGVkIGluIHRyYW5zY29kZXIgJXNcbiIsCgpSZXZpZXdlZC1ieTogQ2xpbnQgVGF5bG9yIDxDbGlu
dG9uLkEuVGF5bG9yQGludGVsLmNvbT4KCi1DbGludAoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
