Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5672F340C1D
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Mar 2021 18:49:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF1D6E92E;
	Thu, 18 Mar 2021 17:49:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C94DB6E932
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616089792;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=X1aq07hUECvkiCM1AMjlNy/+yooAsZ6Cw/htSTkJaNo=;
 b=hrJ65Fpx+C5RxT4OA4ide1FK4gQ5xRsu5oyAFHBAictpw0Joz+QVWFyDhSf03dOO0FFeJW
 4EgcU0Q4TXlJOh2RK1vFqJwhyBWbidRGqmZfda0aasx4mb3YqTIoaupzqvgt+3FBBS0Zzn
 ZWGrpSyB+OYbvE9012fOPYBh3e0op0E=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-a0IQMTcnO_KAjsmMHG8U4g-1; Thu, 18 Mar 2021 13:49:50 -0400
X-MC-Unique: a0IQMTcnO_KAjsmMHG8U4g-1
Received: by mail-qt1-f198.google.com with SMTP id m35so17982146qtd.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Mar 2021 10:49:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=X1aq07hUECvkiCM1AMjlNy/+yooAsZ6Cw/htSTkJaNo=;
 b=CYe/FzP5K/EnMb1BFZy6XMUA28aPoZlwlnl9K/QTvkR9GsnldzfXgIziSnyJyPtew2
 weLTV5ANdDUCkfS0J8O2fpaqWi6fp2a3pSU7HexBePygYqgRWyGXCx4QaGqsrubp5a9E
 0UgMEir5Y9pv9aKlE7L2Jf03kybfLEdrDkILgcImN6JDIXplYgpA2zcG1T+hSGor6MdH
 iJbt3CVtJIMU8nH3GZ8lTbPTre2O2vBG+AjQSOtMEybT25CqPK8Em7f4zbS+c2/Jkeuw
 Nnru+aWiAM861LVld/rjHFRX1acET8dkqTuBcu8Cvi0gPxex8g6ji5Cl5wvjLAFVojGZ
 ZJ3A==
X-Gm-Message-State: AOAM53340M1atLD+3dQjbeYciFi3MxhsIUIkBlK/e6HiP/ZUg6TBnu2G
 mErmDeleWZLlRZBx3ZqPQKtFj0TSynDq4o99/gLbIaNadDdLfu3UqJFsafjUpm0flGXWgcXlXYj
 hoWEkRuRuTJTgWRYAIQkYx5lPgKFKWTUJ3xHHPUa5QHJGKUdlFJLXEMdeLfHYVw5z2PIwfqdvVH
 CB
X-Received: by 2002:a05:620a:15eb:: with SMTP id
 p11mr5374104qkm.454.1616089789455; 
 Thu, 18 Mar 2021 10:49:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy6RlaOk96Syg3NZIwU9HFylmyO+xGqvapwSiL2VZgzQaQreQr9yUIj7wRqiSeRuR3vLr6E0Q==
X-Received: by 2002:a05:620a:15eb:: with SMTP id
 p11mr5374074qkm.454.1616089789174; 
 Thu, 18 Mar 2021 10:49:49 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id m90sm1923315qte.44.2021.03.18.10.49.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Mar 2021 10:49:48 -0700 (PDT)
