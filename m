Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDD5EE3234
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2019 14:23:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05E786E366;
	Thu, 24 Oct 2019 12:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4ECA96E366
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Oct 2019 12:23:37 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Oct 2019 05:23:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,224,1569308400"; d="scan'208";a="281921337"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 24 Oct 2019 05:23:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 24 Oct 2019 15:23:33 +0300
Date: Thu, 24 Oct 2019 15:23:33 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <20191024122333.GY1208@intel.com>
References: <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
 <20191018081323.5836-1-maarten.lankhorst@linux.intel.com>
 <20191022181607.GQ1208@intel.com>
 <642e2d68-bc7c-0301-3c19-f61ca8262a90@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <642e2d68-bc7c-0301-3c19-f61ca8262a90@linux.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Perform manual conversions for
 crtc uapi/hw split, v2.
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

T24gVGh1LCBPY3QgMjQsIDIwMTkgYXQgMDI6MTI6NDZQTSArMDIwMCwgTWFhcnRlbiBMYW5raG9y
c3Qgd3JvdGU6Cj4gT3AgMjItMTAtMjAxOSBvbSAyMDoxNiBzY2hyZWVmIFZpbGxlIFN5cmrDpGzD
pDoKPiA+IE9uIEZyaSwgT2N0IDE4LCAyMDE5IGF0IDEwOjEzOjIzQU0gKzAyMDAsIE1hYXJ0ZW4g
TGFua2hvcnN0IHdyb3RlOgo+ID4+IGludGVsX2dldF9sb2FkX2RldGVjdF9waXBlKCkgbmVlZHMg
dG8gc2V0IHVhcGkgYWN0aXZlLAo+ID4+IHVhcGkgZW5hYmxlIGlzIHNldCBieSB0aGUgY2FsbCB0
byBkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRjKCksCj4gPj4gc28gd2UgY2FuIHJlbW92ZSBp
dC4KPiA+Pgo+ID4+IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUoKSBuZWVkcyB0byBsb29rIGF0
IGh3IHN0YXRlLCBidXQgSSBkaWRuJ3QKPiA+PiBjaGFuZ2Ugc3BhdGNoIHRvIGxvb2sgYXQgaXQu
IEl0J3MgZWFzeSBlbm91Z2ggdG8gZG8gbWFudWFsbHkuCj4gPj4KPiA+PiBpbnRlbF9hdG9taWNf
Y2hlY2soKSBkZWZpbml0ZWx5IG5lZWRzIHRvIGNoZWNrIGZvciB1YXBpIGVuYWJsZSwKPiA+PiBv
dGhlcndpc2UgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyBjYW5ub3QgY29weSB1YXBpIHN0YXRl
IHRvIGh3Lgo+ID4gV2Ugc2VlbSB0byBoYXZlIHRocmVlIHRvdGFsbHkgc2VwYXJhdGUgdGhpbmdz
IGluIHRoaXMgb25lIHBhdGNoLgo+IAo+IFRoZSBwYXRjaCBpcyBhYm91dCB0aGUgbWFudWFsIGNv
bnZlcnNpb25zIHRoYXQgbmVlZCB0byBiZSBkb25lIGJlY2F1c2UgdGhlIGF1dG9tYXRlZAo+IAo+
IGNoZWNrcyBnZXQgdGhlbSB3cm9uZy4KCkRvZXMgdGhhdCBtZWFuIHRoZSBzZXJpZXMgaXMgbm90
IGFjdHVhbGx5IGJpc2VjdGFibGU/Cgo+IFNvIGl0IHRvdWNoZXMgMyBzcG90cyBidXQgZG9lcyAx
IHRoaW5nLCBpZiB5b3Ugd2FudCBJIGNhbiBzcGxpdCBpdCBpbnRvIDMgcGF0Y2hlcy4KPiAKPiBX
aWxsIGRvIHNvIGlmIHJlcXVpcmVkLgo+IAo+IH5NYWFydGVuCgotLSAKVmlsbGUgU3lyasOkbMOk
CkludGVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
