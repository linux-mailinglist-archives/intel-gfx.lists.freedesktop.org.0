Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D5CF1BBB78
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 20:28:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8E56E991;
	Mon, 23 Sep 2019 18:28:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 710EB6E991
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2019 18:28:12 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Sep 2019 11:28:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,541,1559545200"; d="scan'208";a="179217420"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 23 Sep 2019 11:28:09 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2019 21:28:08 +0300
Date: Mon, 23 Sep 2019 21:28:08 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20190923182808.GQ1208@intel.com>
References: <20190923125640.22321-1-anna.karas@intel.com>
 <20190923164011.kv5dmlshcbygswdj@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190923164011.kv5dmlshcbygswdj@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Describe structure member in
 documentation
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

T24gTW9uLCBTZXAgMjMsIDIwMTkgYXQgMTA6MjM6NDVBTSAtMDcwMCwgTHVjYXMgRGUgTWFyY2hp
IHdyb3RlOgo+IE9uIE1vbiwgU2VwIDIzLCAyMDE5IGF0IDAzOjU2OjQwUE0gKzAzMDAsIEFubmEg
S2FyYXMgd3JvdGU6Cj4gPkFkZCBkZXNjcmlwdGlvbiBvZiB3YWtlcmVmIG1lbWJlciBvZiBpbnRl
bF9zaGFyZWRfZHBsbCBzdHJ1Y3R1cmUgdG8KPiA+ZG9jdW1lbnRhdGlvbi4KPiA+Cj4gPkNjOiBM
dWNhcyBEZSBNYXJjaGkgPGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4KPiA+Q2M6IFZpdmVrIEth
c2lyZWRkeSA8dml2ZWsua2FzaXJlZGR5QGludGVsLmNvbT4KPiA+U2lnbmVkLW9mZi1ieTogQW5u
YSBLYXJhcyA8YW5uYS5rYXJhc0BpbnRlbC5jb20+Cj4gPi0tLQo+ID4gZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5oIHwgNSArKysrKwo+ID4gMSBmaWxlIGNoYW5n
ZWQsIDUgaW5zZXJ0aW9ucygrKQo+ID4KPiA+ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbF9tZ3IuaAo+ID5pbmRleCAxMDRjZjZkNDIzMzMuLmUzNWRkNmIwNDQ0MyAx
MDA2NDQKPiA+LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21n
ci5oCj4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3Iu
aAo+ID5AQCAtMzM3LDYgKzMzNywxMSBAQCBzdHJ1Y3QgaW50ZWxfc2hhcmVkX2RwbGwgewo+ID4g
CSAqIEBpbmZvOiBwbGF0Zm9ybSBzcGVjaWZpYyBpbmZvCj4gPiAJICovCj4gPiAJY29uc3Qgc3Ry
dWN0IGRwbGxfaW5mbyAqaW5mbzsKPiA+Kwo+ID4rCS8qKgo+ID4rCSAqIEB3YWtlcmVmOiBBIGRl
dmljZS1sZXZlbCBydW50aW1lIHBtIHJlZmVyZW5jZSBncmFiYmVkIG9ubHkgaWYKPiA+KwkgKiBp
dCBpcyBwb3dlcmVkIG9uLgo+ID4rCSAqLwo+IAo+IGJ1dCB0aGlzIGlzIG9ubHkgZ3JhYmJlZCBm
b3IgRFBMTDQsIG9uIEVITC4KPiAKPiAiSW4gc29tZSBwbGF0Zm9ybXMgYSBkZXZpY2UtbGV2ZWwg
cnVudGltZSBwbSByZWZlcmVuY2UgbWF5IG5lZWQgdG8gYmUKPiBncmFiYmVkIHRvIGRpc2FibGUg
REMgc3RhdGVzIHdoaWxlIHRoaXMgRFBMTCBpcyBlbmFibGVkIiB3b3VsZCBiZSBtb3JlCj4gYXBw
cm9wcmlhdGUgSU1PLgoKT3Igd2UgY291bGQganVzdCByZW1vdmUgdGhlIHNwZWNpYWwgY2FzZSBh
bmQgaGF2ZSBldmVyeSBwbGwgZ3JhYiBzb21lCnBvd2VyIHJlZmVyZW5jZS4KCi0tIApWaWxsZSBT
eXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
