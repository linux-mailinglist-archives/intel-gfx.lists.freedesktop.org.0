Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B8B193D37
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 11:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6E9A6E2DF;
	Thu, 26 Mar 2020 10:47:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21B3C6E2DF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 10:47:36 +0000 (UTC)
IronPort-SDR: UMzSIWJswF8BYcSUC8CzQxLcbxQPoaA7LGHvE6oqmlg1rzTbp9gIYRkTgHuhuXEU/Z4lHYht0m
 R+v0zP2W14lQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2020 03:47:35 -0700
IronPort-SDR: DJIl6T0/dF8V6tTmn03xQfKAjQccVJ0nsD8SFXnDABcm5SSBjvp1tIelDHY5znhoJmz+AfPPVo
 3KbF48515k3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,308,1580803200"; d="scan'208";a="358108724"
Received: from aschoene-mobl.ger.corp.intel.com (HELO [10.252.60.225])
 ([10.252.60.225])
 by fmsmga001.fm.intel.com with ESMTP; 26 Mar 2020 03:47:33 -0700
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
References: <20200326074928.10395-1-uma.shankar@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <1ba94cef-ea8a-2271-2915-2837f8eabf21@linux.intel.com>
Date: Thu, 26 Mar 2020 11:47:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200326074928.10395-1-uma.shankar@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix mode private_flags
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

T3AgMjYtMDMtMjAyMCBvbSAwODo0OSBzY2hyZWVmIFVtYSBTaGFua2FyOgo+IFRoaXMgcGF0Y2gg
Zml4ZXMgdGhlIHByaXZhdGVfZmxhZ3Mgb2YgbW9kZSB0byBiZSBjaGVja2VkIGFuZAo+IGNvbXBh
cmVkIGFnYWluc3QgdWFwaS5tb2RlIGFuZCBub3QgZnJvbSBody5tb2RlLiBUaGlzIGhlbHBzCj4g
cHJvcGVybHkgdHJpZ2dlciBtb2Rlc2V0IGF0IGJvb3QgaWYgZGVzaXJlZCBieSBkcml2ZXIuCj4K
PiBJdCBoZWxwcyByZXNvbHZlIGF1ZGlvX2NvZGVjIGluaXRpYWxpemF0aW9uIGlzc3VlcyBpZiBk
aXNwbGF5Cj4gaXMgY29ubmVjdGVkIGF0IGJvb3QuIEluaXRpYWwgZGlzY3Vzc2lvbiBvbiB0aGlz
IGlzc3VlIGhhcyBoYXBwZW5lZAo+IG9uIGJlbG93IHRocmVhZDoKPiBodHRwczovL3BhdGNod29y
ay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzc0ODI4Lwo+Cj4gRml4ZXM6IGh0dHBzOi8vZ2l0bGFi
LmZyZWVkZXNrdG9wLm9yZy9kcm0vaW50ZWwvaXNzdWVzLzEzNjMKCldyb25nIHVzZSBvZiBmaXhl
cy4gOikKClVzZSBkaW0gZml4ZXMgb3JpZ2luYWwtY29tbWl0LWlkIHRvIHJlZmVyZW5jZSB0aGUg
Y29tbWl0LiBBbmQgZm9yIHRoaXMgdXNlIHRoZSBDbG9zZXM6IHRhZy4KCk90aGVyIHRoYW4gdGhh
dCBsb29rcyBnb29kLiA6KQoKU28gd2l0aCBoZWFkZXJzIGZpeGVkOgoKUmV2aWV3ZWQtQnk6IE1h
YXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cgo+IENj
OiBWaWxsZSBTeXJqw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+IENjOiBNYWFy
dGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgo+IENjOiBL
YWkgVmVobWFuZW4gPGthaS52ZWhtYW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IFNvdXphLCBK
b3NlIDxqb3NlLnNvdXphQGludGVsLmNvbT4KPiBTdWdnZXN0ZWQtYnk6IFZpbGxlIFN5cmrDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVW1hIFNoYW5r
YXIgPHVtYS5zaGFua2FyQGludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBTd2VlQXVuIEtob3Ig
PHN3ZWUuYXVuLmtob3JAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmMKPiBpbmRleCBmZTU1YzdjNzEzZjEuLmU2MzA0MjlhZjJjMCAx
MDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jCj4g
QEAgLTE0NzQ3LDggKzE0NzQ3LDggQEAgc3RhdGljIGludCBpbnRlbF9hdG9taWNfY2hlY2soc3Ry
dWN0IGRybV9kZXZpY2UgKmRldiwKPiAgCS8qIENhdGNoIEk5MTVfTU9ERV9GTEFHX0lOSEVSSVRF
RCAqLwo+ICAJZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMs
IG9sZF9jcnRjX3N0YXRlLAo+ICAJCQkJCSAgICBuZXdfY3J0Y19zdGF0ZSwgaSkgewo+IC0JCWlm
IChuZXdfY3J0Y19zdGF0ZS0+aHcubW9kZS5wcml2YXRlX2ZsYWdzICE9Cj4gLQkJICAgIG9sZF9j
cnRjX3N0YXRlLT5ody5tb2RlLnByaXZhdGVfZmxhZ3MpCj4gKwkJaWYgKG5ld19jcnRjX3N0YXRl
LT51YXBpLm1vZGUucHJpdmF0ZV9mbGFncyAhPQo+ICsJCSAgICBvbGRfY3J0Y19zdGF0ZS0+dWFw
aS5tb2RlLnByaXZhdGVfZmxhZ3MpCj4gIAkJCW5ld19jcnRjX3N0YXRlLT51YXBpLm1vZGVfY2hh
bmdlZCA9IHRydWU7Cj4gIAl9Cj4gIAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
