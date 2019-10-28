Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F991E746A
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2019 16:05:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0899489DED;
	Mon, 28 Oct 2019 15:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32ADE6E906
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Oct 2019 15:05:25 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Oct 2019 08:05:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,240,1569308400"; d="scan'208";a="229716056"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga002.fm.intel.com with SMTP; 28 Oct 2019 08:05:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Oct 2019 17:05:21 +0200
Date: Mon, 28 Oct 2019 17:05:21 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191028150521.GM1208@intel.com>
References: <20191028113036.27553-1-ville.syrjala@linux.intel.com>
 <fd02a3b9-6f1a-df2d-06d1-790067ee9fe5@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd02a3b9-6f1a-df2d-06d1-790067ee9fe5@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Fix i845/i865 cursor width
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

T24gTW9uLCBPY3QgMjgsIDIwMTkgYXQgMDM6MjA6MzRQTSArMDEwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjgtMTAtMjAxOSBvbSAxMjozMCBzY2hyZWVmIFZpbGxlIFN5cmphbGE6
Cj4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4KPiA+IFRoZSBjaGFuZ2UgZnJvbSB0aGUgdWFwaSBjb29yZGluYXRlcyB0byB0aGUgaW50
ZXJuYWwgY29vcmRpbmF0ZXMKPiA+IGJyb2tlIHRoZSBjdXJzb3Igb24gaTg0NS9pODY1IGR1ZSB0
byBzcmMgYW5kIGRzdCBnZXR0aW5nIHN3YXBwZWQuCj4gPiBGaXggaXQuCj4gPgo+ID4gQ2M6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPiBG
aXhlczogM2E2MTI3NjVmNDIzICgiZHJtL2k5MTU6IFJlbW92ZSBjdXJzb3IgdXNlIG9mIHByb3Bl
cnRpZXMgZm9yIGNvb3JkaW5hdGVzIikKPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDIgKy0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gaW5kZXggMGYwYzU4MmE1NmQ1
Li40N2EzYWVmMGZiNjEgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYwo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kaXNwbGF5LmMKPiA+IEBAIC0xMDk0Nyw3ICsxMDk0Nyw3IEBAIHN0YXRpYyB2b2lk
IGk4NDVfdXBkYXRlX2N1cnNvcihzdHJ1Y3QgaW50ZWxfcGxhbmUgKnBsYW5lLAo+ID4gIAl1bnNp
Z25lZCBsb25nIGlycWZsYWdzOwo+ID4gIAo+ID4gIAlpZiAocGxhbmVfc3RhdGUgJiYgcGxhbmVf
c3RhdGUtPmJhc2UudmlzaWJsZSkgewo+ID4gLQkJdW5zaWduZWQgaW50IHdpZHRoID0gZHJtX3Jl
Y3Rfd2lkdGgoJnBsYW5lX3N0YXRlLT5iYXNlLnNyYyk7Cj4gPiArCQl1bnNpZ25lZCBpbnQgd2lk
dGggPSBkcm1fcmVjdF93aWR0aCgmcGxhbmVfc3RhdGUtPmJhc2UuZHN0KTsKPiA+ICAJCXVuc2ln
bmVkIGludCBoZWlnaHQgPSBkcm1fcmVjdF9oZWlnaHQoJnBsYW5lX3N0YXRlLT5iYXNlLmRzdCk7
Cj4gPiAgCj4gPiAgCQljbnRsID0gcGxhbmVfc3RhdGUtPmN0bCB8Cj4gCj4gWWVhaCwgSSBndWVz
cyB0aGVvcmV0aWNhbGx5IGZpeGVzLCBzaG91bGQgYmUgb2sgcmVnYXJkbGVzcyBiZWNhdXNlIG5v
IHNjYWxpbmcgaXMgc3VwcG9ydGVkIG9uIHRoZSBjdXJzb3Igc28gcmVjdGFuZ2xlcyBhcmUgaWRl
bnRpY2FsLiA6KQoKTm8uIE9uZSBpcyAuMTYgZml4ZWQgcG9pbnQgb3RoZXIgaXMgaW50ZWdlci4g
SWUuIHRvdGFsbHkgYnJva2VuIGF0bSwKYXMgcHJvdmVuIGJ5IHRoZSBjdXJzb3IgYmVpbmcgc21l
YXJlZCBvdmVyIHRoZSB3aG9sZSBzY3JlZW4gb24gbXkgaTg2NS4KCj4gCj4gUmV2aWV3ZWQtYnk6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cgot
LSAKVmlsbGUgU3lyasOkbMOkCkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeA==
