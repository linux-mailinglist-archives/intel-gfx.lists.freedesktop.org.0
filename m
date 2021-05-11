Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04151379DC8
	for <lists+intel-gfx@lfdr.de>; Tue, 11 May 2021 05:29:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED3DC6E9A8;
	Tue, 11 May 2021 03:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from youngberry.canonical.com (youngberry.canonical.com
 [91.189.89.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF0056E9A8
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 May 2021 03:29:30 +0000 (UTC)
Received: from mail-lj1-f200.google.com ([209.85.208.200])
 by youngberry.canonical.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
 (envelope-from <kai.heng.feng@canonical.com>) id 1lgJ5N-00060X-06
 for intel-gfx@lists.freedesktop.org; Tue, 11 May 2021 03:29:29 +0000
Received: by mail-lj1-f200.google.com with SMTP id
 c41-20020a2ebf290000b02900dee6b2c595so10184350ljr.5
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 May 2021 20:29:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Qc14uHrd7ok3bpTCQZM8QvZ7aEpqowEb6J0cxGMTWnc=;
 b=iZyLr0+KZsezRxXUAXWZxTsaHRe1U1JeghJenNvHj9qrdVgVESrpLjNr1C2GS3d5zA
 YzWVCOAYj4TjaqnJlV6OtueUnjlge2aIf1ZpZiilWGNPjNaHpQbNLRTPAFsGWwvJQV3y
 r38h1qP7bX5Ajz8F/ACN5eimNipqYT8hdTu8CjioxbTGX0bKjZgihgwodgb7Yvurwh/s
 vE+7uqy1QbZtm/zKY2POTom+MQaH/mYQdMXoF8WaUDuM6HZowzUXheo5+5M+nUjhiTVx
 RCRYoT6jRLh6r+ZdAXNziggxhTVIaWoEa59vWcpgbt3args8r8BhoOH2w+/L7uA8hfi/
 yfvg==
X-Gm-Message-State: AOAM533qBY3Bx1dR+WHPYxjUXBEEmgl9S8XfqPQ/DD6Xww9LZiMBFotG
 /6BkGqmu0brhS+b3ccSf91gkK0U27O0ZDOHy8jBk6GK/pDXxMFb9hqUjSNFyr/LdnUiVwJaRCUU
 bKvGB2f7O/smSThzok3QEqXxqfMhUN5NHo2gaYAywGw5hNEUZkeGfBg2eNaeH7Q==
X-Received: by 2002:ac2:5fc9:: with SMTP id q9mr19786465lfg.290.1620703768464; 
 Mon, 10 May 2021 20:29:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxzH+1cJkgknCrugATS7oMjLNEF6uY8qV3v56NdsJMwhE8G3GCeThNfZ6X96m0eHaT8VMwXtHVKZ81ohJrJXDQ=
X-Received: by 2002:ac2:5fc9:: with SMTP id q9mr19786447lfg.290.1620703768156; 
 Mon, 10 May 2021 20:29:28 -0700 (PDT)
MIME-Version: 1.0
References: <20210107182026.24848-1-ville.syrjala@linux.intel.com>
 <X/yY3Tvk8gq+Eg8W@intel.com>
 <CABpPkAEVbSUwoBqXDaKpckbfkq4-z=MWNC27JYOLki3FhN0PyA@mail.gmail.com>
 <3349345.6yYDney9BF@xps>
In-Reply-To: <3349345.6yYDney9BF@xps>
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
Date: Tue, 11 May 2021 11:29:15 +0800
Message-ID: <CAAd53p4ZTBtV0KhmvnoJ1abp0b6xx2hC-grGzr2tx+AURQoOmQ@mail.gmail.com>
To: Albert Astals Cid <aacid@kde.org>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Try to use fast+narrow link
 on eDP again and fall back to the old max strategy on failure
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
Cc: Matteo Iervasi <matteoiervasi@gmail.com>,
 Jani Nikula <jani.nikula@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Emanuele Panigati <ilpanich@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBNYXkgMTEsIDIwMjEgYXQgMjowNiBBTSBBbGJlcnQgQXN0YWxzIENpZCA8YWFjaWRA
a2RlLm9yZz4gd3JvdGU6Cj4KPiBZZXMsIEkgYWxzbyBoYXZlIHRoZSBzYW1lLgo+Cj4gSSBnaXQg
YmlzZWN0ZWQgdGhhdCBhbmQgZm91bmQgdGhpcyB0byBiZSB0aGUgY2F1c2UsIGkgc3RhcnRlZCBh
IG5ldyBlbWFpbCB0aHJlYWQgYmVjYXVzZSBpIGNvdWxkbid0IGZpbmQgdGhpcyBlbWFpbCBeX14K
ClNob3VsZCBiZSBmaXhlZCBieQpodHRwczovL2NnaXQuZnJlZWRlc2t0b3Aub3JnL2RybS10aXAv
Y29tbWl0Lz9pZD1hY2NhNzc2MmViNzFiYzA1YThmMjhkMjkzMjBkMTkzMTUwMDUxZjc5CgpLYWkt
SGVuZwoKPgo+IENoZWVycywKPiAgIEFsYmVydAo+Cj4gRWwgZGlsbHVucywgMTAgZGUgbWFpZyBk
ZSAyMDIxLCBhIGxlcyAxMDowNzozMyAoQ0VTVCksIEVtYW51ZWxlIFBhbmlnYXRpIHZhIGVzY3Jp
dXJlOgo+ID4gSGksCj4gPiAgIG9uIG15IERlbGwgWFBTIDE1IDk1NzAgbGFwdG9wIEkgbWlnaHQg
aGF2ZSBhIHJlZ3Jlc3Npb24gd2l0aCBBcmNoIExpbnV4Cj4gPiAoa2VybmVsIDUuMTIuMi1hcmNo
MS0xOiBkdXJpbmcgYm9vdCB0aGUgbGFwdG9wIG1vbml0b3IgZ29lcyBibGFjayB3aGlsZQo+ID4g
ZXh0ZXJuYWwgbW9uaXRvcnMgc3RpbGwgd29ya3MuLi4KPiA+Cj4gPgo+ID4gUGFuaWNoCj4gPgo+
ID4KPiA+IElsIGdpb3JubyBsdW4gMTEgZ2VuIDIwMjEgYWxsZSBvcmUgMTk6MjggVmlsbGUgU3ly
asOkbMOkIDwKPiA+IHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPiBoYSBzY3JpdHRvOgo+
ID4KPiA+ID4gT24gVGh1LCBKYW4gMDcsIDIwMjEgYXQgMDg6MjA6MjVQTSArMDIwMCwgVmlsbGUg
U3lyamFsYSB3cm90ZToKPiA+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPgo+ID4gPiA+Cj4gPiA+ID4gU29tZSBuZXcgZURQIHBhbmVscyBk
b24ndCBsaWtlIHRvIG9wZXJhdGUgYXQgdGhlIG1heCBwYXJhbWV0ZXJzLCBhbmQKPiA+ID4gPiBp
bnN0ZWFkIHdlIG5lZWQgdG8gZ28gZm9yIGFuIG9wdGltYWwgY29uZml1Z3JhdGlvbi4gVGhhdCB1
bmZvcnR1bmF0ZWx5Cj4gPiA+ID4gZG9lc24ndCB3b3JrIHdpdGggb2xkZXIgZURQIHBhbmVscyB3
aGljaCBhcmUgZ2VuZXJhbGx5IG9ubHkgZ3VhcmFudGVlZAo+ID4gPiA+IHRvIHdvcmsgYXQgdGhl
IG1heCBwYXJhbWV0ZXJzLgo+ID4gPiA+Cj4gPiA+ID4gVG8gc29sdmUgdGhlc2UgdHdvIGNvbmZs
aWN0aW5nIHJlcXVpcmVtZW50cyBsZXQncyBzdGFydCB3aXRoIHRoZSBvcHRpbWFsCj4gPiA+ID4g
c2V0dXAsIGFuZCBpZiB0aGF0IGZhaWxzIHdlIHN0YXJ0IGFnYWluIHdpdGggdGhlIG1heCBwYXJh
bWV0ZXJzLiBUaGUKPiA+ID4gPiBkb3duc2lkZSBpcyBwcm9iYWJseSBhbiBleHRyYSBtb2Rlc2V0
IHdoZW4gd2Ugc3dpdGNoIHN0cmF0ZWdpZXMgYnV0Cj4gPiA+ID4gSSBkb24ndCBzZWUgYSBnb29k
IHdheSB0byBhdm9pZCB0aGF0Lgo+ID4gPiA+Cj4gPiA+ID4gRm9yIGEgYml0IG9mIGhpc3Rvcnkg
d2UgZmlyc3QgdHJpZWQgdG8gZ28gZm9yIHRoZSBmYXN0K25hcnJvdyBpbgo+ID4gPiA+IGNvbW1p
dCA3NzY5ZGI1ODgzODQgKCJkcm0vaTkxNS9kcDogb3B0aW1pemUgZURQIDEuNCsgbGluayBjb25m
aWcKPiA+ID4gPiBmYXN0IGFuZCBuYXJyb3ciKS4gYnV0IHRoYXQgaGFkIHRvIGJlIHJldmVydGVk
IGR1ZSB0byByZWdyZXNzaW9uCj4gPiA+ID4gb24gb2xkZXIgcGFuZWxzIGluIGNvbW1pdCBmMTFj
YjFjMTlhZDAgKCJkcm0vaTkxNS9kcDogcmV2ZXJ0IGJhY2sKPiA+ID4gPiB0byBtYXggbGluayBy
YXRlIGFuZCBsYW5lIGNvdW50IG9uIGVEUCIpLiBTbyBub3cgd2UgdHJ5IHRvIGdldAo+ID4gPiA+
IHRoZSBiZXN0IG9mIGJvdGggd29ybGRzIGJ5IHVzaW5nIGJvdGggc3RyYXRlZ2llcy4KPiA+ID4K
PiA+ID4gUHVzaGVkLiBGaW5nZXJzIGNyb3NzZWQgZm9yIG5vIHJlZ3Jlc3Npb25zLi4uCj4gPiA+
Cj4gPiA+IC0tCj4gPiA+IFZpbGxlIFN5cmrDpGzDpAo+ID4gPiBJbnRlbAo+ID4gPgo+ID4KPgo+
Cj4KPgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
