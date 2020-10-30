Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E69E12A09B6
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Oct 2020 16:25:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AD5C6EDDE;
	Fri, 30 Oct 2020 15:25:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1BB6EDDE
 for <intel-gfx@lists.freedesktop.org>; Fri, 30 Oct 2020 15:25:44 +0000 (UTC)
IronPort-SDR: cFObrCSOvhBVXBUNrhM5SZI08Ew7yHoN8hxWXxjkCV2BGCqRH1BpBKio71A9KHoTv1r+Gt8X+D
 sw+bRNTdD6HA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="156395903"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="156395903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 08:25:44 -0700
IronPort-SDR: mlJsvALpjoVFHjS+jl61fwKvdAWI0G2YTVRBQf6C1hs1JNYNflQnwc0oaE1uvhSAH4A07LNzo/
 O8LZS4zJpjiQ==
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; d="scan'208";a="537101088"
Received: from sfhansen-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.249.254.46])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 08:25:43 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-27-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <e9cff3a0-4d34-446b-5f29-6818d67eaaf2@linux.intel.com>
Date: Fri, 30 Oct 2020 16:25:41 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-27-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 26/61] drm/i915: Make __engine_unpark()
 compatible with ww locking.
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBUYWtlIHRo
ZSB3dyBsb2NrIGFyb3VuZCBlbmdpbmVfdW5wYXJrLiBCZWNhdXNlIG9mIHRoZQo+IG1hbnkgbWFu
eSBwbGFjZXMgd2hlcmUgcnBtIGlzIHVzZWQsIEkgY2hvc2UgdGhlIHNhZmVzdCBvcHRpb24KPiBh
bmQgdXNlZCBhIHRyeWxvY2sgdG8gb3Bwb3J0dW5pc3RpY2FsbHkgdGFrZSB0aGlzIGxvY2sgZm9y
Cj4gX19lbmdpbmVfdW5wYXJrLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KPiAtLS0KClJldmlld2VkLWJ5OiBU
aG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1h
aWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
