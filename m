Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F1E1552FA
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:11:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B79156E145;
	Tue, 25 Jun 2019 15:11:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A408E6E145
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:11:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jun 2019 08:11:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,416,1557212400"; d="scan'208";a="182907937"
Received: from triedme-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.35.180])
 by fmsmga001.fm.intel.com with ESMTP; 25 Jun 2019 08:11:50 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <1561476910-23655-1-git-send-email-shawn.c.lee@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <1561087486-19339-1-git-send-email-shawn.c.lee@intel.com>
 <1561476910-23655-1-git-send-email-shawn.c.lee@intel.com>
Date: Tue, 25 Jun 2019 18:13:42 +0300
Message-ID: <87pnn1ofyx.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Refine eDP aux backlight
 enable/disable sequence
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
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyNSBKdW4gMjAxOSwgTGVlIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4g
d3JvdGU6Cj4gTW9kaWZ5IGF1eCBiYWNrbGlnaHQgZW5hYmxlL2Rpc2FibGUgc2VxdWVuY2UganVz
dCBsaWtlIHdoYXQgd2UKPiBkaWQgZm9yIGdlbmVybmFsIGVEUCBwYW5lbC4gU2V0dXAgUFdNIGZy
ZXEgYW5kIGJyaWdodG5lc3MgbGV2ZWwKPiBiZWZvcmUgZW5hYmxlIGRpc3BsYXkgYmFja2xpZ2h0
Lgo+Cj4gdjI6IEFjY29yZGluZyB0byBzcGVjLCBpdCBpcyBub3QgbmVjZXNzYXJ5IHRvIHNldCBQ
V00gdG8gMCBpZgo+ICAgICBiYWNrbGlnaHQgZW5hYmxlIGFscmVhZHkgb2ZmLiBSZW1vdmUgaW50
ZWxfZHBfYXV4X3NldF9iYWNrbGlnaHQgdG8gMC4KClBsZWFzZSB0aGluayBpdCB0aHJvdWdoIGFn
YWluLiBUaGUgc2FtZSBhcHBsaWVzIGhlcmUuIFRoZSBicmlnaHRuZXNzCmNoYW5nZSBiZWZvcmUg
ZW5hYmxlIGlzIGlnbm9yZWQgYWNjb3JkaW5nIHRvIGVEUCBzcGVjLgoKQlIsCkphbmkuCgo+Cj4g
Q2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6
IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IEpvc2UgUm9iZXJ0byBk
ZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2M6IENvb3BlciBDaGlvdSA8Y29vcGVy
LmNoaW91QGludGVsLmNvbT4KPgo+IFNpZ25lZC1vZmYtYnk6IExlZSBTaGF3biBDIDxzaGF3bi5j
LmxlZUBpbnRlbC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHwgMiArLQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jCj4gaW5kZXggNmIwYjczNDc5ZmI4Li43
MGQ5YjljOTU4NmYgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcF9hdXhfYmFja2xpZ2h0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQuYwo+IEBAIC0yMTYsOCArMjE2LDggQEAgc3RhdGlj
IHZvaWQgaW50ZWxfZHBfYXV4X2VuYWJsZV9iYWNrbGlnaHQoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3QKPiAgCQl9Cj4gIAl9Cj4gIAo+IC0Jc2V0X2F1eF9iYWNrbGlnaHRf
ZW5hYmxlKGludGVsX2RwLCB0cnVlKTsKPiAgCWludGVsX2RwX2F1eF9zZXRfYmFja2xpZ2h0KGNv
bm5fc3RhdGUsIGNvbm5lY3Rvci0+cGFuZWwuYmFja2xpZ2h0LmxldmVsKTsKPiArCXNldF9hdXhf
YmFja2xpZ2h0X2VuYWJsZShpbnRlbF9kcCwgdHJ1ZSk7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lk
IGludGVsX2RwX2F1eF9kaXNhYmxlX2JhY2tsaWdodChjb25zdCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
cl9zdGF0ZSAqb2xkX2Nvbm5fc3RhdGUpCgotLSAKSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291
cmNlIEdyYXBoaWNzIENlbnRlcgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9p
bnRlbC1nZng=
