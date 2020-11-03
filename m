Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 20ADE2A3F97
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 10:04:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7ECFA6E848;
	Tue,  3 Nov 2020 09:04:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E26AC6E848
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 09:04:55 +0000 (UTC)
IronPort-SDR: AUjGvZiBtvuXPJAgRtEWRE270zY5UJgM+fiboAnsOQtBtWLWbwxktJmC/fXdAb4Yxm76sxxaP9
 8OBCppw5lKKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9793"; a="169154335"
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="169154335"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:04:55 -0800
IronPort-SDR: 5wpX9ajrVR/NDCl3f6sHjDoBDRAQJkK996HtQsZJkkIOKmbe/ckRuLzYOKInKRU87iHrhu9sYL
 QwXXRqt+y7AA==
X-IronPort-AV: E=Sophos;i="5.77,447,1596524400"; d="scan'208";a="470724288"
Received: from sfhansen-mobl.ger.corp.intel.com (HELO
 W10-45-itb-64.SSPE.ch.intel.com) ([10.249.254.168])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2020 01:04:54 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-38-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <6eb09daa-da0e-a704-0f41-6fae7d1c6b97@linux.intel.com>
Date: Tue, 3 Nov 2020 10:04:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-38-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 37/61] drm/i915: Add missing ww lock in
 intel_dsb_prepare.
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBCZWNhdXNl
IG9mIHRoZSBsb25nIGxpZmV0aW1lIG9mIHRoZSBtYXBwaW5nLCB3ZSBjYW5ub3Qgd3JhcCB0aGlz
IGluIGEKPiBzaW1wbGUgbGltaXRlZCB3dyBsb2NrLiBKdXN0IHVzZSB0aGUgdW5sb2NrZWQgdmVy
c2lvbiBvZiBwaW5fbWFwLAo+IGJlY2F1c2Ugd2UnbGwgbGlrZWx5IHJlbGVhc2UgdGhlIG1hcHBp
bmcgYSBsb3QgbGF0ZXIsIGluIGEgZGlmZmVyZW50Cj4gdGhyZWFkLgo+Cj4gU2lnbmVkLW9mZi1i
eTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4K
PiAtLS0KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBs
aW51eC5pbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0
b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50
ZWwtZ2Z4Cg==
