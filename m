Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1C1C2A46D0
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 14:49:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E70D6EC85;
	Tue,  3 Nov 2020 13:49:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A1476EC85
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 13:49:51 +0000 (UTC)
IronPort-SDR: 2CdgIlVc1AjzSd5DEtKklfaWZW/lxxoaHHI8uadLHh5g3qlMgHL/ZnCfuQfKsKeo8ik0qgFvJt
 caxX6H+BUlCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="253762581"
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="253762581"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:49:51 -0800
IronPort-SDR: q0MYsD47oMvi0U2SWamAr33aV3xwsTjTYU4w9ebdFqjfypip7EFfOqhBs/J29xq0oSVJvNxDRt
 EnNV/q6W4H+Q==
X-IronPort-AV: E=Sophos;i="5.77,448,1596524400"; d="scan'208";a="528488506"
Received: from emalinow-mobl.ger.corp.intel.com (HELO
 W10-45-itb-64.SSPE.ch.intel.com) ([10.249.254.149])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 05:49:50 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-2-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <46d22456-dce4-1880-de27-925056d3e4b7@linux.intel.com>
Date: Tue, 3 Nov 2020 14:49:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-2-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 01/61] drm/i915: Move cmd parser pinning
 to execbuffer
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ck9uIDEwLzE2LzIwIDEyOjQzIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBuZWVk
IHRvIGdldCByaWQgb2YgYWxsb2NhdGlvbnMgaW4gdGhlIGNtZCBwYXJzZXIsIGJlY2F1c2UgaXQg
bmVlZHMKPiB0byBiZSBjYWxsZWQgZnJvbSBhIHNpZ25hbGluZyBjb250ZXh0LCBmaXJzdCBtb3Zl
IGFsbCBwaW5uaW5nIHRvCj4gZXhlY2J1Ziwgd2hlcmUgd2UgYWxyZWFkeSBob2xkIGFsbCBsb2Nr
cy4KPgo+IEFsbG9jYXRlIGp1bXBfd2hpdGVsaXN0IGluIHRoZSBleGVjYnVmZmVyLCBhbmQgYWRk
IGFubm90YXRpb25zIGFyb3VuZAo+IGludGVsX2VuZ2luZV9jbWRfcGFyc2VyKCksIHRvIGVuc3Vy
ZSB3ZSBvbmx5IGNhbGwgdGhlIGNvbW1hbmQgcGFyc2VyCj4gd2l0aG91dCBhbGxvY2F0aW5nIGFu
eSBtZW1vcnksIG9yIHRha2luZyBhbnkgbG9ja3Mgd2UncmUgbm90IHN1cHBvc2VkIHRvLgo+Cj4g
QmVjYXVzZSBpOTE1X2dlbV9vYmplY3RfZ2V0X3BhZ2UoKSBtYXkgYWxzbyBhbGxvY2F0ZSBtZW1v
cnksIGFkZCBhCj4gcGF0aCB0byBpOTE1X2dlbV9vYmplY3RfZ2V0X3NnKCkgdGhhdCBwcmV2ZW50
cyBtZW1vcnkgYWxsb2NhdGlvbnMsCj4gYW5kIHdhbGsgdGhlIHNnIGxpc3QgbWFudWFsbHkuIEl0
IHNob3VsZCBiZSBzaW1pbGFybHkgZmFzdC4KPgo+IFRoaXMgaGFzIHRoZSBhZGRlZCBiZW5lZml0
IG9mIGJlaW5nIGFibGUgdG8gY2F0Y2ggYWxsIG1lbW9yeSBhbGxvY2F0aW9uCj4gZXJyb3JzIGJl
Zm9yZSB0aGUgcG9pbnQgb2Ygbm8gcmV0dXJuLCBhbmQgcmV0dXJuIC1FTk9NRU0gc2FmZWx5IHRv
IHRoZQo+IGV4ZWNidWYgc3VibWl0dGVyLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5r
aG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KCkFja2VkLWJ5OiBUaG9t
YXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxp
bmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
