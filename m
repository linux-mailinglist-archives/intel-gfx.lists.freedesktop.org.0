Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7623D113058
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2019 17:58:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD94D6E936;
	Wed,  4 Dec 2019 16:58:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe2a.google.com (mail-vs1-xe2a.google.com
 [IPv6:2607:f8b0:4864:20::e2a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E09C86E936
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Dec 2019 16:58:48 +0000 (UTC)
Received: by mail-vs1-xe2a.google.com with SMTP id m5so228335vsj.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 04 Dec 2019 08:58:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=D7owLHhL8n3zXzUmoTCw3UquiHN/yUVHkWk3Td/Pg9k=;
 b=mp+wcbZoZwC+W4EU+Bf0qeRlOwZhypDJIGeT2a8cjN3z4ZtQx6JCcbL05UdGW7wCLR
 NxP0hGXZ1fFZwudtrNhxPJBgvJJZF4pXXWvLvXdrvG5AzxG5xQGMl+r0IWALjoEjmS8s
 BvKsxfgeWIgt05hMVT9xOroSQdjzuXrrDVkbgyk121z+hKKcQEsRPKrusvnQrPPY/XvU
 ev9d73SYzMxF1CRTmcAjTivUMa/9MGHjXSl+w8Sa2AY/g4L6b269emOdFch3rx1xWFLS
 wcppLFJ7cHLySrjcI/cbKshpW+EMs7vrnk5nTIuEgwAxoUJ6DS3pVGIQnqOAv9/7cxDz
 8jgg==
X-Gm-Message-State: APjAAAW+mZaXBeXJ/0IPtv0scDtI6MAZGF5wsubj15pHf5EqPJlNQdcH
 bpBt99JVPsLal83M4hBWQn9UOuePpx+OtNFzu9E=
X-Google-Smtp-Source: APXvYqxrAxcSiYMmR1FKQJMJCIEU6aTpTlkFJQV+WDW+veNeKLycDe2cuGWasZ3T2iw08mPoT//3glJi8MhdNvKXO1c=
X-Received: by 2002:a05:6102:d1:: with SMTP id
 u17mr2336224vsp.23.1575478727895; 
 Wed, 04 Dec 2019 08:58:47 -0800 (PST)
MIME-Version: 1.0
References: <20191204164527.3872783-1-chris@chris-wilson.co.uk>
In-Reply-To: <20191204164527.3872783-1-chris@chris-wilson.co.uk>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Wed, 4 Dec 2019 16:58:21 +0000
Message-ID: <CAM0jSHMhBJj5WVUaMNxN84cA1KH-WQMgpGPCPtYOp_7zn37shw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=D7owLHhL8n3zXzUmoTCw3UquiHN/yUVHkWk3Td/Pg9k=;
 b=lXdlSaiRRymALr6t5REKtsTodueJRkwFbRKce5O1GBOdmj3kneFXrosDgiS6vY0mAz
 ZmdtH+Bb9ZSJoqO29G+Blmbm2dPK/eyDq5ud7rVJ6JPG0+XMKQo34G/g7ZefpPe0FgZ+
 iP+ZZw3DNSxJr9fW0yZz/4jOPIFpeL9lLfpndLUI/mnQl+TZJFt2OqoNic4ulCIzuU1v
 rrVVi8xy+nXT6OvFLxNTG485Y7OzI9AJFWRd484YFGnmbWBUQBfo+Cz9hQl5fwSqU7Fu
 hwI6uD/j+AjpiyeHDckXKWOWl3gy3UfiNls3YtubTlyZ2c3TYqvhFNacv4/6cbMq1nRM
 cXag==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Hold the obj->vma.lock while
 walking the vma.list
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCA0IERlYyAyMDE5IGF0IDE2OjQ1LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBSZW1lbWJlciB0byB0YWtlIHRoZSBsb2NrIGJlZm9yZSB3
YWxraW5nIHRoZSBvYmotPnZtYS5saXN0IHNvIHRoYXQgdGhlCj4gbm9kZXMgZG8gbm90IGNoYW5n
ZSBiZW5lYXRoIHVzISBFLmcuLAo+Cj4gaTkxNV9nZW1fb2JqZWN0X2J1bXBfaW5hY3RpdmVfZ2d0
dDogaTkxNV9nZW1fb2JqZWN0X2J1bXBfaW5hY3RpdmVfZ2d0dDozODcgR0VNX0JVR19PTih2bWEt
PnZtICE9ICZpOTE1LT5nZ3R0LnZtKQo+Cj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVlZGVz
a3RvcC5vcmcvZHJtL2ludGVsL2lzc3Vlcy82OTEKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpcyBXaWxz
b24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KPiBDYzogTWF0dGhldyBBdWxkIDxtYXR0aGV3
LmF1bGRAaW50ZWwuY29tPgpSZXZpZXdlZC1ieTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRA
aW50ZWwuY29tPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
