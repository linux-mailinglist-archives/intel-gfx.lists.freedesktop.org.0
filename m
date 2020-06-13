Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB0B1F8391
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Jun 2020 15:50:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86CCB6E3E5;
	Sat, 13 Jun 2020 13:50:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77F1E6E3E5
 for <intel-gfx@lists.freedesktop.org>; Sat, 13 Jun 2020 13:50:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tiv/Pyk1Sm9RxR0NgK3mjf/xUQuqNlaNa567Q0Xc2ns=; b=QyzUZhLh58kGNMazapW8ZPVXy6
 Yaj7kAarsmlBrO2zn8uXUxfzcvo9UBHEJ+kbJTecOCwElqrSuqNKUMBpA/ESYhhwya7Jig51VmHUV
 vkjnlia8DBBD3YnXEKhXy4bULgLpbw0W44epE15BKTNVLMT3EpNoXvPbxN1YUGxnLBj1QMhqDt1Tu
 tP51+7JWKSr88lRRjAAlBEjhO3ue6UzfrygWIMnWWckIcQNoKsl0GYlxn6lhK+BnVEAHYsWVdMRpT
 QUHe9Pmm5AAr3Atynhw/7uHFYoqZ4tWYzqNy6ntscenxp2eqaC9vGbIsaKcpt0PsjWIGK+egBmJps
 D6c/CDFw==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:52693
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1jk6RQ-0004Xi-Fb; Sat, 13 Jun 2020 15:43:24 +0200
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200612160056.2082681-1-daniel.vetter@ffwll.ch>
 <20200612160056.2082681-8-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <bc85bee0-9edf-7e24-9a6f-0a9ce5153fd8@tronnes.org>
Date: Sat, 13 Jun 2020 15:43:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200612160056.2082681-8-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/tiny/repaper: Drop edp->enabled
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

CgpEZW4gMTIuMDYuMjAyMCAxOC4wMCwgc2tyZXYgRGFuaWVsIFZldHRlcjoKPiBTYW1lIHBhdGNo
IGFzIHRoZSBtaXBpLWRiaSBvbmUsIGF0b21pYyB0cmFja3MgdGhpcyBmb3IgdXMgYWxyZWFkeSwg
d2UKPiBqdXN0IGhhdmUgdG8gY2hlY2sgdGhlIHJpZ2h0IHRoaW5nLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiAiTm9yYWxm
IFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IE5vcmFs
ZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
