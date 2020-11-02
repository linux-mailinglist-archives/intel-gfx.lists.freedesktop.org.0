Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DA312A277C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 10:53:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 589986E450;
	Mon,  2 Nov 2020 09:53:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B1B076E450
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 09:53:47 +0000 (UTC)
IronPort-SDR: RxH/drfP+oL4IURHdJWvO4L1hkdSA9RZCaLF2gAHTkvnDgLxbnJPTe8F3hsIYa7pb/Hb04cYsb
 xqBGq7ORMbOQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="155847540"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="155847540"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:53:47 -0800
IronPort-SDR: 9vqBEEOrt51lU4JFxrobv706UrnCJRhFlc9GtLTEGciRjSfDI6f3N3pGdjXaKvEdIqaUU4JhdH
 L4/EQlsYOyDQ==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="537956816"
Received: from vanderss-mobl1.ger.corp.intel.com (HELO
 W10-45-itb-67.SSPE.ch.intel.com) ([10.249.254.196])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 01:53:46 -0800
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-29-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Message-ID: <e723a921-fbe6-b003-c09e-bb18c648e3e6@linux.intel.com>
Date: Mon, 2 Nov 2020 10:53:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-29-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 28/61] drm/i915: Defer pin calls in
 buffer pool until first use by caller.
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBXZSBuZWVk
IHRvIHRha2UgdGhlIG9iaiBsb2NrIHRvIHBpbiBwYWdlcywgc28gd2FpdCB1bnRpbCB0aGUgY2Fs
bGVycwo+IGhhdmUgZG9uZSBzbywgYmVmb3JlIG1ha2luZyB0aGUgb2JqZWN0IHVuc2hyaW5rYWJs
ZS4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+Cj4gLS0tClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8
dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+Cl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
