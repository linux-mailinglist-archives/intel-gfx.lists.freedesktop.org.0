Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D50FF8D7
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2019 14:26:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5788909F;
	Tue, 30 Apr 2019 12:26:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C7AF8909F
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2019 12:26:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 05:26:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,413,1549958400"; d="scan'208";a="169277512"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.150])
 by fmsmga001.fm.intel.com with ESMTP; 30 Apr 2019 05:26:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <155661821603.27886.681631146794852677@skylake-alporthouse-com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1556540889.git.jani.nikula@intel.com>
 <155661821603.27886.681631146794852677@skylake-alporthouse-com>
Date: Tue, 30 Apr 2019 15:28:26 +0300
Message-ID: <871s1jr82d.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 00/21] drm/i915: the great header
 refactoring, part two
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

T24gVHVlLCAzMCBBcHIgMjAxOSwgQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28u
dWs+IHdyb3RlOgo+IFF1b3RpbmcgSmFuaSBOaWt1bGEgKDIwMTktMDQtMjkgMTM6Mjk6MTgpCj4+
IENvbnRpbnVlIHRoZSBoZWFkZXIgcmVmYWN0b3Jpbmcgc3RhcnRlZCBpbiBwYXJ0IG9uZSBbMV0u
Cj4+IAo+PiBCUiwKPj4gSmFuaS4KPj4gCj4+IFsxXSBodHRwczovL3BhdGNod29yay5mcmVlZGVz
a3RvcC5vcmcvc2VyaWVzLzU5MDIyLwo+PiAKPj4gCj4+IEphbmkgTmlrdWxhICgyMSk6Cj4+ICAg
ZHJtL2k5MTU6IGVuc3VyZSBtb3JlIGhlYWRlcnMgcmVtYWluIHNlbGYtY29udGFpbmVkCj4+ICAg
ZHJtL2k5MTU6IG1ha2UgaW50ZWxfYmlvcy5oIHNlbGYtY29udGFpbmVkCj4+ICAgZHJtL2k5MTUv
ZHZvOiByZW5hbWUgZHZvLmggdG8gaW50ZWxfZHZvX2Rldi5oIGFuZCBtYWtlIHNlbGYtY29udGFp
bmVkCj4+ICAgZHJtL2k5MTU6IG1ha2UgaW50ZWxfZHBsbF9tZ3IuaCBzZWxmLWNvbnRhaW5lZAo+
PiAgIGRybS9pOTE1OiBtb3ZlIGRzaSBpbml0IGZ1bmN0aW9ucyB0byBpbnRlbF9kc2kuaAo+PiAg
IGRybS9pOTE1OiBleHRyYWN0IGludGVsX2ZpZm9fdW5kZXJydW4uaCBmcm9tIGludGVsX2Rydi5o
Cj4+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfZHBfbGlua190cmFpbmluZy5oIGZyb20gaW50
ZWxfZHJ2LmgKPj4gICBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9kcF9hdXhfYmFja2xpZ2h0Lmgg
ZnJvbSBpbnRlbF9kcnYuaAo+PiAgIGRybS9pOTE1OiBleHRyYWN0IGk5MTVfaXJxLmggZnJvbSBp
bnRlbF9kcnYuaCBhbmQgaTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2hv
dHBsdWcuaCBmcm9tIGludGVsX2Rydi5oIGFuZCBpOTE1X2Rydi5oCj4+ICAgZHJtL2k5MTU6IGV4
dHJhY3QgaW50ZWxfYmlvcy5oIGZ1bmN0aW9ucyBmcm9tIGk5MTVfZHJ2LmgKPj4gICBkcm0vaTkx
NTogZXh0cmFjdCBpbnRlbF9xdWlya3MuaCBmcm9tIGludGVsX2Rydi5oCj4+ICAgZHJtL2k5MTU6
IGV4dHJhY3QgaW50ZWxfb3ZlcmxheS5oIGZyb20gaW50ZWxfZHJ2LmggYW5kIGk5MTVfZHJ2LmgK
Pj4gICBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF92ZHNjLmggZnJvbSBpbnRlbF9kcnYuaCBhbmQg
aTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2RwX21zdC5oIGZyb20gaW50
ZWxfZHJ2LmgKPj4gICBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9kc2lfZGNzX2JhY2tsaWdodC5o
IGZyb20gaW50ZWxfZHJ2LmgKPj4gICBkcm0vaTkxNTogZXh0cmFjdCBpbnRlbF9hdG9taWMuaCBm
cm9tIGludGVsX2Rydi5oCj4+ICAgZHJtL2k5MTU6IGV4dHJhY3QgaW50ZWxfcnVudGltZV9wbS5o
IGZyb20gaW50ZWxfZHJ2LmgKPj4gICBkcm0vaTkxNTogbW92ZSBzb21lIGxlZnRvdmVycyB0byBp
bnRlbF9wbS5oIGZyb20gaTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1OiBleHRyYWN0IGludGVsX2Nv
bWJvX3BoeS5oIGZyb20gaTkxNV9kcnYuaAo+PiAgIGRybS9pOTE1OiBhZGQgc2luZ2xlIGNvbWJv
IHBoeSBpbml0L3VuaXQgZnVuY3Rpb25zCj4KPiBJIHJlYWQgdGhlbSBhbGwgYW5kIHRoZXkgbG9v
ayBzYW5lLiBJIHRydXN0IHRoZSBIRFJURVNUIGluZnJhc3RydWN0dXJlCj4gdG8gc3BvdCBhbnkg
dHlwb3MsIHNvCj4KPiBSZXZpZXdlZC1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxz
b24uY28udWs+CgpUaGFua3MsIHB1c2hlZCBldmVyeXRoaW5nIGV4Y2VwdCB0aGUgbGFzdCBvbmUg
d2hpY2ggY29uZmxpY3RzLiBXaWxsIHBvc3QKYSByZWJhc2VkIHZlcnNpb24uCgpJIGRvbid0IHRo
aW5rIGFueSBvZiB0aGVzZSBjb3VsZCBjYXVzZSB0aGUgcmVwb3J0ZWQgQ0kgaW5jb21wbGV0ZXMu
CgpCUiwKSmFuaS4KCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNz
IENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
