Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1764A20732
	for <lists+intel-gfx@lfdr.de>; Thu, 16 May 2019 14:47:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F515894E0;
	Thu, 16 May 2019 12:47:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC062894E0
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 May 2019 12:46:59 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 05:46:59 -0700
X-ExtLoop1: 1
Received: from ammersdo-mobl.ger.corp.intel.com (HELO [10.252.58.166])
 ([10.252.58.166])
 by orsmga003.jf.intel.com with ESMTP; 16 May 2019 05:46:57 -0700
To: Harish Chegondi <harish.chegondi@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <cover.1557985315.git.harish.chegondi@intel.com>
 <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <4410fcc9-4989-99eb-dc38-f568056b189f@linux.intel.com>
Date: Thu, 16 May 2019 14:46:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <55619dbe3b3399292d86420725a0138ced488cca.1557985315.git.harish.chegondi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: skip the second CRC even for
 GEN 7 GPUs
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Tomi Sarvela <tomi.p.sarvela@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMTYtMDUtMjAxOSBvbSAwNzo1OCBzY2hyZWVmIEhhcmlzaCBDaGVnb25kaToKPiBkaXNwbGF5
X3BpcGVfY3JjX2lycV9oYW5kbGVyKCkgc2tpcHMgdGhlIGZpcnN0IENSQyBmb3IgYWxsIEdQVXMg
YW5kIHRoZQo+IHNlY29uZCBDUkMgZm9yIEdFTjgrIEdQVXMuIFRoZSBzZWNvbmQgQ1JDIGlzIGlu
dmFsaWQgZXZlbiBmb3IgQllUIHdoaWNoCj4gaXMgYSBHRU43IEdQVS4gU28sIHNraXAgdGhlIHNl
Y29uZCBDUkMgZXZlbiBmb3IgR0VONyBHUFVzLgo+Cj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFRvbWkgU2FydmVsYSA8dG9taS5wLnNhcnZlbGFAaW50ZWwu
Y29tPgo+IENjOiBQZXRyaSBMYXR2YWxhIDxwZXRyaS5sYXR2YWxhQGludGVsLmNvbT4KPiBDYzog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBTaWdu
ZWQtb2ZmLWJ5OiBIYXJpc2ggQ2hlZ29uZGkgPGhhcmlzaC5jaGVnb25kaUBpbnRlbC5jb20+Cj4g
UmVmZXJlbmNlczogaHR0cHM6Ly9idWdzLmZyZWVkZXNrdG9wLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9
MTAzMTkxCj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMgfCA0ICsrLS0K
PiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9pcnEuYwo+IGluZGV4IDIzMzIxMWZkZTBlYS4uMzgwOWU5ZjdmYWUyIDEw
MDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfaXJxLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2lycS5jCj4gQEAgLTE3NzUsMTEgKzE3NzUsMTEgQEAgc3Rh
dGljIHZvaWQgZGlzcGxheV9waXBlX2NyY19pcnFfaGFuZGxlcihzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqZGV2X3ByaXYsCj4gIAkgKiBib25rZXJzLiBTbyBsZXQncyBqdXN0IHdhaXQgZm9yIHRo
ZSBuZXh0IHZibGFuayBhbmQgcmVhZAo+ICAJICogb3V0IHRoZSBidWdneSByZXN1bHQuCj4gIAkg
Kgo+IC0JICogT24gR0VOOCsgc29tZXRpbWVzIHRoZSBzZWNvbmQgQ1JDIGlzIGJvbmtlcnMgYXMg
d2VsbCwgc28KPiArCSAqIE9uIEdFTjcrIHNvbWV0aW1lcyB0aGUgc2Vjb25kIENSQyBpcyBib25r
ZXJzIGFzIHdlbGwsIHNvCj4gIAkgKiBkb24ndCB0cnVzdCB0aGF0IG9uZSBlaXRoZXIuCj4gIAkg
Ki8KPiAgCWlmIChwaXBlX2NyYy0+c2tpcHBlZCA8PSAwIHx8Cj4gLQkgICAgKElOVEVMX0dFTihk
ZXZfcHJpdikgPj0gOCAmJiBwaXBlX2NyYy0+c2tpcHBlZCA9PSAxKSkgewo+ICsJICAgIChJTlRF
TF9HRU4oZGV2X3ByaXYpID49IDcgJiYgcGlwZV9jcmMtPnNraXBwZWQgPT0gMSkpIHsKPiAgCQlw
aXBlX2NyYy0+c2tpcHBlZCsrOwo+ICAJCXNwaW5fdW5sb2NrKCZwaXBlX2NyYy0+bG9jayk7Cj4g
IAkJcmV0dXJuOwoKSSB3b3VsZCBiZSBpbnRlcmVzdGVkIGluIHRoZSByZXN1bHRzLCBoYXN3ZWxs
IGlzIGRpZmZlcmVudCBmcm9tIFZMVi4gSGFzIGl0IGV2ZXIgYmVlbiBvYnNlcnZlZCBvbiB0aGF0
IHBsYXRmb3JtPwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
