Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B156313040
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2019 16:32:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B737C6E7BC;
	Fri,  3 May 2019 14:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 541DF6E7BC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2019 14:32:05 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 May 2019 07:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,426,1549958400"; d="scan'208";a="147976430"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 03 May 2019 07:32:02 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 May 2019 17:32:01 +0300
Date: Fri, 3 May 2019 17:32:01 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20190503143201.GP24299@intel.com>
References: <20190429180020.27274-1-chris@chris-wilson.co.uk>
 <20190429180020.27274-4-chris@chris-wilson.co.uk>
 <20190503140457.GO24299@intel.com>
 <155689272156.3139.14895194831669934715@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <155689272156.3139.14895194831669934715@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915: Disable semaphore busywaits
 on saturated systems
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
Cc: intel-gfx@lists.freedesktop.org, Dmitry Ermilov <dmitry.ermilov@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBNYXkgMDMsIDIwMTkgYXQgMDM6MTI6MDFQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyasOkbMOkICgyMDE5LTA1LTAzIDE1OjA0OjU3KQo+ID4g
T24gTW9uLCBBcHIgMjksIDIwMTkgYXQgMDc6MDA6MTlQTSArMDEwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+ID4gPiBBc2tpbmcgdGhlIEdQVSB0byBidXN5d2FpdCBvbiBhIG1lbW9yeSBhZGRyZXNz
LCBwZXJoYXBzIG5vdCB1bmV4cGVjdGVkbHkKPiA+ID4gaW4gaGluZHNpZ2h0IGZvciBhIHNoYXJl
ZCBzeXN0ZW0sIGxlYWRzIHRvIGJ1cyBjb250ZW50aW9uIHRoYXQgYWZmZWN0cwo+ID4gPiBDUFUg
cHJvZ3JhbXMgdHJ5aW5nIHRvIGNvbmN1cnJlbnRseSBhY2Nlc3MgbWVtb3J5LiBUaGlzIGNhbiBt
YW5pZmVzdCBhcwo+ID4gPiBhIGRyb3AgaW4gdHJhbnNjb2RlIHRocm91Z2hwdXQgb24gaGlnaGx5
IG92ZXItc2F0dXJhdGVkIHdvcmtsb2Fkcy4KPiA+IAo+ID4gV2UgY2FuJ3QgdXNlIHRoZSBzaW5n
YWxsaW5nIHNlbWFwaG9yZSB2YXJpYW50Pwo+IAo+IFRoYXQgcmVxdWlyZXMgdXMgdG8gYnJvYWRj
YXN0IGEgc2lnbmFsIHRvIGVhY2ggZW5naW5lIChmb3Igd2hpY2ggSSBjYW4KPiBoZWFyIHRoZSBj
cmllcyBvZiBjcm9zcy1wb3dlcndlbGwgd2FrZXMpLCBhbmQgY3VycmVudGx5IGRvZXMgbm90IHdv
cmsKPiB3aXRoIGV4ZWNsaXN0cyArIGNvbnRleHQtaWQ9PTAuIE9yIGF0IGxlYXN0IGl0IGZhaWxl
ZCBpbiBteSB0ZXN0aW5nLgoKQWguIElmIG9ubHkgd2UgaGFkIE1JX01XQUlULgoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
