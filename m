Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF9915D6B7
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 12:44:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EFD36E5A2;
	Fri, 14 Feb 2020 11:44:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 286A76E5A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 11:44:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 03:44:40 -0800
X-IronPort-AV: E=Sophos;i="5.70,440,1574150400"; d="scan'208";a="222994020"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 03:44:39 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <158167844647.10420.11414553000061385342@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200211161451.6867-1-jani.nikula@intel.com>
 <20200211161451.6867-2-jani.nikula@intel.com>
 <158167844647.10420.11414553000061385342@skylake-alporthouse-com>
Date: Fri, 14 Feb 2020 13:44:36 +0200
Message-ID: <87r1yxwfyz.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: split out display debugfs
 to a separate file
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

T24gRnJpLCAxNCBGZWIgMjAyMCwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMjAtMDItMTEgMTY6MTQ6NTEpCj4+
IFRoZSBpOTE1X2RlYnVnZnMuYyBoYXMgZ3Jvd24gbW9yZSB0aGFuIGEgbGl0dGxlIHVud2llbGR5
LiBTcGxpdCBvdXQgdGhlCj4+IGRpc3BsYXkgcmVsYXRlZCBkZWJ1Z2ZzIGNvZGUgdG8gYSBmaWxl
IG9mIGl0cyBvd24gdW5kZXIgZGlzcGxheS8sCj4+IGluaXRpYWxpemVkIHdpdGggYSBzZXBhcmF0
ZSBjYWxsLiBObyBmdW5jdGlvbmFsIGNoYW5nZXMuCj4+IAo+PiB2MjoKPj4gLSBBbHNvIG1vdmVk
IGk5MTVfZnJvbnRidWZmZXJfdHJhY2tpbmcsIGk5MTVfZ2VtX2ZyYW1lYnVmZmVyLAo+PiAgIGk5
MTVfcG93ZXJfZG9tYWluX2luZm8sIGk5MTVfZG1jX2luZm8sIGk5MTVfaXBjX3N0YXR1cyAoVmls
bGUpCj4+IAo+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4KPiBUaGUgZGlmZiB1bm5lcnZlZCBtZSwgYnV0IEkgY291bGRuJ3Qgc3BvdCBhbnl0aGluZyBv
dGhlciB0aGFuIGNvZGUgbW90aW9uLgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlz
QGNocmlzLXdpbHNvbi5jby51az4KCk1hbnkgdGhhbmtzLCBwdXNoZWQgdG8gZGlucS4KCkJSLApK
YW5pLgoKCi0tIApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVy
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
