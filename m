Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A895EBFF
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jul 2019 20:53:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBAC16E17E;
	Wed,  3 Jul 2019 18:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60D6E6E17E
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jul 2019 18:53:14 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jul 2019 11:53:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,446,1557212400"; d="scan'208";a="158067702"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 03 Jul 2019 11:53:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Jul 2019 21:53:10 +0300
Date: Wed, 3 Jul 2019 21:53:10 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>
Message-ID: <20190703185310.GB5942@intel.com>
References: <20190627220708.31700-1-aditya.swarup@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190627220708.31700-1-aditya.swarup@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: Use port clock to set
 correct N value
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBKdW4gMjcsIDIwMTkgYXQgMDM6MDc6MDdQTSAtMDcwMCwgQWRpdHlhIFN3YXJ1cCB3
cm90ZToKPiBVc2UgcG9ydF9jbG9jayB0byBjaGVjayB0aGUgY2xvY2sgdmFsdWVzIGluIG4vY3Rz
IGxvb2t1cCB0YWJsZSBpbnN0ZWFkCj4gb2YgY3J0Y19jbG9jay4gQXMgcG9ydF9jbG9jayBpcyBh
bHJlYWR5IGFkanVzdGVkIGJhc2VkIG9uIGNvbG9yIG1vZGUgc2V0Cj4gKDggYml0IG9yIGRlZXAg
Y29sb3IpLCB0aGlzIHdpbGwgaGVscCBpbiBjaGVja2luZyBjbG9jayB2YWx1ZXMgZm9yIGRlZXAK
PiBjb2xvciBtb2RlcyBmcm9tIG4vY3RzIGxvb2t1cCB0YWJsZS4KPiAKPiBTaWduZWQtb2ZmLWJ5
OiBBZGl0eWEgU3dhcnVwIDxhZGl0eWEuc3dhcnVwQGludGVsLmNvbT4KPiBDYzogQ2xpbnQgVGF5
bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4KPiBDYzogSmFuaSBOaWt1bGEgPGphbmku
bmlrdWxhQGludGVsLmNvbT4KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4KClB1c2hlZCB0aGUgc2VyaWVzIHRvIGRpbnEuIFRoYW5rcy4KCj4gLS0t
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyB8IDQgKy0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDMgZGVsZXRpb25zKC0pCj4gCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXVkaW8uYwo+IGluZGV4IDg0MGRhZmYx
MjI0Ni4uMTU2ZDUyNGMyOWQ5IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXVkaW8uYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXVkaW8uYwo+IEBAIC0yMTIsMTMgKzIxMiwxMSBAQCBzdGF0aWMgdTMyIGF1ZGlvX2Nv
bmZpZ19oZG1pX3BpeGVsX2Nsb2NrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YQo+ICBzdGF0aWMgaW50IGF1ZGlvX2NvbmZpZ19oZG1pX2dldF9uKGNvbnN0IHN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLAo+ICAJCQkJICAgaW50IHJhdGUpCj4gIHsKPiAt
CWNvbnN0IHN0cnVjdCBkcm1fZGlzcGxheV9tb2RlICphZGp1c3RlZF9tb2RlID0KPiAtCQkmY3J0
Y19zdGF0ZS0+YmFzZS5hZGp1c3RlZF9tb2RlOwo+ICAJaW50IGk7Cj4gIAo+ICAJZm9yIChpID0g
MDsgaSA8IEFSUkFZX1NJWkUoaGRtaV9hdWRfbmN0cyk7IGkrKykgewo+ICAJCWlmIChyYXRlID09
IGhkbWlfYXVkX25jdHNbaV0uc2FtcGxlX3JhdGUgJiYKPiAtCQkgICAgYWRqdXN0ZWRfbW9kZS0+
Y3J0Y19jbG9jayA9PSBoZG1pX2F1ZF9uY3RzW2ldLmNsb2NrKSB7Cj4gKwkJICAgIGNydGNfc3Rh
dGUtPnBvcnRfY2xvY2sgPT0gaGRtaV9hdWRfbmN0c1tpXS5jbG9jaykgewo+ICAJCQlyZXR1cm4g
aGRtaV9hdWRfbmN0c1tpXS5uOwo+ICAJCX0KPiAgCX0KPiAtLSAKPiAyLjE3LjEKCi0tIApWaWxs
ZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4
