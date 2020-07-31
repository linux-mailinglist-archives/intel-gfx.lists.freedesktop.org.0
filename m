Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB0223440F
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 12:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80A656EA5D;
	Fri, 31 Jul 2020 10:27:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 614286EA5D
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 10:27:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 16B573F59E;
 Fri, 31 Jul 2020 12:27:42 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=Uo22XglP; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.923
X-Spam-Level: 
X-Spam-Status: No, score=-2.923 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.824,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hJ6DIRXlX7Pt; Fri, 31 Jul 2020 12:27:41 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 24D2B3F4C0;
 Fri, 31 Jul 2020 12:27:37 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 30063361FD5;
 Fri, 31 Jul 2020 12:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596191258; bh=B254APUViMuKkJYLWrDvnLF1lJLJ5x3VIvnAiDBMeLs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=Uo22XglP2d5O9+L0i/0OLzdU8yiAqWnCXLcKJdlvDzeCsms29tAiD5+/Q4vWmID3T
 N7frKhuPzYS0G14+iA+NbMCLK4X45XJ+NqlrojD79jDD5aR4WfAWxP+inhq5bTm86a
 Cqs7e6QtjJg/JlnUtu6AySvVVZNght69Yq8tnZq4=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-31-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <fdace9f9-36a4-30b5-028a-e224f554f1cf@shipmail.org>
Date: Fri, 31 Jul 2020 12:27:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-31-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 31/66] drm/i915/gt: Acquire backing storage
 for the context
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

Ck9uIDcvMTUvMjAgMTo1MSBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFB1bGwgdGhlIGluZGl2
aWR1YWwgYWNxdWlzaXRpb24gb2YgdGhlIGNvbnRleHQgb2JqZWN0cyAoc3RhdGUsIHJpbmcsCj4g
dGltZWxpbmUpIHVuZGVyIGEgY29tbW9uIGk5MTVfYWNxdWlyZV9jdHggaW4gcHJlcGFyYXRpb24g
dG8gYWxsb3cgdGhlCj4gY29udGV4dCB0byBldmljdCBtZW1vcnkgKG9yIHJhdGhlciB0aGUgaTkx
NV9hY3F1aXJlX2N0eCBvbiBpdHMgYmVoYWxmKS4KPgo+IFRoZSBjb250ZXh0IG9iamVjdHMgbWFp
bnRhaW4gdGhlaXIgc2VtaS1wZXJtYW5lbnQgc3RhdHVzOyB0aGF0IGlzIHRoZXkKPiBhcmUgYXNz
dW1lZCB0byBiZSBhY2Nlc3NpYmxlIGJ5IHRoZSBIVyBhdCBhbGwgdGltZXMgdW50aWwgd2UgcmVj
ZWl2ZSBhCj4gc2lnbmFsIGZyb20gdGhlIEhXIHRoYXQgdGhleSBhcmUgbm8gbG9uZ2VyIGluIHVz
ZS4gQ3VycmVudGx5LCB3ZQo+IGdlbmVyYXRlIHN1Y2ggYSBzaWduYWwgb3Vyc2VsdmVzIGZyb20g
dGhlIGNvbnRleHQgc3dpdGNoIGZvbGxvd2luZyB0aGUKPiBmaW5hbCB1c2Ugb2YgdGhlIG9iamVj
dHMuIFRoaXMgbWVhbnMgdGhhdCB0aGV5IHdpbGwgcmVtYWluIG9uIHRoZSBIVyBmb3IKPiBhbiBp
bmRlZmluaXRlIGFtb3VudCBvZiB0aW1lLCBhbmQgd2UgcmV0YWluIHRoZSB1c2Ugb2YgcGlubmlu
ZyB0byBrZWVwCj4gdGhlbSBpbiB0aGUgc2FtZSBwbGFjZS4gQXMgdGhleSBhcmUgcGlubmVkLCB0
aGV5IGNhbiBiZSBwcm9jZXNzZWQKPiBvdXRzaWRlIG9mIHRoZSB3b3JraW5nIHNldCBmb3IgdGhl
IHJlcXVlc3RzIHdpdGhpbiB0aGUgY29udGV4dC4gVGhpcyBpcwo+IHVzZWZ1bCwgYXMgdGhlIGNv
bnRleHQgc2hhcmUgc29tZSBnbG9iYWwgc3RhdGUgY2F1c2luZyBpdCB0byBpbmN1ciBhCj4gZ2xv
YmFsIGxvY2sgdmlhIGl0cyBvYmplY3RzLiBCeSBvbmx5IHJlcXVpcmluZyB0aGF0IGxvY2sgYXMg
dGhlIGNvbnRleHQKPiBpcyBhY3RpdmF0ZWQsIGl0IGlzIGJvdGggcmVkdWNlZCBpbiBmcmVxdWVu
Y3kgYW5kIHJlZHVjZWQgaW4gZHVyYXRpb24KPiAoYXMgY29tcGFyZWQgdG8gZXhlY2J1ZikuCj4K
PiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4K
UmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVsLmNv
bT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
