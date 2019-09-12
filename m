Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3257AB15A5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 22:59:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9ACE16EE27;
	Thu, 12 Sep 2019 20:59:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C59FB6EE27
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 20:59:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 13:59:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="269209602"
Received: from jjiang35-mobl1.ger.corp.intel.com (HELO [10.252.53.130])
 ([10.252.53.130])
 by orsmga001.jf.intel.com with ESMTP; 12 Sep 2019 13:58:57 -0700
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20190912130109.5873-1-maarten.lankhorst@linux.intel.com>
 <20190912143415.D8F552081B@mail.kernel.org>
 <db913560-ee38-71e0-39e8-28bc75bbdc5e@linux.intel.com>
 <20190912180524.GA1208@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <395f8c15-25fd-7168-f00c-22f30db2ce25@linux.intel.com>
Date: Thu, 12 Sep 2019 22:58:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190912180524.GA1208@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/dp: Fix dsc bpp calculations.
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
Cc: Sasha Levin <sashal@kernel.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTItMDktMjAxOSBvbSAyMDowNSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzDpDoKPiBPbiBUaHUs
IFNlcCAxMiwgMjAxOSBhdCAwNjowMTo1N1BNICswMjAwLCBNYWFydGVuIExhbmtob3JzdCB3cm90
ZToKPj4gSGV5LAo+Pgo+PiBPcCAxMi0wOS0yMDE5IG9tIDE2OjM0IHNjaHJlZWYgU2FzaGEgTGV2
aW46Cj4+PiBIaSwKPj4+Cj4+PiBbVGhpcyBpcyBhbiBhdXRvbWF0ZWQgZW1haWxdCj4+Pgo+Pj4g
VGhpcyBjb21taXQgaGFzIGJlZW4gcHJvY2Vzc2VkIGJlY2F1c2UgaXQgY29udGFpbnMgYSAiRml4
ZXM6IiB0YWcsCj4+PiBmaXhpbmcgY29tbWl0OiBkOTIxOGM4ZjZjZjQgZHJtL2k5MTUvZHA6IEFk
ZCBoZWxwZXJzIGZvciBDb21wcmVzc2VkIEJQUCBhbmQgU2xpY2UgQ291bnQgZm9yIERTQy4KPj4+
Cj4+PiBUaGUgYm90IGhhcyB0ZXN0ZWQgdGhlIGZvbGxvd2luZyB0cmVlczogdjUuMi4xNC4KPj4+
Cj4+PiB2NS4yLjE0OiBGYWlsZWQgdG8gYXBwbHkhIFBvc3NpYmxlIGRlcGVuZGVuY2llczoKPj4+
ICAgICBVbmFibGUgdG8gY2FsY3VsYXRlCj4+Pgo+Pj4KPj4+IE5PVEU6IFRoZSBwYXRjaCB3aWxs
IG5vdCBiZSBxdWV1ZWQgdG8gc3RhYmxlIHRyZWVzIHVudGlsIGl0IGlzIHVwc3RyZWFtLgo+Pj4K
Pj4+IEhvdyBzaG91bGQgd2UgcHJvY2VlZCB3aXRoIHRoaXMgcGF0Y2g/Cj4+Pgo+Pj4gLS0KPj4+
IFRoYW5rcywKPj4+IFNhc2hhCj4+IFdoeSBpcyB0aGlzIGJvdCBhc2tpbmcgZm9yIHBhdGNoZXMg
b24gdGhlIHRyeWJvdCBtYWlsaW5nIGxpc3Q/Cj4gRGlkIHlvdSBmb3JnZXQgLS1zdXBwcmVzcy1j
Yz1hbGwgPwo+CkFoIHRoYXQncyBpdCwgdGhhbmtzISA6KQoKfk1hYXJ0ZW4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
