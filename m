Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D485235435
	for <lists+intel-gfx@lfdr.de>; Sat,  1 Aug 2020 21:47:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A25BB6EC05;
	Sat,  1 Aug 2020 19:47:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com
 [IPv6:2a00:1450:4864:20::62c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D91646EC05
 for <intel-gfx@lists.freedesktop.org>; Sat,  1 Aug 2020 19:47:19 +0000 (UTC)
Received: by mail-ej1-x62c.google.com with SMTP id bo3so12090860ejb.11
 for <intel-gfx@lists.freedesktop.org>; Sat, 01 Aug 2020 12:47:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Q/pr0+x3jRF6pgee1xgitBU/WDW71fZGFVLRjVWcmcA=;
 b=XiEVyEKgtPke01kznugUmOXDVkmIWAD743yQuuViGZzE55v1MGQeIsB7ddvuONnwgs
 RVKJQVcB6aILY/KrhTXIfBnPGYO/Ei6C8+MjwY550jm1HUz41o6IAvCxwsSZGhA41b/i
 W4x+FMmLupHgZQVhXeMZdpzMp+tYiDf5qndxw2Yua5Mhw9Xmk63DnFPC6YkPepRR0cbU
 LPuqT/ZQnzSSDw/tId5YvzZ94oEV3U4C1Kk8k+B9gkVHj6zOi1s+cN8f40H1eglJvy/6
 ZqxYThbAwSUdXdnz9P2Vojds6C8FNv2AxkaXVt0Xbjiy03wxp3x/Oe0eEEamBAhqy1Ix
 pV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Q/pr0+x3jRF6pgee1xgitBU/WDW71fZGFVLRjVWcmcA=;
 b=UtmH0f4ngqaTF/K9NJcpjAdp+t/sPbE3rmExYyqfTA4oeM6V8EX0xYga5DhnfnTgzs
 iEZ4DBt0Mf+VzMijbe2AioUmf6xAeHhttG2IsHhv7grX4zh2+XGsfRCvoeaJ8qLCNEhQ
 zYqx0WSetMfL/L8pO5XTRvRsj0qGizecRQ79eQvt8YCNsseQYZCDvS3LfvmBeZM5GCxp
 nt/JkcGKHMr5u8tvGtyASH2o4YY1lEZCWxx4Tdd7vkkoQc51uFSng/0x0HIkhQCfHOal
 CUyqJDVBaeomRCBFl5gQUgfac/IXG/ZkvtZypM8HMP4ppP3DD/aO4hvFh+ncPb4N9zGt
 eZyw==
X-Gm-Message-State: AOAM5308RoRD9og99oeUrvhPu60zw5E/EUGTB+mroAl8QGfmjFnUjfNr
 93rV4+AVXQuDKztLdOJhxLr9xYcXFWgqLWTDHf99XMOl
X-Google-Smtp-Source: ABdhPJyxNENnY65xZEBg+4wdDZQR18idhMfZ0ny+0WS1O2g5LOUMZ1nyX/D2+G4OlKO0586zMlmmWrLTO2ljFo5K9h4=
X-Received: by 2002:a17:906:8782:: with SMTP id
 za2mr9588619ejb.419.1596311238378; 
 Sat, 01 Aug 2020 12:47:18 -0700 (PDT)
MIME-Version: 1.0
References: <20200801182917.28991-1-chris@chris-wilson.co.uk>
In-Reply-To: <20200801182917.28991-1-chris@chris-wilson.co.uk>
From: Dave Airlie <airlied@gmail.com>
Date: Sun, 2 Aug 2020 05:47:07 +1000
Message-ID: <CAPM=9ty12emwCEi2L+fX_owNr06rehYEzeAQeMFVoYBe3TrtYw@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Subject: Re: [Intel-gfx] [CI] drm/i915/gem: Don't drop the timeline lock
 during execbuf
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU3VuLCAyIEF1ZyAyMDIwIGF0IDA0OjI5LCBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4gd3JvdGU6Cj4KPiBPdXIgdGltZWxpbmUgbG9jayBpcyBvdXIgZGVmZW5jZSBh
Z2FpbnN0IGEgY29uY3VycmVudCBleGVjYnVmCj4gaW50ZXJydXB0aW5nIG91ciByZXF1ZXN0IGNv
bnN0cnVjdGlvbi4gd2UgbmVlZCBob2xkIGl0IHRocm91Z2hvdXQgb3IsCj4gZm9yIGV4YW1wbGUs
IGEgc2Vjb25kIHRocmVhZCBtYXkgaW50ZXJqZWN0IGEgcmVsb2NhdGlvbiByZXF1ZXN0IGluCj4g
YmV0d2VlbiBvdXIgb3duIHJlbG9jYXRpb24gcmVxdWVzdCBhbmQgZXhlY3V0aW9uIGluIHRoZSBy
aW5nLgo+Cj4gQSBzZWNvbmQsIG1ham9yIGJlbmVmaXQsIGlzIHRoYXQgaXQgYWxsb3dzIHVzIHRv
IHByZXNlcnZlIGEgbGFyZ2UgY2h1bmsKPiBvZiB0aGUgcmluZ2J1ZmZlciBmb3Igb3VyIGV4Y2x1
c2l2ZSB1c2U7IHdoaWNoIHNob3VsZCB2aXJ0dWFsbHkKPiBlbGltaW5hdGUgdGhlIHRocmVhdCBv
ZiBoaXR0aW5nIGEgd2FpdF9mb3Jfc3BhY2UgZHVyaW5nIHJlcXVlc3QKPiBjb25zdHJ1Y3Rpb24g
LS0gYWx0aG91Z2ggd2Ugc2hvdWxkIGhhdmUgYWxyZWFkeSBkcm9wcGVkIG90aGVyCj4gY29udGVu
dGlvdXMgbG9ja3MgYXQgdGhhdCBwb2ludC4KCldoZW4gSSBmaXJzdCBjYW1lIGhlcmUsIHRoaXMg
d2FzIGFsbCBzd2FtcC4gRXZlcnlvbmUgc2FpZCBJIHdhcyBkYWZ0CnRvIGJ1aWxkIGEgY2FzdGxl
IG9uIGEgc3dhbXAsIGJ1dCBJIGJ1aWx0IGl0IGFsbCB0aGUgc2FtZSwganVzdCB0bwpzaG93IHRo
ZW0uIEl0IHNhbmsgaW50byB0aGUgc3dhbXAuIFNvIEkgYnVpbHQgYSBzZWNvbmQgb25lLiBBbmQg
dGhhdApvbmUgc2FuayBpbnRvIHRoZSBzd2FtcC4gU28gSSBidWlsdCBhIHRoaXJkLiBUaGF0IGJ1
cm5lZCBkb3duLCBmZWxsCm92ZXIsIGFuZCB0aGVuIHNhbmsgaW50byB0aGUgc3dhbXAuIEJ1dCB0
aGUgZm91cnRoIG9uZSBzdGF5ZWQgdXAuIEFuZAp0aGF04oCZcyB3aGF0IHlvdeKAmXJlIGdvaW5n
IHRvIGdldCwgU29uLCB0aGUgc3Ryb25nZXN0IGNhc3RsZSBpbiBhbGwgb2YKRW5nbGFuZC4KClRo
aXMgcGF0Y2ggbWFrZXMgbWUgZmVlbCB3ZSBhcmUgc29tZXdoZXJlIGJldHdlZW4gdGhlIHNlY29u
ZCBjYXN0bGUKYW5kIHRoZSBidXJuaW5nIGRvd24uCgpEYXZlLgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
