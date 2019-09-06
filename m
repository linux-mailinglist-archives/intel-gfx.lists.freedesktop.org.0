Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D649AB738
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2019 13:36:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 196676E25C;
	Fri,  6 Sep 2019 11:36:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B0EF6E25C
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2019 11:36:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 06 Sep 2019 04:36:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,472,1559545200"; d="scan'208";a="183117257"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 06 Sep 2019 04:36:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2019 14:36:49 +0300
Date: Fri, 6 Sep 2019 14:36:49 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20190906113649.GR7482@intel.com>
References: <20190905181337.23727-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905181337.23727-1-matthew.d.roper@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/tgl: Use refclk/2 as bypass
 frequency
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

T24gVGh1LCBTZXAgMDUsIDIwMTkgYXQgMTE6MTM6MzdBTSAtMDcwMCwgTWF0dCBSb3BlciB3cm90
ZToKPiBVbmxpa2UgZ2VuMTEsIHdoaWNoIGFsd2F5cyByYW4gYXQgNTBNSHogd2hlbiB0aGUgY2Rj
bGsgUExMIHdhcyBkaXNhYmxlZCwKPiBUR0wgcnVucyBhdCByZWZjbGsvMi4gIFRoZSA1ME1IeiBj
cm9jbGsvMiBpcyBvbmx5IHVzZWQgYnkgaGFyZHdhcmUKPiBkdXJpbmcgc29tZSBwb3dlciBzdGF0
ZSB0cmFuc2l0aW9ucy4KPiAKPiBCc3BlYzogNDkyMDEKPiBDYzogSm9zw6kgUm9iZXJ0byBkZSBT
b3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogTWF0dCBSb3BlciA8
bWF0dGhldy5kLnJvcGVyQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jZGNsay5jIHwgNyArKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGlu
c2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfY2RjbGsuYwo+IGluZGV4IDc2ZjExZDQ2NWU5MS4uZDNlNTY2MjhhZjcwIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuYwo+IEBAIC0x
ODU1LDggKzE4NTUsNiBAQCBzdGF0aWMgdm9pZCBpY2xfZ2V0X2NkY2xrKHN0cnVjdCBkcm1faTkx
NV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCXUzMiB2YWw7Cj4gIAlpbnQgZGl2Owo+ICAKPiAtCWNk
Y2xrX3N0YXRlLT5ieXBhc3MgPSA1MDAwMDsKPiAtCj4gIAl2YWwgPSBJOTE1X1JFQUQoU0tMX0RT
U00pOwo+ICAJc3dpdGNoICh2YWwgJiBJQ0xfRFNTTV9DRENMS19QTExfUkVGQ0xLX01BU0spIHsK
PiAgCWRlZmF1bHQ6Cj4gQEAgLTE4NzMsNiArMTg3MSwxMSBAQCBzdGF0aWMgdm9pZCBpY2xfZ2V0
X2NkY2xrKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwKPiAgCQlicmVhazsKPiAg
CX0KPiAgCj4gKwlpZiAoSU5URUxfR0VOKGRldl9wcml2KSA+PSAxMikKPiArCQljZGNsa19zdGF0
ZS0+YnlwYXNzID0gY2RjbGtfc3RhdGUtPnJlZiAvIDI7Cj4gKwllbHNlCj4gKwkJY2RjbGtfc3Rh
dGUtPmJ5cGFzcyA9IDUwMDAwOwoKUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+CgpQUy4gSSdkIHN0aWxsIGxpa2UgdG8gc2VlIGEgaWNs
X2NkY2xrX3BsbF91cGRhdGUoKSBzbyBJIHdvdWxkbid0IGhhdmUgdG8Kc2NyYXRjaCBteSBoZWFk
IHdoeSB0aGlzIGxvb2tzIHNvIGRpZmZlcmVudCB0byBieHQvY25sIGNvZGUuCgo+ICsKPiAgCXZh
bCA9IEk5MTVfUkVBRChCWFRfREVfUExMX0VOQUJMRSk7Cj4gIAlpZiAoKHZhbCAmIEJYVF9ERV9Q
TExfUExMX0VOQUJMRSkgPT0gMCB8fAo+ICAJICAgICh2YWwgJiBCWFRfREVfUExMX0xPQ0spID09
IDApIHsKPiAtLSAKPiAyLjIwLjEKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwo+IEludGVsLWdmeCBtYWlsaW5nIGxpc3QKPiBJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngKCi0tIApWaWxsZSBTeXJqw6Rsw6QKSW50ZWwKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
