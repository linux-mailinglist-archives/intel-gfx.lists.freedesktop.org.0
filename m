Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A4733A7E43
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Jun 2021 14:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54CAB6E2ED;
	Tue, 15 Jun 2021 12:35:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C05366E2E3;
 Tue, 15 Jun 2021 12:35:22 +0000 (UTC)
IronPort-SDR: PHKsVc0H80ADA/jvX5KjlBHi1LogSAcZQF04iNRgjBWmYxSwfQOoceLLz8Yb4OwuiLQL07kJ2U
 CQs+HhHUM7cA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="269829221"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="269829221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 05:35:20 -0700
IronPort-SDR: 0ppNb/nI+vahgTzDi26pSb+IbJ3yS7yB3SPGF0rePm3iTDY3yYmeExgvzccD5a/9bj+GPPyFaq
 kMtiX7DKorbQ==
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; d="scan'208";a="484455237"
Received: from aperelma-mobl.ger.corp.intel.com (HELO [10.252.37.64])
 ([10.252.37.64])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2021 05:35:18 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
References: <20210615122408.32347-1-thomas.hellstrom@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <222f7ebd-d746-f6b9-3524-f3195a95e3aa@linux.intel.com>
Date: Tue, 15 Jun 2021 14:35:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210615122408.32347-1-thomas.hellstrom@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/ttm: Fix memory leaks
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTUtMDYtMjAyMSBvbSAxNDoyNCBzY2hyZWVmIFRob21hcyBIZWxsc3Ryw7ZtOgo+IEZpeCB0
d28gbWVtb3J5IGxlYWtzIGludHJvZHVjZWQgd2l0aCB0aGUgdHRtIGJhY2tlbmQuCj4KPiBGaXhl
czogMjEzZDUwOTI3NzYzICgiZHJtL2k5MTUvdHRtOiBJbnRyb2R1Y2UgYSBUVE0gaTkxNSBnZW0g
b2JqZWN0IGJhY2tlbmQiKQo+IFNpZ25lZC1vZmYtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9t
YXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jIHwgMiArKwo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2Vt
X3R0bS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gaW5kZXgg
MDhiNzJjMjgwY2I1Li44MDU5Y2I2MWJjM2MgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ2VtL2k5MTVfZ2VtX3R0bS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2Vt
L2k5MTVfZ2VtX3R0bS5jCj4gQEAgLTEyMiw2ICsxMjIsNyBAQCBzdGF0aWMgdm9pZCBpOTE1X3R0
bV90dF9kZXN0cm95KHN0cnVjdCB0dG1fZGV2aWNlICpiZGV2LCBzdHJ1Y3QgdHRtX3R0ICp0dG0p
Cj4gIAlzdHJ1Y3QgaTkxNV90dG1fdHQgKmk5MTVfdHQgPSBjb250YWluZXJfb2YodHRtLCB0eXBl
b2YoKmk5MTVfdHQpLCB0dG0pOwo+ICAKPiAgCXR0bV90dF9kZXN0cm95X2NvbW1vbihiZGV2LCB0
dG0pOwo+ICsJdHRtX3R0X2ZpbmkodHRtKTsKPiAgCWtmcmVlKGk5MTVfdHQpOwo+ICB9Cj4gIAo+
IEBAIC0yMTcsNiArMjE4LDcgQEAgc3RhdGljIHZvaWQgaTkxNV90dG1fZGVsZXRlX21lbV9ub3Rp
Znkoc3RydWN0IHR0bV9idWZmZXJfb2JqZWN0ICpibykKPiAgCj4gIAlpZiAobGlrZWx5KG9iaikp
IHsKPiAgCQkvKiBUaGlzIHJlbGVhc2VzIGFsbCBnZW0gb2JqZWN0IGJpbmRpbmdzIHRvIHRoZSBi
YWNrZW5kLiAqLwo+ICsJCWk5MTVfdHRtX2ZyZWVfY2FjaGVkX2lvX3N0KG9iaik7Cj4gIAkJX19p
OTE1X2dlbV9mcmVlX29iamVjdChvYmopOwo+ICAJfQo+ICB9CgpSZXZpZXdlZC1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
