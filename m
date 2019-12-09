Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BDCD1170C2
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2019 16:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FB546E4AE;
	Mon,  9 Dec 2019 15:43:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 026A46E4AE
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2019 15:43:45 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Dec 2019 07:43:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,296,1571727600"; d="scan'208";a="210141524"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 09 Dec 2019 07:43:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 09 Dec 2019 17:43:42 +0200
Date: Mon, 9 Dec 2019 17:43:42 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20191209154342.GS1208@intel.com>
References: <20191209150137.18578-1-ville.syrjala@linux.intel.com>
 <20191209150137.18578-2-ville.syrjala@linux.intel.com>
 <157590439302.6399.13307864068739805449@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157590439302.6399.13307864068739805449@skylake-alporthouse-com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH xf86-video-intel 2/2] sna: Eliminate
 sna_mode_wants_tear_free()
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

T24gTW9uLCBEZWMgMDksIDIwMTkgYXQgMDM6MTM6MTNQTSArMDAwMCwgQ2hyaXMgV2lsc29uIHdy
b3RlOgo+IFF1b3RpbmcgVmlsbGUgU3lyamFsYSAoMjAxOS0xMi0wOSAxNTowMTozNykKPiA+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiAK
PiA+IFRoZSBtb2RwYXJhbSBjaGVja3MgcGVyZm9ybWVkIGJ5IHNuYV9tb2RlX3dhbnRzX3RlYXJf
ZnJlZSgpIGRvbid0Cj4gPiBnZW5lcmFsbHkgd29yayB3aGVuIHRoZSBzZXJ2ZXIgaXMgcnVubmlu
ZyBhcyBhIHJlZ3VsYXIgdXNlci4gSGVuY2UKPiA+IHdlIGNhbid0IHJlbHkgb24gdGhlbSB0byBp
bmRpY2F0ZSB3aGV0aGVyIEZCQy9QU1IvZXRjIGlzIGVuYWJsZWQuCj4gPiBBIGxzbyB0aGUgIlBh
bmVsIFNlbGYtUmVmcmVzaCIgY29ubmVjdG9yIHByb3BlcnR5IGRvZXNuJ3QgYWN0dWFsbHkKPiA+
IGV4aXN0IHNvIHdlIGNhbiBudWtlIHRoYXQgcGFydCBhcyB3ZWxsLiBMZXQncyBqdXN0IG51a2Ug
dGhlIHdob2xlCj4gPiB0aGluZyBhbmQgYXNzdW1lIHdlIHdhbnQgZGlydHlmYiBhbHdheXMgd2hl
biB0ZWFyZnJlZSBpcyBub3QgZW5hYmxlZC4KPiA+IAo+ID4gSSdsbCBhbnl3YXkgd2FudCB0byBl
bmFibGUgRkJDIGJ5IGRlZmF1bHQgYWNyb3NzIHRoZSBib2FyZCBzb29uaXNoCj4gPiBzbyB0aGUg
Y2hlY2sgd291bGRuJ3QgcmVhbGx5IGJ1eSB1cyBtdWNoICh3b3VsZCBqdXN0IGV4Y2x1ZGUgaTgz
MAo+ID4gYW5kIGEgZmV3IG9sZCBkZXNrdG9wIGNoaXBzZXRzIHdoaWNoIGRvbid0IGhhdmUgRkJD
IGhhcmR3YXJlKS4KPiA+IAo+ID4gQWRkaXRpb25hbGx5IGlmIHdlIGRvbid0IGhhdmUgd29ya2lu
ZyBkaXJ0eWZiIHdlIHJlYWxseSBzaG91bGQKPiA+IGVuYWJsZSB0ZWFyZnJlZSBieSBkZWZhdWx0
IGJlY2F1c2Ugb3RoZXJ3aXNlIHdlJ3JlIGdvaW5nIHRvCj4gPiBnZXQgaG9ycmlibGUgbGFnIGR1
ZSB0byBtaXNzaW5nIGZyb250YnVmZmVyIGZsdXNoZXMuCj4gCj4gQnV0IHdlIGFsc28gd2FudCB0
byBlbmFibGUgVGVhckZyZWUgYW55d2F5IGluIG1vc3QgY2FzZXMsIGFuZCBoZXJlIHdlCj4gYXJl
IGRlZmF1bHRpbmcgdG8gb2ZmIGluIGNhc2VzIHdoZXJlIGl0IHdhcyBhbHJlYWR5IG9uLgo+IAo+
IEkgc3RpbGwgZG9uJ3Qga25vdyBvbiB3aGF0IGdyb3VuZHMgdGhlIGN1dC1vZmYgc2hvdWxkIGJl
IGJhc2VkLCB0aGUKPiBwcmltYXJ5IHF1ZXN0aW9uIGlzIGNhbiB3ZSBhZmZvcmQgdG8ga2VlcCBh
biBleHRyYSBmcmFtZWJ1ZmZlciBwbHVzIGFueQo+IGd1YmJpbnMgbWVtb3J5PyBUaGUgd29ycnkg
YWJvdXQgcGVyZiBhcmUgbm93IGxhcmdlciBtb290LCBzbyBpdCBib2lscwo+IGRvd24gdG8gYXZh
aWxhYmxlIG1lbW9yeSAtLSBpbiBxdWl0ZSBhIGZldyBjYXNlcyBUZWFyRnJlZSBpcyBhIGJpZwo+
IGltcHJvdmVtZW50IG9uIHBvd2VyIG1hbmFnZW1lbnQsIGJ1dCB0aGF0IEkgZ3Vlc3MgaXMgY3Vy
cmVudGx5IHNuYisKPiAoYWx0aG91Z2ggd2UgY2FuIGZpeCBpbGsgcmVuZGVyIHBvd2Vyc3RhbmRi
eSkuCj4gCj4gSG93IGFib3V0IEdUVCA+IG1hcHBhYmxlIGFwZXJ0dXJlLCBiYXNlZCBvbiB0aGUg
aWRlYSB0aGF0IHdlIGhhdmUgcm9vbQo+IHRvIHNwYXJlIHRoYXQgY2FuJ3QgYmUgdXNlZCBmb3Ig
c2Nhbm91dD8gVGhhdCB3b3VsZCBvbmx5IGRpc2FibGUgZ2VuMiBieQo+IGRlZmF1bHQuCgpOb3Qg
c3VyZS4gSWRlYWxseSB3ZSBzaG91bGQgcGVyaGFwcyBtYWtlIGl0IGR5bmFtaWMgYW5kIGVuYWJs
ZSB0ZWFyZnJlZQpvbmx5IHdoZW4gdGhlIGV4dHJhIGZyYW1lYnVmZmVycyB3b24ndCBob2cgdG9v
IG11Y2ggb2YgdGhlIGd0dC9waHlzaWNhbApSQU0/IEJ1dCBzaW5jZSBpdCdzIG5vdCBkeW5hbWlj
IGN1cnJlbnRseSBJIGd1ZXNzIHRoYXQgd291bGQgaW52b2x2ZQpzb21lIGFjdHVhbCB3b3JrLgoK
LS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
