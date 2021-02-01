Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 20EF630A83B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Feb 2021 14:03:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B68436E595;
	Mon,  1 Feb 2021 13:03:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C13A6E595
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Feb 2021 13:03:54 +0000 (UTC)
IronPort-SDR: 0PLCm/l5Cmv6fHArjNCA7nBiebtoMw+7a9StOfYCrNVAb60Ue7uoe/GQlb9j0m/qxry8xN0PrY
 sZeyeW2fQTYg==
X-IronPort-AV: E=McAfee;i="6000,8403,9881"; a="199573669"
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="199573669"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 05:03:53 -0800
IronPort-SDR: PxDBWAAGqNFebM+CEFdVpHsHyMzTL5x0lgZsE42Bb5UwVRU8d4DOuBhoQ8yzxTIqz6/ITZtWx5
 88gj2I1728Tw==
X-IronPort-AV: E=Sophos;i="5.79,392,1602572400"; d="scan'208";a="581511097"
Received: from eloysanx-mobl1.ger.corp.intel.com (HELO [10.252.22.117])
 ([10.252.22.117])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2021 05:03:52 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210128162612.927917-27-maarten.lankhorst@linux.intel.com>
 <20210201125037.1537079-1-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <c6ffe583-2b38-2bf1-9074-a21b744f442b@linux.intel.com>
Date: Mon, 1 Feb 2021 14:03:49 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210201125037.1537079-1-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Make lrc_init_wa_ctx compatible
 with ww locking, v3.
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

Ck9uIDIvMS8yMSAxOjUwIFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBNYWtlIGNyZWF0
aW9uIHNlcGFyYXRlIGZyb20gcGlubmluZywgaW4gb3JkZXIgdG8gdGFrZSB0aGUgbG9jayBvbmx5
Cj4gb25jZSwgYW5kIHBpbiB0aGUgbWFwcGluZyB3aXRoIHRoZSBsb2NrIGhlbGQuCj4KPiBDaGFu
Z2VzIHNpbmNlIHYxOgo+IC0gUmViYXNlIG9uIHRvcCBvZiB1cHN0cmVhbSBjaGFuZ2VzLgo+IENo
YW5nZXMgc2luY2UgdjI6Cj4gLSBGdWxseSBjbGVhciB3YV9jdHggb24gZXJyb3IuCj4KPiBTaWdu
ZWQtb2ZmLWJ5OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50
ZWwuY29tPgo+IFJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJv
bUBsaW51eC5pbnRlbC5jb20+Cj4gLS0tCgpMR1RNLgoKVGhvbWFzCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
