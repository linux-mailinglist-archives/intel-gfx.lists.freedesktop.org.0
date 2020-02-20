Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B52C5166226
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:18:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C80556EDD4;
	Thu, 20 Feb 2020 16:18:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 243696EDD3;
 Thu, 20 Feb 2020 16:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hHmInUn2KG78kcp0ydy6ZNqk6f9o3JS7N0+LNtdqzBI=; b=P441TKS1TGs8lphxdDGnw8i50G
 pdag3gEv2+g1ayKnbw741aPzp7BL8jiNdXO61xgFofWYhsB1a3f18smsIuY8tGFUUXGEhS6yLEuzk
 2RtD3w0j0N+3z5mk1a5b7kFunyfyZmBtIC9PglpFV4sNTrTUjIHK3tcLN6SMi4rAJfjzY7bDCKAjK
 1VuGrlqh4aDFlN+muTSyTSsSt+zOWDETziu3J2dJt+n/QRKnJYq7OZEJ2Hg2NVkGi3Rwg0ysItHGD
 gOZq4Zt7mqHV1bZLDz3M/8GEFaf9WvTgy0ftUFDSdw0xaNERtcfRs/Sj83e+VkIhppXVk01+K1Kv9
 8nyeUxhQ==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:8477
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1j4oXK-00016l-Ei; Thu, 20 Feb 2020 17:18:50 +0100
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-17-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <0d56e705-580f-6730-c4cf-21deaed62fe1@tronnes.org>
Date: Thu, 20 Feb 2020 17:18:46 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219102122.1607365-17-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 16/52] drm/repaper: Use drmm_add_final_kfree
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

CgpEZW4gMTkuMDIuMjAyMCAxMS4yMCwgc2tyZXYgRGFuaWVsIFZldHRlcjoKPiBXaXRoIHRoaXMg
d2UgY2FuIGRyb3AgdGhlIGZpbmFsIGtmcmVlIGZyb20gdGhlIHJlbGVhc2UgZnVuY3Rpb24uCj4g
Cj4gU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+
Cj4gQ2M6ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+Cj4gLS0tCgpSZXZp
ZXdlZC1ieTogTm9yYWxmIFRyw7hubmVzIDxub3JhbGZAdHJvbm5lcy5vcmc+Cl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxp
c3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNr
dG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
