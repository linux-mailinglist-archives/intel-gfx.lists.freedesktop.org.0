Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75B4F166241
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Feb 2020 17:21:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A64B06EDD5;
	Thu, 20 Feb 2020 16:21:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from smtp.domeneshop.no (smtp.domeneshop.no
 [IPv6:2a01:5b40:0:3005::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E262E6EDD5;
 Thu, 20 Feb 2020 16:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=tronnes.org
 ; s=ds201912;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ILUEmLtMTBlf781Mk0vzHMWyjDyWnNMu81CzMXO8f1U=; b=o14XTGWwy8zaNXwfa46eZlu6xi
 vexQVIIZKWYLmr7vYsvQ3/wxuzIR2RrH8WgcceQ3/6BEBri+/Demu+kLltZdyZpz4tuyedbh2nvVk
 Nw7EmXUzhQ2ZdHYQqnmuw6GqELLzNHGA2S1W1aQcAz0f0yB8BVy/JqUQZ9vhCKimwpBMDQkvYmG8k
 GnS4HCGTOZZrtj2j4Pz38ET6/ZDxYbqS1FgFXvEKYRiQANFh5SyCuO18QHAi8omEuKbKNqii8OuFT
 uHRztEUPKkaSOllCEqEJ+Onnt4B7E7nVh0Frw6TXna6XNm7myklXpgaxkeupqgOZhTUXzDsVk3wFD
 DdNxeIig==;
Received: from 211.81-166-168.customer.lyse.net ([81.166.168.211]:50609
 helo=[192.168.10.61])
 by smtp.domeneshop.no with esmtpsa (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.92) (envelope-from <noralf@tronnes.org>)
 id 1j4oa4-0001x0-0Q; Thu, 20 Feb 2020 17:21:40 +0100
To: Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>
References: <20200219102122.1607365-1-daniel.vetter@ffwll.ch>
 <20200219102122.1607365-48-daniel.vetter@ffwll.ch>
From: =?UTF-8?Q?Noralf_Tr=c3=b8nnes?= <noralf@tronnes.org>
Message-ID: <9e9d988d-7a08-60d6-2fec-5b693eabf0cf@tronnes.org>
Date: Thu, 20 Feb 2020 17:21:35 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200219102122.1607365-48-daniel.vetter@ffwll.ch>
Subject: Re: [Intel-gfx] [PATCH 47/52] drm/repaper: Drop explicit
 drm_mode_config_cleanup call
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

CgpEZW4gMTkuMDIuMjAyMCAxMS4yMSwgc2tyZXYgRGFuaWVsIFZldHRlcjoKPiBBbGxvd3MgdXMg
dG8gZHJvcCB0aGUgZHJtX2RyaXZlci5yZWxlYXNlIGNhbGxiYWNrLgo+IAo+IFNpZ25lZC1vZmYt
Ynk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgo+IENjOiAiTm9yYWxm
IFRyw7hubmVzIiA8bm9yYWxmQHRyb25uZXMub3JnPgo+IC0tLQoKUmV2aWV3ZWQtYnk6IE5vcmFs
ZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
