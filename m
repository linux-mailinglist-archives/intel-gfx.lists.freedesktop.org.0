Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E05D9221
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Oct 2019 15:13:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C10496E97B;
	Wed, 16 Oct 2019 13:13:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A8DE6E979
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Oct 2019 13:13:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Oct 2019 06:13:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,303,1566889200"; d="scan'208";a="279524705"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 16 Oct 2019 06:13:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 16 Oct 2019 16:13:36 +0300
Date: Wed, 16 Oct 2019 16:13:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>
Message-ID: <20191016131336.GM1208@intel.com>
References: <20191016103249.32121-1-uma.shankar@intel.com>
 <20191016103249.32121-7-uma.shankar@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016103249.32121-7-uma.shankar@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [v1 6/6] drm/i915/display: Reduce blanking to
 support 4k60@10bpp for LSPCON
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

T24gV2VkLCBPY3QgMTYsIDIwMTkgYXQgMDQ6MDI6NDlQTSArMDUzMCwgVW1hIFNoYW5rYXIgd3Jv
dGU6Cj4gQmxhbmtpbmcgbmVlZHMgdG8gYmUgcmVkdWNlZCB0byBpbmNvcnBvcmF0ZSBEUCBhbmQg
SERNSSB0aW1pbmcvbGluawo+IGJhbmR3aWR0aCBsaW1pdGF0aW9ucyBmb3IgQ0VBIG1vZGVzICg0
a0A2MCBhdCAxMCBicHApLiBEUCBjYW4gZHJpdmUKPiAxNy4yOEdicyB3aGlsZSA0ayBtb2RlcyAo
VklDOTcgZXRjKSBhdCAxMCBicHAgcmVxdWlyZWQgMTcuOCBHYnBzLgo+IFRoaXMgd2lsbCBjYXVz
ZSBtb2RlIHRvIGJsYW5rIG91dC4gUmVkdWNlZCBIdG90YWwgYnkgc2hvcnRlbmluZyB0aGUKPiBi
YWNrIHBvcmNoIGFuZCBmcm9udCBwb3JjaCB3aXRoaW4gcGVybWlzc2libGUgbGltaXRzLgo+IAo+
IFNpZ25lZC1vZmYtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyB8IDE3ICsrKysrKysr
KysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspCj4gCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IGluZGV4IGQ5Mjc3N2JkM2JlZC4uYTEy
YjY5MTYwMjNkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+
IEBAIC01OTcsOCArNTk3LDEwIEBAIGludGVsX2RwX21vZGVfdmFsaWQoc3RydWN0IGRybV9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKPiAgewo+ICAJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGlu
dGVsX2F0dGFjaGVkX2RwKGNvbm5lY3Rvcik7Cj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpp
bnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsKPiArCXN0cnVj
dCBpbnRlbF9lbmNvZGVyICppbnRlbF9lbmNvZGVyID0gaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihj
b25uZWN0b3IpOwo+ICAJc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGUgPSBpbnRl
bF9jb25uZWN0b3ItPnBhbmVsLmZpeGVkX21vZGU7Cj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNvbm5lY3Rvci0+ZGV2KTsKPiArCXN0cnVjdCBpbnRlbF9s
c3Bjb24gKmxzcGNvbiA9IGVuY190b19pbnRlbF9sc3Bjb24oJmludGVsX2VuY29kZXItPmJhc2Up
Owo+ICAJaW50IHRhcmdldF9jbG9jayA9IG1vZGUtPmNsb2NrOwo+ICAJaW50IG1heF9yYXRlLCBt
b2RlX3JhdGUsIG1heF9sYW5lcywgbWF4X2xpbmtfY2xvY2s7Cj4gIAlpbnQgbWF4X2RvdGNsazsK
PiBAQCAtNjIwLDYgKzYyMiwyMSBAQCBpbnRlbF9kcF9tb2RlX3ZhbGlkKHN0cnVjdCBkcm1fY29u
bmVjdG9yICpjb25uZWN0b3IsCj4gIAkJdGFyZ2V0X2Nsb2NrID0gZml4ZWRfbW9kZS0+Y2xvY2s7
Cj4gIAl9Cj4gIAo+ICsJLyoKPiArCSAqIFJlZHVjaW5nIEJsYW5raW5nIHRvIGluY29ycG9yYXRl
IERQIGFuZCBIRE1JIHRpbWluZy9saW5rIGJhbmR3aWR0aAo+ICsJICogbGltaXRhdGlvbnMgZm9y
IENFQSBtb2RlcyAoNGtANjAgYXQgMTAgYnBwKS4gRFAgY2FuIGRyaXZlIDE3LjI4R2JzCj4gKwkg
KiB3aGlsZSA0ayBtb2RlcyAoVklDOTcgZXRjKSBhdCAxMCBicHAgcmVxdWlyZWQgMTcuOCBHYnBz
LiBUaGlzIHdpbGwKPiArCSAqIGNhdXNlIG1vZGUgdG8gYmxhbmsgb3V0LiBSZWR1Y2VkIEh0b3Rh
bCBieSBzaG9ydGVuaW5nIHRoZSBiYWNrIHBvcmNoCj4gKwkgKiBhbmQgZnJvbnQgcG9yY2ggd2l0
aGluIHBlcm1pc3NpYmxlIGxpbWl0cy4KPiArCSAqLwo+ICsJaWYgKGxzcGNvbi0+YWN0aXZlICYm
IGxzcGNvbi0+aGRyX3N1cHBvcnRlZCAmJgo+ICsJICAgIG1vZGUtPmNsb2NrID4gNTcwMDAwKSB7
Cj4gKwkJbW9kZS0+Y2xvY2sgPSA1NzAwMDA7Cj4gKwkJbW9kZS0+aHRvdGFsIC09IDE4MDsKPiAr
CQltb2RlLT5oc3luY19zdGFydCAtPSA3MjsKPiArCQltb2RlLT5oc3luY19lbmQgLT0gNzI7Cj4g
Kwl9CgpJIGRvbid0IHRoaW5rIHdlIHdhbnQgdGhlc2Uga2luZCBvZiBoYWNrcy4gRWl0aGVyIHRo
ZSBtb2RlIHdvcmtzIG9yIGl0CmRvZXNuJ3QuCgo+ICsKPiAgCW1heF9saW5rX2Nsb2NrID0gaW50
ZWxfZHBfbWF4X2xpbmtfcmF0ZShpbnRlbF9kcCk7Cj4gIAltYXhfbGFuZXMgPSBpbnRlbF9kcF9t
YXhfbGFuZV9jb3VudChpbnRlbF9kcCk7Cj4gIAo+IC0tIAo+IDIuMjIuMAoKLS0gClZpbGxlIFN5
cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5v
cmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1n
Zng=
