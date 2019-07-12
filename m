Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34466F35
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jul 2019 14:52:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DDB689A60;
	Fri, 12 Jul 2019 12:52:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FF2389A60
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jul 2019 12:52:28 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Jul 2019 05:52:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,482,1557212400"; d="scan'208";a="174445609"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 12 Jul 2019 05:52:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Jul 2019 15:52:24 +0300
Date: Fri, 12 Jul 2019 15:52:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20190712125224.GI5942@intel.com>
References: <20190710213951.517-1-manasi.d.navare@intel.com>
 <20190711103841.GS5942@intel.com> <20190711231540.GA9029@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190711231540.GA9029@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v3 1/2] drm/i915/display/icl: Bump up the
 vdisplay to reflect higher transcoder vertical limits
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

T24gVGh1LCBKdWwgMTEsIDIwMTkgYXQgMDQ6MTU6NDFQTSAtMDcwMCwgTWFuYXNpIE5hdmFyZSB3
cm90ZToKPiBPbiBUaHUsIEp1bCAxMSwgMjAxOSBhdCAwMTozODo0MVBNICswMzAwLCBWaWxsZSBT
eXJqw6Rsw6Qgd3JvdGU6Cj4gPiBPbiBXZWQsIEp1bCAxMCwgMjAxOSBhdCAwMjozOTo1MFBNIC0w
NzAwLCBNYW5hc2kgTmF2YXJlIHdyb3RlOgo+ID4gPiBPbiBJQ0wrLCB0aGUgdmVydGljYWwgbGlt
aXRzIGZvciB0aGUgdHJhbnNjb2RlcnMgYXJlIGluY3JlYXNlZCB0byA4MTkyIHNvIGJ1bXAgdXAK
PiA+ID4gbGltaXRzIGluIGludGVsX21vZGVfdmFsaWQoKQo+ID4gPiAKPiA+ID4gdjM6Cj4gPiA+
ICogU3VwcG9ydGVkIHN0YXJ0aW5nIElDTCAoVmlsbGUpCj4gPiA+ICogVXNlIHRoZSBoaWdoZXIg
bGltaXRzIGZyb20gVFJBTlNfVlRPVEFMIHJlZ2lzdGVyIChWaWxsZSkKPiA+ID4gdjI6Cj4gPiA+
ICogQ2hlY2twYXRjaCB3YXJuaW5nIChNYW5hc2kpCj4gPiA+IAo+ID4gPiBDYzogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiA+ID4gQ2M6IFZp
bGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gPiA+IFNpZ25l
ZC1vZmYtYnk6IE1hbmFzaSBOYXZhcmUgPG1hbmFzaS5kLm5hdmFyZUBpbnRlbC5jb20+Cj4gPiA+
IC0tLQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCA5ICsrKysrKystLQo+ID4gPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMiBk
ZWxldGlvbnMoLSkKPiA+ID4gCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jCj4gPiA+IGluZGV4IGYwNzA4MTgxNWI4MC4uOTg4M2Y2MDdiYjg4IDEw
MDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYwo+ID4gPiBAQCAtMTU3NjQsOCArMTU3NjQsMTMgQEAgaW50ZWxfbW9kZV92YWxpZChzdHJ1
Y3QgZHJtX2RldmljZSAqZGV2LAo+ID4gPiAgCQkJICAgRFJNX01PREVfRkxBR19DTEtESVYyKSkK
PiA+ID4gIAkJcmV0dXJuIE1PREVfQkFEOwo+ID4gPiAgCj4gPiA+IC0JaWYgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gOSB8fAo+ID4gPiAtCSAgICBJU19CUk9BRFdFTEwoZGV2X3ByaXYpIHx8IElT
X0hBU1dFTEwoZGV2X3ByaXYpKSB7Cj4gPiA+ICsJaWYgKElOVEVMX0dFTihkZXZfcHJpdikgPj0g
MTEpIHsKPiA+ID4gKwkJaGRpc3BsYXlfbWF4ID0gODE5MjsKPiA+ID4gKwkJdmRpc3BsYXlfbWF4
ID0gODE5MjsKPiA+IAo+ID4gVGhlIGhvcml6IGxpbWl0cyBzaG91bGQgYmUgMTZrLgo+IAo+IFNv
IHRoZSBUUkFOU19IVE9UQUwgaGFzIGhhZCAxNCBiaXRzIHNvIGFsbG93ZWQgMTZLIGV2ZW4gZm9y
IEdlbjkrLCBzaG91bGQKPiB0aGlzIGJlIGNoYW5nZWQgZm9yIGFsbD8KCkkgdGhpbmsgeW91J3Jl
IGxvb2tpbmcgYXQgdGhlIHdyb25nIGRvY3MgaWYgeW91IHNlZSAxNCBiaXRzLgoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
