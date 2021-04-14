Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7672B35F086
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Apr 2021 11:14:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C708E6E8F7;
	Wed, 14 Apr 2021 09:14:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CF496E8F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Apr 2021 09:14:19 +0000 (UTC)
IronPort-SDR: z2aJUnQ2YZBl96NLhgtkunMZCvgHVrjIvQN25Zx4ZuA0NQNuxOb9glrKZMxUcgCcljg2+5d5mQ
 yCImwp/xaaFQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9953"; a="279913838"
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="279913838"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:14:18 -0700
IronPort-SDR: fK0JZWuoUgYta8ucw0d3RJzjl4rycjKFpfQ/e8mBWoQRPcLkcyMa+3LGjmazP3nHNaJWKq71sv
 ogmLkBqs+z2w==
X-IronPort-AV: E=Sophos;i="5.82,221,1613462400"; d="scan'208";a="424646003"
Received: from dgeiger-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.90])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2021 02:14:17 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20210412054607.18133-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210412054607.18133-1-ville.syrjala@linux.intel.com>
 <20210412054607.18133-2-ville.syrjala@linux.intel.com>
Date: Wed, 14 Apr 2021 12:14:12 +0300
Message-ID: <87r1jdfct7.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/5] drm/i915: Restore lost glk FBC 16bpp w/a
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

T24gTW9uLCAxMiBBcHIgMjAyMSwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBXZSBsb3N0IHRoZSBGQkMgMTZicHAgNTEyYnl0ZSBzdHJpZGUg
cmVxdWlyZW1lbnQgb24gZ2xrIHdoZW4KPiB3ZSBzd2l0Y2hlZCBmcm9tIGRpc3BsYXkgdmVyc2lv
biA5IHRvIDEwLiBSZXN0b3JlIHRoZSB3L2EgdG8KPiBhdm9pZCBlbmFibGluZyBGQkMgd2l0aCBh
IGJhZCBzdHJpZGUgYW5kIHRodXMgZGlzcGxheSBnYXJiYWdlLgo+Cj4gQ2M6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+Cj4gRml4ZXM6IDJiNWE0NTYyZWRkMCAoImRybS9p
OTE1L2Rpc3BsYXk6IFNpbXBsaWZ5IEdMSyBkaXNwbGF5IHZlcnNpb24gdGVzdHMiKQoKSSB0aGlu
ayB0aGlzIHNob3VsZCBiZToKCkZpeGVzOiAwMDVlOTUzNzcyNDkgKCJkcm0vaTkxNS9kaXNwbGF5
OiBFbGltaW5hdGUgbW9zdCB1c2FnZSBvZiBJTlRFTF9HRU4oKSIpCgpSaWdodD8KClJldmlld2Vk
LWJ5OiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFAaW50ZWwuY29tPgoKPiBTaWduZWQtb2ZmLWJ5
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IC0tLQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIHwgMiArLQo+ICAxIGZp
bGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYwo+IGluZGV4IDA0ZDljN2QyMmIwNC4uZGNjMGY3
M2VhMjI1IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZmJjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiYy5jCj4g
QEAgLTU5OCw3ICs1OTgsNyBAQCBzdGF0aWMgYm9vbCBzdHJpZGVfaXNfdmFsaWQoc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LAo+ICAJCXJldHVybiBmYWxzZTsKPiAgCj4gIAkvKiBE
aXNwbGF5IFdBICMxMTA1OiBza2wsYnh0LGtibCxjZmwsZ2xrICovCj4gLQlpZiAoSVNfRElTUExB
WV9WRVIoZGV2X3ByaXYsIDkpICYmCj4gKwlpZiAoKElTX0RJU1BMQVlfVkVSKGRldl9wcml2LCA5
KSB8fCBJU19HRU1JTklMQUtFKGRldl9wcml2KSkgJiYKPiAgCSAgICBtb2RpZmllciA9PSBEUk1f
Rk9STUFUX01PRF9MSU5FQVIgJiYgc3RyaWRlICYgNTExKQo+ICAJCXJldHVybiBmYWxzZTsKCi0t
IApKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
