Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1C32343EB
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 12:07:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 143186EA59;
	Fri, 31 Jul 2020 10:07:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa2.bahnhof.se (pio-pvt-msa2.bahnhof.se [79.136.2.41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B8B96EA58
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 10:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTP id E28973F54A;
 Fri, 31 Jul 2020 12:07:17 +0200 (CEST)
Authentication-Results: pio-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=rYqYo/BD; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SbN5t_KpvOQ1; Fri, 31 Jul 2020 12:07:17 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 88B8A3F536;
 Fri, 31 Jul 2020 12:07:16 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id EF0E5361FD5;
 Fri, 31 Jul 2020 12:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596190037; bh=UoCXprLChqQe6TdgJ4ZrH/sjXoErlPPGwX9BU6D+Apc=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=rYqYo/BDczcwNGq1xbXbgLYS6azEvzAKr8xnnFUdKtVpiw99VR5GC5SNawK0AsVUH
 TFUD7Usc9cc5FOhDTgXQGtn8sygdDDRxWbZWghnEDtif0rVhDWMtLLXBUyu2oWZXhc
 aP0aEqSpCqCqri9/ds+046JMIAAY6505cFe+n/uE=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-26-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <282ca7bd-9bc3-7a3c-4e78-97af4a2bb53c@shipmail.org>
Date: Fri, 31 Jul 2020 12:07:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-26-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 26/66] drm/i915: Add an implementation for
 i915_gem_ww_ctx locking, v2.
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

Ck9uIDcvMTUvMjAgMTo1MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IEZyb206IE1hYXJ0ZW4g
TGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+Cj4KPiBpOTE1X2dl
bV93d19jdHggaXMgdXNlZCB0byBsb2NrIGFsbCBnZW0gYm8ncyBmb3IgcGlubmluZyBhbmQgbWVt
b3J5Cj4gZXZpY3Rpb24uIFdlIGRvbid0IHVzZSBpdCB5ZXQsIGJ1dCBsZXRzIHN0YXJ0IGFkZGlu
ZyB0aGUgZGVmaW5pdGlvbgo+IGZpcnN0Lgo+Cj4gVG8gdXNlIGl0LCB3ZSBoYXZlIHRvIHBhc3Mg
YSBub24tTlVMTCB3dyB0byBnZW1fb2JqZWN0X2xvY2ssIGFuZCBkb24ndAo+IHVubG9jayBkaXJl
Y3RseS4gSXQgaXMgZG9uZSBpbiBpOTE1X2dlbV93d19jdHhfZmluaS4KPgo+IENoYW5nZXMgc2lu
Y2UgdjE6Cj4gLSBDaGFuZ2Ugd3dfY3R4IGFuZCBvYmogb3JkZXIgaW4gbG9ja2luZyBmdW5jdGlv
bnMgKEpvbmFzIExhaHRpbmVuKQo+Cj4gU2lnbmVkLW9mZi1ieTogTWFhcnRlbiBMYW5raG9yc3Qg
PG1hYXJ0ZW4ubGFua2hvcnN0QGxpbnV4LmludGVsLmNvbT4KUmV2aWV3ZWQtYnk6IFRob21hcyBI
ZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
