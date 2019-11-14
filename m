Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F96FFC4B9
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Nov 2019 11:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 066996E195;
	Thu, 14 Nov 2019 10:53:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DE8E6E195
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Nov 2019 10:53:15 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Nov 2019 02:53:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,304,1569308400"; d="scan'208";a="208093912"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 14 Nov 2019 02:53:12 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 14 Nov 2019 12:53:11 +0200
Date: Thu, 14 Nov 2019 12:53:11 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191114105311.GW1208@intel.com>
References: <20191113171944.19308-1-chris@chris-wilson.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113171944.19308-1-chris@chris-wilson.co.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Hide smem_start from
 userspace
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBOb3YgMTMsIDIwMTkgYXQgMDU6MTk6NDRQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IERvIG5vdCBsZWFrIG91ciBpbnRlcm5hbCBrZXJuZWwgYWRkcmVzcyBmb3IgcmFuZG9t
IHVzZXJzcGFjZSB0byBhYnVzZS4KPiBEYW5pZWwgYWRkZWQgdGhlIHN1cHBvcnQgdG8gZmJkZXYg
dG8gZmlsdGVyIG91dCB0aGUgcGh5c2ljYWwgYWRkcmVzc2VzCj4gYmVpbmcgZXhwb3NlZCBieSBm
YmRldiwgcHV0IHRoYXQgdG8gdXNlIHRvIHByb3RlY3Qgb3Vyc2VsdmVzLgo+IAo+IEJ1Z3ppbGxh
OiBodHRwczovL2J1Z3MuZnJlZWRlc2t0b3Aub3JnL3Nob3dfYnVnLmNnaT9pZD0xMTIyNTYKPiBG
aXhlczogNWY4ODliOWE2MWRkICgiZHJtL2k5MTU6IERpc3JlZ2FyZCBkcm1fbW9kZV9jb25maWcu
ZmJfYmFzZSIpCj4gUmVmZXJlbmNlczogZGE2Yzc3MDdjYWYzICgiZmJkZXY6IEFkZCBGQklORk9f
SElERV9TTUVNX1NUQVJUIGZsYWciKQo+IFNpZ25lZC1vZmYtYnk6IENocmlzIFdpbHNvbiA8Y2hy
aXNAY2hyaXMtd2lsc29uLmNvLnVrPgo+IENjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVy
QGZmd2xsLmNoPgo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiZGV2LmMgfCA1ICsrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZmJkZXYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJk
ZXYuYwo+IGluZGV4IDNkMTA2MTQ3MGU3Ni4uYmZmMzExNTYxNTk3IDEwMDY0NAo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJkZXYuYwo+IEBAIC0yMjYsOCArMjI2LDggQEAg
c3RhdGljIGludCBpbnRlbGZiX2NyZWF0ZShzdHJ1Y3QgZHJtX2ZiX2hlbHBlciAqaGVscGVyLAo+
ICAJCWdvdG8gb3V0X3VucGluOwo+ICAJfQo+ICAKPiAtCWlmYmRldi0+aGVscGVyLmZiID0gJmlm
YmRldi0+ZmItPmJhc2U7Cj4gLQo+ICsJLyogZG9uJ3QgbGVhayBhbnkgcGh5c2ljYWwgYWRkcmVz
c2VzIHRvIHVzZXJzcGFjZSAqLwo+ICsJaW5mby0+ZmxhZ3MgfD0gRkJJTkZPX0hJREVfU01FTV9T
VEFSVDsKCkRvZXNuJ3QgdGhlIGZiIGhlbHBlciBhbHJlYWR5IGRvIHRoaXM/CgpMb29rcyBsaWtl
IGl0IHRyaWVzLiBUaG91Z2ggSSBoYXZlIG5vIGlkZWEgd2h5IGl0IGRvZXMKaXQgaW4gaW5pdGlh
bF9jb25maWcoKSBpbnN0ZWFkIG9mIGZpbGxfZmJfaW5mbygpLgoKPiAgCWluZm8tPmZib3BzID0g
JmludGVsZmJfb3BzOwo+ICAKPiAgCS8qIHNldHVwIGFwZXJ0dXJlIGJhc2Uvc2l6ZSBmb3IgdmVz
YWZiIHRha2VvdmVyICovCj4gQEAgLTI0Nyw2ICsyNDcsNyBAQCBzdGF0aWMgaW50IGludGVsZmJf
Y3JlYXRlKHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIsCj4gIAlpbmZvLT5maXguc21lbV9z
dGFydCA9ICh1bnNpZ25lZCBsb25nKWluZm8tPnNjcmVlbl9iYXNlOwoKSXNuJ3Qgc2NyZWVuX2Jh
c2UgdGhlIHZpcnR1YWwgYWRkcmVzcz8gV2h5IGRvIHdlIHB1dCB0aGF0IGludG8Kc21lbV9zdGFy
dD8KCj4gIAlpbmZvLT5maXguc21lbV9sZW4gPSBpbmZvLT5zY3JlZW5fc2l6ZTsKPiAgCj4gKwlp
ZmJkZXYtPmhlbHBlci5mYiA9ICZpZmJkZXYtPmZiLT5iYXNlOwo+ICAJZHJtX2ZiX2hlbHBlcl9m
aWxsX2luZm8oaW5mbywgJmlmYmRldi0+aGVscGVyLCBzaXplcyk7Cj4gIAo+ICAJLyogSWYgdGhl
IG9iamVjdCBpcyBzaG1lbWZzIGJhY2tlZCwgaXQgd2lsbCBoYXZlIGdpdmVuIHVzIHplcm9lZCBw
YWdlcy4KPiAtLSAKPiAyLjI0LjAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
