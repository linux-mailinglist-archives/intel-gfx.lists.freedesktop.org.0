Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFA6113F52
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 11:25:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2E5F6F87B;
	Thu,  5 Dec 2019 10:25:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CAD26F87B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 10:25:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Dec 2019 02:25:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,281,1571727600"; d="scan'208";a="214090218"
Received: from ramaling-i9x.iind.intel.com (HELO intel.com) ([10.99.66.154])
 by orsmga006.jf.intel.com with ESMTP; 05 Dec 2019 02:25:26 -0800
Date: Thu, 5 Dec 2019 15:54:56 +0530
From: Ramalingam C <ramalingam.c@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20191205102456.GC25793@intel.com>
References: <20191204180549.1267-1-ville.syrjala@linux.intel.com>
 <20191204180549.1267-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204180549.1267-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 4/9] drm/i915: Use the passed in encoder
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

T24gMjAxOS0xMi0wNCBhdCAyMDowNTo0NCArMDIwMCwgVmlsbGUgU3lyamFsYSB3cm90ZToKPiBG
cm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IAo+
IEp1c3QgdXNlIHRoZSBwYXNzZWQgaW4gZW5jb2RlciBpbnN0ZWFkIG9mIGRpZ2dpbmcgaXQgb3V0
IHZpYQo+IHRoZSBsZWdhY3kgZHJtX2Nvbm5lY3Rvci0+ZW5jb2RlciBwb2ludGVyICh3aGljaCB3
ZSdsbCB3YW50IHRvCj4gc3RvcCB1c2luZykuCj4gCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KTEdUTQoKUmV2aWV3ZWQtYnk6
IFJhbWFsaW5nYW0gQyA8cmFtYWxpbmdhbS5jQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdWRpby5jIHwgNCArKy0tCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwo+IGluZGV4IDI3NzEwMDk4ZDA1Ni4uZjlkN2E3
N2ZiZGJlIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
YXVkaW8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8u
Ywo+IEBAIC03MDcsOCArNzA3LDggQEAgdm9pZCBpbnRlbF9hdWRpb19jb2RlY19lbmFibGUoc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAlEUk1fREVCVUdfRFJJVkVSKCJFTEQgb24g
W0NPTk5FQ1RPUjolZDolc10sIFtFTkNPREVSOiVkOiVzXVxuIiwKPiAgCQkJIGNvbm5lY3Rvci0+
YmFzZS5pZCwKPiAgCQkJIGNvbm5lY3Rvci0+bmFtZSwKPiAtCQkJIGNvbm5lY3Rvci0+ZW5jb2Rl
ci0+YmFzZS5pZCwKPiAtCQkJIGNvbm5lY3Rvci0+ZW5jb2Rlci0+bmFtZSk7Cj4gKwkJCSBlbmNv
ZGVyLT5iYXNlLmJhc2UuaWQsCj4gKwkJCSBlbmNvZGVyLT5iYXNlLm5hbWUpOwo+ICAKPiAgCWNv
bm5lY3Rvci0+ZWxkWzZdID0gZHJtX2F2X3N5bmNfZGVsYXkoY29ubmVjdG9yLCBhZGp1c3RlZF9t
b2RlKSAvIDI7Cj4gIAo+IC0tIAo+IDIuMjMuMAo+IAo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeApfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZng=
