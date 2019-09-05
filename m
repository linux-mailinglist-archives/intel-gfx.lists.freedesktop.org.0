Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B58AA323
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2019 14:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A1856E091;
	Thu,  5 Sep 2019 12:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28B56E091
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Sep 2019 12:28:11 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 05:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="182812008"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 05 Sep 2019 05:28:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Sep 2019 15:28:08 +0300
Date: Thu, 5 Sep 2019 15:28:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20190905122808.GH7482@intel.com>
References: <cover.1567446845.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1567446845.git.jani.nikula@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 0/4] drm/i915: deconflate display disable
 from no display
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

T24gTW9uLCBTZXAgMDIsIDIwMTkgYXQgMDk6MDg6MTJQTSArMDMwMCwgSmFuaSBOaWt1bGEgd3Jv
dGU6Cj4gRGVjb25mbGF0ZSBub3QgaGF2aW5nIGRpc3BsYXkgaGFyZHdhcmUgZnJvbSBoYXZpbmcg
ZGlzYWJsZWQgZGlzcGxheQo+IGhhcmR3YXJlLCB3aXRoIHNvbWUgY29sbGF0ZXJhbCBpbXByb3Zl
bWVudHMuCj4gCj4gVGhpcyBkb2Vzbid0IGFjdHVhbGx5IGZpeCBhbnkgb2YgdGhlIGlzc3VlcyBy
ZXN1bHRpbmcgZnJvbSB0aGUgdHdvIGJlaW5nCj4gY29uZmxhdGVkLCBidXQgdW5ibG9ja3MgZml4
aW5nIGJvdGggaW5kZXBlbmRlbnRseS4KPiAKPiBSZWFkIHRoZSBjb21taXQgbWVzc2FnZXMgZm9y
IGRldGFpbHMuCj4gCj4gQlIsCj4gSmFuaS4KPiAKPiBDYzogQ2hyaXMgV2lsc29uIDxjaHJpc0Bj
aHJpcy13aWxzb24uY28udWs+Cj4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgoKTG9va3MgZ29vZCBiYXNlZCBvbiBhIGN1cnNvciBzY2FuLiBTZXJpZXMgaXMK
QWNrZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
Cgo+IAo+IEphbmkgTmlrdWxhICg0KToKPiAgIGRybS9pOTE1OiBhZGQgSU5URUxfTlVNX1BJUEVT
KCkgYW5kIHVzZSBpdAo+ICAgZHJtL2k5MTU6IGNvbnZlcnQgZGV2aWNlIGluZm8gbnVtX3BpcGVz
IHRvIHBpcGVfbWFzawo+ICAgZHJtL2k5MTU6IGludHJvZHVjZSBJTlRFTF9ESVNQTEFZX0VOQUJM
RUQoKQo+ICAgZHJtL2k5MTU6IHN0b3AgY29uZmxhdGluZyBIQVNfRElTUExBWSgpIGFuZCBkaXNh
YmxlZCBkaXNwbGF5Cj4gCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5jICAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheS5jICB8IDMwICsrKysrKysrKystLS0tLS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmggIHwgIDQgKy0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYyAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZ21idXMuYyAgICB8ICAyICstCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9scGVfYXVkaW8uYyAgICB8ICAyICstCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfZHJ2LmMgICAgICAgICAgICAgICB8IDEwICsrKy0tLS0KPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9kcnYuaCAgICAgICAgICAgICAgIHwgIDcgKysrKy0KPiAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICAgICAgIHwgMjQgKysrKysrKy0tLS0tLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMgICAgICB8IDE2ICsrKyst
LS0tLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8uaCAgICAgIHwg
IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcGNoLmMgICAgICAgICAgICAgIHwg
IDIgKy0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyAgICAgICAgICAgICAgIHwg
IDYgKystLQo+ICAxMyBmaWxlcyBjaGFuZ2VkLCA1NiBpbnNlcnRpb25zKCspLCA1MyBkZWxldGlv
bnMoLSkKPiAKPiAtLSAKPiAyLjIwLjEKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
