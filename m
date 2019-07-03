Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A99985EC00
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 20:53:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 128796E194;
	Wed,  3 Jul 2019 18:53:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE2236E194
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 18:53:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:53:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="154842427"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 03 Jul 2019 11:53:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 21:53:19 +0300
Date: Wed, 3 Jul 2019 21:53:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190703185319.GC5942@intel.com>
References: <20190606124210.3482-1-ville.syrjala@linux.intel.com>
 <20190703180118.GZ24125@mdroper-desk.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703180118.GZ24125@mdroper-desk.amr.corp.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Deal with machines that expose
 less than three QGV points
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
Cc: felix.j.degrood@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdWwgMDMsIDIwMTkgYXQgMTE6MDE6MThBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBPbiBUaHUsIEp1biAwNiwgMjAxOSBhdCAwMzo0MjoxMFBNICswMzAwLCBWaWxsZSBTeXJq
YWxhIHdyb3RlOgo+ID4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiA+IAo+ID4gV2hlbiBTQUdWIGlzIGZvcmNlZCB0byBkaXNhYmxlZC9taW4v
bWVkL21heCBpbiB0aGUgQklPUyBwY29kZSB3aWxsCj4gPiBvbmx5IGhhbmQgdXMgYSBzaW5nbGUg
UUdWIHBvaW50IGluc3RlYWQgb2YgdGhlIG5vcm1hbCB0aHJlZS4gRml4Cj4gPiB0aGUgY29kZSB0
byBkZWFsIHdpdGggdGhhdCBpbnN0ZWFkIGRlY2xhcmluZyB0aGUgYmFuZHdpZHRoIGxpbWl0Cj4g
PiB0byBiZSAwIE1CL3MgKGFuZCB0aHVzIHByZXZlbnRpbmcgYW55IHBsYW5lcyBmcm9tIGJlaW5n
IGVuYWJsZWQpLgo+ID4gCj4gPiBBbHNvIHNocmluayB0aGUgbWF4X2J3IHN0dXJjdCBhIGJpdCB3
aGlsZSBhdCBpdCwgYW5kIGNoYW5nZSB0aGUKPiA+IGRlcmF0ZWRidyB0eXBlIHRvIHVuc2lnbmVk
IHNpbmNlIHRoZSBjb2RlIHJldHVybnMgdGhlIGJ3IGFzCj4gPiBhbiB1bnNpZ25lZCBpbnQuCj4g
PiAKPiA+IFNpbmNlIHdlIG5vdyBrZWVwIHRyYWNrIG9mIGhvdyBtYW55IHFndiBwb2ludHMgd2Ug
Z290IGZyb20gcGNvZGUKPiA+IHdlIGNhbiBkcm9wIHRoZSBlYXJsaWVyIGNoZWNrIGFkZGVkIGZv
ciB0aGUgInBjb2RlIGRvZXNuJ3QKPiA+IHN1cHBvcnQgdGhlIG1lbW9yeSBzdWJzeXN0ZW0gcXVl
cnkiIGNhc2UuCj4gPiAKPiA+IENjOiBmZWxpeC5qLmRlZ3Jvb2RAaW50ZWwuY29tCj4gPiBDYzog
TWFyayBKYW5lcyA8bWFyay5hLmphbmVzQGludGVsLmNvbT4KPiA+IENjOiBNYXR0IFJvcGVyIDxt
YXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPgo+ID4gQ2M6IENsaW50IFRheWxvciA8Q2xpbnRvbi5B
LlRheWxvckBpbnRlbC5jb20+Cj4gPiBGaXhlczogYzQ1N2Q5Y2YyNTZlICgiZHJtL2k5MTU6IE1h
a2Ugc3VyZSB3ZSBoYXZlIGVub3VnaCBtZW1vcnkgYmFuZHdpZHRoIG9uIElDTCIpCj4gPiBCdWd6
aWxsYTogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MTEwODM4
Cj4gPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPgo+IAo+IFRoaXMgb25lIHNsaXBwZWQgdGhyb3VnaCB0aGUgY3JhY2tzLCBidXQg
aXQgbG9va3MgY29ycmVjdC4KClllYWgsIGFsc28gZGlzYXBwZWFyZWQgZnJvbSBteSBvd24gcmFk
YXIgZHVlIHRvIHBhdGNod29yayBnZXR0aW5nCmNvbmZ1c2VkIGFuZCBtb3ZpbmcgdGhlIHBhdGNo
IHVuZGVyIEZlbGl4J3MgYXV0aG9yc2hpcC4KCj4gCj4gUmV2aWV3ZWQtYnk6IE1hdHQgUm9wZXIg
PG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+CgpUaGFua3MuCgo+IAo+IFlvdSdsbCBuZWVkIHRv
IHJlLXNwaW4gdGhlIHBhdGNoIHNpbmNlIGludGVsX2J3LmMgaXMgdW5kZXIgdGhlIGRpc3BsYXkv
Cj4gZm9sZGVyIG5vdyBhbmQgZW5vdWdoIHRpbWUgaGFzIHBhc3NlZCB0aGF0IHdlIHByb2JhYmx5
IHdhbnQgYW5vdGhlciBDSQo+IHJ1biBhbnl3YXkuCgpnaXQgYW0gaXMgc21hcnQgZW5vdWdoIHRv
IGRlYWwgd2l0aCBmaWxlIHJlbmFtZXMgdXN1YWxseSwgYW5kIG5vdGhpbmcKaGFzIGNoYW5nZWQg
cmVhbGx5IHNvIEkgdHJ1c3QgdGhlIGVhcmxpZXIgY2kgcmVzdWx0cy4gUHVzaGVkIHRvIGRpbnEu
CgotLSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2ludGVsLWdmeA==