Message-ID: <dfec442a4888c8387a6002b0424415ee5d8be343.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Mar 2021 13:49:47 -0400
In-Reply-To: <20210318170204.513000-1-lyude@redhat.com>
References: <20210318170204.513000-1-lyude@redhat.com>
Organization: Red Hat
User-Agent: Evolution 3.38.4 (3.38.4-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dpcd_bl: Don't try vesa interface
 unless specified by VBT
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
Reply-To: lyude@redhat.com
Cc: Jani Nikula <jani.nikula@intel.com>,
 open list <linux-kernel@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Sean Paul <seanpaul@chromium.org>,
 "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
 Aaron Ma <aaron.ma@canonical.com>, Dave Airlie <airlied@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWN0dWFsbHktTkFLIHRoaXMuIEkganVzdCByZWFsaXplZCBJJ3ZlIGJlZW4gbWlzcmVhZGluZyB0
aGUgYnVnIGFuZCB0aGF0IHRoaXMKZG9lc24ndCBhY3R1YWxseSBzZWVtIHRvIGJlIGZpeGVkLiBX
aWxsIHJlc2VuZCBvbmNlIEkgZmlndXJlIG91dCB3aGF0J3MgZ29pbmcgb24KCk9uIFRodSwgMjAy
MS0wMy0xOCBhdCAxMzowMiAtMDQwMCwgTHl1ZGUgUGF1bCB3cm90ZToKPiBMb29rcyBsaWtlIHRo
YXQgdGhlcmUgYWN0dWFsbHkgYXJlIGFub3RoZXIgc3Vic2V0IG9mIGxhcHRvcHMgb24gdGhlIG1h
cmtldAo+IHRoYXQgZG9uJ3Qgc3VwcG9ydCB0aGUgSW50ZWwgSERSIGJhY2tsaWdodCBpbnRlcmZh
Y2UsIGJ1dCBkbyBhZHZlcnRpc2UKPiBzdXBwb3J0IGZvciB0aGUgVkVTQSBEUENEIGJhY2tsaWdo
dCBpbnRlcmZhY2UgZGVzcGl0ZSB0aGUgZmFjdCBpdCBkb2Vzbid0Cj4gc2VlbSB0byB3b3JrLgo+
IAo+IE5vdGUgdGhvdWdoIEknbSBub3QgZW50aXJlbHkgY2xlYXIgb24gdGhpcyAtIG9uIG9uZSBv
ZiB0aGUgbWFjaGluZXMgd2hlcmUKPiB0aGlzIGlzc3VlIHdhcyBvYnNlcnZlZCwgSSBhbHNvIG5v
dGljZWQgdGhhdCB3ZSBhcHBlYXJlZCB0byBiZSByZWplY3RpbmcKPiB0aGUgVkJUIGRlZmluZWQg
YmFja2xpZ2h0IGZyZXF1ZW5jeSBpbgo+IGludGVsX2RwX2F1eF92ZXNhX2NhbGNfbWF4X2JhY2ts
aWdodCgpLiBJdCdzIG5vdGVkIGluIHRoaXMgZnVuY3Rpb24gdGhhdDoKPiAKPiAvKiBVc2UgaGln
aGVzdCBwb3NzaWJsZSB2YWx1ZSBvZiBQbiBmb3IgbW9yZSBncmFudWxhcml0eSBvZiBicmlnaHRu
ZXNzCj4gwqAqIGFkanVzdG1lbnQgd2hpbGUgc2F0aWZ5aW5nIHRoZSBjb25kaXRpb25zIGJlbG93
Lgo+IMKgKiAuLi4KPiDCoCogLSBGeFAgaXMgd2l0aGluIDI1JSBvZiBkZXNpcmVkIHZhbHVlLgo+
IMKgKsKgwqAgTm90ZTogMjUlIGlzIGFyYml0cmFyeSB2YWx1ZSBhbmQgbWF5IG5lZWQgc29tZSB0
d2Vhay4KPiDCoCovCj4gCj4gU28gaXQncyBwb3NzaWJsZSB0aGF0IHRoaXMgdmFsdWUgbWlnaHQg
anVzdCBuZWVkIHRvIGJlIHR3ZWFrZWQsIGJ1dCBmb3Igbm93Cj4gbGV0J3MganVzdCBkaXNhYmxl
IHRoZSBWRVNBIGJhY2tsaWdodCBpbnRlcmZhY2UgdW5sZXNzIGl0J3Mgc3BlY2lmaWVkIGluCj4g
dGhlIFZCVCBqdXN0IHRvIGJlIHNhZmUuIFdlIG1pZ2h0IGJlIGFibGUgdG8gdHJ5IGVuYWJsaW5n
IHRoaXMgYWdhaW4gYnkKPiBkZWZhdWx0IGluIHRoZSBmdXR1cmUuCj4gCj4gRml4ZXM6IDIyMjc4
MTZlNjQ3YSAoImRybS9pOTE1L2RwOiBBbGxvdyBmb3JjaW5nIHNwZWNpZmljIGludGVyZmFjZXMg
dGhyb3VnaAo+IGVuYWJsZV9kcGNkX2JhY2tsaWdodCIpCj4gQ2M6IEphbmkgTmlrdWxhIDxqYW5p
Lm5pa3VsYUBpbnRlbC5jb20+Cj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVs
LmNvbT4KPiBCdWd6aWxsYTogaHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRl
bC8tL2lzc3Vlcy8zMTY5Cj4gU2lnbmVkLW9mZi1ieTogTHl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0
LmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4
X2JhY2tsaWdodC5jIHwgMSAtCj4gwqAxIGZpbGUgY2hhbmdlZCwgMSBkZWxldGlvbigtKQo+IAo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9i
YWNrbGlnaHQuYwo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXhf
YmFja2xpZ2h0LmMKPiBpbmRleCA2NTE4ODQzOTAxMzcuLjRmODMzN2M3ZmQyZSAxMDA2NDQKPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eF9iYWNrbGlnaHQu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2ts
aWdodC5jCj4gQEAgLTY0Niw3ICs2NDYsNiBAQCBpbnQgaW50ZWxfZHBfYXV4X2luaXRfYmFja2xp
Z2h0X2Z1bmNzKHN0cnVjdAo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+IMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2FzZSBJTlRFTF9CQUNLTElHSFRfRElTUExBWV9EREk6
Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdHJ5X2lu
dGVsX2ludGVyZmFjZSA9IHRydWU7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB0cnlfdmVzYV9pbnRlcmZhY2UgPSB0cnVlOwo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJyZWFrOwo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgZGVmYXVsdDoKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVOT0RFVjsKCi0tIApTaW5jZXJlbHksCiAgIEx5
dWRlIFBhdWwgKHNoZS9oZXIpCiAgIFNvZnR3YXJlIEVuZ2luZWVyIGF0IFJlZCBIYXQKICAgCk5v
dGU6IEkgZGVhbCB3aXRoIGEgbG90IG9mIGVtYWlscyBhbmQgaGF2ZSBhIGxvdCBvZiBidWdzIG9u
IG15IHBsYXRlLiBJZiB5b3UndmUKYXNrZWQgbWUgYSBxdWVzdGlvbiwgYXJlIHdhaXRpbmcgZm9y
IGEgcmV2aWV3L21lcmdlIG9uIGEgcGF0Y2gsIGV0Yy4gYW5kIEkKaGF2ZW4ndCByZXNwb25kZWQg
aW4gYSB3aGlsZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBzZW5kIG1lIGFub3RoZXIgZW1haWwgdG8g
Y2hlY2sKb24gbXkgc3RhdHVzLiBJIGRvbid0IGJpdGUhCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFp
bG1hbi9saXN0aW5mby9pbnRlbC1nZngK
