Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D65F851
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jul 2019 14:40:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F2E0C6E33B;
	Thu,  4 Jul 2019 12:39:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A6E46E33B
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jul 2019 12:39:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Jul 2019 05:39:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,451,1557212400"; d="scan'208";a="155041187"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga007.jf.intel.com with ESMTP; 04 Jul 2019 05:39:56 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 7E5B15C1EB4; Thu,  4 Jul 2019 15:39:49 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <156223599157.25091.6847916886153823523@skylake-alporthouse-com>
References: <20190703171913.16585-1-chris@chris-wilson.co.uk>
 <20190703171913.16585-4-chris@chris-wilson.co.uk>
 <87lfxe2j6u.fsf@gaia.fi.intel.com>
 <156223599157.25091.6847916886153823523@skylake-alporthouse-com>
Date: Thu, 04 Jul 2019 15:39:49 +0300
Message-ID: <87a7du2ctm.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Flush the workqueue before
 draining
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
Cc: matthew.auld@intel.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gUXVvdGlu
ZyBNaWthIEt1b3BwYWxhICgyMDE5LTA3LTA0IDExOjIyOjE3KQo+PiBDaHJpcyBXaWxzb24gPGNo
cmlzQGNocmlzLXdpbHNvbi5jby51az4gd3JpdGVzOgo+PiAKPj4gPiBUcnlpbmcgdG8gZHJhaW4g
YSB3b3JrcXVldWUgd2hpbGUgd2UgbWF5IHN0aWxsIGJlIGFkZGluZyB0byBpdCBmcm9tCj4+ID4g
YmFja2dyb3VuZCB0YXNrcyBpcywgYWNjb3JkaW5nIHRvIGtlcm5lbC93b3JrcXVldWUuYywgdmVy
Ym90ZW4uIFNvLCBhZGQKPj4gPiBhIGZsdXNoX3dvcmtxdWV1ZSgpIGF0IHRoZSBzdGFydCBvZiBv
dXIgY2xlYW51cCBwcm9jZWR1cmUuCj4+IAo+PiBJIGRvbid0IGdldCBpdC4gZHJhaW5fd29ya3F1
ZXVlIGRvZXMgaXQncyBvd24gZmx1c2hpbmcuCj4KPiBPcmRlcmluZyBpcyBpbXBvcnRhbnQgaGVy
ZS4gVGhlIHByb2JsZW0gd2l0aCBkcmFpbl93b3JrcXVldWUoKSBpcyB0aGF0Cj4gaXMgZm9yYmlk
cyB1cyBmcm9tIGFkZGluZyBtb3JlIHRhc2tzIGludG8gdGhlIHdvcmtxdWV1ZSBhcyBpdCBkcmFp
bnMsIHNvCj4gYmVmb3JlIHdlIGRyYWluIHdlIG11c3QgcGx1Zy4KPgo+IEl0J3MganVzdCBhZGRp
bmcgbW9yZSBoYW1tZXJzLiBFdmVudHVhbGx5IGl0J2xsIGJyZWFrLgoKSWYgc28sIHRoZW4gd2Ug
anVzdCBpbmNyZWFzZSBwYXNzZXM/IDopCgpPaywgSSB3YXMgZ29pbmcgdG8gc2F5IHdlIGRvbid0
IGFkZCB0byBmcmVlIHdvcmsgZnJvbQphbnkgb2YgaXQncyBoYW5kbGVycy4KCkJ1dCB0aGVuIHJl
YWxpemVkIHRoaXMgaXMgbm90IGFib3V0IHRoZSBmcmVlIGxpc3QgaGFuZGxpbmcsCmV2ZW4gdGhv
IHRoZSBmcmVlZCBvYmplY3RzIGlzIGRyYWluZWQgYWxvbmcuCgpBbmQgeWVzLCBkcmFpbiBvbmx5
IGhhbmRsZXMgZmx1c2hpbmcgZm9yIGl0J3MgY2hhaW4uCgpSZXZpZXdlZC1ieTogTWlrYSBLdW9w
cGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cgo+IC1DaHJpcwpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
