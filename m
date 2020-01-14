Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F98C13ACA7
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 15:52:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80FFF6E3F7;
	Tue, 14 Jan 2020 14:52:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C0DEC6E3F7
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 14:52:45 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:52:45 -0800
X-IronPort-AV: E=Sophos;i="5.69,433,1571727600"; d="scan'208";a="372596523"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Jan 2020 06:52:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20200108181242.13650-3-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200108181242.13650-1-ville.syrjala@linux.intel.com>
 <20200108181242.13650-3-ville.syrjala@linux.intel.com>
Date: Tue, 14 Jan 2020 16:52:40 +0200
Message-ID: <871rs2ks3r.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/sdvo: Consolidate SDVO HDMI
 force_dvi handling
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAwOCBKYW4gMjAyMCwgVmlsbGUgU3lyamFsYSA8dmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb20+IHdyb3RlOgo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBs
aW51eC5pbnRlbC5jb20+Cj4KPiBNb3ZlIHRoZSBmb3JjZV9kdmkgY2hlY2sgdG8gYSBzaW5nbGUg
ZnVuY3Rpb24gdGhhdCBjYW4gYmUgY2FsbGVkIGZyb20KPiBib3RoIG1vZGUgdmFsaWRhdGlvbiBh
bmQgY29tcHV0ZV9jb25maWcoKS4gTm90ZSB0aGF0IGN1cnJlbnRseSB3ZQo+IGRvbid0IGNhbGwg
aXQgZnJvbSBtb2RlIHZhbGlkYXRpb24sIGJ1dCB0aGF0IHdpbGwgY2hhbmdlIHNvb24uCj4KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPgoKUmV2aWV3ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+Cgo+
IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYyB8IDIwICsr
KysrKysrKysrKysrKy0tLS0tCj4gIDEgZmlsZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCA1
IGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfc2R2by5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9zZHZv
LmMKPiBpbmRleCAwMjExOWM4MjdjODAuLjJkMmM1ZTFjN2U3YyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Nkdm8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfc2R2by5jCj4gQEAgLTEyNjQsNiArMTI2NCwxMyBAQCBz
dGF0aWMgdm9pZCBpOXh4X2FkanVzdF9zZHZvX3R2X2Nsb2NrKHN0cnVjdCBpbnRlbF9jcnRjX3N0
YXRlICpwaXBlX2NvbmZpZykKPiAgCXBpcGVfY29uZmlnLT5jbG9ja19zZXQgPSB0cnVlOwo+ICB9
Cj4gIAo+ICtzdGF0aWMgYm9vbCBpbnRlbF9oYXNfaGRtaV9zaW5rKHN0cnVjdCBpbnRlbF9zZHZv
ICpzZHZvLAo+ICsJCQkJY29uc3Qgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3Rh
dGUpCj4gK3sKPiArCXJldHVybiBzZHZvLT5oYXNfaGRtaV9tb25pdG9yICYmCj4gKwkJUkVBRF9P
TkNFKHRvX2ludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKGNvbm5fc3RhdGUpLT5mb3JjZV9h
dWRpbykgIT0gSERNSV9BVURJT19PRkZfRFZJOwo+ICt9Cj4gKwo+ICBzdGF0aWMgaW50IGludGVs
X3Nkdm9fY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gIAkJ
CQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpwaXBlX2NvbmZpZywKPiAgCQkJCSAgICAg
c3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGUgKmNvbm5fc3RhdGUpCj4gQEAgLTEzMTksMTIgKzEz
MjYsMTUgQEAgc3RhdGljIGludCBpbnRlbF9zZHZvX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyLAo+ICAJcGlwZV9jb25maWctPnBpeGVsX211bHRpcGxpZXIgPQo+
ICAJCWludGVsX3Nkdm9fZ2V0X3BpeGVsX211bHRpcGxpZXIoYWRqdXN0ZWRfbW9kZSk7Cj4gIAo+
IC0JaWYgKGludGVsX3Nkdm9fc3RhdGUtPmJhc2UuZm9yY2VfYXVkaW8gIT0gSERNSV9BVURJT19P
RkZfRFZJKQo+IC0JCXBpcGVfY29uZmlnLT5oYXNfaGRtaV9zaW5rID0gaW50ZWxfc2R2by0+aGFz
X2hkbWlfbW9uaXRvcjsKPiArCXBpcGVfY29uZmlnLT5oYXNfaGRtaV9zaW5rID0gaW50ZWxfaGFz
X2hkbWlfc2luayhpbnRlbF9zZHZvLCBjb25uX3N0YXRlKTsKPiAgCj4gLQlpZiAoaW50ZWxfc2R2
b19zdGF0ZS0+YmFzZS5mb3JjZV9hdWRpbyA9PSBIRE1JX0FVRElPX09OIHx8Cj4gLQkgICAgKGlu
dGVsX3Nkdm9fc3RhdGUtPmJhc2UuZm9yY2VfYXVkaW8gPT0gSERNSV9BVURJT19BVVRPICYmIGlu
dGVsX3Nkdm8tPmhhc19oZG1pX2F1ZGlvKSkKPiAtCQlwaXBlX2NvbmZpZy0+aGFzX2F1ZGlvID0g
dHJ1ZTsKPiArCWlmIChwaXBlX2NvbmZpZy0+aGFzX2hkbWlfc2luaykgewo+ICsJCWlmIChpbnRl
bF9zZHZvX3N0YXRlLT5iYXNlLmZvcmNlX2F1ZGlvID09IEhETUlfQVVESU9fQVVUTykKPiArCQkJ
cGlwZV9jb25maWctPmhhc19hdWRpbyA9IGludGVsX3Nkdm8tPmhhc19oZG1pX2F1ZGlvOwo+ICsJ
CWVsc2UKPiArCQkJcGlwZV9jb25maWctPmhhc19hdWRpbyA9Cj4gKwkJCQlpbnRlbF9zZHZvX3N0
YXRlLT5iYXNlLmZvcmNlX2F1ZGlvID09IEhETUlfQVVESU9fT047Cj4gKwl9Cj4gIAo+ICAJaWYg
KGludGVsX3Nkdm9fc3RhdGUtPmJhc2UuYnJvYWRjYXN0X3JnYiA9PSBJTlRFTF9CUk9BRENBU1Rf
UkdCX0FVVE8pIHsKPiAgCQkvKgoKLS0gCkphbmkgTmlrdWxhLCBJbnRlbCBPcGVuIFNvdXJjZSBH
cmFwaGljcyBDZW50ZXIKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4Cg==
