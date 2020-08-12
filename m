Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C40BC243046
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Aug 2020 22:59:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91C8D6E043;
	Wed, 12 Aug 2020 20:59:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1CDD6E043
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Aug 2020 20:59:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 8C11C3F52C;
 Wed, 12 Aug 2020 22:59:44 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=e9x82mwx; 
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
 with ESMTP id 8-jWmNEz-fPh; Wed, 12 Aug 2020 22:59:43 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 3E53F3F4F8;
 Wed, 12 Aug 2020 22:59:41 +0200 (CEST)
Received: from localhost.localdomain (jfdmzpr03-ext.jf.intel.com
 [134.134.139.72])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 6C608360507;
 Wed, 12 Aug 2020 22:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1597265983; bh=KXW9zwF9tU420g/RZ0B3i/3nTqxlHBA6lVpVrrCwJFk=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=e9x82mwxxoso+pWtWVPnmX5m+YiFYURyiQI3CYdS4StRAcIsg65bcMHY2nm6q8coc
 QDMZmO7MNLZUz1iFiMS9JzzD/cCTM1WuTv+JC/9hllO/UIbb/DoKcaTdGovgwFuEHL
 qteW7bHPbhqYpETI0kzaUGmpiRFFm7sP188mhB/o=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200810103103.303818-1-maarten.lankhorst@linux.intel.com>
 <20200810103103.303818-9-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <3da0adfb-d9c6-355c-39f2-8ea5b4fd7703@shipmail.org>
Date: Wed, 12 Aug 2020 22:59:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200810103103.303818-9-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 08/24] drm/i915: Use per object locking in
 execbuf, v12.
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

Ck9uIDgvMTAvMjAgMTI6MzAgUE0sIE1hYXJ0ZW4gTGFua2hvcnN0IHdyb3RlOgo+IE5vdyB0aGF0
IHdlIGNoYW5nZWQgZXhlY2J1ZiBzdWJtaXNzaW9uIHNsaWdodGx5IHRvIGFsbG93IHVzIHRvIGRv
IGFsbAo+IHBpbm5pbmcgaW4gb25lIHBsYWNlLCB3ZSBjYW4gbm93IHNpbXBseSBhZGQgd3cgdmVy
c2lvbnMgb24gdG9wIG9mCj4gc3RydWN0X211dGV4LiBBbGwgd2UgaGF2ZSB0byBkbyBpcyBhIHNl
cGFyYXRlIHBhdGggZm9yIC1FREVBRExLCj4gaGFuZGxpbmcsIHdoaWNoIG5lZWRzIHRvIHVucGlu
IGFsbCBnZW0gYm8ncyBiZWZvcmUgZHJvcHBpbmcgdGhlIGxvY2ssCj4gdGhlbiBzdGFydGluZyBv
dmVyLgo+Cj4gVGhpcyBmaW5hbGx5IGFsbG93cyB1cyB0byBkbyBwYXJhbGxlbCBzdWJtaXNzaW9u
LCBidXQgYmVjYXVzZSBub3QKPiBhbGwgb2YgdGhlIHBpbm5pbmcgY29kZSB1c2VzIHRoZSB3dyBj
dHggeWV0LCB3ZSBjYW5ub3QgY29tcGxldGVseQo+IGRyb3Agc3RydWN0X211dGV4IHlldC4KPgo+
IENoYW5nZXMgc2luY2UgdjE6Cj4gLSBLZWVwIHN0cnVjdF9tdXRleCBmb3Igbm93LiA6KAo+IENo
YW5nZXMgc2luY2UgdjI6Cj4gLSBNYWtlIHN1cmUgd2UgYWx3YXlzIGxvY2sgdGhlIHd3IGNvbnRl
eHQgaW4gc2xvd3BhdGguCj4gQ2hhbmdlcyBzaW5jZSB2MzoKPiAtIERvbid0IGNhbGwgX19lYl91
bnJlc2VydmVfdm1hIGluIGViX21vdmVfdG9fZ3B1IG5vdzsgdGhpcyBjYW4gYmUKPiAgICBkb25l
IG9uIG5vcm1hbCB1bmxvY2sgcGF0aC4KPiAtIFVuY29uZGl0aW9uYWxseSByZWxlYXNlIHZtYXMg
YW5kIGNvbnRleHQuCj4gQ2hhbmdlcyBzaW5jZSB2NDoKPiAtIFJlYmFzZWQgb24gdG9wIG9mIHN0
cnVjdF9tdXRleCByZWR1Y3Rpb24uCj4gQ2hhbmdlcyBzaW5jZSB2NToKPiAtIFJlbW92ZSB0cmFp
bmluZyB3aGVlbHMuCj4gQ2hhbmdlcyBzaW5jZSB2NjoKPiAtIEZpeCBhY2NpZGVudGFsbHkgYnJv
a2VuIC1FTk9TUEMgaGFuZGxpbmcuCj4gQ2hhbmdlcyBzaW5jZSB2NzoKPiAtIEhhbmRsZSBndCBi
dWZmZXIgcG9vbCBiZXR0ZXIuCj4gQ2hhbmdlcyBzaW5jZSB2ODoKPiAtIFByb3Blcmx5IGNsZWFy
IHZhcmlhYmxlcywgdG8gbWFrZSAtRURFQURMSyBoYW5kbGluZyBub3QgQlVHLgo+IENoYW5nZSBz
aW5jZSB2OToKPiAtIEZpeCB1bnBpbm5pbmcgZmVuY2Ugb24gcG52IGFuZCBiZWxvdy4KPiBDaGFu
Z2VzIHNpbmNlIHYxMDoKPiAtIE1ha2UgcmVsb2NhdGlvbiBncHUgY2hhaW5pbmcgd29ya2luZyBh
Z2Fpbi4KPiBDaGFuZ2VzIHNpbmNlIHYxMToKPiAtIFJlbW92ZSByZWxvY2F0aW9uIGNoYWluaW5n
LCBwYWluIHRvIG1ha2UgaXQgd29yay4KPgo+IFNpZ25lZC1vZmYtYnk6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CgpSZXZpZXdlZC1ieTogVGhv
bWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AaW50ZWwuY29tPgoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
