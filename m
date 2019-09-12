Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A51CB143F
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2019 20:05:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 856E76ECFE;
	Thu, 12 Sep 2019 18:05:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1216ECFE
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2019 18:05:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Sep 2019 11:05:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,498,1559545200"; d="scan'208";a="200793479"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 12 Sep 2019 11:05:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2019 21:05:25 +0300
Date: Thu, 12 Sep 2019 21:05:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190912180524.GA1208@intel.com>
References: <20190912130109.5873-1-maarten.lankhorst@linux.intel.com>
 <20190912143415.D8F552081B@mail.kernel.org>
 <db913560-ee38-71e0-39e8-28bc75bbdc5e@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <db913560-ee38-71e0-39e8-28bc75bbdc5e@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 01/23] drm/i915/dp: Fix dsc bpp calculations.
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
Cc: Sasha Levin <sashal@kernel.org>, intel-gfx@lists.freedesktop.org,
 stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMDY6MDE6NTdQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gSGV5LAo+IAo+IE9wIDEyLTA5LTIwMTkgb20gMTY6MzQgc2NocmVlZiBTYXNo
YSBMZXZpbjoKPiA+IEhpLAo+ID4KPiA+IFtUaGlzIGlzIGFuIGF1dG9tYXRlZCBlbWFpbF0KPiA+
Cj4gPiBUaGlzIGNvbW1pdCBoYXMgYmVlbiBwcm9jZXNzZWQgYmVjYXVzZSBpdCBjb250YWlucyBh
ICJGaXhlczoiIHRhZywKPiA+IGZpeGluZyBjb21taXQ6IGQ5MjE4YzhmNmNmNCBkcm0vaTkxNS9k
cDogQWRkIGhlbHBlcnMgZm9yIENvbXByZXNzZWQgQlBQIGFuZCBTbGljZSBDb3VudCBmb3IgRFND
Lgo+ID4KPiA+IFRoZSBib3QgaGFzIHRlc3RlZCB0aGUgZm9sbG93aW5nIHRyZWVzOiB2NS4yLjE0
Lgo+ID4KPiA+IHY1LjIuMTQ6IEZhaWxlZCB0byBhcHBseSEgUG9zc2libGUgZGVwZW5kZW5jaWVz
Ogo+ID4gICAgIFVuYWJsZSB0byBjYWxjdWxhdGUKPiA+Cj4gPgo+ID4gTk9URTogVGhlIHBhdGNo
IHdpbGwgbm90IGJlIHF1ZXVlZCB0byBzdGFibGUgdHJlZXMgdW50aWwgaXQgaXMgdXBzdHJlYW0u
Cj4gPgo+ID4gSG93IHNob3VsZCB3ZSBwcm9jZWVkIHdpdGggdGhpcyBwYXRjaD8KPiA+Cj4gPiAt
LQo+ID4gVGhhbmtzLAo+ID4gU2FzaGEKPiAKPiBXaHkgaXMgdGhpcyBib3QgYXNraW5nIGZvciBw
YXRjaGVzIG9uIHRoZSB0cnlib3QgbWFpbGluZyBsaXN0PwoKRGlkIHlvdSBmb3JnZXQgLS1zdXBw
cmVzcy1jYz1hbGwgPwoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
