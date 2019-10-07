Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 642C3CECE4
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2019 21:36:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC56F89257;
	Mon,  7 Oct 2019 19:36:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EC1389257
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Oct 2019 19:36:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Oct 2019 12:36:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,269,1566889200"; d="scan'208";a="183526207"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.135])
 by orsmga007.jf.intel.com with ESMTP; 07 Oct 2019 12:36:41 -0700
Date: Mon, 7 Oct 2019 12:37:05 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191007193705.GG6810@mdroper-desk1.amr.corp.intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-3-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004113514.17064-3-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 02/24] drm/i915: Fix
 for_each_intel_plane_mask definition
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBPY3QgMDQsIDIwMTkgYXQgMDE6MzQ6NTJQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gVXNpbmcgZm9yX2VhY2hfaW50ZWxfcGxhbmVfbWFzaygpIGZhaWxzIGJlY2F1
c2Ugb2YgYW4gZXh0cmEgYnJhY2tldCwKPiByZW1vdmUgdGhlIGJyYWNrZXQgc28gd2UgY2FuIHVz
ZSBpdCBpbiB0aGUgbmV4dCBjb21taXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBN
YXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgoKPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAyICstCj4gIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggMjc4MmYyM2VlODg3Li40ZGVk
NjRmY2JjNmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuaAo+IEBAIC0zNTAsNyArMzUwLDcgQEAgZW51bSBwaHlfZmlhIHsKPiAgCQkJICAgICYo
ZGV2KS0+bW9kZV9jb25maWcucGxhbmVfbGlzdCwJCVwKPiAgCQkJICAgIGJhc2UuaGVhZCkJCQkJ
CVwKPiAgCQlmb3JfZWFjaF9pZigocGxhbmVfbWFzaykgJgkJCQlcCj4gLQkJCSAgICBkcm1fcGxh
bmVfbWFzaygmaW50ZWxfcGxhbmUtPmJhc2UpKSkKPiArCQkJICAgIGRybV9wbGFuZV9tYXNrKCZp
bnRlbF9wbGFuZS0+YmFzZSkpCj4gIAo+ICAjZGVmaW5lIGZvcl9lYWNoX2ludGVsX3BsYW5lX29u
X2NydGMoZGV2LCBpbnRlbF9jcnRjLCBpbnRlbF9wbGFuZSkJXAo+ICAJbGlzdF9mb3JfZWFjaF9l
bnRyeShpbnRlbF9wbGFuZSwJCQkJXAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlz
dAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gCk1hdHQgUm9wZXIKR3Jh
cGhpY3MgU29mdHdhcmUgRW5naW5lZXIKVlRULU9TR0MgUGxhdGZvcm0gRW5hYmxlbWVudApJbnRl
bCBDb3Jwb3JhdGlvbgooOTE2KSAzNTYtMjc5NQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
