Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0924D2346A4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 15:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BC2A6EA97;
	Fri, 31 Jul 2020 13:12:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from pio-pvt-msa3.bahnhof.se (pio-pvt-msa3.bahnhof.se [79.136.2.42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDE906EA97
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 13:12:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTP id E8AB53F6B6;
 Fri, 31 Jul 2020 15:12:36 +0200 (CEST)
Authentication-Results: pio-pvt-msa3.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=L8H5e9ln; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.911
X-Spam-Level: 
X-Spam-Status: No, score=-2.911 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.812,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Received: from pio-pvt-msa3.bahnhof.se ([127.0.0.1])
 by localhost (pio-pvt-msa3.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SnlAkUF7jx0g; Fri, 31 Jul 2020 15:12:36 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by pio-pvt-msa3.bahnhof.se (Postfix) with ESMTPA id 7D68A3F616;
 Fri, 31 Jul 2020 15:12:34 +0200 (CEST)
Received: from localhost.localdomain (unknown [134.134.137.77])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 0EB72361FD5;
 Fri, 31 Jul 2020 15:12:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596201154; bh=Qi/23dafZn7NlUVqXWYKS60MAe6TVEpqcZlPqbxdjBM=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=L8H5e9lnch9I242B1SHBu7tKBT0DK+r66wnxoKzKyqMd9n2RfPk+mhUIPvdp64+w/
 PSe7fJfl/JPmA0vAfleTHEZ4+xP2zPgOujAKWTjcgbJmtiPSsRevQQ6pXvPpzFcqZM
 3YqH8XWZ9xsUwd1uegNuC2OEel7cqs6D2hj/8IEs=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-22-chris@chris-wilson.co.uk>
 <2a1088e1-17ba-24c8-7874-be89acac02e8@shipmail.org>
 <159594888288.665.8560577298791146731@build.alporthouse.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <3818bbca-b209-f558-dfce-1186c261f039@shipmail.org>
Date: Fri, 31 Jul 2020 15:12:28 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <159594888288.665.8560577298791146731@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 22/66] drm/i915/gem: Bind the fence async
 for execbuf
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

Ck9uIDcvMjgvMjAgNTowOCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFF1b3RpbmcgVGhvbWFz
IEhlbGxzdHLDtm0gKEludGVsKSAoMjAyMC0wNy0yNyAxOToxOToxOSkKPj4gT24gNy8xNS8yMCAx
OjUxIFBNLCBDaHJpcyBXaWxzb24gd3JvdGU6Cj4+PiBJdCBpcyBpbGxlZ2FsIHRvIHdhaXQgb24g
YW4gYW5vdGhlciB2bWEgd2hpbGUgaG9sZGluZyB0aGUgdm0tPm11dGV4LCBhcwo+Pj4gdGhhdCBl
YXNpbHkgbGVhZHMgdG8gQUJCQSBkZWFkbG9ja3MgKHdlIHdhaXQgb24gYSBzZWNvbmQgdm1hIHRo
YXQgd2FpdHMKPj4+IG9uIHVzIHRvIHJlbGVhc2UgdGhlIHZtLT5tdXRleCkuIFNvIHdoaWxlIHRo
ZSB2bS0+bXV0ZXggZXhpc3RzLCBtb3ZlIHRoZQo+Pj4gd2FpdGluZyBvdXRzaWRlIG9mIHRoZSBs
b2NrIGludG8gdGhlIGFzeW5jIGJpbmRpbmcgcGlwZWxpbmUuCj4+IFdoeSBpcyBpdCB3ZSBkb24n
dCBqdXN0IG1vdmUgdGhlIGZlbmNlIGJpbmRpbmcgdG8gYSBzZXBhcmF0ZSBsb29wIGFmdGVyCj4+
IHVubG9ja2luZyB0aGUgdm0tPm11dGV4IGluIGViX3Jlc2VydmVfdm0oKT8KPiBUaGF0IGlzIHdo
YXQgaXMgZG9uZS4gVGhlIHdvcmsgaXMgY2FsbGVkIGltbWVkaWF0ZWx5IHdoZW4gcG9zc2libGUu
IEp1c3QKPiB0aGUgbG9vcCBtYXkgYmUgZGVmZXJyZWQgaWYgdGhlIHdoYXQgd2UgbmVlZCB0byB1
bmJpbmQgYXJlIHN0aWxsIGFjdGl2ZQoKT0ssIHRoZW4KClJldmlld2VkLWJ5OiBUaG9tYXMgSGVs
bHN0csO2bSA8dGhvbWFzLmhlbGxzdHJvbUBpbnRlbC5jb20+CgoKPiAtQ2hyaXMKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
