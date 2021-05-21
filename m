Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E37938C729
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 14:54:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71DD26E4FB;
	Fri, 21 May 2021 12:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F3EBB6E4E8
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 12:54:15 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id j14so19234331wrq.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 05:54:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=FJZtfLgsMzPpeEGC1nWMm7W+KSm1MH2DLYlMQ7WHt1A=;
 b=sFGpdh1dbpP8JSKR1U5AOEieSm0E4tGRK55RIlKzhpUYYD3nZXIvDR2brLKqPzRu0u
 zIyVfraBuh1c5fIsX1HMBxFUVwKD2R3qnFutX1JtHyW0NlRGTH0uvf832I4g8nhP0T/a
 mwwiDfknsZS7vuFFEi2KwIiHPPS1XkXKy3DnGSkiBlVJybTzdOZFR5fgrpIqzn5vP+UJ
 /kAfrcH2cZLJ8QhLo3Wg5w2a8TqB6b28BhglC7vyL8r099YlZraIJYospyDMT/v3U0MH
 u/USku+abTJL2De2pHeCfruVuOdK4CBydA07Cv6yLoBnuDbtwx0km2WGWDWNiPW8kci0
 fl9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=FJZtfLgsMzPpeEGC1nWMm7W+KSm1MH2DLYlMQ7WHt1A=;
 b=WgQAduN5WGT6xvdJ+ag44eE10exyrwRSIxYbV7QfZ6jCnWJOurp06iznUWjq4LBnjb
 u+7wRR0bNUNHz8RlV8fg0NnqZ7Tzv5kVXo1nLBhNTTzYGBTk3MWB8YMlY8V4/Yj2+sel
 W2g/zVohVR/oXbHZwYt2zyCVZdCr3k1Oezj+rFgEzCSpPdkpDUhlMNo2x/IrMeAhOwwa
 repqpMRV5VLULGm2EkVusl4KjYpOw51Bll1Hbesy7Rr0dQG//gDTFabYgp7vIp6i2YYa
 QhOlVN1iiXLDB7pQHgVtm38GfUBXHpTDeYQZz+p+SXfri8fU0ietUE6amrGSku27dy+n
 JfEA==
X-Gm-Message-State: AOAM530IW/qGKe24Yri0keyNMUskQqV3wmKieI+iObEGdqW6uUEQd0Ej
 oK/tmmIZ+/HU05xWFMM+AhOoszijX3WmvXeI7Gml9w==
X-Google-Smtp-Source: ABdhPJwl27bN4Oz12Tnt6vIx/LxywSl8190UB/7R09nMwblbNvh85dxGlpNGkieI1QeXVqDFLBux5vHjGvOpKZOK43M=
X-Received: by 2002:a5d:570c:: with SMTP id a12mr9289625wrv.354.1621601654629; 
 Fri, 21 May 2021 05:54:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
 <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
 <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
In-Reply-To: <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 13:54:03 +0100
Message-ID: <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
To: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
Subject: Re: [Intel-gfx] [Linaro-mm-sig] [PATCH 04/11] drm/panfrost: Fix
 implicit sync
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
Cc: Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 "open list:DMA BUFFER SHARING FRAMEWORK" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxMzoyOCwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyMS4wNS4yMSB1bSAxNDoyMiBzY2hyaWViIERh
bmllbCBTdG9uZToKPiA+IFllYWgsIHRoZSAnc2Vjb25kLWdlbmVyYXRpb24gVmFsaGFsbCcgR1BV
cyBjb21pbmcgbGF0ZXIgdGhpcyB5ZWFyIC8KPiA+IGVhcmx5IG5leHQgeWVhciBhcmUgc3RhcnRp
bmcgdG8gZ2V0IHByZXR0eSB3ZWlyZC4gRmlybXdhcmUtbWVkaWF0ZWQKPiA+IGpvYiBzY2hlZHVs
aW5nIG91dCBvZiBtdWx0aXBsZSBxdWV1ZXMsIHVzZXJzcGFjZSBoYXZpbmcgZGlyZWN0IGFjY2Vz
cwo+ID4gdG8gdGhlIHF1ZXVlcyBhbmQgY2FuIGRvIGludGVyLXF1ZXVlIHN5bmNocm9uaXNhdGlv
biAoYXQgbGVhc3QgSSB0aGluawo+ID4gc28pLCBldGMuIEZvciBib251cyBwb2ludHMsIHN5bmNo
cm9uaXNhdGlvbiBpcyBiYXNlZCBvbiAkYWRkciA9ICR2YWwKPiA+IHRvIHNpZ25hbCBhbmQgJGFk
ZHIgPT0gJHZhbCB0byB3YWl0LCB3aXRoIGEgc2VwYXJhdGUgZmVuY2UgcHJpbWl0aXZlCj4gPiBh
cyB3ZWxsLgo+Cj4gV2VsbCB0aGF0IHNvdW5kcyBmYW1pbGlhciA6KQoKSSBsYXVnaGVkIHdoZW4g
SSBmaXJzdCBzYXcgaXQsIGJlY2F1c2UgaXQgd2FzIGJldHRlciB0aGFuIGNyeWluZyBJIGd1ZXNz
LgoKSWYgeW91J3JlIGN1cmlvdXMsIHRoZSBpbnRlcmZhY2UgZGVmaW5pdGlvbnMgYXJlIGluIHRo
ZSBjc2YvIGRpcmVjdG9yeQppbiB0aGUgJ0JpZnJvc3Qga2VybmVsIGRyaXZlcicgcjMwcDAgZG93
bmxvYWQgeW91IGNhbiBnZXQgZnJvbSB0aGUgQXJtCmRldmVsb3BlciBzaXRlLiBVbmZvcnR1bmF0
ZWx5IHRoZSBleGFjdCBzZW1hbnRpY3MgYXJlbid0IGNvbXBsZXRlbHkKY2xlYXIuCgo+ID4gT2J2
aW91c2x5IEFybSBzaG91bGQgYmUgcGFydCBvZiB0aGlzIGNvbnZlcnNhdGlvbiBoZXJlLCBidXQg
SSBndWVzcwo+ID4gd2UnbGwgaGF2ZSB0byB3YWl0IGZvciBhIHdoaWxlIHlldCB0byBzZWUgaG93
IGV2ZXJ5dGhpbmcncyBzaGFrZW4gb3V0Cj4gPiB3aXRoIHRoaXMgbmV3IGdlbiwgYW5kIGhvcGUg
dGhhdCB3aGF0ZXZlcidzIGJlZW4gZGVzaWduZWQgdXBzdHJlYW0gaW4KPiA+IHRoZSBtZWFudGlt
ZSBpcyBhY3R1YWxseSB2YWd1ZWx5IGNvbXBhdGlibGUgLi4uCj4KPiBZZWFoLCBnb2luZyB0byBr
ZWVwIHlvdSBpbiBDQyB3aGVuIHdlIHN0YXJ0IHRvIGNvZGUgYW5kIHJldmlldyB1c2VyIGZlbmNl
cy4KCkF3ZXNvbWUsIHRoYW5rcyBDaHJpc3RpYW4uIEFwcHJlY2lhdGUgaXQuIDopCgpDaGVlcnMs
CkRhbmllbApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
