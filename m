Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C36B12A27B3
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 11:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC6CC6E471;
	Mon,  2 Nov 2020 10:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 170D86E484
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 10:06:17 +0000 (UTC)
IronPort-SDR: yzt531uvBYLWj1odDOoxa6zuOHSvQmNi4b+m2N6ccu8G+g9gm2sM5MpZfI/+1D7o0b77Qw5Wx3
 gBeLHBoT30VA==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="148144153"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="148144153"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 02:06:04 -0800
IronPort-SDR: NFH9HOGguGDkuK9uZmZXuTWCVAjeEXV4SLmf729XIB/3tmnzISZfTTuj9fvQr3lAp3QtRjpcB9
 XQ47VpegyGPg==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537960711"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 W10-45-itb-67.SSPE.ch.intel.com) ([10.249.254.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 02:06:03 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-31-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <5e0ae808-2a0a-c853-b2be-2b42341017dd@linux.intel.com>
Date: Mon, 2 Nov 2020 11:06:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-31-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 30/61] drm/i915: Fix workarounds selftest, part 1
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBwaW5fbWFw
IG5lZWRzIHRoZSB3dyBsb2NrLCBzbyBlbnN1cmUgd2UgcGluIGJvdGggYmVmb3JlIHN1Ym1pc3Np
b24uCj4KPiBTaWduZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9y
c3RAbGludXguaW50ZWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX29iamVjdC5oICAgIHwgIDMgKwo+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX3BhZ2VzLmMgICAgIHwgMTIgKysrCj4gICAuLi4vZ3B1L2RybS9pOTE1L2d0L3NlbGZ0
ZXN0X3dvcmthcm91bmRzLmMgICAgfCA3NiArKysrKysrKysrKystLS0tLS0tCj4gICAzIGZpbGVz
IGNoYW5nZWQsIDY0IGluc2VydGlvbnMoKyksIDI3IGRlbGV0aW9ucygtKQoKUmV2aWV3ZWQtYnk6
IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGxpbnV4LmludGVsLmNvbT4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
