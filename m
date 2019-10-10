Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E863D2E59
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Oct 2019 18:09:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 720AD6EAF0;
	Thu, 10 Oct 2019 16:09:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 311F06EAF0
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Oct 2019 16:09:31 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Oct 2019 09:09:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,280,1566889200"; d="scan'208";a="207219673"
Received: from creinhar-mobl.ger.corp.intel.com (HELO [10.252.42.40])
 ([10.252.42.40])
 by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2019 09:09:30 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009211947.6815-1-chris@chris-wilson.co.uk>
 <20191009211947.6815-9-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <48c66bf0-dc49-812f-fecd-11688a49b339@intel.com>
Date: Thu, 10 Oct 2019 19:09:29 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009211947.6815-9-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 9/9] drm/i915/execlists: Prevent merging
 requests with conflicting flags
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

T24gMTAvMTAvMjAxOSAwMDoxOSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIHNldCBvdXQtb2Yt
Ym91bmQgcGFyYW1ldGVycyBpbnNpZGUgdGhlIGk5MTVfcmVxdWVzdHMuZmxhZ3MgZmllbGQsCj4g
c3VjaCBhcyBkaXNhYmxpbmcgcHJlZW1wdGlvbiBvciBtYXJraW5nIHRoZSBlbmQtb2YtY29udGV4
dC4gV2Ugc2hvdWxkCj4gbm90IGNvYWxlc2NlIGNvbnNlY3V0aXZlIHJlcXVlc3RzIGlmIHRoZXkg
aGF2ZSBkaWZmZXJpbmcgaW5zdHJ1Y3Rpb25zCj4gYXMgd2Ugb25seSBpbnNwZWN0IHRoZSBsYXN0
IGFjdGl2ZSByZXF1ZXN0IGluIGEgY29udGV4dC4gVGh1cyBpZiB3ZQo+IGFsbG93IGEgbGF0ZXIg
cmVxdWVzdCB0byBiZSBtZXJnZWQgaW50byB0aGUgc2FtZSBleGVjdXRpb24gY29udGV4dCwgaXQK
PiB3aWxsIG1hc2sgYW55IG9mIHRoZSBlYXJsaWVyIGZsYWdzLgo+Cj4gUmVmZXJlbmNlczogMmE5
OGY0ZTY1YmJhICgiZHJtL2k5MTU6IGFkZCBpbmZyYXN0cnVjdHVyZSB0byBob2xkIG9mZiBwcmVl
bXB0aW9uIG9uIGEgcmVxdWVzdCIpCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJp
c0BjaHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IExpb25lbCBMYW5kd2VybGluIDxsaW9uZWwuZy5s
YW5kd2VybGluQGludGVsLmNvbT4KCk5pY2UuCgpSZXZpZXdlZC1ieTogTGlvbmVsIExhbmR3ZXJs
aW4gPGxpb25lbC5nLmxhbmR3ZXJsaW5AaW50ZWwuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jIHwgMyArKysKPiAgIDEgZmlsZSBjaGFuZ2VkLCAzIGlu
c2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gaW5kZXggN2Vh
NTgzMzVmMDRjLi5kMDY4N2E5NGM4ZDkgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfbHJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9s
cmMuYwo+IEBAIC0xMjMzLDYgKzEyMzMsOSBAQCBzdGF0aWMgYm9vbCBjYW5fbWVyZ2VfcnEoY29u
c3Qgc3RydWN0IGk5MTVfcmVxdWVzdCAqcHJldiwKPiAgIAlpZiAoaTkxNV9yZXF1ZXN0X2NvbXBs
ZXRlZChuZXh0KSkKPiAgIAkJcmV0dXJuIHRydWU7Cj4gICAKPiArCWlmICh1bmxpa2VseShwcmV2
LT5mbGFncyBeIG5leHQtPmZsYWdzKSAmIEk5MTVfUkVRVUVTVF9OT1BSRUVNUFQpCj4gKwkJcmV0
dXJuIGZhbHNlOwo+ICsKPiAgIAlpZiAoIWNhbl9tZXJnZV9jdHgocHJldi0+aHdfY29udGV4dCwg
bmV4dC0+aHdfY29udGV4dCkpCj4gICAJCXJldHVybiBmYWxzZTsKPiAgIAoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
