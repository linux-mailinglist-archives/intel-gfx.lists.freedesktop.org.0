Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 295CF1136F4
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 22:16:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADB26E948;
	Wed,  4 Dec 2019 21:16:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E02D6E948
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 21:16:50 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Dec 2019 13:16:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,278,1571727600"; d="scan'208";a="242994228"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 04 Dec 2019 13:16:47 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 04 Dec 2019 23:16:47 +0200
Date: Wed, 4 Dec 2019 23:16:47 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20191204211647.GD1208@intel.com>
References: <20191204205510.119853-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204205510.119853-1-jose.souza@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/3] drm/i915/display: Do not check for
 the ddb allocations of turned off pipes
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

T24gV2VkLCBEZWMgMDQsIDIwMTkgYXQgMTI6NTU6MDhQTSAtMDgwMCwgSm9zw6kgUm9iZXJ0byBk
ZSBTb3V6YSB3cm90ZToKPiBJdCBzaG91bGQgbm90IGNhcmUgYWJvdXQgRERCIGFsbG9jYXRpb25z
IG9mIHBpcGVzIGdvaW5nIHRocm91Z2gKPiBhIGZ1bGxtb2Rlc2V0LCBhcyBhdCB0aGlzIHBvaW50
IHRob3NlIHBpcGVzIGFyZSBkaXNhYmxlZC4KPiBUaGUgY29tbWVudCBpbiB0aGUgY29kZSBhbHNv
IHBvaW50cyB0byB0aGF0IGJ1dCB0aGF0IHdhcyBub3Qgd2hhdAo+IHdhcyBiZWluZyBleGVjdXRl
ZC4KPiAKPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5LmMgfCAyICstCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlv
bigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
Cj4gaW5kZXggZWIwNTA1YTY2ZWE4Li42ODU3NTQ1N2Q0MGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNDYwMyw3ICsxNDYwMyw3
IEBAIHN0YXRpYyB2b2lkIHNrbF9jb21taXRfbW9kZXNldF9lbmFibGVzKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlKQo+ICAKPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2lu
X3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwgbmV3X2NydGNfc3RhdGUsIGkpCj4g
IAkJLyogaWdub3JlIGFsbG9jYXRpb25zIGZvciBjcnRjJ3MgdGhhdCBoYXZlIGJlZW4gdHVybmVk
IG9mZi4gKi8KPiAtCQlpZiAobmV3X2NydGNfc3RhdGUtPmh3LmFjdGl2ZSkKPiArCQlpZiAoIW5l
ZWRzX21vZGVzZXQobmV3X2NydGNfc3RhdGUpICYmIG5ld19jcnRjX3N0YXRlLT5ody5hY3RpdmUp
Cj4gIAkJCWVudHJpZXNbaV0gPSBvbGRfY3J0Y19zdGF0ZS0+d20uc2tsLmRkYjsKCk1ha2VzIHNl
bnNlIHRvIG1lLgpSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KCj4gIAo+ICAJLyogSWYgMm5kIERCdWYgc2xpY2UgcmVxdWlyZWQsIGVu
YWJsZSBpdCBoZXJlICovCj4gLS0gCj4gMi4yNC4wCgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVs
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdm
eCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
