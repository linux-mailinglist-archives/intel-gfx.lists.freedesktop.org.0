Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6C2BB9D9
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2019 18:45:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9EF6E976;
	Mon, 23 Sep 2019 16:45:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com
 [IPv6:2607:f8b0:4864:20::72d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94D076FD7D
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 18:01:06 +0000 (UTC)
Received: by mail-qk1-x72d.google.com with SMTP id u22so4677150qkk.11
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 11:01:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yc1EHPBKOck5Fw9ao61/7Fz16mnBfJBloQbSi5QG6xk=;
 b=ZfkN8Oe7we34/4laFb+dKfHNPkRq1HWShYWySOzUV+52FHD9JQnVYoueMob2218VMq
 d2N+IJT39BI8eJE0Z7jvelkBYeEEkWGGsPDL3dhJYdbHhs1uvC2hrDTqsFxi1NTlFuXk
 TYECUzEt46SnQe7voTgKnjM5EYbPVFLn17b9glH/tdmSd2BIjCHWlxQTD32jHpoYvZrt
 aUdh5bD71sIYmLiS4b32AnzI2IR/9xaGHn17c/Xn+dh3ESExNJQtkTmj6LfufYHLK8Ub
 MZm5A/0o29bblWa+S9SUyYVGofZOfgGsGBytbhSrAog92N+ehVEyy2hfINVuSr2KjiDB
 m3hw==
X-Gm-Message-State: APjAAAW6bzAf5Fp9my9NDT82a4UD5ZBR1sKP3bhYNjGKwIhbWg+SP8EK
 k8Zls74KFlL6T2yrdSWY+AZJOpvdb+w=
X-Google-Smtp-Source: APXvYqwrF2iXMwldh5pmcge3QrkZwpm5ILw+woi6u2hKQ0cpedYF3N/PT66bm8N5A/X5/VnKz83ing==
X-Received: by 2002:a37:9e47:: with SMTP id h68mr4804912qke.136.1569002465192; 
 Fri, 20 Sep 2019 11:01:05 -0700 (PDT)
Received: from dhcp-41-57.bos.redhat.com (nat-pool-bos-t.redhat.com.
 [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id o28sm1133789qkk.106.2019.09.20.11.01.04
 for <intel-gfx@lists.freedesktop.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Sep 2019 11:01:04 -0700 (PDT)
Message-ID: <1569002463.5576.201.camel@lca.pw>
From: Qian Cai <cai@lca.pw>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 20 Sep 2019 14:01:03 -0400
In-Reply-To: <20190920173041.25914.2587@emeril.freedesktop.org>
References: <1568909380-32199-1-git-send-email-cai@lca.pw>
 <20190920173041.25914.2587@emeril.freedesktop.org>
X-Mailer: Evolution 3.22.6 (3.22.6-10.el7) 
Mime-Version: 1.0
X-Mailman-Approved-At: Mon, 23 Sep 2019 16:45:30 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=lca.pw; s=google;
 h=message-id:subject:from:to:date:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=yc1EHPBKOck5Fw9ao61/7Fz16mnBfJBloQbSi5QG6xk=;
 b=oJ8SpPVeXX5LRSnYWnXV4x+ahe6l2MPP9gSWW+BdumZKZU7E5Dh/AQ4YhEIKcLxRdx
 WVPWPQJUDswcdhz/4wPvCl23gcutly+OoWFcfj/v9/k99p/eAnsKJuEXXrUt6x4JWHZM
 i8CByu0d7poLWaIkTPuGN9/kzjM96u1MJyR7yLBcW4i0yR/gjBce3ocpZ92mOae4sKZ0
 ZitTZ10Civ6i62STiXN+1Cqe5IxXLX57VFTlZjmhqUciOnUGVwebY5RkeoCQk7vWcm4G
 4MGv23MZsFRKQeefx0wTruXUKtTPJw9864K3kC0c1IP4LQU18d9qxWXJXTRB20BCzny9
 pPfg==
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJVSUxEOiBmYWlsdXJlIGZvciB0?=
 =?utf-8?q?reewide=3A_remove_unused_argument_in_lock=5Frelease=28=29?=
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDE5LTA5LTIwIGF0IDE3OjMwICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6Cj4gPT0g
U2VyaWVzIERldGFpbHMgPT0KPiAKPiBTZXJpZXM6IHRyZWV3aWRlOiByZW1vdmUgdW51c2VkIGFy
Z3VtZW50IGluIGxvY2tfcmVsZWFzZSgpCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVl
ZGVza3RvcC5vcmcvc2VyaWVzLzY3MDA3Lwo+IFN0YXRlIDogZmFpbHVyZQo+IAo+ID09IFN1bW1h
cnkgPT0KPiAKPiBDQUxMICAgIHNjcmlwdHMvY2hlY2tzeXNjYWxscy5zaAo+ICAgQ0FMTCAgICBz
Y3JpcHRzL2F0b21pYy9jaGVjay1hdG9taWNzLnNoCj4gICBERVNDRU5EICBvYmp0b29sCj4gICBD
SEsgICAgIGluY2x1ZGUvZ2VuZXJhdGVkL2NvbXBpbGUuaAo+ICAgQVIgICAgICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9idWlsdC1pbi5hCj4gICBDQyBbTV0gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2d0X3BtLm8KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jOiBJ
biBmdW5jdGlvbiDigJhpbnRlbF9ndF9yZXN1bWXigJk6Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcG0uYzoxODY6NTQ6IGVycm9yOiBtYWNybyAibXV0ZXhfcmVsZWFzZSIgcGFz
c2VkIDMgYXJndW1lbnRzLCBidXQgdGFrZXMganVzdCAyCj4gICAgIG11dGV4X3JlbGVhc2UoJmNl
LT5waW5fbXV0ZXguZGVwX21hcCwgMCwgX1RISVNfSVBfKTsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBeCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZ3RfcG0uYzoxODY6NDogZXJyb3I6IOKAmG11dGV4X3JlbGVhc2XigJkgdW5k
ZWNsYXJlZCAoZmlyc3QgdXNlIGluIHRoaXMgZnVuY3Rpb24pOyBkaWQgeW91IG1lYW4g4oCYc2Vx
X3JlbGVhc2XigJk/Cj4gICAgIG11dGV4X3JlbGVhc2UoJmNlLT5waW5fbXV0ZXguZGVwX21hcCwg
MCwgX1RISVNfSVBfKTsKPiAgICAgXn5+fn5+fn5+fn5+fgo+ICAgICBzZXFfcmVsZWFzZQo+IGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLmM6MTg2OjQ6IG5vdGU6IGVhY2ggdW5k
ZWNsYXJlZCBpZGVudGlmaWVyIGlzIHJlcG9ydGVkIG9ubHkgb25jZSBmb3IgZWFjaCBmdW5jdGlv
biBpdCBhcHBlYXJzIGluCj4gc2NyaXB0cy9NYWtlZmlsZS5idWlsZDoyODA6IHJlY2lwZSBmb3Ig
dGFyZ2V0ICdkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5vJyBmYWlsZWQKPiBt
YWtlWzRdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtLm9dIEVycm9y
IDEKPiBzY3JpcHRzL01ha2VmaWxlLmJ1aWxkOjQ5NzogcmVjaXBlIGZvciB0YXJnZXQgJ2RyaXZl
cnMvZ3B1L2RybS9pOTE1JyBmYWlsZWQKPiBtYWtlWzNdOiAqKiogW2RyaXZlcnMvZ3B1L2RybS9p
OTE1XSBFcnJvciAyCj4gc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdkcml2ZXJzL2dwdS9kcm0nIGZhaWxlZAo+IG1ha2VbMl06ICoqKiBbZHJpdmVycy9ncHUv
ZHJtXSBFcnJvciAyCj4gc2NyaXB0cy9NYWtlZmlsZS5idWlsZDo0OTc6IHJlY2lwZSBmb3IgdGFy
Z2V0ICdkcml2ZXJzL2dwdScgZmFpbGVkCj4gbWFrZVsxXTogKioqIFtkcml2ZXJzL2dwdV0gRXJy
b3IgMgo+IE1ha2VmaWxlOjEwODc6IHJlY2lwZSBmb3IgdGFyZ2V0ICdkcml2ZXJzJyBmYWlsZWQK
PiBtYWtlOiAqKiogW2RyaXZlcnNdIEVycm9yIDIKPiAKCk5vdCBteSBmYXVsdC4gVGhvc2UgY29k
ZXMgYXJlIG5vdCBpbiBsaW51eC1uZXh0IGF0IGFsbC4KCiMgZ3JlcCBtdXRleCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9wbS5jCjxub25lPgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZng=
