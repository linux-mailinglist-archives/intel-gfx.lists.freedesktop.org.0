Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DF03A6C2B
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Jun 2021 18:40:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EEFEA6E03B;
	Mon, 14 Jun 2021 16:40:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 891F76E03B;
 Mon, 14 Jun 2021 16:40:36 +0000 (UTC)
IronPort-SDR: mbD7UPf4Cb+nobl6ioIElPSrjOpy7XiVYRoRk6LhLcp4+gyed8M05lmB7eNmg3CJxIWaqfs9Hp
 ecmBayM2IkKA==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="291474263"
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="291474263"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:40:35 -0700
IronPort-SDR: TzmqY3BgK56uDuGeKLykMEwRWMEtxBEo70KE4mPC2C71l1xrbikTy3iRPfVttv1XXtQ7Jr5QGG
 HFwDMxNhEIpQ==
X-IronPort-AV: E=Sophos;i="5.83,273,1616482800"; d="scan'208";a="553416908"
Received: from fnygreen-mobl1.ger.corp.intel.com (HELO [10.249.254.50])
 ([10.249.254.50])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2021 09:40:34 -0700
To: Matthew Auld <matthew.auld@intel.com>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
References: <20210614162612.294869-1-thomas.hellstrom@linux.intel.com>
 <20210614162612.294869-12-thomas.hellstrom@linux.intel.com>
 <d5600d3f-0a7f-26bc-7785-0768b06abbef@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c86f189b-738e-2e1d-4fde-94bb7c868345@linux.intel.com>
Date: Mon, 14 Jun 2021 18:40:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <d5600d3f-0a7f-26bc-7785-0768b06abbef@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v3 11/12] drm/i915/gem: Zap the client blt
 code
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

Ck9uIDYvMTQvMjEgNjozMyBQTSwgTWF0dGhldyBBdWxkIHdyb3RlOgo+IE9uIDE0LzA2LzIwMjEg
MTc6MjYsIFRob21hcyBIZWxsc3Ryw7ZtIHdyb3RlOgo+PiBJdCdzIG5vdCB1c2VkIGFueXdoZXJl
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+Cj4KPiBXZSBkbyBoYXZlIHRvIGtlZXAgaWd0X2NsaWVudF90aWxl
ZF9ibGl0cyBzdWJ0ZXN0LCBpdCdzIG5vdCByZWxhdGVkIHRvIAo+IHRoZSBjbGllbnQgYmxpdHRp
bmcgY29kZSBhbmQgd2FzIGFkZGVkIGFmdGVyd2FyZHMuIE5vdCBjb21wbGV0ZWx5IHN1cmUgCj4g
d2h5IGl0J3MgaW4gdGhpcyBmaWxlLgo+Cj4gV2l0aCB0aGF0IGFkZGVkIGJhY2ssCj4gUmV2aWV3
ZWQtYnk6IE1hdHRoZXcgQXVsZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KCk9LLCBJJ2xsIGFk
ZCBpdCBiYWNrLgoKL1Rob21hcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
