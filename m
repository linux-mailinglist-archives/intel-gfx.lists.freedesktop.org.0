Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BDDC36595C
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Apr 2021 14:57:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D08C36E4FF;
	Tue, 20 Apr 2021 12:57:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08B926E4FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Apr 2021 12:57:50 +0000 (UTC)
IronPort-SDR: d2AU26KbuQYfIDps6a+a+KqUkmWjPUmDj2cdpyHIhqbknQb4gyXqrLZi9/hJpzkrIfJGA3/X6g
 vCuB/HYboaCA==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="182992343"
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; d="scan'208";a="182992343"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 05:57:50 -0700
IronPort-SDR: gNBe1e0jvZueKPWg21VSkEmUzboog+/g/6dlq0FDWux9kQpE3639Kjnajemaqh6PlU6QvvTnlP
 3qB1LUEA6WNg==
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; d="scan'208";a="426916067"
Received: from karunatx-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.35.249])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2021 05:57:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210416171011.19012-1-ville.syrjala@linux.intel.com>
Date: Tue, 20 Apr 2021 15:57:45 +0300
Message-ID: <87mttt9kqe.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/8] drm/i915: dbuf cleanups
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

T24gRnJpLCAxNiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBBIGJ1bmNoIG9mIGRyaXZlLWJ5LWNsZWFudXAgV2hpbGUgSSB3
YXMgcmVhZGluZyB0aHJvdWdoCj4gdGhlIGRidWYgY29kZS4KCkdvb2Qgc3R1ZmYuIE9uIHRoZSBz
ZXJpZXMsCgpSZXZpZXdlZC1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4K
ClNvbWUgdGhvdWdodHMgcHJvdm9rZWQgYnkgdGhlIHNlcmllczoKCiogVGltZSB0byBzdGFydCBz
cGxpdHRpbmcgdXAgZGJ1Zi9kZGIvd20gc3R1ZmYgZnJvbSBpbnRlbF9wbS5bY2hdIHRvCiAgc2Vw
YXJhdGUgZmlsZShzKSB1bmRlciBkaXNwbGF5Lz8KCiogVGltZSB0byBzdGFydCBtb3ZpbmcgbW9y
ZSBkaXNwbGF5IHJlbGF0ZWQgc3RydWN0IGludGVsX2RldmljZV9pbmZvCiAgZmllbGRzIHVuZGVy
IHRoZSBkaXNwbGF5IHN1YnN0cnVjdD8KCkJSLApKYW5pLgoKCj4KPiBWaWxsZSBTeXJqw6Rsw6Qg
KDgpOgo+ICAgZHJtL2k5MTU6IENvbGxlY3QgZGJ1ZiBkZXZpY2UgaW5mbyBpbnRvIGEgc3ViLXN0
cnVjdAo+ICAgZHJtL2k5MTU6IEhhbmRsZSBkYnVmIGJ5cGFzcyBwYXRoIGFsbG9jYXRpb24gZWFy
bGllcgo+ICAgZHJtL2k5MTU6IFN0b3JlIGRidWYgc2xpY2UgbWFzayBpbiBkZXZpY2UgaW5mbwo+
ICAgZHJtL2k5MTU6IFVzZSBpbnRlbF9kYnVmX3NsaWNlX3NpemUoKQo+ICAgZHJtL2k5MTU6IFVz
ZSBpbnRlbF9kZV9ybXcoKSBmb3IgREJVRl9QT1dFUl9SRVFVRVNUCj4gICBkcm0vaTkxNTogUG9s
aXNoIGZvcl9lYWNoX2RidWZfc2xpY2UoKQo+ICAgZHJtL2k5MTU6IEFkZCBlbmFibGVkaXNhYmxl
KCkKPiAgIGRybS9pOTE1OiBTYXkgImVuYWJsZSBmb28iIGluc3RlYWQgb2YgInNldCBmb28gdG8g
ZW5hYmxlZCIKPgo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmMgICAg
ICAgfCAxMSArKy0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5j
ICAgICAgfCAgNCArLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuaCAgfCAgOSArKy0tCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcG93
ZXIuYyAgICB8IDI0ICsrKystLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jICAgICAgIHwgMTQgKysrLS0tCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwX2F1eF9iYWNrbGlnaHQuYyB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfdGMuYyAgICAgICB8ICA0ICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGNpLmMgICAgICAgICAgICAgICB8IDE2ICsrKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV91dGlscy5oICAgICAgICAgICAgIHwgIDUgKysrCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX2RldmljZV9pbmZvLmggICAgICB8ICA2ICsrLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF9wbS5jICAgICAgICAgICAgICAgfCA0NSArKysrKysrLS0tLS0tLS0tLS0tCj4gIGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3BtLmggICAgICAgICAgICAgICB8ICAxICsKPiAgMTIg
ZmlsZXMgY2hhbmdlZCwgNjUgaW5zZXJ0aW9ucygrKSwgNzYgZGVsZXRpb25zKC0pCgotLSAKSmFu
aSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0
CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3Rv
cC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
