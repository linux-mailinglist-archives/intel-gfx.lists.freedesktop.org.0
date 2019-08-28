Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A82A0C50
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2019 23:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F03BF89E5F;
	Wed, 28 Aug 2019 21:22:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E974189DEC
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2019 21:22:30 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 14:22:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,442,1559545200"; d="scan'208";a="332299072"
Received: from astruck-mobl3.ger.corp.intel.com (HELO [10.252.35.162])
 ([10.252.35.162])
 by orsmga004.jf.intel.com with ESMTP; 28 Aug 2019 14:22:28 -0700
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, stable@vger.kernel.org
References: <20190828210209.10541-1-rodrigo.vivi@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <d7faaa1c-362f-ce9e-bbc9-adb5a7400b1f@intel.com>
Date: Thu, 29 Aug 2019 00:22:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828210209.10541-1-rodrigo.vivi@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix broadwell EU computation
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMjkvMDgvMjAxOSAwMDowMiwgUm9kcmlnbyBWaXZpIHdyb3RlOgo+IEZyb206IExpb25lbCBM
YW5kd2VybGluIDxsaW9uZWwuZy5sYW5kd2VybGluQGludGVsLmNvbT4KPgo+IGNvbW1pdCA2YTY3
YTIwMzY2Zjg5NGMxNzI3MzRmMjhjNTY0NmJkYmU0OGE0NmUzIHVwc3RyZWFtLgo+Cj4gc3Vic2xp
Y2VfbWFzayBpcyBhbiBhcnJheSBpbmRleGVkIGJ5IHNsaWNlLCBub3Qgc3Vic2xpY2UuCj4KPiBT
aWduZWQtb2ZmLWJ5OiBMaW9uZWwgTGFuZHdlcmxpbiA8bGlvbmVsLmcubGFuZHdlcmxpbkBpbnRl
bC5jb20+Cj4gRml4ZXM6IDhjYzc2NjkzNTUxMzZmICgiZHJtL2k5MTU6IHN0b3JlIGFsbCBzdWJz
bGljZSBtYXNrcyIpCj4gQnVnemlsbGE6IGh0dHBzOi8vYnVncy5mcmVlZGVza3RvcC5vcmcvc2hv
d19idWcuY2dpP2lkPTEwODcxMgo+IFJldmlld2VkLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNo
cmlzLXdpbHNvbi5jby51az4KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51
cnN1bGluQGludGVsLmNvbT4KPiBMaW5rOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5v
cmcvcGF0Y2gvbXNnaWQvMjAxODExMTIxMjM5MzEuMjgxNS0xLWxpb25lbC5nLmxhbmR3ZXJsaW5A
aW50ZWwuY29tCj4gKGNoZXJyeSBwaWNrZWQgZnJvbSBjb21taXQgNjNhYzMzMjhmMGQxZDM3ZjI4
NmUzOTdiMTRkOTU5NmVkMDlkN2NhNSkKPiBTaWduZWQtb2ZmLWJ5OiBKb29uYXMgTGFodGluZW4g
PGpvb25hcy5sYWh0aW5lbkBsaW51eC5pbnRlbC5jb20+Cj4gQ2M6IDxzdGFibGVAdmdlci5rZXJu
ZWwub3JnPiAjIDQuMTcKCgpSb2RyaWdvIHBvaW50ZWQgb3V0IEkgZm9yZ290IHRoZSBDYzogdGFn
IHdoaWNoIGlzIHdoeSB0aGlzIGRpZG4ndCBtYWtlIAppdCB0byBzdGFibGUuCgpUaGUgc2FtZSBi
dWcgc2hvd2VkIHVwIG9uIGEgQ2VudE9TIGtlcm5lbCA6IApodHRwczovL2dpdGh1Yi5jb20vaW50
ZWwvY29tcHV0ZS1ydW50aW1lL2lzc3Vlcy8yMDAKCk15IGJhZC4uLiA6KAoKClRoYW5rcyBmb3Ig
cmVzZW5kaW5nIQoKCi1MaW9uZWwKCgo+IFNpZ25lZC1vZmYtYnk6IFJvZHJpZ28gVml2aSA8cm9k
cmlnby52aXZpQGludGVsLmNvbT4KPiAtLS0KPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVs
X2RldmljZV9pbmZvLmMgfCAyICstCj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9kZXZpY2VfaW5mby5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
Ywo+IGluZGV4IDBlZjBjNjQ0OGQ1My4uMDFmYTk4Mjk5YmFlIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMKPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jCj4gQEAgLTQ3NCw3ICs0NzQsNyBAQCBzdGF0aWMg
dm9pZCBicm9hZHdlbGxfc3NldV9pbmZvX2luaXQoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2KQo+ICAgCQkJdTggZXVfZGlzYWJsZWRfbWFzazsKPiAgIAkJCXUzMiBuX2Rpc2FibGVk
Owo+ICAgCj4gLQkJCWlmICghKHNzZXUtPnN1YnNsaWNlX21hc2tbc3NdICYgQklUKHNzKSkpCj4g
KwkJCWlmICghKHNzZXUtPnN1YnNsaWNlX21hc2tbc10gJiBCSVQoc3MpKSkKPiAgIAkJCQkvKiBz
a2lwIGRpc2FibGVkIHN1YnNsaWNlICovCj4gICAJCQkJY29udGludWU7Cj4gICAKCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
