Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B282A3F86
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 10:00:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A9606E85C;
	Tue,  3 Nov 2020 09:00:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 111F56E85C
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 09:00:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id 685883F679;
 Tue,  3 Nov 2020 10:00:26 +0100 (CET)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=QoHqc9HE; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.1
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.001,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OsmknodPAOWI; Tue,  3 Nov 2020 10:00:25 +0100 (CET)
Received: by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 8044E3F5FA;
 Tue,  3 Nov 2020 10:00:25 +0100 (CET)
Received: from W10-45-itb-64.SSPE.ch.intel.com (unknown [134.134.137.79])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 4B9623601DA;
 Tue,  3 Nov 2020 10:00:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1604394025; bh=TW2TsYZmG6668A66QY8UAnN4nPeUy2MdvDiibZn3duk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=QoHqc9HE0ga+KndA+mrYccAcnC4QTwg0I8JvPWnrBTlMXmyiAf+ATh/LAOV+eQlFO
 Yb767B4FAzbFdt71RSfyUx2fOK/KISgqWl/iCvOexDQXL7tShTdgp/dC6M3+iDlLLK
 /EcSEQPvzfD0mW+q+OKp0fmHVrNe6yjKL6gICGVU=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20201016104444.1492028-1-maarten.lankhorst@linux.intel.com>
 <20201016104444.1492028-36-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <498fedb1-2968-6c2e-95d8-cec8e7c5fee0@shipmail.org>
Date: Tue, 3 Nov 2020 10:00:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <20201016104444.1492028-36-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v4 35/61] drm/i915: Lock ww in ucode objects
 correctly
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

Ck9uIDEwLzE2LzIwIDEyOjQ0IFBNLCBNYWFydGVuIExhbmtob3JzdCB3cm90ZToKPiBJbiB0aGUg
dWNvZGUgZnVuY3Rpb25zLCB0aGUgY2FsbHMgYXJlIGRvbmUgYmVmb3JlIHVzZXJzcGFjZSBydW5z
LAo+IHdoZW4gZGVidWdnaW5nIHVzaW5nIGRlYnVnZnMsIG9yIHdoZW4gY3JlYXRpbmcgc2VtaS1w
ZXJtYW5lbnQgbWFwcGluZ3M7Cj4gd2UgY2FuIHNhZmVseSB1c2UgdGhlIHVubG9ja2VkIHZlcnNp
b25zIHRoYXQgZG9lcyB0aGUgd3cgZGFuY2UgZm9yIHVzLgo+Cj4gQmVjYXVzZSB0aGVyZSBpcyBu
byBwaW5fcGFnZXNfdW5sb2NrZWQgeWV0LCBhZGQgaXQgYXMgY29udmVuaWVuY2UgZnVuY3Rpb24u
Cj4KPiBUaGlzIHJlbW92ZXMgcG9zc2libGUgbG9ja2RlcCBzcGxhdHMgYWJvdXQgbWlzc2luZyBy
ZXN2IGxvY2sgZm9yIHVjb2RlLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBUaG9tYXMg
SGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
