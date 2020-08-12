Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 70F0C242FBD
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 21:58:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F9436E160;
	Wed, 12 Aug 2020 19:58:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1040B6E160
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 19:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 33F393F4F8;
 Wed, 12 Aug 2020 21:58:05 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=dc45I11V; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -3.554
X-Spam-Level: 
X-Spam-Status: No, score=-3.554 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-1.455,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JIHDe9Xi-rxt; Wed, 12 Aug 2020 21:58:04 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id BE19E3F319;
 Wed, 12 Aug 2020 21:58:03 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 2664A360507;
 Wed, 12 Aug 2020 21:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597262285; bh=Y0M01S5/Dy6Q0okAd+FYC96TWhZ+8f/5BGXcCw/nkDg=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=dc45I11VNGxA64ve/gkLJb/fX4fS5VXR/Ul9zYn9S/2IKBEsjjp1zKtHAviZuo7Fy
 ckaAEAZf7gTpC+DOC0CQOQmpb14ghEbR8e3WAI+5I5GG0v08HFj+aXFeHvaL/3hxK3
 1XN1thzPQr/KA97YGGjI9Yrwhl0V/4yW27EKpX9s=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-20-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <a4c5c1fd-53fb-590a-8f74-643976f01a75@shipmail.org>
Date: Wed, 12 Aug 2020 21:58:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-20-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 19/24] drm/i915: Dirty hack to fix selftests
 locking inversion
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

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IFNvbWUgaTkx
NSBzZWxmdGVzdHMgc3RpbGwgdXNlIGk5MTVfdm1hX2xvY2soKSBhcyBpbm5lciBsb2NrLCBhbmQK
PiBpbnRlbF9jb250ZXh0X2NyZWF0ZV9yZXF1ZXN0KCkgaW50ZWxfdGltZWxpbmUtPm11dGV4IGFz
IG91dGVyIGxvY2suCj4gRm9ydHVuYXRlbHkgZm9yIHNlbGZ0ZXN0cyB0aGlzIGlzIG5vdCBhbiBp
c3N1ZSwgdGhleSBzaG91bGQgYmUgZml4ZWQKPiBidXQgd2UgY2FuIG1vdmUgYWhlYWQgYW5kIGNs
ZWFuaWZ5IGxvY2tkZXAgbm93Lgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KClVnaC4gV2Ugc2hvdWxkIHByb2Jh
Ymx5IGZpeCB0aGlzIHByb3Blcmx5IGFzIHNvb24gYXMgcG9zc2libGUgdG8gYXZvaWQgCmNvcHkt
cGFzdGluZyBvZiBzZWxmLXRlc3RzIHRoYXQgYXJlbid0IGZpeGVkIHlldC4KCkZvciB0aGUgaGFj
azoKCkFja2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5j
b20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50
ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBz
Oi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
