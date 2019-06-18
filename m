Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D33A249F76
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2019 13:44:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E78A6E148;
	Tue, 18 Jun 2019 11:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 931816E148
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2019 11:44:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Jun 2019 04:44:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,389,1557212400"; d="scan'208";a="170198640"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 18 Jun 2019 04:44:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 18 Jun 2019 14:44:00 +0300
Date: Tue, 18 Jun 2019 14:44:00 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190618114400.GK5942@intel.com>
References: <20190614103941.15399-1-maarten.lankhorst@linux.intel.com>
 <20190617123402.GH5942@intel.com>
 <9aa7d57c-8f9b-eeb9-16a9-718b4c6eae45@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9aa7d57c-8f9b-eeb9-16a9-718b4c6eae45@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Check visibility in
 icl_build_plane_wm
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

T24gVHVlLCBKdW4gMTgsIDIwMTkgYXQgMTE6MTY6NDFBTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMTctMDYtMjAxOSBvbSAxNDozNCBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIEZyaSwgSnVuIDE0LCAyMDE5IGF0IDEyOjM5OjQxUE0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IFdoZW4gYSBwbGFuYXIgWVVWIHBsYW5lIGlzIGNvbmZpZ3Vy
ZWQsIGJ1dCB0aGUgY3J0YyBpcwo+ID4+IG1hcmtlZCBpbmFjdGl2ZSwgd2UgY2FuIGVuZCB1cCB3
aXRoIGEgbGlua2VkIHBsYW5lIHdpdGhvdXQKPiA+PiB2aXNpYmlsaXR5Lgo+ID4gSG93IGlzIHRo
YXQgcG9zc2libGU/IEkgZG9uJ3QgdGhpbmsgd2Ugc2hvdWxkIGJlIGFkZGluZyB0aGUgc2xhdmUg
cGxhbmUKPiA+IGlmIHRoZSBtYXN0ZXIgaXMgbm90IHZpc2libGUuCj4gCj4gCj4gRFBNUyBvZmYs
IHdlIGNhbGN1bGF0ZSB0aGUgdmFyaW91cyBmaWVsZHMgYXMgaWYgdGhlIENSVEMgaXMgb24sIHRo
ZW4gZGlzYWJsZSB2aXNpYmlsaXR5Lgo+IAo+IGNydGNfc3RhdGUtPm52MTJfcGxhbmVzIGV0YyBz
dGlsbCBnZXQgc2V0LCBzbyBpdCB3b3JrcyBhcyBpZiB0aGUgY3J0YyBpcyBvbi4KPiAKPiBJdCdz
IGEgd2F5IG9mIG5vdCBhbGxvd2luZyBhbiBpbnZhbGlkIHJlc3VsdCB3aGVuIGRwbXMgaXMgb2Zm
LCB0aGVuIGJyZWFraW5nIG9uIGNydGMgZW5hYmxlLgoKSG1tLiBJIHdvbmRlciB3aGVuIHdlIHN0
YXJ0ZWQgdG8gZG8gdGhhdC4gSWYgd2UncmUgYWxyZWFkeSBkb2luZyB0aGlzCm11Y2ggdGhlbiBJ
IHdvbmRlciBob3cgZmFyIHdlIGFyZSBmcm9tIGp1c3QgZGVhbGluZyB3aXRoIHRoZSBGSVhNRSBp
bgppbnRlbF93bV9wbGFuZV92aXNpYmxlKCkgaW5zdGVhZD8KCi0tIApWaWxsZSBTeXJqw6Rsw6QK
SW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
