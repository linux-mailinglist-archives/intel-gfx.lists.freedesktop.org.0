Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57AAF2340E4
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Jul 2020 10:11:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F01F6EA17;
	Fri, 31 Jul 2020 08:11:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139B26EA17
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Jul 2020 08:11:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id D4B003F3CA;
 Fri, 31 Jul 2020 10:11:22 +0200 (CEST)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=NCHfZ0I7; 
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
 with ESMTP id rQEQEy-r0mXM; Fri, 31 Jul 2020 10:11:22 +0200 (CEST)
Received: from mail1.shipmail.org (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35]) (Authenticated sender: mb878879)
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id 51A523F3BF;
 Fri, 31 Jul 2020 10:11:22 +0200 (CEST)
Received: from localhost.localdomain (h-205-35.A357.priv.bahnhof.se
 [155.4.205.35])
 by mail1.shipmail.org (Postfix) with ESMTPSA id C5C7D361FD5;
 Fri, 31 Jul 2020 10:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1596183083; bh=3qsYnPA8eDWmh4Eo0+1SVv0pBOIfCmUJ/cKUFLTCpXs=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=NCHfZ0I7cGE8qLKgeSgfTVRv9OETpLCwMxsbw9ynqsVwAU1MF+F7D6miJt0EMNZvh
 w80Thzqerm7XiYESCFJHhUm4345k+/dVOUbBnhMtBJokOF7Y0lN4+lR6t8iZqm6z2a
 q10vhyrqpCj0Gn+qxiobmezg7YaNWE9WDQgjfTLY=
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200715115147.11866-1-chris@chris-wilson.co.uk>
 <20200715115147.11866-14-chris@chris-wilson.co.uk>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <cefd2638-36a9-3d4a-e562-1bddc14d6776@shipmail.org>
Date: Fri, 31 Jul 2020 10:11:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200715115147.11866-14-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 14/66] drm/i915/gem: Rename
 execbuf.bind_link to unbound_link
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

Ck9uIDcvMTUvMjAgMTo1MCBQTSwgQ2hyaXMgV2lsc29uIHdyb3RlOgo+IFJlbmFtZSB0aGUgY3Vy
cmVudCBsaXN0IG9mIHVuYm91bmQgb2JqZWN0cyBzbyB0aGF0IHdlIGNhbiB0cmFjayBvZiBhbGwK
PiBvYmplY3RzIHRoYXQgd2UgbmVlZCB0byBiaW5kLCBhcyB3ZWxsIGFzIHRoZSBsaXN0IG9mIGN1
cnJlbnRseSB1bmJvdW5kCj4gW3VucHJvY2Vzc2VkXSBvYmplY3RzLgo+Cj4gU2lnbmVkLW9mZi1i
eTogQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+Cj4gUmV2aWV3ZWQtYnk6
IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBpbnRlbC5jb20+Cj4gLS0tCj4gICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fZXhlY2J1ZmZlci5jIHwgMTQgKysrKysrKy0t
LS0tLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0p
Cj4KUmV2aWV3ZWQtYnk6IFRob21hcyBIZWxsc3Ryw7ZtIDx0aG9tYXMuaGVsbHN0cm9tQGludGVs
LmNvbT4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
