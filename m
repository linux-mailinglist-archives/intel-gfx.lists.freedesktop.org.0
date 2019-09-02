Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AE512A59A8
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2019 16:44:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C352891BE;
	Mon,  2 Sep 2019 14:44:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F2DA891B7;
 Mon,  2 Sep 2019 14:44:40 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 02 Sep 2019 07:44:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,459,1559545200"; d="scan'208";a="172948500"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 02 Sep 2019 07:44:37 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2019 17:44:36 +0300
Date: Mon, 2 Sep 2019 17:44:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <20190902144436.GX7482@intel.com>
References: <20190823095232.28908-1-gwan-gyeong.mun@intel.com>
 <20190823095232.28908-4-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823095232.28908-4-gwan-gyeong.mun@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm: Add DisplayPort colorspace
 property
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCBBdWcgMjMsIDIwMTkgYXQgMTI6NTI6MjlQTSArMDMwMCwgR3dhbi1neWVvbmcgTXVu
IHdyb3RlOgo+IEluIG9yZGVyIHRvIHVzZSBjb2xvcnNwYWNlIHByb3BlcnR5IHRvIERpc3BsYXkg
UG9ydCBjb25uZWN0b3JzLCBpdCBleHRlbmRzCj4gRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQ
b3J0IGNvbm5lY3Rvcl90eXBlIG9uCj4gZHJtX21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVy
dHkgZnVuY3Rpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogR3dhbi1neWVvbmcgTXVuIDxnd2FuLWd5
ZW9uZy5tdW5AaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rv
ci5jIHwgNCArKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRp
b24oLSkKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYyBi
L2RyaXZlcnMvZ3B1L2RybS9kcm1fY29ubmVjdG9yLmMKPiBpbmRleCA0Yzc2NjYyNGIyMGQuLjY1
NWFkYTlkNGMxNiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vZHJtX2Nvbm5lY3Rvci5j
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2RybV9jb25uZWN0b3IuYwo+IEBAIC0xNzAzLDcgKzE3
MDMsOSBAQCBpbnQgZHJtX21vZGVfY3JlYXRlX2NvbG9yc3BhY2VfcHJvcGVydHkoc3RydWN0IGRy
bV9jb25uZWN0b3IgKmNvbm5lY3RvcikKPiAgCXN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3A7Cj4g
IAo+ICAJaWYgKGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5cGUgPT0gRFJNX01PREVfQ09OTkVDVE9S
X0hETUlBIHx8Cj4gLQkgICAgY29ubmVjdG9yLT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9D
T05ORUNUT1JfSERNSUIpIHsKPiArCSAgICBjb25uZWN0b3ItPmNvbm5lY3Rvcl90eXBlID09IERS
TV9NT0RFX0NPTk5FQ1RPUl9IRE1JQiB8fAo+ICsJICAgIGNvbm5lY3Rvci0+Y29ubmVjdG9yX3R5
cGUgPT0gRFJNX01PREVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IHx8Cj4gKwkgICAgY29ubmVjdG9y
LT5jb25uZWN0b3JfdHlwZSA9PSBEUk1fTU9ERV9DT05ORUNUT1JfZURQKSB7CgpXZSBkb24ndCBu
ZWVkIGEgc2VwYXJhdGUgc2V0IG9mIGVudW0gdmFsdWVzIGZvciBEUD8KCj4gIAkJcHJvcCA9IGRy
bV9wcm9wZXJ0eV9jcmVhdGVfZW51bShkZXYsIERSTV9NT0RFX1BST1BfRU5VTSwKPiAgCQkJCQkJ
IkNvbG9yc3BhY2UiLAo+ICAJCQkJCQloZG1pX2NvbG9yc3BhY2VzLAo+IC0tIAo+IDIuMjIuMAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBo
dHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoK
LS0gClZpbGxlIFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5m
cmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0
aW5mby9pbnRlbC1nZng=
