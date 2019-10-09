Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56991D0E9B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2019 14:23:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E5289AEB;
	Wed,  9 Oct 2019 12:23:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9094989AEB
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2019 12:23:09 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Oct 2019 05:23:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,273,1566889200"; d="scan'208";a="277407245"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 09 Oct 2019 05:23:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2019 15:23:05 +0300
Date: Wed, 9 Oct 2019 15:23:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191009122305.GY1208@intel.com>
References: <20191004113514.17064-1-maarten.lankhorst@linux.intel.com>
 <20191004113514.17064-13-maarten.lankhorst@linux.intel.com>
 <20191008174231.GU1208@intel.com>
 <c277dadb-a8be-0426-62a6-58c3ba7d4c2a@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c277dadb-a8be-0426-62a6-58c3ba7d4c2a@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 12/24] drm/i915: Split plane hw and uapi
 state
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

T24gV2VkLCBPY3QgMDksIDIwMTkgYXQgMDI6MTM6NTVQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMDgtMTAtMjAxOSBvbSAxOTo0MiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIEZyaSwgT2N0IDA0LCAyMDE5IGF0IDAxOjM1OjAyUE0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IFNwbGl0dGluZyBwbGFuZSBzdGF0ZSBpcyBlYXNpZXIgdGhh
biBzcGxpdHRpbmcgY3J0Y19zdGF0ZSwKPiA+PiBiZWZvcmUgcGxhbmUgY2hlY2sgd2UgY29weSB0
aGUgZHJtIHByb3BlcnRpZXMgdG8gaHcgc28gd2UgY2FuCj4gPj4gZG8gdGhlIHNhbWUgaW4gYmln
am9pbmVyIGxhdGVyIG9uLgo+ID4+Cj4gPj4gV2UgY29weSB0aGUgc3RhdGUgYWZ0ZXIgd2UgZGlk
IGFsbCB0aGUgbW9kZXNldCBoYW5kbGluZywgYnV0IGZvcnR1bmF0ZWx5Cj4gPj4gaTkxNSBzZWVt
cyB0byBiZSBzcGxpdCBjb3JyZWN0bHkgYW5kIG5vdGhpbmcgZHVyaW5nIG1vZGVzZXQgbG9va3MK
PiA+PiBhdCBwbGFuZV9zdGF0ZS4KPiA+Pgo+ID4+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFu
a2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4gPj4gLS0tCj4gPj4g
IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYyB8IDM3ICsrKysr
KysrKysrKysrKysrKy0KPiA+PiAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Y19wbGFuZS5oIHwgIDIgKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXkuYyAgfCAgMSArCj4gPj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaCAgICB8IDIyICsrKysrKysrKy0tCj4gPj4gIDQgZmlsZXMgY2hhbmdlZCwgNTcg
aW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Pgo+ID4+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWNfcGxhbmUuYwo+ID4+IGluZGV4IDAxOTM3
ODk2ZDY5Yy4uY2MxNTRjZmEzMzgxIDEwMDY0NAo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jCj4gPj4gQEAgLTkzLDYgKzkzLDkg
QEAgaW50ZWxfcGxhbmVfZHVwbGljYXRlX3N0YXRlKHN0cnVjdCBkcm1fcGxhbmUgKnBsYW5lKQo+
ID4+ICAJaW50ZWxfc3RhdGUtPnZtYSA9IE5VTEw7Cj4gPj4gIAlpbnRlbF9zdGF0ZS0+ZmxhZ3Mg
PSAwOwo+ID4+ICAKPiA+PiArCS8qIHdpbGwgYmUgc2V0IGluIGludGVsX3BsYW5lX2F0b21pY19j
aGVja193aXRoX3N0YXRlKCkgKi8KPiA+PiArCW1lbXNldCgmaW50ZWxfc3RhdGUtPmh3LCAwLCBz
aXplb2YoaW50ZWxfc3RhdGUtPmh3KSk7Cj4gPiBUaGF0IHNlZW1zIHdyb25nIGZvciB0aGUgY2Fz
ZSB3aGVyZSB3ZSBhZGQgdGhlIHBsYW5lIGFmdGVyIHRoZQo+ID4gcGxhbmUgY2hlY2sgaGFzIGFs
cmVhZHkgYmVlbiBkb25lLgo+ID4KPiA+IEkgdGhpbmsgd2Ugc2hvdWxkIG1haW50YWluIHRoZSBj
dXJyZW50IHN0YXRlIHVubGVzcyB0aGUgcGxhbmUgY2hlY2sKPiA+IHdpbGwgb3ZlcndyaXRlIGl0
Lgo+IEhhdmUgeW91IHNlZW4KPiAKPiBpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlX2FmdGVy
X2NoZWNrKCk/CgpZZXMsIGJ1dCBJIGRvbid0IGxpa2UgaXQuCgotLSAKVmlsbGUgU3lyasOkbMOk
CkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
