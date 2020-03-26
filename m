Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D955193EA5
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 13:08:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669D16E31C;
	Thu, 26 Mar 2020 12:07:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F14C36E31C
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 12:07:56 +0000 (UTC)
IronPort-SDR: gnLxLUqdyBod9ebfj/PyWqg7XFx+D812rD6PWt76/q40S0qhhRZJkIDcCgfb9iMMy0rAAK1lyu
 39Bp66/kD+CA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 05:07:56 -0700
IronPort-SDR: Nm9/g1PKtAuEV+j2vMEymkt9bh0z9pR/XE+KhUvVqremoZ3X8Jt6JhXILJm1207iJy3hCAlS4R
 UzGXXFxNX5Gg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="293614644"
Received: from aschoene-mobl.ger.corp.intel.com (HELO [10.252.60.225])
 ([10.252.60.225])
 by FMSMGA003.fm.intel.com with ESMTP; 26 Mar 2020 05:07:54 -0700
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200326122432.10856-1-uma.shankar@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <d5eb5736-f260-4a58-c297-fb92fc1564b1@linux.intel.com>
Date: Thu, 26 Mar 2020 13:07:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200326122432.10856-1-uma.shankar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [v2] drm/i915/display: Fix mode private_flags
 comparison at atomic_check
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
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
Cc: SweeAun Khor <swee.aun.khor@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T3AgMjYtMDMtMjAyMCBvbSAxMzoyNCBzY2hyZWVmIFVtYSBTaGFua2FyOgo+IFRoaXMgcGF0Y2gg
Zml4ZXMgdGhlIHByaXZhdGVfZmxhZ3Mgb2YgbW9kZSB0byBiZSBjaGVja2VkIGFuZAo+IGNvbXBh
cmVkIGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlzIGhlbHBzCj4g
cHJvcGVybHkgdHJpZ2dlciBtb2Rlc2V0IGF0IGJvb3QgaWYgZGVzaXJlZCBieSBkcml2ZXIuCj4K
PiBJdCBoZWxwcyByZXNvbHZlIGF1ZGlvX2NvZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBk
aXNwbGF5Cj4gaXMgY29ubmVjdGVkIGF0IGJvb3QuIEluaXRpYWwgZGlzY3Vzc2lvbiBvbiB0aGlz
IGlzc3VlIGhhcyBoYXBwZW5lZAo+IG9uIGJlbG93IHRocmVhZDoKPiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0ODI4Lwo+Cj4gdjI6IE5vIGZ1bmN0aW9uYWwgY2hh
bmdlLiBGaXhlZCB0aGUgQ2xvc2VzIHRhZyBhbmQgYWRkZWQKPiBNYWFydGVuJ3MgUkIuCj4KPiBD
YzogVmlsbGUgU3lyasOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBDYzogTWFh
cnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiBDYzog
S2FpIFZlaG1hbmVuIDxrYWkudmVobWFuZW5AbGludXguaW50ZWwuY29tPgo+IENjOiBTb3V6YSwg
Sm9zZSA8am9zZS5zb3V6YUBpbnRlbC5jb20+Cj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy8xMzYzCj4gU3VnZ2VzdGVkLWJ5OiBWaWxsZSBT
eXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IFVt
YSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogU3dlZUF1
biBLaG9yIDxzd2VlLmF1bi5raG9yQGludGVsLmNvbT4KPiBSZXZpZXdlZC1ieTogTWFhcnRlbiBM
YW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA0ICsrLS0KPiAgMSBm
aWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4gaW5kZXggZmU1NWM3Yzcx
M2YxLi5lNjMwNDI5YWYyYzAgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYwo+IEBAIC0xNDc0Nyw4ICsxNDc0Nyw4IEBAIHN0YXRpYyBpbnQgaW50
ZWxfYXRvbWljX2NoZWNrKHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAkvKiBDYXRjaCBJOTE1
X01PREVfRkxBR19JTkhFUklURUQgKi8KPiAgCWZvcl9lYWNoX29sZG5ld19pbnRlbF9jcnRjX2lu
X3N0YXRlKHN0YXRlLCBjcnRjLCBvbGRfY3J0Y19zdGF0ZSwKPiAgCQkJCQkgICAgbmV3X2NydGNf
c3RhdGUsIGkpIHsKPiAtCQlpZiAobmV3X2NydGNfc3RhdGUtPmh3Lm1vZGUucHJpdmF0ZV9mbGFn
cyAhPQo+IC0JCSAgICBvbGRfY3J0Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzKQo+ICsJ
CWlmIChuZXdfY3J0Y19zdGF0ZS0+dWFwaS5tb2RlLnByaXZhdGVfZmxhZ3MgIT0KPiArCQkgICAg
b2xkX2NydGNfc3RhdGUtPnVhcGkubW9kZS5wcml2YXRlX2ZsYWdzKQo+ICAJCQluZXdfY3J0Y19z
dGF0ZS0+dWFwaS5tb2RlX2NoYW5nZWQgPSB0cnVlOwo+ICAJfQo+ICAKClN0aWxsIG1pc3Npbmcg
dGhlIGZpeGVzIHRhZ3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
