Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9ADCBB68
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2019 15:14:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE96C6EB72;
	Fri,  4 Oct 2019 13:14:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1CF656EB72
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Oct 2019 13:14:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Oct 2019 06:14:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,256,1566889200"; d="scan'208";a="196668089"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 04 Oct 2019 06:14:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2019 16:14:41 +0300
Date: Fri, 4 Oct 2019 16:14:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191004131441.GY1208@intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-3-maarten.lankhorst@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191004113514.17064-3-maarten.lankhorst@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgoKPiAtLS0KPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggfCAyICstCj4gIDEg
ZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oCj4gaW5kZXggMjc4MmYyM2Vl
ODg3Li40ZGVkNjRmY2JjNmMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuaAo+IEBAIC0zNTAsNyArMzUwLDcgQEAgZW51bSBwaHlfZmlhIHsKPiAg
CQkJICAgICYoZGV2KS0+bW9kZV9jb25maWcucGxhbmVfbGlzdCwJCVwKPiAgCQkJICAgIGJhc2Uu
aGVhZCkJCQkJCVwKPiAgCQlmb3JfZWFjaF9pZigocGxhbmVfbWFzaykgJgkJCQlcCj4gLQkJCSAg
ICBkcm1fcGxhbmVfbWFzaygmaW50ZWxfcGxhbmUtPmJhc2UpKSkKPiArCQkJICAgIGRybV9wbGFu
ZV9tYXNrKCZpbnRlbF9wbGFuZS0+YmFzZSkpCj4gIAo+ICAjZGVmaW5lIGZvcl9lYWNoX2ludGVs
X3BsYW5lX29uX2NydGMoZGV2LCBpbnRlbF9jcnRjLCBpbnRlbF9wbGFuZSkJXAo+ICAJbGlzdF9m
b3JfZWFjaF9lbnRyeShpbnRlbF9wbGFuZSwJCQkJXAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
