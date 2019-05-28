Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 546DD2C4CD
	for <lists+intel-gfx@lfdr.de>; Tue, 28 May 2019 12:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B781889C05;
	Tue, 28 May 2019 10:51:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7953789C05
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 May 2019 10:51:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 May 2019 03:51:30 -0700
X-ExtLoop1: 1
Received: from unknown (HELO [10.252.33.94]) ([10.252.33.94])
 by orsmga001.jf.intel.com with ESMTP; 28 May 2019 03:51:27 -0700
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20190513133904.20374-1-ville.syrjala@linux.intel.com>
 <20190513133904.20374-3-ville.syrjala@linux.intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <a8876aac-bdab-30df-1354-3b7235faf4bc@linux.intel.com>
Date: Tue, 28 May 2019 12:51:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190513133904.20374-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add debugs for the C8 vs.
 legacy LUT case
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

T3AgMTMtMDUtMjAxOSBvbSAxNTozOSBzY2hyZWVmIFZpbGxlIFN5cmphbGE6Cj4gRnJvbTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IExlYXZlIGEg
aGludCBpbiBkbWVzZyB3aGVuIHdlIHJlamVjdCBhIGNvbmZpZ3VyYXRpb24gYXR0ZW1wdGluZwo+
IHRvIHVzZSBDOCBwbGFuZXMgd2l0aG91dCB0aGUgbGVnYWN5IExVVCBsb2FkZWQuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIHwgNCArKystCj4g
IDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaW50ZWxfY29sb3IuYwo+IGluZGV4IDk2MmRiMTIzNjk3MC4uNDU2NDk5MDRiYTVj
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2NvbG9yLmMKPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9jb2xvci5jCj4gQEAgLTk1OSw4ICs5NTksMTAg
QEAgc3RhdGljIGludCBjaGVja19sdXRzKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKQo+ICAJCXJldHVybiAwOwo+ICAKPiAgCS8qIEM4IHJlbGllcyBvbiBpdHMgcGFs
ZXR0ZSBiZWluZyBzdG9yZWQgaW4gdGhlIGxlZ2FjeSBMVVQgKi8KPiAtCWlmIChjcnRjX3N0YXRl
LT5jOF9wbGFuZXMpCj4gKwlpZiAoY3J0Y19zdGF0ZS0+YzhfcGxhbmVzKSB7Cj4gKwkJRFJNX0RF
QlVHX0tNUygiQzggcGl4ZWxmb3JtYXQgcmVxdWlyZXMgdGhlIGxlZ2FjeSBMVVRcbiIpOwo+ICAJ
CXJldHVybiAtRUlOVkFMOwo+ICsJfQo+ICAKPiAgCWRlZ2FtbWFfbGVuZ3RoID0gSU5URUxfSU5G
TyhkZXZfcHJpdiktPmNvbG9yLmRlZ2FtbWFfbHV0X3NpemU7Cj4gIAlnYW1tYV9sZW5ndGggPSBJ
TlRFTF9JTkZPKGRldl9wcml2KS0+Y29sb3IuZ2FtbWFfbHV0X3NpemU7CgpGb3IgdGhlIHNlcmll
czoKClJldmlld2VkLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGlu
dXguaW50ZWwuY29tPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Au
b3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwt
Z2Z4
