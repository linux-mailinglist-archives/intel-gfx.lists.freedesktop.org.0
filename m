Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9981B178DB9
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 10:46:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C56298991D;
	Wed,  4 Mar 2020 09:46:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C09AC8991D
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 09:46:52 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:46:52 -0800
X-IronPort-AV: E=Sophos;i="5.70,513,1574150400"; d="scan'208";a="233973615"
Received: from ohoehne-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.249.39.231])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 01:46:50 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200304002331.2126072-1-chris@chris-wilson.co.uk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200304002331.2126072-1-chris@chris-wilson.co.uk>
Date: Wed, 04 Mar 2020 11:46:50 +0200
Message-ID: <87d09spi45.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gvt: Inlcude intel_gvt.h where
 needed
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwNCBNYXIgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d2dC9ndnQuYzoyNjQ6NjogZXJyb3I6
IG5vIHByZXZpb3VzIHByb3RvdHlwZSBmb3Ig4oCYaW50ZWxfZ3Z0X2NsZWFuX2RldmljZeKAmSBb
LVdlcnJvcj1taXNzaW5nLXByb3RvdHlwZXNdCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2
dC5jOjMwMTo1OiBlcnJvcjogbm8gcHJldmlvdXMgcHJvdG90eXBlIGZvciDigJhpbnRlbF9ndnRf
aW5pdF9kZXZpY2XigJkgWy1XZXJyb3I9bWlzc2luZy1wcm90b3R5cGVzXQoKT29wcywgc29ycnku
IC9vXAoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+CgoK
Pgo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hyaXNAY2hyaXMtd2lsc29uLmNvLnVr
Pgo+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndnQvZ3Z0LmMgfCAxICsKPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5z
ZXJ0aW9uKCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5j
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jCj4gaW5kZXggODdiZWQzMmYxMTkxLi5h
MTM2N2JkNGZlNTAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Z0L2d2dC5jCj4gQEAgLTM1LDYgKzM1LDcg
QEAKPiAgI2luY2x1ZGUgPGxpbnV4L2t0aHJlYWQuaD4KPiAgCj4gICNpbmNsdWRlICJpOTE1X2Ry
di5oIgo+ICsjaW5jbHVkZSAiaW50ZWxfZ3Z0LmgiCj4gICNpbmNsdWRlICJndnQuaCIKPiAgI2lu
Y2x1ZGUgPGxpbnV4L3ZmaW8uaD4KPiAgI2luY2x1ZGUgPGxpbnV4L21kZXYuaD4KCi0tIApKYW5p
IE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
