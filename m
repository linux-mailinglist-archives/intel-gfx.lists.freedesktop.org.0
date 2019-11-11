Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA6CCF75E2
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 15:03:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33AEF6E1ED;
	Mon, 11 Nov 2019 14:03:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD54A6E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 14:03:51 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 06:03:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,293,1569308400"; d="scan'208";a="202062220"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 11 Nov 2019 06:03:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 11 Nov 2019 16:03:48 +0200
Date: Mon, 11 Nov 2019 16:03:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Kishore Kadiyala <kishore.kadiyala@intel.com>
Message-ID: <20191111140348.GM1208@intel.com>
References: <20191111035241.19014-1-kishore.kadiyala@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111035241.19014-1-kishore.kadiyala@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen9: Add missing 10bpc formats
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

T24gTW9uLCBOb3YgMTEsIDIwMTkgYXQgMDk6MjI6NDFBTSArMDUzMCwgS2lzaG9yZSBLYWRpeWFs
YSB3cm90ZToKPiBBZGQgMTBicGMgZm9ybWF0cyBmb3IgZ2VuOS4KPiBUaGlzIHBhdGNoIGhhcyBk
ZXBlbmRlbmN5IG9uIGJlbG93IHBhdGNoOgo+IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9w
Lm9yZy9wYXRjaC8zMzUwMjkvP3Nlcmllcz02Nzc0MSZyZXY9Mgo+IAo+IFNpZ25lZC1vZmYtYnk6
IEtpc2hvcmUgS2FkaXlhbGEgPGtpc2hvcmUua2FkaXlhbGFAaW50ZWwuY29tPgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nwcml0ZS5jIHwgMiArKwo+ICAxIGZp
bGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Nwcml0ZS5jCj4gaW5kZXggZDdmNzFmYTkwNjU5Li5mYWQ3M2VhMDA5OTIg
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zcHJpdGUu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc3ByaXRlLmMKPiBA
QCAtMjQ0NCw2ICsyNDQ0LDggQEAgc3RhdGljIGNvbnN0IHUzMiBza2xfcGxhbmFyX2Zvcm1hdHNb
XSA9IHsKPiAgCURSTV9GT1JNQVRfQUJHUjg4ODgsCj4gIAlEUk1fRk9STUFUX1hSR0IyMTAxMDEw
LAo+ICAJRFJNX0ZPUk1BVF9YQkdSMjEwMTAxMCwKPiArCURSTV9GT1JNQVRfQVJHQjIxMDEwMTAs
Cj4gKwlEUk1fRk9STUFUX0FCR1IyMTAxMDEwLAoKTm9wZS4gQWxwaGEgYmxlbmRpbmcgaXMgbm90
IHN1cHBvcnRlZCB3aXRoIDEwYnBjIGZvcm1hdHMgb24gcHJlLWljbApwbGF0Zm9ybXMuCgo+ICAJ
RFJNX0ZPUk1BVF9YUkdCMTYxNjE2MTZGLAo+ICAJRFJNX0ZPUk1BVF9YQkdSMTYxNjE2MTZGLAo+
ICAJRFJNX0ZPUk1BVF9ZVVlWLAo+IC0tIAo+IDIuMTcuMQo+IAo+IF9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+
IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxlIFN5cmrDpGzDpApJ
bnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
