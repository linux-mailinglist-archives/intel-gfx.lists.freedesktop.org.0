Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F091E8E52C
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Aug 2019 09:02:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD2586E8AF;
	Thu, 15 Aug 2019 07:02:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x541.google.com (mail-ed1-x541.google.com
 [IPv6:2a00:1450:4864:20::541])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCA36E8AB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 07:02:53 +0000 (UTC)
Received: by mail-ed1-x541.google.com with SMTP id g8so1323533edm.6
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Aug 2019 00:02:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=bLd8iBYFMq4wTFjkCmL3dJr6BJW6TqxkGakc0u927MY=;
 b=AkGbDWmPTy1ZyjlNFYAubol9UK1cMnjCYgMIWk2gw0c4iHXct9xA0NGPVmlymmLza6
 aKGOkvc/HP6ks6e+YUVl5v1KJ3SzOs5B6Zcb+qNCxwsBNYVztjVX6Bm1Ad0P+bFi+BXi
 L/TbSKb+509Z60jwrynzCLZxUD6ul2JzHBvvTdz2PZwl76L4ywr27At4ba5N3hdnwnsh
 1dGuOwXYTajMHnpxfkhU/qU6JiovI28nNL3++bATPXkbHe49tiEexknAaPyZPmqKCHhc
 NXFV1Mi4RT9rqTrmVcA/6vVfcybY3OBXIRNU0imVt433P1Nuu03NssFtowDWTgBT0V4I
 nuoQ==
X-Gm-Message-State: APjAAAWD7FMMEWEHmuuFIDy2pJY18PnkOGhZbzdTPb4AUvDlhlM7dTUM
 SR7U3lywthjFdUre4eHupMmcdA==
X-Google-Smtp-Source: APXvYqyy/rWJ7w566iUlFN1PbwXLJFUFl4vKsTEUf/2XNHZ/bMokuW0qAhlyp5n+kCjaGg6bKwGpzw==
X-Received: by 2002:a17:906:2401:: with SMTP id
 z1mr3038125eja.292.1565852572404; 
 Thu, 15 Aug 2019 00:02:52 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id us11sm256760ejb.43.2019.08.15.00.02.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 15 Aug 2019 00:02:51 -0700 (PDT)
Date: Thu, 15 Aug 2019 09:02:49 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jason Gunthorpe <jgg@ziepe.ca>
Message-ID: <20190815070249.GB7444@phenom.ffwll.local>
Mail-Followup-To: Jason Gunthorpe <jgg@ziepe.ca>,
 LKML <linux-kernel@vger.kernel.org>, linux-mm@kvack.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michal Hocko <mhocko@suse.com>,
 David Rientjes <rientjes@google.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 Daniel Vetter <daniel.vetter@intel.com>
References: <20190814202027.18735-1-daniel.vetter@ffwll.ch>
 <20190814202027.18735-4-daniel.vetter@ffwll.ch>
 <20190815000029.GC11200@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190815000029.GC11200@ziepe.ca>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:mail-followup-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=bLd8iBYFMq4wTFjkCmL3dJr6BJW6TqxkGakc0u927MY=;
 b=S1ek6ieqqCXxXcQ8v2TmGNi0QSaBD7Oz0rcz+gP77p7QRYhaeKnJXJgY2bZosfH15d
 Ni8hW8n9vyDdI0rL0Qm9rLHR5UDjl09kQnr8hnGPoA79FnzKbeknAY4iOyGTaRNFkybF
 h/NhNGD3n/tideJHRXRVf+P4Mmd3i1RRm//8Y=
Subject: Re: [Intel-gfx] [PATCH 3/5] mm,
 notifier: Catch sleeping/blocking for !blockable
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
Cc: Michal Hocko <mhocko@suse.com>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, linux-mm@kvack.org,
 =?iso-8859-1?B?Suly9G1l?= Glisse <jglisse@redhat.com>,
 David Rientjes <rientjes@google.com>, Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBBdWcgMTQsIDIwMTkgYXQgMDk6MDA6MjlQTSAtMDMwMCwgSmFzb24gR3VudGhvcnBl
IHdyb3RlOgo+IE9uIFdlZCwgQXVnIDE0LCAyMDE5IGF0IDEwOjIwOjI1UE0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBXZSBuZWVkIHRvIG1ha2Ugc3VyZSBpbXBsZW1lbnRhdGlvbnMg
ZG9uJ3QgY2hlYXQgYW5kIGRvbid0IGhhdmUgYQo+ID4gcG9zc2libGUgc2NoZWR1bGUvYmxvY2tp
bmcgcG9pbnQgZGVlcGx5IGJ1cnJpZWQgd2hlcmUgcmV2aWV3IGNhbid0Cj4gPiBjYXRjaCBpdC4K
PiA+IAo+ID4gSSdtIG5vdCBzdXJlIHdoZXRoZXIgdGhpcyBpcyB0aGUgYmVzdCB3YXkgdG8gbWFr
ZSBzdXJlIGFsbCB0aGUKPiA+IG1pZ2h0X3NsZWVwKCkgY2FsbHNpdGVzIHRyaWdnZXIsIGFuZCBp
dCdzIGEgYml0IHVnbHkgaW4gdGhlIGNvZGUgZmxvdy4KPiA+IEJ1dCBpdCBnZXRzIHRoZSBqb2Ig
ZG9uZS4KPiA+IAo+ID4gSW5zcGlyZWQgYnkgYW4gaTkxNSBwYXRjaCBzZXJpZXMgd2hpY2ggZGlk
IGV4YWN0bHkgdGhhdCwgYmVjYXVzZSB0aGUKPiA+IHJ1bGVzIGhhdmVuJ3QgYmVlbiBlbnRpcmVs
eSBjbGVhciB0byB1cy4KPiAKPiBJIHRob3VnaHQgbG9ja2RlcCBhbHJlYWR5IHdhcyBhYmxlIHRv
IGRldGVjdDoKPiAKPiAgc3Bpbl9sb2NrKCkKPiAgbWlnaHRfc2xlZXAoKTsKPiAgc3Bpbl91bmxv
Y2soKQo+IAo+IEFtIEkgbWlzdGFrZW4/IElmIHllcywgY291bGRuJ3QgdGhpcyBwYXRjaCBqdXN0
IGluamVjdCBhIGR1bW15IGxvY2tkZXAKPiBzcGlubG9jaz8KCkhtIC4uLiBhc3N1bWluZyBJIGRp
ZG4ndCBnZXQgbG9zdCBpbiB0aGUgbWF6ZSBJIHRoaW5rIG1pZ2h0X3NsZWVwICh3ZWxsCl9fX21p
Z2h0X3NsZWVwKSBkb2Vzbid0IGRvIGFueSBsb2NrZGVwIGNoZWNraW5nIGF0IGFsbC4gQW5kIHdl
IHdhbnQKbWlnaHRfc2xlZXAsIHNpbmNlIHRoYXQgY2F0Y2hlcyBhIGxvdCBtb3JlIHRoYW4gbG9j
a2RlcC4KCk1heWJlIHlvdSBtaXhlZCBpdCB1cCB3aXRoIHRoZSBoYXJkL3NvZnRpcnEgY29udGV4
dCBzdHVmZiB0aGF0IGxvY2tkZXAKdHJhY2tzIGFuZCBjb21wbGFpbnMgYWJvdXQgaWYgeW91IGdl
dCBpdCB3cm9uZz8KLURhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwg
SW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
