Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2406750EBA
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2019 16:41:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E9DE189BFE;
	Mon, 24 Jun 2019 14:41:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0968E89BFB
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 14:41:10 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id a14so22101652edv.12
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2019 07:41:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=Id16jTAR+a6z2+573azIFdyB20unByGhrbQYAxznKNk=;
 b=sDzYqfwbhMOGiJoUjWfQSjchB2VIxgxQlkmnuqyP4yD5GZ7OaPk3Y+Y7X82Ffa9XCq
 V7tDMAN1X5SX9Tnlf6a3cvkf94+W3U5gGG3KkfXdnjSzes+B7w39WoaNL18Ji4Y8K+KE
 kuVXvvboQEmzU3mYlFZkuGLMXFOikh6quJ36rRtvk0ZhhW28jPBlcXpDHa5w+rD4HJkx
 9vLQBDTHgPHhldAmNZS5ItSfurvdSq4XSwBWGYBriPaCehHCWW4eQJvbvLeovZkFNtOi
 Iyr81nQz+BTYkRKSY7He+xcbIIODtCI9Q1Y72xouuiDJftN9FF1pmejAC7DOml5k49Qv
 w42A==
X-Gm-Message-State: APjAAAX2n689ncJOYq5c8e9gwHJYPNSie54Zqc4LEmYLBX0Hykyw3jq1
 GmrP6LKUe0kFmBHkcNhVZfR+4A==
X-Google-Smtp-Source: APXvYqzCCS2wriHVUiLdEP4MgGh/j53axpzUbEFMtXuQ4BPfyRpqQ2tfSMEgGd7pLBp3sLX0/DlcQA==
X-Received: by 2002:a17:906:f0e:: with SMTP id
 z14mr2341148eji.290.1561387268672; 
 Mon, 24 Jun 2019 07:41:08 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id d1sm1937073ejc.72.2019.06.24.07.41.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 24 Jun 2019 07:41:07 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:41:05 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: christian.koenig@amd.com
Message-ID: <20190624144105.GR12905@phenom.ffwll.local>
References: <20190618115455.1253-1-christian.koenig@amd.com>
 <20190621092022.GB12905@phenom.ffwll.local>
 <46bc08a3-1b84-c819-dbb5-882e95ab23e5@gmail.com>
 <CAKMK7uE6NUujY0ubOYkux-StOxMT-hYhBdAnQJkDsgEkuDjH9g@mail.gmail.com>
 <78db8951-2e62-2a9d-3d87-3b458fbba880@gmail.com>
 <20190621162753.GI12905@phenom.ffwll.local>
 <4d868c4c-cc00-bfa9-b6f5-969b76497cab@amd.com>
 <1d4f3779-8dc8-14ad-4d20-f7ccee7cea53@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1d4f3779-8dc8-14ad-4d20-f7ccee7cea53@gmail.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=Id16jTAR+a6z2+573azIFdyB20unByGhrbQYAxznKNk=;
 b=kEZ5xTxccbMGLBuau4QjfZy16CE+1Ps4neIyzMCB7FL6z+gGPHMTA8O7a2mng2qYX2
 PKY/LkKBvBKlyYzkIKcealN/txEuzFiVQkYdemL9+TIB3dfSakbBQJ1F4QhpN8+qW3uB
 M72JJCUqsLjCyi+Zkq2uvYHoJDw5DDu+xx1Fo=
Subject: Re: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling
 v10
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
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDM6NTg6MDBQTSArMDIwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBBbSAyNC4wNi4xOSB1bSAxMzoyMyBzY2hyaWViIEtvZW5pZywgQ2hyaXN0aWFu
Ogo+ID4gQW0gMjEuMDYuMTkgdW0gMTg6Mjcgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+ID4gCj4g
PiA+IFNvIEkgcG9uZGVyZWQgYSBmZXcgaWRlYXMgd2hpbGUgd29ya2luZyBvdXQ6Cj4gPiA+IAo+
ID4gPiAxKSBXZSBkcm9wIHRoaXMgZmlsdGVyaW5nLiBJbXBvcnRlciBuZWVkcyB0byBrZWVwIHRy
YWNrIG9mIGFsbCBpdHMKPiA+ID4gbWFwcGluZ3MgYW5kIGZpbHRlciBvdXQgaW52YWxpZGF0ZXMg
dGhhdCBhcmVuJ3QgZm9yIHRoYXQgc3BlY2lmaWMgaW1wb3J0ZXIKPiA+ID4gKGVpdGhlciBiZWNh
dXNlIGFscmVhZHkgaW52YWxpZGF0ZWQsIG9yIG5vdCB5ZXQgbWFwcGVkLCBvciB3aGF0ZXZlciku
Cj4gPiA+IEZlZWxzIGZyYWdpbGUuCj4gPiA+IAo+ID4gPiBbU05JUF0KPiA+IFtTTklQXQo+ID4g
Cj4gPiBJIHdpbGwgdGFrZSBhIG1vbWVudCBhbmQgbG9vayBpbnRvICMxIGFzIHdlbGwsIGJ1dCBJ
IHN0aWxsIGRvbid0IHNlZSB0aGUKPiA+IG5lZWQgdG8gY2hhbmdlIGFueXRoaW5nLgo+IAo+IFRo
YXQgdHVybmVkIG91dCBtdWNoIGNsZWFuZXIgdGhhbiBJIHRob3VnaHQgaXQgd291bGQgYmUuIEVz
c2VudGlhbGx5IGl0IGlzCj4gb25seSBhIHNpbmdsZSBleHRyYSBsaW5lIG9mIGNvZGUgaW4gYW1k
Z3B1Lgo+IAo+IEdvaW5nIHRvIHNlbmQgdGhhdCBvdXQgYXMgYSBwYXRjaCBzZXQgaW4gYSBtaW51
dGUuCgpZZWFoIEkgbWVhbiBraW5kYSBleHBlY3RlZCB0aGF0IGJlY2F1c2U6Ci0gZXZlcnl0aGlu
ZydzIHByb3RlY3RlZCB3aXRoIHd3X211dGV4IGFueXdheQotIGltcG9ydGVyIG5lZWRzIHRvIGtl
ZXAgdHJhY2sgb2YgbWFwcGluZ3MgYW53YXlzClNvIHJlYWxseSBhbGwgaXQgbmVlZHMgdG8gZG8g
aXMgbm90IGJlIHN0dXBpZCBhbmQgYWRkIHRoZSBtYXBwaW5nIGl0IGp1c3QKY3JlYXRlZCB0byBp
dHMgdHJhY2tpbmcgd2hpbGUgc3RpbGwgaG9sZGluZyB0aGUgd3dfbXV0ZXguIFNpbWlsYXIgb24K
aW52YWxpZGF0ZS91bm1hcC4KCldpdGggdGhhdCBhbGwgd2UgbmVlZCBpcyBhIGh1Z2Ugbm90ZSBp
biB0aGUgZG9jcyB0aGF0IGltcG9ydGVycyBuZWVkIHRvCmtlZXAgdHJhY2sgb2YgdGhlaXIgbWFw
cGluZ3MgYW5kIGR0cnQgKHdpdGggYWxsIHRoZSBleGFtcGxlcyBoZXJlIHNwZWxsZWQKb3V0IGlu
IHRoZSBhcHByb3ByaWF0ZSBrZXJuZWxkb2MpLiBBbmQgdGhlbiBJJ20gaGFwcHkgOi0pCgpDaGVl
cnMsIERhbmllbAotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVlciwgSW50ZWwgQ29y
cG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4v
bGlzdGluZm8vaW50ZWwtZ2Z4
