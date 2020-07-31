Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE7C2340DE
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 10:09:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 375566E0D5;
	Fri, 31 Jul 2020 08:09:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa1.bahnhof.se (ste-pvt-msa1.bahnhof.se
 [213.80.101.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 950606E0D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 08:09:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTP id 081353F3B8;
 Fri, 31 Jul 2020 10:09:23 +0200 (CEST)
Authentication-Results: ste-pvt-msa1.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=OwKj7/oT; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from ste-pvt-msa1.bahnhof.se ([127.0.0.1])
 by localhost (ste-pvt-msa1.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id s61BpWKkUgrV; Fri, 31 Jul 2020 10:09:21 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa1.bahnhof.se (Postfix) with ESMTPA id 916533F6A9;
 Fri, 31 Jul 2020 10:09:21 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id E12C0361FD5;
 Fri, 31 Jul 2020 10:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596182960; bh=dxVIvNw+fTFD4SA+gpexuX7Ea0TXjbFk2st6F0zcJZU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=OwKj7/oTK3SphDvf6TviegXPV6xZaF/6vFzkaogLipUmOjqJBiuCrR+DXGBb95QZc
 6VdZJ5uFvoA/oYbmmKXxK7gXzo+e7BAp3uQBQhr5erDSKv5owjweagRqDjQcqac5WM
 Ia8TyR1t3bhpmnGK0ThvTItk3FEhCi0CF8+I+iF8=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-13-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <f92773ec-c345-0f30-662f-a1db3e7029a5@shipmail.org>
Date: Fri, 31 Jul 2020 10:09:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-13-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/66] drm/i915/gem: Don't drop the timeline
 lock during execbuf
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

Ck9uIDcvMTUvMjAgMTo1MCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IE91ciB0aW1lbGluZSBs
b2NrIGlzIG91ciBkZWZlbmNlIGFnYWluc3QgYSBjb25jdXJyZW50IGV4ZWNidWYKPiBpbnRlcnJ1
cHRpbmcgb3VyIHJlcXVlc3QgY29uc3RydWN0aW9uLiB3ZSBuZWVkIGhvbGQgaXQgdGhyb3VnaG91
dCBvciwKPiBmb3IgZXhhbXBsZSwgYSBzZWNvbmQgdGhyZWFkIG1heSBpbnRlcmplY3QgYSByZWxv
Y2F0aW9uIHJlcXVlc3QgaW4KPiBiZXR3ZWVuIG91ciBvd24gcmVsb2NhdGlvbiByZXF1ZXN0IGFu
ZCBleGVjdXRpb24gaW4gdGhlIHJpbmcuCj4KPiBBIHNlY29uZCwgbWFqb3IgYmVuZWZpdCwgaXMg
dGhhdCBpdCBhbGxvd3MgdXMgdG8gcHJlc2VydmUgYSBsYXJnZSBjaHVuawo+IG9mIHRoZSByaW5n
YnVmZmVyIGZvciBvdXIgZXhjbHVzaXZlIHVzZTsgd2hpY2ggc2hvdWxkIHZpcnR1YWxseQo+IGVs
aW1pbmF0ZSB0aGUgdGhyZWF0IG9mIGhpdHRpbmcgYSB3YWl0X2Zvcl9zcGFjZSBkdXJpbmcgcmVx
dWVzdAo+IGNvbnN0cnVjdGlvbiAtLSBhbHRob3VnaCB3ZSBzaG91bGQgaGF2ZSBhbHJlYWR5IGRy
b3BwZWQgb3RoZXIKPiBjb250ZW50aW91cyBsb2NrcyBhdCB0aGF0IHBvaW50Lgo+Cj4gU2lnbmVk
LW9mZi1ieTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4KUmV2aWV3
ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNvbT4KCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
