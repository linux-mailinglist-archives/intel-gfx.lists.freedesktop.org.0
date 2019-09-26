Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B25D1BF6AA
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2019 18:26:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0661D6EDB2;
	Thu, 26 Sep 2019 16:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7CA96EDB2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Sep 2019 16:26:54 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Sep 2019 09:26:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,552,1559545200"; d="scan'208";a="194182834"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 26 Sep 2019 09:26:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 26 Sep 2019 19:26:51 +0300
Date: Thu, 26 Sep 2019 19:26:51 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20190926162651.GP1208@intel.com>
References: <20190920114235.22411-1-maarten.lankhorst@linux.intel.com>
 <20190920114235.22411-16-maarten.lankhorst@linux.intel.com>
 <20190926130600.GM1208@intel.com>
 <ee604986-eb7b-05ce-ca2f-7c1789e1050c@linux.intel.com>
 <20190926160922.GN1208@intel.com>
 <9571386c-7199-ce39-a48e-58bb66c87c19@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9571386c-7199-ce39-a48e-58bb66c87c19@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 16/23] drm/i915: Program planes in bigjoiner
 mode.
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

T24gVGh1LCBTZXAgMjYsIDIwMTkgYXQgMDY6MTM6NTNQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjYtMDktMjAxOSBvbSAxODowOSBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIFRodSwgU2VwIDI2LCAyMDE5IGF0IDA1OjUwOjA1UE0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IE9wIDI2LTA5LTIwMTkgb20gMTU6MDYgc2NocmVlZiBWaWxs
ZSBTeXJqw6Rsw6Q6Cj4gPj4+IE9uIEZyaSwgU2VwIDIwLCAyMDE5IGF0IDAxOjQyOjI4UE0gKzAy
MDAsIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+ID4+Pj4gTm93IHRoYXQgd2UgY2FuIHByb2dy
YW0gcGxhbmVzIGZyb20gdGhlIHVwZGF0ZV9zbGF2ZSBjYWxsYmFjaywgYW5kCj4gPj4+PiB3ZSBo
YXZlIGRvbmUgYWxsIGZiIHBpbm5pbmcgY29ycmVjdGx5LCBpdCdzIHRpbWUgdG8gcHJvZ3JhbSB0
aG9zZQo+ID4+Pj4gcGxhbmVzIGFzIHdlbGwuCj4gPj4+Pgo+ID4+Pj4gV2UgdXNlIHRoZSB1cGRh
dGVfc2xhdmUgY2FsbGJhY2sgYXMgaXQgYWxsb3dzIHVzIHRvIHVzZSB0aGUKPiA+Pj4+IHNlcGFy
YXRlIHN0YXRlcyBjb3JyZWN0bHkuCj4gPj4+Pgo+ID4+Pj4gU2lnbmVkLW9mZi1ieTogTWFhcnRl
biBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+Pj4+IC0t
LQo+ID4+Pj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8
IDUzICsrKysrKysrKysrKysrKysrKysKPiA+Pj4+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljX3BsYW5lLmggfCAgMiArCj4gPj4+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgIHwgIDQgKy0KPiA+Pj4+ICAzIGZpbGVzIGNoYW5nZWQs
IDU3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gPj4+Pgo+ID4+Pj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gPj4+PiBp
bmRleCBjYzA4ODY3NmYwYTIuLjVkYjA5MWU0YWQ2YSAxMDA2NDQKPiA+Pj4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+Pj4+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+Pj4+
IEBAIC0zNjYsNiArMzY2LDU5IEBAIHZvaWQgc2tsX3VwZGF0ZV9wbGFuZXNfb25fY3J0YyhzdHJ1
Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+Pj4+ICAJfQo+ID4+Pj4gIH0KPiA+Pj4+
ICAKPiA+Pj4+ICt2b2lkIGljbF91cGRhdGVfYmlnam9pbmVyX3BsYW5lc19vbl9jcnRjKHN0cnVj
dCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLAo+ID4+Pj4gKwkJCQkJIHN0cnVjdCBpbnRlbF9j
cnRjICpjcnRjKQo+ID4+PiBUaGlzIHBsYW5lIHN0dWZmIGlzIHdoZXJlIHRoaW5ncyBnbyB2ZXJ5
IG11Y2ggb2ZmIHRoZSByYWlscyBJTU8uCj4gPj4+IFBsYW5lcyBzaG91bGQgbm90IGhhdmUgdG8g
a25vdyBhbnl0aGluZyBhYm91dCBiaWdqb2luZXIuIFRoZXkgc2hvdWxkCj4gPj4+IGp1c3QgaGF2
ZSB0aGVpciBhcHByb3ByaWF0ZSBodyBzdGF0ZSBhbmQgYmxpbmRseSBiYXNoIGl0IGludG8gdGhl
Cj4gPj4+IGhhcmR3YXJlLgo+ID4+IFdlIGFscmVhZHkgbmVlZCB0aGlzIGZvciBwbGFuYXIgc2xh
dmUvbWFzdGVyLCB3aGF0J3MgdGhlIGlzc3VlIGV4YWN0bHk/Cj4gPiBUaGF0IGFscmVhZHkgaXMg
dG9vIGZyYWdpbGUuIEkgZG9uJ3Qgd2FudCB0aGlzIHNwcmVhZGluZyBhbGwgb3Zlcgo+ID4gdGhl
IGRyaXZlciBhbmQgY291cGxpbmcgZXZlcnl0aGluZyB0byB0aGUgYmlnam9pbmVyIGxvZ2ljLgo+
ID4KPiA+IEhlcmUncyBhIGNydWRlIGlkZWEgaG93IEkgdGhpbmsgd2UgbWlnaHQgYXZvaWQgdGhp
czoKPiA+IGdpdDovL2dpdGh1Yi5jb20vdnN5cmphbGEvbGludXguZ2l0IHVhcGlfaHdfc3RhdGVf
c3BsaXQKPiA+Cj4gPiBCdXQgSSBkaWRuJ3QgZGFyZSBib290IGl0IHlldC4uLgo+IAo+IFNvIHlv
dSBiYXNpY2FsbHkgd2FudCB0aGUgc2FtZSB1YXBpL2h3IHNwbGl0IGZvciBwbGFuZXMgYXMgd2Ug
ZGlkIHdpdGggY3J0YydzIGFib3ZlPwoKWWVzLiBBbmQgaWRlYWxseSBkb2luZyB0aGUgdWFwaS0+
aHcgY29weSBpbiBvbmUgc3BlY2lmaWMgc3BvdCBhcyBlYXJseQphcyBwb3NzaWJsZSwgc28gdGhh
dCB0aGUgcmVzdCBvZiB0aGUgZHJpdmVyIGNhbiByZW1haW4gYmxpc3NmdWxseQppZ25vbmFyYW50
IGFib3V0IGFsbCBvZiB0aGlzLgoKLS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBs
aXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVz
a3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
