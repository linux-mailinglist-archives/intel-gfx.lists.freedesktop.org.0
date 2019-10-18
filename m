Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 85847DBF8D
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Oct 2019 10:11:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8F576EAE4;
	Fri, 18 Oct 2019 08:11:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1F276EAE4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Oct 2019 08:11:34 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Oct 2019 01:11:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,310,1566889200"; d="scan'208";a="202631977"
Received: from alinamex-mobl3.ger.corp.intel.com (HELO [10.252.56.163])
 ([10.252.56.163])
 by FMSMGA003.fm.intel.com with ESMTP; 18 Oct 2019 01:11:33 -0700
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
References: <20191017132105.15528-1-maarten.lankhorst@linux.intel.com>
 <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <3a2665cb-e0e6-2e0d-d591-040eb2294cc0@linux.intel.com>
Date: Fri, 18 Oct 2019 10:11:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191017132105.15528-5-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 05/14] drm/i915: Perform manual conversions
 for crtc uapi/hw split
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

T3AgMTctMTAtMjAxOSBvbSAxNToyMCBzY2hyZWVmIE1hYXJ0ZW4gTGFua2hvcnN0Ogo+IGludGVs
X2dldF9sb2FkX2RldGVjdF9waXBlKCkgbmVlZHMgdG8gc2V0IHVhcGkgYWN0aXZlLAo+IHVhcGkg
ZW5hYmxlIGlzIHNldCBieSB0aGUgY2FsbCB0byBkcm1fYXRvbWljX3NldF9tb2RlX2Zvcl9jcnRj
KCksCj4gc28gd2UgY2FuIHJlbW92ZSBpdC4KPgo+IGludGVsX3BpcGVfY29uZmlnX2NvbXBhcmUo
KSBuZWVkcyB0byBsb29rIGF0IGh3IHN0YXRlLCBidXQgSSBkaWRuJ3QKPiBjaGFuZ2Ugc3BhdGNo
IHRvIGxvb2sgYXQgaXQuIEl0J3MgZWFzeSBlbm91Z2ggdG8gZG8gbWFudWFsbHkuCj4KPiBpbnRl
bF9hdG9taWNfY2hlY2soKSBkZWZpbml0ZWx5IG5lZWRzIHRvIGNoZWNrIGZvciB1YXBpIGVuYWJs
ZSwKPiBvdGhlcndpc2UgaW50ZWxfbW9kZXNldF9waXBlX2NvbmZpZyBjYW5ub3QgY29weSB1YXBp
IHN0YXRlIHRvIGh3Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0
ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0MiArKysrKysrKysrLS0tLS0tLS0tLQo+ICAx
IGZpbGUgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMjEgZGVsZXRpb25zKC0pCj4KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYwo+IGluZGV4IGZhMGFi
ZmRmZjJhZS4uYWRiNzBkNzZhNjFjIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBAQCAtMTEyMTQsNyArMTEyMTQsNyBAQCBpbnQgaW50ZWxf
Z2V0X2xvYWRfZGV0ZWN0X3BpcGUoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwKPiAg
CQlnb3RvIGZhaWw7Cj4gIAl9Cj4gIAo+IC0JY3J0Y19zdGF0ZS0+YmFzZS5hY3RpdmUgPSBjcnRj
X3N0YXRlLT5iYXNlLmVuYWJsZSA9IHRydWU7Cj4gKwljcnRjX3N0YXRlLT5ody5hY3RpdmUgPSB0
cnVlOwoKVWdoLCBzaG91bGQgb2YgY291cnNlIGJlIHVhcGkuYWN0aXZlLCBiZWNhdXNlIEkgc3Bs
aXQgaXQgb3V0LiA6KAoKV2lsbCBmaXguCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4
