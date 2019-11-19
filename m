Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F62B102829
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2019 16:33:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 796886E33D;
	Tue, 19 Nov 2019 15:33:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:e::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6252B6E33D;
 Tue, 19 Nov 2019 15:33:48 +0000 (UTC)
Received: from [2601:1c0:6280:3f0::5a22]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX5Vi-0002IW-Uf; Tue, 19 Nov 2019 15:33:46 +0000
To: Stephen Rothwell <sfr@canb.auug.org.au>,
 Linux Next Mailing List <linux-next@vger.kernel.org>
References: <20191119194658.39af50d0@canb.auug.org.au>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1d30acd4-9947-d228-967f-c4e76ebca832@infradead.org>
Date: Tue, 19 Nov 2019 07:33:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <20191119194658.39af50d0@canb.auug.org.au>
Content-Language: en-US
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; 
 d=infradead.org; s=bombadil.20170209; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:
 Subject:Sender:Reply-To:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7k98xFtkO3R8OY2GTrR+n6nxLnbfq1kjR6KlJVfIm+M=; b=fLtFRfU5eeKhmoEe0pKbpvvBb
 l3MY1BEVYKISFsskQDSLnZTbqlBl5NAwWVFE42zgiApxtamP25+7J7aWm0p37iX0AKjSSkEZ3N+I0
 9IamcDFOqg9O9LUZP8UFWkRUde2JBRIsDbE8qQ3xgsBubOlDqoOovIvonAyPf90Yj74kld27Tv82R
 s207u98tRCi1+5hTd9033FbkbbNzqsVe3FKlzINCebCxcJMW3v6B8EHip9kIc7/5jjX7lOUGlVwOn
 MrRki1XSPPK+/itwDbDp+36uxulpH0VJAK02JchWYDWOmiOu8CWOjbT88ha+54EvIGO5SiJ1295Qo
 t9NJ8Xpfw==;
Subject: Re: [Intel-gfx] linux-next: Tree for Nov 19 (i915)
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gMTEvMTkvMTkgMTI6NDYgQU0sIFN0ZXBoZW4gUm90aHdlbGwgd3JvdGU6Cj4gSGkgYWxsLAo+
IAo+IENoYW5nZXMgc2luY2UgMjAxOTExMTg6CgoKb24geDg2XzY0OgoKRVJST1I6ICJwbV9zdXNw
ZW5kX3RhcmdldF9zdGF0ZSIgW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTUua29dIHVuZGVmaW5l
ZCEKCiMgQ09ORklHX1NVU1BFTkQgaXMgbm90IHNldAoKLS0gCn5SYW5keQpSZXBvcnRlZC1ieTog
UmFuZHkgRHVubGFwIDxyZHVubGFwQGluZnJhZGVhZC5vcmc+Cl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwt
Z2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
