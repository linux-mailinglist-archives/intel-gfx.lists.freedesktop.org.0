Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA9B049B83
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 09:52:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F9066E0D3;
	Tue, 18 Jun 2019 07:52:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06B4C6E0D3
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 07:52:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 00:52:01 -0700
X-ExtLoop1: 1
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 18 Jun 2019 00:52:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20190617071912.20256-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20190617071912.20256-1-chris@chris-wilson.co.uk>
Date: Tue, 18 Jun 2019 10:54:54 +0300
Message-ID: <87pnnbtjjl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 01/22] drm/i915: Restore
 -Wunused-but-set-variable
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
Cc: matthew.auld@intel.com, mika.kuoppala@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxNyBKdW4gMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFdlIGFwcGVhciB0byBiZSBjbGVhciBvZiB0aGlzIHdhcm5pbmcsIHNvIHRp
bWUgdG8gcmUtZW5hYmxlIHRoZSBnY2MgZXJyb3IKPiBjaGVja2luZy4KPgo+IFNpZ25lZC1vZmYt
Ynk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVrPgoKQWNrZWQtYnk6IEph
bmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgoKPiAtLS0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvTWFrZWZpbGUgfCAxIC0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgZGVsZXRpb24oLSkK
Pgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L01ha2VmaWxlCj4gaW5kZXggYzBhN2IyOTk0MDc3Li5mNDk3MTkwMDA4N2Eg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZQo+IEBAIC0xNyw3ICsxNyw2IEBAIHN1YmRpci1jY2Zs
YWdzLXkgKz0gJChjYWxsIGNjLWRpc2FibGUtd2FybmluZywgdW51c2VkLXBhcmFtZXRlcikKPiAg
c3ViZGlyLWNjZmxhZ3MteSArPSAkKGNhbGwgY2MtZGlzYWJsZS13YXJuaW5nLCB0eXBlLWxpbWl0
cykKPiAgc3ViZGlyLWNjZmxhZ3MteSArPSAkKGNhbGwgY2MtZGlzYWJsZS13YXJuaW5nLCBtaXNz
aW5nLWZpZWxkLWluaXRpYWxpemVycykKPiAgc3ViZGlyLWNjZmxhZ3MteSArPSAkKGNhbGwgY2Mt
ZGlzYWJsZS13YXJuaW5nLCBpbXBsaWNpdC1mYWxsdGhyb3VnaCkKPiAtc3ViZGlyLWNjZmxhZ3Mt
eSArPSAkKGNhbGwgY2MtZGlzYWJsZS13YXJuaW5nLCB1bnVzZWQtYnV0LXNldC12YXJpYWJsZSkK
PiAgIyBjbGFuZyB3YXJuaW5ncwo+ICBzdWJkaXItY2NmbGFncy15ICs9ICQoY2FsbCBjYy1kaXNh
YmxlLXdhcm5pbmcsIHNpZ24tY29tcGFyZSkKPiAgc3ViZGlyLWNjZmxhZ3MteSArPSAkKGNhbGwg
Y2MtZGlzYWJsZS13YXJuaW5nLCBzb21ldGltZXMtdW5pbml0aWFsaXplZCkKCi0tIApKYW5pIE5p
a3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
