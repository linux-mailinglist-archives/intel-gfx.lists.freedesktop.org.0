Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F2A424B6E6
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Aug 2020 12:44:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D4956E932;
	Thu, 20 Aug 2020 10:43:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF9016E932
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Aug 2020 10:43:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 159533F475;
 Thu, 20 Aug 2020 12:43:55 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=ITZqiDEj; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.666
X-Spam-Level: 
X-Spam-Status: No, score=-2.666 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.567,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tVZVISOZuBKF; Thu, 20 Aug 2020 12:43:53 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 185DA3F28E;
 Thu, 20 Aug 2020 12:43:51 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.139.83])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 1D795361F12;
 Thu, 20 Aug 2020 12:43:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597920230; bh=O615+cU8u8twHP7tHTHRtFRZhsHUjISwsy0W6EfoCfA=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=ITZqiDEj1B2ZWuxVBp7muxWhA7OdYyzE45LAHpJYBrE7aigf4G6c+4wR5HEBJNgDP
 ZqzZfolOn7RIihOAHMjJyH1it1wqtUuc7ix0rT9um50MsprCSezVOdmxvMRPTMD9Fg
 1mBq0PfH0s71umNUr5i/hMdrTXUbXKcTVN49loBc=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200819140904.1708856-1-maarten.lankhorst@linux.intel.com>
 <20200819140904.1708856-23-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <bedd24d8-21a2-2f0e-7fb5-7a2f7c43a604@shipmail.org>
Date: Thu, 20 Aug 2020 12:43:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200819140904.1708856-23-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 22/24] drm/i915: Add ww locking to
 vm_fault_gtt
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

Ck9uIDgvMTkvMjAgNDowOSBQTSwgTWFhcnRlbiBMYW5raG9yc3Qgd3JvdGU6Cj4gV2Ugd2FudCB0
byBzdGFydCByZXF1aXJpbmcgdGhlIHJlc2VydmF0aW9uX2xvY2sgaW5zdGVhZCBvZiBvYmotPm1t
LmxvY2sKPiBmb3IgcGlubmluZyBvYmplY3RzLCB0YWtlIHRoZSB3dyBsb2NrIGluc2lkZSB2bV9m
YXVsdF9ndHQgYXMgYSBmaXJzdCBzdGVwCj4gdG93YXJkcyB0aGUgbGVnYWN5IGxvY2sgcmVtb3Zh
bC4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3Jz
dEBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21h
cy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
