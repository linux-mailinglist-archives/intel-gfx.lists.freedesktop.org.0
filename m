Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C6C85847C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Jun 2019 16:30:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B0A6E4AA;
	Thu, 27 Jun 2019 14:30:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74BE96E4AA
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Jun 2019 14:30:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 07:30:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,424,1557212400"; d="scan'208";a="189084770"
Received: from lswidere-mobl.ger.corp.intel.com (HELO [10.249.140.121])
 ([10.249.140.121])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jun 2019 07:30:51 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20190627142306.11445-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <4fa142b8-f67d-5af7-8c50-260ec135ad85@intel.com>
Date: Thu, 27 Jun 2019 17:30:49 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190627142306.11445-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Hesitate before slicing
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

T24gMjcvMDYvMjAxOSAxNzoyMywgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEJlIGEgbGl0dGxlIG1v
cmUgaGVzaXRhbnQgYmVmb3JlIGluamVjdGluZyBhIHRpbWVzbGljZSwgYW5kIHRyeSB0byB0YWtl
Cj4gaW50byBhY2NvdW50IGFueSBjaGFuZ2UgaW4gcHJpb3JpdHkgdGhhdCBpcyBkdWUgZm9yIHRo
ZSBydW5uaW5nIHRhc2sKPiBiZWZvcmUgc3dpdGNoaW5nIHRvIGFub3RoZXIgdGFzay4gVGhpcyB3
aWxsIGFsbG93IHVzIHRvIGFyYml0cmFyaWx5Cj4gcHJldmVudCBzd2l0Y2hpbmcgYXdheSBmcm9t
IGEgcmVxdWVzdCBpZiB3ZSBkZWVtIGl0IG5lY2Vzc2FyaWx5IHRvCj4gZGlzYWJsZSBwcmVlbXB0
aW9uLCBmb3IgaW5zdGFuY2UuCj4KPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGlu
QGludGVsLmNvbT4KPiBDYzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRl
bC5jb20+Cj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVs
LmNvbT4KCgpEZXNjcmlwdGlvbiBzb3VuZHMgbGlrZSB3aGF0IEknbSBsb29raW5nIGZvciBmb3Ig
cGVyZiBxdWVyaWVzIHdpdGggCmdsb2JhbCBjb3VudGVycy4KCgpBY2tlZC1ieTogTGlvbmVsIExh
bmR3ZXJsaW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKCj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfbHJjLmMKPiBpbmRleCA0NzFlMTM0ZGUxODYuLjliYmFiNzk2Mzk1MSAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gQEAgLTg5OSw3ICs4OTksNyBAQCBuZWVkX3RpbWVz
bGljZShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUsIGNvbnN0IHN0cnVjdCBpOTE1X3Jl
cXVlc3QgKnJxKQo+ICAgCWhpbnQgPSBtYXgocnFfcHJpbyhsaXN0X25leHRfZW50cnkocnEsIHNj
aGVkLmxpbmspKSwKPiAgIAkJICAgZW5naW5lLT5leGVjbGlzdHMucXVldWVfcHJpb3JpdHlfaGlu
dCk7Cj4gICAKPiAtCXJldHVybiBoaW50ID49IHJxX3ByaW8ocnEpOwo+ICsJcmV0dXJuIGhpbnQg
Pj0gZWZmZWN0aXZlX3ByaW8ocnEpOwo+ICAgfQo+ICAgCj4gICBzdGF0aWMgYm9vbAoKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWls
aW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZy
ZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
