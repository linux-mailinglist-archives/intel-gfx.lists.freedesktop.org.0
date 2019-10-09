Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F22D1D10A7
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 15:56:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D4996E9A9;
	Wed,  9 Oct 2019 13:56:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39496E9A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 13:56:21 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 06:56:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,276,1566889200"; d="scan'208";a="187629569"
Received: from sviswa2-mobl.ger.corp.intel.com (HELO [10.252.54.89])
 ([10.252.54.89])
 by orsmga008.jf.intel.com with ESMTP; 09 Oct 2019 06:56:20 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20191009092852.27048-1-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <9fd1ac08-6976-3db7-4b66-0df59d4213b9@intel.com>
Date: Wed, 9 Oct 2019 16:56:19 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191009092852.27048-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/execlists: Prevent merging
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

T24gMDkvMTAvMjAxOSAxMjoyOCwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFdlIHNldCBvdXQtb2Yt
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
YW5kd2VybGluQGludGVsLmNvbT4KCgpPb3BzLCBJIG1pc3NlZCB5b3VyIHBhdGNoIDooCgpJIGd1
ZXNzIHRoaXMgd29ya3MgdG9vLCBwb3RlbnRpYWxseSBwcm92aWRpbmcgYmV0dGVyIHRpbWVzbGlj
aW5nIHRoYW4gCnRoZSB1cGRhdGUgSSBtYWRlLgoKSSdsbCBnaXZlIGl0IGEgZ28gbGF0ZXIsIGJ1
dCBpdCBzb3VuZHMgbGlrZSBpdCBzaG91bGQgd29yay4KCgpUaGFua3MsCgoKLUxpb25lbAoKCj4g
LS0tCj4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9scmMuYyB8IDMgKysrCj4gICAx
IGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9scmMuYwo+IGluZGV4IDZkYjc2MmM1MDliOC4uMmU1MTkyYTllNzk2IDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2xyYy5jCj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfbHJjLmMKPiBAQCAtMTIzMyw2ICsxMjMzLDkgQEAgc3RhdGljIGJv
b2wgY2FuX21lcmdlX3JxKGNvbnN0IHN0cnVjdCBpOTE1X3JlcXVlc3QgKnByZXYsCj4gICAJaWYg
KGk5MTVfcmVxdWVzdF9jb21wbGV0ZWQobmV4dCkpCj4gICAJCXJldHVybiB0cnVlOwo+ICAgCj4g
KwlpZiAodW5saWtlbHkocHJldi0+ZmxhZ3MgXiBuZXh0LT5mbGFncykpCj4gKwkJcmV0dXJuIGZh
bHNlOwo+ICsKPiAgIAlpZiAoIWNhbl9tZXJnZV9jdHgocHJldi0+aHdfY29udGV4dCwgbmV4dC0+
aHdfY29udGV4dCkpCj4gICAJCXJldHVybiBmYWxzZTsKPiAgIAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
