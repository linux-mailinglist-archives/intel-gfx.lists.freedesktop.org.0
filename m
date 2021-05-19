Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E36D4389316
	for <lists+intel-gfx@lfdr.de>; Wed, 19 May 2021 17:56:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 248586EE0B;
	Wed, 19 May 2021 15:56:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A4EB6EE0B;
 Wed, 19 May 2021 15:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description;
 bh=GCiO5jtPmcXxtuD2cYz4lG/3Yt3JBlECnMVfp0AvOxQ=; b=RAptUpFt5PkVRnPKRgjbxl9670
 5WPlJcxK0CFHlUd7Z+x2UZeVDeCeXQxPUyJj+WPPAFZkU5UAv+8NrGBdwPcft52DICFAmwXACMFNs
 ZLzimhPgjudhWjPWLzf+0N+D6YsKw8lFG9Js43cvA3Osh97QRPOt8hzV6E6Gqu0F8K9QE0IO759Kf
 AdNJHdPPtDmLA/mOyIhXzqWVrPlZaLFc+eewZ87vS5NRb2Vhr0UifYAjKULtIjLVu4Pkr4Yh1o2cl
 oogv7P4f1wVw2aRewWVZ1H3aAPehsezMVcJXH/dpGBLIXcrkSpjc8ZZzFNwVpabKx17STrUzJy98j
 KKJTJ7hg==;
Received: from [2601:1c0:6280:3f0::7376]
 by bombadil.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1ljOYk-00Fbf9-Fy; Wed, 19 May 2021 15:56:34 +0000
To: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Airlie <airlied@linux.ie>
References: <e606930c73029f16673849c57acac061dd923866.1621412009.git.mchehab+huawei@kernel.org>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f0589aff-a776-0715-e421-0d9a8cf2cc25@infradead.org>
Date: Wed, 19 May 2021 08:56:30 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <e606930c73029f16673849c57acac061dd923866.1621412009.git.mchehab+huawei@kernel.org>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/3] gpu: drm: replace occurrences of
 invalid character
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
Cc: Bhaskar Chowdhury <unixbhaskar@gmail.com>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, Chris Wilson <chris@chris-wilson.co.uk>,
 amd-gfx@lists.freedesktop.org, Alex Deucher <alexander.deucher@amd.com>,
 Evan Quan <evan.quan@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gNS8xOS8yMSAxOjE1IEFNLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4gVGhlcmUg
YXJlIHNvbWUgcGxhY2VzIGF0IGRybSB0aGF0IGVuZGVkIHJlY2VpdmluZyBhCj4gUkVQTEFDRU1F
TlQgQ0hBUkFDVEVSIFUrZmZmZCAoJ++/vScpLCBwcm9iYWJseSBiZWNhdXNlIG9mCj4gc29tZSBi
YWQgY2hhcnNldCBjb252ZXJzaW9uLgo+IAo+IEZpeCB0aGVtIGJ5IHVzaW5nIHdoYXQgaXQgc2Vl
bXMJdG8gYmUgdGhlIHByb3Blcgo+IGNoYXJhY3Rlci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBNYXVy
byBDYXJ2YWxobyBDaGVoYWIgPG1jaGVoYWIraHVhd2VpQGtlcm5lbC5vcmc+CgpBY2tlZC1ieTog
UmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+CgpUaGFua3MuCgo+IC0tLQo+ICBk
cml2ZXJzL2dwdS9kcm0vYW1kL2luY2x1ZGUvYXRvbWJpb3MuaCAgICAgICB8IDEwICsrKysrLS0t
LS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3B1X2NvbW1hbmRzLmggfCAgMiAr
LQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2dwdV9lcnJvci5oICAgICAgICB8ICAyICst
Cj4gIGRyaXZlcnMvZ3B1L2RybS9yMTI4L3IxMjhfZHJ2LmggICAgICAgICAgICAgIHwgIDIgKy0K
PiAgNCBmaWxlcyBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCj4gCgot
LSAKflJhbmR5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
