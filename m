Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C2C248D75
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 19:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E3389EB8;
	Tue, 18 Aug 2020 17:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 952CB89EB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 17:47:52 +0000 (UTC)
IronPort-SDR: 0yASr7kyw/hAKmDdZOiFBFH/NZx/EebTiyFqg6mMbuWTaDoz0PTw2nLlx+s5hGfgsIik4N0D1Y
 iO+dZsgnaS3Q==
X-IronPort-AV: E=McAfee;i="6000,8403,9717"; a="154939047"
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="154939047"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 10:47:51 -0700
IronPort-SDR: rKzUeGkzl1liGW5Tezn6PBhx7bUfQOBHTeLtbA6tzFqmg0Y28MWepDqIICYPUy64R2r2geE9Ip
 HUa/RfW2Y/CQ==
X-IronPort-AV: E=Sophos;i="5.76,328,1592895600"; d="scan'208";a="320173425"
Received: from rdvivi-losangeles.jf.intel.com (HELO intel.com)
 ([10.165.21.201])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2020 10:47:51 -0700
Date: Tue, 18 Aug 2020 13:49:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200818174919.GA3311723@intel.com>
References: <CA+GA0_srCED0nX7XkiuOBxsxPy8xskG0Z-Lu9bWnD=tknnJNww@mail.gmail.com>
 <159775188083.667.5734044425203263287@build.alporthouse.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <159775188083.667.5734044425203263287@build.alporthouse.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: obey "reset" module
 parameter
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
Cc: intel-gfx@lists.freedesktop.org,
 Marcin =?utf-8?Q?=C5=9Alusarz?= <marcin.slusarz@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBBdWcgMTgsIDIwMjAgYXQgMTI6NTg6MDBQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgTWFyY2luIMWabHVzYXJ6ICgyMDIwLTA4LTE4IDEyOjM2OjA3KQo+ID4g
RnJvbTogTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBpbnRlbC5jb20+Cj4gPiAKPiA+
IEZvciBzb21lIHJlYXNvbiBpbnRlbF9ndF9yZXNldCBhdHRlbXB0cyB0byByZXNldCB0aGUgR1BV
IHR3aWNlLgo+ID4gT24gb25lIGNvZGUgcGF0aCAoZG9fcmVzZXQpICJyZXNldCIgcGFyYW1ldGVy
IGlzIG9iZXllZCwgYnV0IGlzCj4gPiBub3Qgb24gdGhlIG90aGVyIG9uZSAoX19pbnRlbF9ndF9z
ZXRfd2VkZ2VkKS4KPiAKPiBJdCdzIG5vdCB0aGF0IHNpbXBsZSwgd2UgZG8gd2FudCB0byBmb3Jj
ZSBfX2ludGVsX2d0X3NldF93ZWRnZWQoKSB0bwo+IGNhbmNlbCB3aGF0ZXZlciBpcyBydW5uaW5n
IG9uIHRoZSBHUFUgYXMgaXQgaXMgdXNlZCBmb3IgbW9yZSB0aGFuIGp1c3QKPiBmYWlsaW5nIHJl
c2V0cyAoZS5nLiBhcm91bmQgY29udHJvbCBib3VuZGFyaWVzKSByZWdhcmRsZXNzIG9mIHdoYXQg
dGhlCj4gdXNlciBtYXkgd2FudC4KPiAKPiBJJ20gbG9hdGhlIHRvIGFkZCBhIHBhcmFtZXRlciBq
dXN0IHRvIGVuYWJsZSB1bnNhZmUgYmVoYXZpb3VyLCBidXQgdGhhdAo+IG1heSBiZSB0aGUgY29t
cHJvbWlzZS4KCndlIHByb2JhYmx5IG5lZWQgdGhpcyBjb21wcm9taXNlIGZvciB0aGVzZSBjYXNl
cyBNYXJjaW4gZmFjZWQuLi4KCndoYXQgYWJvdXQgbW92aW5nIHRoaXMgdG8gaW50ZWxfZ2V0X2dw
dV9yZXNldCgpPwoKCkBib29sIGludGVsX2hhc19ncHVfcmVzZXQoY29uc3Qgc3RydWN0IGludGVs
X2d0ICpndCkKLQkJaWYgKCFndC0+aTkxNS0+cGFyYW1zLnJlc2V0KQotCQkJcmV0dXJuIE5VTEw7
CgpAIHN0YXRpYyByZXNldF9mdW5jIGludGVsX2dldF9ncHVfcmVzZXQoY29uc3Qgc3RydWN0IGlu
dGVsX2d0ICpndCkKKwkJaWYgKCFndC0+aTkxNS0+cGFyYW1zLnJlc2V0KQorCQkJcmV0dXJuIE5V
TEw7Cgo+IC1DaHJpcwo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
