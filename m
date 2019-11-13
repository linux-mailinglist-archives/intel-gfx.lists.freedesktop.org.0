Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB7AFAEFB
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2019 11:51:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6117D6ECD0;
	Wed, 13 Nov 2019 10:51:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D93106ECD0
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Nov 2019 10:51:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Nov 2019 02:51:45 -0800
X-IronPort-AV: E=Sophos;i="5.68,300,1569308400"; d="scan'208";a="198406842"
Received: from mpotanix-mobl2.ccr.corp.intel.com (HELO [10.252.20.183])
 ([10.252.20.183])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 Nov 2019 02:51:44 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191108142250.22709-1-chris@chris-wilson.co.uk>
 <20191108142250.22709-2-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <65123fb8-5f90-2453-0f09-2b521e02018d@linux.intel.com>
Date: Wed, 13 Nov 2019 10:51:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108142250.22709-2-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] i915/gem_exec_fence: Allow GPU
 resets during hang checks
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

Ck9uIDA4LzExLzIwMTkgMTQ6MjIsIENocmlzIFdpbHNvbiB3cm90ZToKPiBUaGUgcGFpciBvZiAq
LWhhbmctYWxsIHdpbGwgZ2VuZXJhdGUgc3VmZmljaWVudCBoYW5ncyBmb3IgdGhlIGtlcm5lbCB0
bwo+IGJhbiB0aGUgY2xpZW50LiBUaGlzIGlzIHVuZm9ydHVuYXRlIGFzIGl0IG1lYW5zIGFsbCBm
dXJ0aGVyIHRlc3RzIGFyZQo+IHNraXBwZWQuIEFzayBuaWNlbHkgbm90IHRvIGJlIGJhbm5lZC4K
PiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51
az4KPiAtLS0KPiAgIHRlc3RzL2k5MTUvZ2VtX2V4ZWNfZmVuY2UuYyB8IDcgKysrKysrKwo+ICAg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS90ZXN0cy9p
OTE1L2dlbV9leGVjX2ZlbmNlLmMgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMKPiBpbmRl
eCBkMmQyNmEyOGIuLjRlOGJkZDdiMyAxMDA2NDQKPiAtLS0gYS90ZXN0cy9pOTE1L2dlbV9leGVj
X2ZlbmNlLmMKPiArKysgYi90ZXN0cy9pOTE1L2dlbV9leGVjX2ZlbmNlLmMKPiBAQCAtMTUyMiw2
ICsxNTIyLDggQEAgaWd0X21haW4KPiAgIAl9Cj4gICAKPiAgIAlpZ3Rfc3VidGVzdF9ncm91cCB7
Cj4gKwkJaWd0X2hhbmdfdCBoYW5nOwo+ICsKPiAgIAkJaWd0X2ZpeHR1cmUgewo+ICAgCQkJaWd0
X2ZvcmtfaGFuZ19kZXRlY3RvcihpOTE1KTsKPiAgIAkJfQo+IEBAIC0xNTMzLDEyICsxNTM1LDE3
IEBAIGlndF9tYWluCj4gICAKPiAgIAkJaWd0X2ZpeHR1cmUgewo+ICAgCQkJaWd0X3N0b3BfaGFu
Z19kZXRlY3RvcigpOwo+ICsJCQloYW5nID0gaWd0X2FsbG93X2hhbmcoaTkxNSwgMCwgMCk7Cj4g
ICAJCX0KPiAgIAo+ICAgCQlpZ3Rfc3VidGVzdCgiYnVzeS1oYW5nLWFsbCIpCj4gICAJCQl0ZXN0
X2ZlbmNlX2J1c3lfYWxsKGk5MTUsIEhBTkcpOwo+ICAgCQlpZ3Rfc3VidGVzdCgid2FpdC1oYW5n
LWFsbCIpCj4gICAJCQl0ZXN0X2ZlbmNlX2J1c3lfYWxsKGk5MTUsIFdBSVQgfCBIQU5HKTsKPiAr
Cj4gKwkJaWd0X2ZpeHR1cmUgewo+ICsJCQlpZ3RfZGlzYWxsb3dfaGFuZyhpOTE1LCBoYW5nKTsK
PiArCQl9Cj4gICAJfQo+ICAgCj4gICAJZm9yIChlID0gaW50ZWxfZXhlY3V0aW9uX2VuZ2luZXM7
IGUtPm5hbWU7IGUrKykgewo+IAoKUmV2aWV3ZWQtYnk6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28u
dXJzdWxpbkBpbnRlbC5jb20+CgpSZWdhcmRzLAoKVHZydGtvCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
