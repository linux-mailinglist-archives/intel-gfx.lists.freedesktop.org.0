Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BBCDE8627
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2019 11:53:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B5EF6E1D5;
	Tue, 29 Oct 2019 10:52:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DB5C6E1D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2019 10:52:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:52:57 -0700
X-IronPort-AV: E=Sophos;i="5.68,243,1569308400"; d="scan'208";a="193567890"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Oct 2019 03:52:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20191029103947.7535-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191029103947.7535-1-jani.nikula@intel.com>
Date: Tue, 29 Oct 2019 12:52:53 +0200
Message-ID: <87a79jakmy.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: only include
 intel_dp_link_training.h where needed
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyOSBPY3QgMjAxOSwgSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4g
d3JvdGU6Cj4gVGhlIGludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCBpbmNsdWRlIGhhcyBubyBuZWVk
IG9yIHBsYWNlIGluCj4gaW50ZWxfZGlzcGxheS5oLiBJbmNsdWRlIGl0IGluIGludGVsX2Rpc3Bs
YXkuYyBpbnN0ZWFkLgo+Cj4gQ2M6CgpXaG9vcHMsIG9idmlvdXNseSB0byBiZSByZW1vdmVkIGJl
Zm9yZSBtZXJnaW5nLgoKQlIsCkphbmkuCgo+Cj4gQ2M6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5k
Lm5hdmFyZUBpbnRlbC5jb20+Cj4gRml4ZXM6IGVhZGY2ZjkxNzBkNSAoImRybS9pOTE1L2Rpc3Bs
YXkvaWNsOiBFbmFibGUgbWFzdGVyLXNsYXZlcyBpbiB0cmFucyBwb3J0IHN5bmMiKQo+IFNpZ25l
ZC1vZmYtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIHwgMSArCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMSAtCj4gIDIgZmlsZXMg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggOWRjZTJlOWU1Mzc2Li41
MDVkNjk3ZjZiNGMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYwo+IEBAIC02Niw2ICs2Niw3IEBACj4gICNpbmNsdWRlICJpbnRlbF9jZGNsay5o
Igo+ICAjaW5jbHVkZSAiaW50ZWxfY29sb3IuaCIKPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlf
dHlwZXMuaCIKPiArI2luY2x1ZGUgImludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCIKPiAgI2luY2x1
ZGUgImludGVsX2ZiYy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfZmJkZXYuaCIKPiAgI2luY2x1ZGUg
ImludGVsX2ZpZm9fdW5kZXJydW4uaCIKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaAo+IGluZGV4IGNhN2NhMjgwNGQ4Yi4uNzI3OGY5YWVlOGNhIDEwMDY0
NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmgKPiBAQCAt
MjcsNyArMjcsNiBAQAo+ICAKPiAgI2luY2x1ZGUgPGRybS9kcm1fdXRpbC5oPgo+ICAjaW5jbHVk
ZSA8ZHJtL2k5MTVfZHJtLmg+Cj4gLSNpbmNsdWRlICJpbnRlbF9kcF9saW5rX3RyYWluaW5nLmgi
Cj4gIAo+ICBlbnVtIGxpbmtfbV9uX3NldDsKPiAgc3RydWN0IGRwbGw7CgotLSAKSmFuaSBOaWt1
bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
