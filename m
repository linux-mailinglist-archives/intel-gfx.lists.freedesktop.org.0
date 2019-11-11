Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F34DF729C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2019 11:59:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C53726E8AB;
	Mon, 11 Nov 2019 10:59:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F50C6E8AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Nov 2019 10:59:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Nov 2019 02:59:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,292,1569308400"; d="scan'208";a="405194608"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 11 Nov 2019 02:59:19 -0800
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 91C645C1DF4; Mon, 11 Nov 2019 12:59:10 +0200 (EET)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20191110185806.17413-9-chris@chris-wilson.co.uk>
References: <20191110185806.17413-1-chris@chris-wilson.co.uk>
 <20191110185806.17413-9-chris@chris-wilson.co.uk>
Date: Mon, 11 Nov 2019 12:59:10 +0200
Message-ID: <875zjq65mp.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 09/25] drm/i915/icl: Refine PG_HYSTERESIS
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyaXRlczoKCj4gQWZ0ZXIg
ZG9pbmcgc29tZSBtZWFzdXJpbmcsIEljZWxha2UgYmVoYXZlcyBvbiBhIHBhciB3aXRoIEJyb2Fk
d2VsbCwgYW5kCj4gd2l0aG91dCBoYXZpbmcgdG8gY29tcHJvbWlzZSBmb3IgbG93IHBvd2VyIGNv
cmVzIHdpdGggbG9uZyBsYXRlbmNpZXMsIHdlCj4gY2FuIHJlZHVjZSB0aGUgcG93ZXJnYXRpbmcg
aHlzdGVyZXNpcyBzbyB0aGF0IHRoZSBwb3dlcnNhdmluZyBpcyBlbmFibGVkCj4gZmFzdGVyLiBO
byBpbXBhY3Qgb2JzZXJ2ZWQgb24gY2xpZW50IHNpZGUgdGhyb3VnaHB1dCBtZWFzdXJlcyAoc28K
PiBuZWdsaWdpYmxlIGluY3JlYXNlIGluIGV4dHJhIHN3aXRjaGluZyksIGFuZCBpbnNwZWN0aW9u
IGZyb20gaGlnaAo+IGZyZXF1ZW5jeSBwb2xsaW5nIHVzaW5nIGlndC9nZW1fZXhlY19ub3Avc2Vx
dWVudGlhbCwgcHJvdmlkZWQgYW4gZXN0aW1hdGUKPiBmb3IgdGhlIHVwcGVyIGJvdW5kIGJlZm9y
ZSB3ZSBjYW4gbWVhc3VyZSBhIHN1YnN0YW50aWFsIGltcGFjdCBvbgo+IGxhdGVuY3kuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBD
YzogTWlrYSBLdW9wcGFsYSA8bWlrYS5rdW9wcGFsYUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIHwgMTMgKysrKystLS0tLS0tLQo+
ICAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCA4IGRlbGV0aW9ucygtKQo+Cj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMKPiBpbmRleCA1YWQ0YTkyYTk1ODIuLjVlM2JhMDM0
YmQ0NiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jCj4gQEAgLTg4LDE1ICs4
OCwxMiBAQCBzdGF0aWMgdm9pZCBnZW4xMV9yYzZfZW5hYmxlKHN0cnVjdCBpbnRlbF9yYzYgKnJj
NikKPiAgCSAqIGRvIG5vdCB3YW50IHRoZSBlbmFibGUgaHlzdGVyZXNpcyB0byBsZXNzIHRoYW4g
dGhlIHdha2V1cCBsYXRlbmN5Lgo+ICAJICoKPiAgCSAqIGlndC9nZW1fZXhlY19ub3Avc2VxdWVu
dGlhbCBwcm92aWRlcyBhIHJvdWdoIGVzdGltYXRlIGZvciB0aGUKPiAtCSAqIHNlcnZpY2UgbGF0
ZW5jeSwgYW5kIHB1dHMgaXQgYXJvdW5kIDEwdXMgZm9yIEJyb2Fkd2VsbCAoYW5kIG90aGVyCj4g
LQkgKiBiaWcgY29yZSkgYW5kIGFyb3VuZCA0MHVzIGZvciBCcm94dG9uIChhbmQgb3RoZXIgbG93
IHBvd2VyIGNvcmVzKS4KPiAtCSAqIFtOb3RlIHRoYXQgZm9yIGxlZ2FjeSByaW5nYnVmZmVyIHN1
Ym1pc3Npb24sIHRoaXMgaXMgbGVzcyB0aGFuIDF1cyFdCj4gLQkgKiBIb3dldmVyLCB0aGUgd2Fr
ZXVwIGxhdGVuY3kgb24gQnJveHRvbiBpcyBjbG9zZXIgdG8gMTAwdXMuIFRvIGJlCj4gLQkgKiBj
b25zZXJ2YXRpdmUsIHdlIGhhdmUgdG8gZmFjdG9yIGluIGEgY29udGV4dCBzd2l0Y2ggb24gdG9w
IChkdWUKPiAtCSAqIHRvIGtzb2Z0aXJxZCkuCj4gKwkgKiBzZXJ2aWNlIGxhdGVuY3ksIGFuZCBw
dXRzIGl0IHVuZGVyIDEwdXMgZm9yIEljZWxha2UsIHNpbWlsYXIgdG8KPiArCSAqIEJyb2Fkd2Vs
bCssIFRvIGJlIGNvbnNlcnZhdGl2ZSwgd2Ugd2FudCB0byBmYWN0b3IgaW4gYSBjb250ZXh0Cj4g
KwkgKiBzd2l0Y2ggb24gdG9wIChkdWUgdG8ga3NvZnRpcnFkKS4KPiAgCSAqLwo+IC0Jc2V0KHVu
Y29yZSwgR0VOOV9NRURJQV9QR19JRExFX0hZU1RFUkVTSVMsIDI1MCk7Cj4gLQlzZXQodW5jb3Jl
LCBHRU45X1JFTkRFUl9QR19JRExFX0hZU1RFUkVTSVMsIDI1MCk7Cj4gKwlzZXQodW5jb3JlLCBH
RU45X01FRElBX1BHX0lETEVfSFlTVEVSRVNJUywgNjApOwo+ICsJc2V0KHVuY29yZSwgR0VOOV9S
RU5ERVJfUEdfSURMRV9IWVNURVJFU0lTLCA2MCk7CgpEZWphLXZ1IG1vbWVudCBpbiBoZXJlLiBJ
IHRoaW5rIEkgaGF2ZSBhbHJlYWR5IHN0YW1wZWQgdGhpcyBwYXRjaC4KClRoZSBwcm9wb3NlZCBy
YW5nZXMgYXJlIHdlbGwgd2l0aGluIHdoYXQgdGhlIGJzcGVjIHJlY29tbWVuZHMuCk5vIHVzZSB0
byBsb3NlIGVuZXJneSB3aXRob3V0IHVwc2lkZS4KClJldmlld2VkLWJ5OiBNaWthIEt1b3BwYWxh
IDxtaWthLmt1b3BwYWxhQGxpbnV4LmludGVsLmNvbT4KCj4gIAo+ICAJLyogM2E6IEVuYWJsZSBS
QzYgKi8KPiAgCXNldCh1bmNvcmUsIEdFTjZfUkNfQ09OVFJPTCwKPiAtLSAKPiAyLjI0LjAKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
