Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CCCF724B6FA
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 12:46:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D3216E934;
	Thu, 20 Aug 2020 10:46:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa1.bahnhof.se (pio-pvt-msa1.bahnhof.se [79.136.2.40])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 57E706E934
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 10:46:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTP id E6A693F78A;
 Thu, 20 Aug 2020 12:46:00 +0200 (CEST)
Authentication-Results: pio-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b="Z7exL83I";
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.206
X-Spam-Level: 
X-Spam-Status: No, score=-2.206 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.107,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id NkAfLPpn50V1; Thu, 20 Aug 2020 12:46:00 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 2CC343F76F;
 Thu, 20 Aug 2020 12:46:00 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 407C8361F12;
 Thu, 20 Aug 2020 12:45:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597920360; bh=sOti7+RWCQmXxFxoW1SXoIRdOO3Gd8z0CT2SkSQwQAk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Z7exL83IDySCmm72SB7m6QxYtABoJ6WPp2t24/oXRVdcnMsbLSuw5nvCYCHptbTL8
 kbQarIsJdzwlP9e4dk4b+5oaXgFyrnS1L6ByN+HTu2GGMtGWasdFsrJSjdVn6WxGtF
 lX2n4h9AAXcNOpDj1pOh4vxxFRism5yJ95tzrSCg=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
 <20200819140904.1708856-24-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <c5148b55-be00-1c97-3dda-1f892457a3b2@shipmail.org>
Date: Thu, 20 Aug 2020 12:45:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200819140904.1708856-24-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 23/24] drm/i915: Add ww locking to
 pin_to_display_plane, v2.
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

Ck9uIDgvMTkvMjAgNDowOSBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gVXNlIHd3IGxv
Y2tpbmcgZm9yIHBpbl90b19kaXNwbGF5X3BsYW5lIGZvciBhbGwgdGhlIHBpbm5pbmcgYW5kIGxv
Y2tpbmcuCj4gV2l0aCB0aGUgbG9ja2luZyByZW1vdmVkIGZyb20gc2V0X2NhY2hlX2xldmVsLCB3
ZSBuZWVkIHRvIGZpeAo+IGk5MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsIHRvIHRha2UgdGhlIG9i
amVjdCByZXNlcnZhdGlvbiBsb2NrLgo+Cj4gQXMgdGhpcyBpcyBhIHNpbmdsZSBsb2NrLCB3ZSBk
b24ndCBuZWVkIHRvIHVzZSB0aGUgd3cgZGFuY2UuCj4KPiBDaGFuZ2VzIHNpbmNlIHYxOgo+IC0g
RG8gbm90IHVzZSB3dyBsb2NraW5nIGluIGk5MTVfZ2VtX3NldF9jYWNoaW5nX2lvY3RsIChUaG9t
YXMpLgo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3QgPG1hYXJ0ZW4ubGFua2hv
cnN0QGxpbnV4LmludGVsLmNvbT4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVsbHN0csO2bSA8dGhv
bWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
