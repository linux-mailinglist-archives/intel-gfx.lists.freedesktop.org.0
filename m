Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB8C3244C6
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Feb 2021 20:52:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA1F6E07D;
	Wed, 24 Feb 2021 19:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com
 [IPv6:2a00:1450:4864:20::234])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DF33C6E07D
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 19:52:50 +0000 (UTC)
Received: by mail-lj1-x234.google.com with SMTP id h4so3646185ljl.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Feb 2021 11:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=hardline-pl.20150623.gappssmtp.com; s=20150623;
 h=mime-version:content-transfer-encoding:in-reply-to:references:from
 :to:subject:date:message-id:user-agent;
 bh=HPlJjJOaxILBKbiJuKEDLVTdWotVFKB3f2YgxnD8GEQ=;
 b=Vn1FV/sm/pf2DGf+m7eR4+yMaxr1jOvelutCRe+4YLJlBIrR9q6nm+oj7mvodaJ1Tn
 gluV/ncGaCXDnTZWxxdLyqsATv8ckTZCagVcSjcDJ9jdeDfBeUH8H+4IZ2dl6gCbQdTH
 Emr/yqgPiCriTpVFwMRwYxzPWbS7Wvm/KYeG5Jem5FKLz4ZQDUHML6pw7Kv5APL7uA7R
 weyXR0JL1ZQjQ7z2LYXhNbyhwBGtdZnaDbLbVnA47r1oGZXRy3Y8fM3y0MG/WK2zZH1e
 PHAQXEB/ZDfHc2SZR2RU4wkynxJ4KzVAz8c4BNKGMoP0ZeqVPGs14f1p8hZC9MD1dI2L
 SAFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:content-transfer-encoding
 :in-reply-to:references:from:to:subject:date:message-id:user-agent;
 bh=HPlJjJOaxILBKbiJuKEDLVTdWotVFKB3f2YgxnD8GEQ=;
 b=lsOIXXtUD1nfeJ7hGp9KV9bOYEaxtIJjyFocQjauqs4xy+7+d2c9tE4ZCZKtztkGC2
 ZrL8IIk4n0PoLNu7pwPV8ALvH2i73tcGtjhDT0SNfgnC4zmHGUAvkssKsaHdyy7jB+1Y
 /7nj76LHuT23D8pMjthSJIbRphavxrSOg4/9Vfc0R7ie5/ABtOaV9sEKrmCZD3oTumfU
 cFykD5cnoMBp7MQHjVHvopewOZCKovCePSWnIbwLtvG/6/3xxBydeQ2+OLZDRVgrchWT
 vDLtZ1XJbHGBYmG5DxL1aeAocdve2jx6p8dIb++vFNM5kDlyfaI+pd814KNiMk/1TsGp
 +OIQ==
X-Gm-Message-State: AOAM531Y1tv3FRlB93tk3xIkePTU9S/Jk3XOklDwFcmE1xs5+osuSF+A
 6F0UZ48g3SugVddwhjcao0FeGg==
X-Google-Smtp-Source: ABdhPJwmahiKZ3mW3Rf5Z7BrKge4SxsPkwzuuSWcQ1KaTml4t0tmvE3GxyFsHhgveJTMe8UHSWFv8g==
X-Received: by 2002:a05:651c:103c:: with SMTP id
 w28mr20486483ljm.101.1614196369189; 
 Wed, 24 Feb 2021 11:52:49 -0800 (PST)
Received: from localhost (host-109-233-88-32.jmdi.pl. [109.233.88.32])
 by smtp.gmail.com with ESMTPSA id u11sm685199lfg.275.2021.02.24.11.52.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 24 Feb 2021 11:52:48 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20210220124443.1920-1-michal.wajdeczko@intel.com>
References: <20210220124443.1920-1-michal.wajdeczko@intel.com>
From: =?utf-8?q?Micha=C5=82?= Winiarski <michal@hardline.pl>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
Date: Wed, 24 Feb 2021 20:52:47 +0100
Message-ID: <161419636740.7475.6372357868790583863@macragge.hardline.pl>
User-Agent: alot/0.9.1
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Keep strict GuC ABI
 definitions separate
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UXVvdGluZyBNaWNoYWwgV2FqZGVjemtvICgyMDIxLTAyLTIwIDEzOjQ0OjQzKQo+IE91ciBmd2lm
LmggZmlsZSBpcyBub3cgbWl4IG9mIHN0cmljdCBmaXJtd2FyZSBBQkkgZGVmaW5pdGlvbnMgYW5k
Cj4gc2V0IG9mIG91ciBoZWxwZXJzLiBJbiBhbnRpY2lwYXRpb24gb2YgdXBjb21pbmcgY2hhbmdl
cyB0byB0aGUgR3VDCj4gaW50ZXJmYWNlIHRyeSB0byBrZWVwIHRoZW0gc2VwYXJhdGUgaW4gc21h
bGxlciBtYWludGFpbmFibGUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1ieTogTWljaGFsIFdhamRl
Y3prbyA8bWljaGFsLndhamRlY3prb0BpbnRlbC5jb20+Cj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBT
cHVyaW8gPGRhbmllbGUuY2VyYW9sb3NwdXJpb0BpbnRlbC5jb20+Cj4gQ2M6IEpvaG4gSGFycmlz
b24gPGpvaG4uYy5oYXJyaXNvbkBpbnRlbC5jb20+Cj4gQ2M6IEpvbiBFd2lucyA8am9uLmV3aW5z
QGludGVsLmNvbT4KClJldmlld2VkLWJ5OiBNaWNoYcWCIFdpbmlhcnNraSA8bWljaGFsLndpbmlh
cnNraUBpbnRlbC5jb20+CgotTWljaGHFggoKPiAtLS0KPiAgLi4uL2dwdS9kcm0vaTkxNS9ndC91
Yy9hYmkvZ3VjX2FjdGlvbnNfYWJpLmggIHwgIDU1ICsrKysKPiAgLi4uL2d0L3VjL2FiaS9ndWNf
Y29tbXVuaWNhdGlvbl9jdGJfYWJpLmggICAgIHwgMTA2ICsrKysrKysrCj4gIC4uLi9ndC91Yy9h
YmkvZ3VjX2NvbW11bmljYXRpb25fbW1pb19hYmkuaCAgICB8ICA1MiArKysrCj4gIC4uLi9ncHUv
ZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19lcnJvcnNfYWJpLmggICB8ICAxNCArCj4gIC4uLi9kcm0v
aTkxNS9ndC91Yy9hYmkvZ3VjX2xvZ19idWZmZXJfYWJpLmggICB8ICA1NiArKysrCj4gIC4uLi9n
cHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19tZXNzYWdlc19hYmkuaCB8ICAyMSArKwo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfZndpZi5oICAgfCAyNTcgKy0tLS0tLS0t
LS0tLS0tLS0tCj4gIDcgZmlsZXMgY2hhbmdlZCwgMzEyIGluc2VydGlvbnMoKyksIDI0OSBkZWxl
dGlvbnMoLSkKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2FiaS9ndWNfYWN0aW9uc19hYmkuaAo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19jb21tdW5pY2F0aW9uX2N0Yl9hYmkuaAo+ICBjcmVhdGUg
bW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvdWMvYWJpL2d1Y19jb21tdW5pY2F0
aW9uX21taW9fYWJpLmgKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2FiaS9ndWNfZXJyb3JzX2FiaS5oCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC91Yy9hYmkvZ3VjX2xvZ19idWZmZXJfYWJpLmgKPiAgY3JlYXRlIG1v
ZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2FiaS9ndWNfbWVzc2FnZXNfYWJp
LmgKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
