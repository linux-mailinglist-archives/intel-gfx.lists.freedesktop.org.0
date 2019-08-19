Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67EAB9498F
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2019 18:14:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA92D6E217;
	Mon, 19 Aug 2019 16:14:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21A8B6E217
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2019 16:14:00 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Aug 2019 09:13:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,405,1559545200"; d="scan'208";a="185643046"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 19 Aug 2019 09:13:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 19 Aug 2019 19:13:56 +0300
Date: Mon, 19 Aug 2019 19:13:56 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190819161356.GV5942@intel.com>
References: <20190815215859.10970-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815215859.10970-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Add Wa_1604278689:icl,ehl
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

T24gVGh1LCBBdWcgMTUsIDIwMTkgYXQgMDI6NTg6NTlQTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBGcm9tIHRoZSBic3BlYzoKPiAKPiAgICAgICAgICJTVyBtdXN0IGFsd2F5cyBwcm9ncmFt
IHRoZSBGQkNfUlRfQkFTRV9BRERSX1JFR0lTVEVSXyogcmVnaXN0ZXIKPiAgICAgICAgIGluIFJl
bmRlciBFbmdpbmUgdG8gYSByZXNlcnZlZCB2YWx1ZSAoMHhGRkZGX0ZGRkYpIHN1Y2ggdGhhdCB0
aGUKPiAgICAgICAgIHByb2dyYW1tZWQgdmFsdWUgZG9lc27igJl0IG1hdGNoIHRoZSByZW5kZXIg
dGFyZ2V0IHN1cmZhY2UgYWRkcmVzcwo+ICAgICAgICAgcHJvZ3JhbW1lZC4gVGhpcyB3b3VsZCBk
aXNhYmxlIHJlbmRlciBlbmdpbmUgZnJvbSBnZW5lcmF0aW5nCj4gICAgICAgICBtb2RpZnkgbWVz
c2FnZXMgdG8gRkJDIHVuaXQgaW4gZGlzcGxheS4iCgpUaGlzIGxvb2tzIGEgYml0IHBlY3VsaWFy
LiBUaGF0IG1hZ2ljIHZhbHVlIHNlZW1zIHRvIGltcGx5IHRoYXQgdGhlClJUX1ZBTElEIGJpdCBu
byBsb25nZXIgZnVuY3Rpb25zIGFzIGludGVuZGVkLiBJIGZpbGVkIGEgc3BlYyBpc3N1ZSB0bwpn
ZXQgc29tZSBjbGFyaWZpY2F0aW9uIG9uIHRoaXMuCgo+IAo+IEJzcGVjOiAxMTM4OAo+IEJzcGVj
OiAzMzQ1MQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGludGVsLmNv
bT4KPiBTaWduZWQtb2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIHwg
NiArKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCAgICAgICAgICAgICB8
IDEgKwo+ICAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3JrYXJvdW5kcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfd29ya2Fyb3VuZHMuYwo+IGluZGV4IDcwNGFjZTAxZTdmNS4u
MjliNTBlMmMwNjI3IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVs
X3dvcmthcm91bmRzLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF93b3Jr
YXJvdW5kcy5jCj4gQEAgLTU2Nyw2ICs1NjcsMTIgQEAgc3RhdGljIHZvaWQgaWNsX2N0eF93b3Jr
YXJvdW5kc19pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSwKPiAgCS8qIGFsbG93
IGhlYWRlcmxlc3MgbWVzc2FnZXMgZm9yIHByZWVtcHRpYmxlIEdQR1BVIGNvbnRleHQgKi8KPiAg
CVdBX1NFVF9CSVRfTUFTS0VEKEdFTjEwX1NBTVBMRVJfTU9ERSwKPiAgCQkJICBHRU4xMV9TQU1Q
TEVSX0VOQUJMRV9IRUFETEVTU19NU0cpOwo+ICsKPiArCS8qIFdhXzE2MDQyNzg2ODk6aWNsLGVo
bCAqLwo+ICsJd2Ffd3JpdGVfbWFza2VkX29yKHdhbCwgSVZCX0ZCQ19SVF9CQVNFX1VQUEVSLAo+
ICsJCQkgICAwLCAvKiB3cml0ZS1vbmx5IHJlZ2lzdGVyOyBza2lwIHZhbGlkYXRpb24gKi8KPiAr
CQkJICAgMHhGRkZGRkZGRik7Cj4gKwl3YV93cml0ZSh3YWwsIElWQl9GQkNfUlRfQkFTRSwgMHhG
RkZGRkZGRik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVnLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gaW5kZXggZGVmNmRiZGM3ZTJlLi4xNGFmMWIxZGMwZDMgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVnLmgKPiBAQCAtMzIxNCw2ICszMjE0LDcgQEAgZW51bSBpOTE1X3Bvd2VyX3dlbGxfaWQg
ewo+ICAKPiAgLyogRnJhbWVidWZmZXIgY29tcHJlc3Npb24gZm9yIEl2eWJyaWRnZSAqLwo+ICAj
ZGVmaW5lIElWQl9GQkNfUlRfQkFTRQkJCV9NTUlPKDB4NzAyMCkKPiArI2RlZmluZSBJVkJfRkJD
X1JUX0JBU0VfVVBQRVIJCV9NTUlPKDB4NzAyNCkKClRoYXQgcmVnaXN0ZXIgc2VlbXMgdG8gYmUg
QkRXKyBhY3R1YWxseS4KCj4gIAo+ICAjZGVmaW5lIElQU19DVEwJCV9NTUlPKDB4NDM0MDgpCj4g
ICNkZWZpbmUgICBJUFNfRU5BQkxFCSgxIDw8IDMxKQo+IC0tIAo+IDIuMjAuMQo+IAo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdAo+IEludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKPiBodHRwczovL2xp
c3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAoKLS0gClZpbGxl
IFN5cmrDpGzDpApJbnRlbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZng=
