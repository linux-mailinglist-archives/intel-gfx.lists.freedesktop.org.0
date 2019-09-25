Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACC83BE565
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2019 21:11:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 485BD6EEEF;
	Wed, 25 Sep 2019 19:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com
 [205.139.110.61])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DBB6E057
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 19:11:00 +0000 (UTC)
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-264-2U01XctoOQ6YZDAW96hYdw-1; Wed, 25 Sep 2019 15:10:53 -0400
Received: by mail-qk1-f200.google.com with SMTP id k67so7261568qkc.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2019 12:10:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=62dwixw1TVUqmQpy0dEAbmg1dKirZ9BTTZ/xPasxv7w=;
 b=LGbs5KHi0O4kvwhG/ps3Eye8//2vTBHMfyCnwH16obnqzMEs8Q4l4UC4nuq5Ywtx37
 RAwi9SzowSRxizO2XezFn64rlGIjrX49mcwqujrrgRokXMAm6jS24ifolYHlPMB+B3v1
 YCXXAWcvh4B08isY4GcLgAEmNicm//nf67EqGJ8EeNTSQevnWHlUMnNlfnl9IXZgMZ+u
 TDQf7S1rKTxJbAivT5sMnAFDO/9f/Ovsde9ROiUV439pFaL8+rs21GIQxVhMnqJY82Vn
 3/Shx4yJ30HJYSI7W2KV8x5JWPBW8kuY3hDT111PD1bxjvQqBR85CT14CIgJ3tDICGc/
 lT/A==
X-Gm-Message-State: APjAAAWWzS1ASdMeMIMxiZ6wNd7u+FFONv9F+7CowJwtT+KAf6A516Fp
 WQ/MMK7x5cGJLBQ3q2Y5T3rdC8P483+WKsbrxxW1EFiGwrvkQHVGA0HFaQrpQuXTLqVPaA41lR+
 GG3Di+c8m079hZiXtLYKH1RXt1Py1
X-Received: by 2002:ac8:4293:: with SMTP id o19mr1000210qtl.138.1569438652968; 
 Wed, 25 Sep 2019 12:10:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy5X/ayjLC6F72bAgUlcHOuQ1hiUgngIVlsIsuehJbNMyaLHmKnJxZ/HdUAQS2prInNhkNhHw==
X-Received: by 2002:ac8:4293:: with SMTP id o19mr1000194qtl.138.1569438652696; 
 Wed, 25 Sep 2019 12:10:52 -0700 (PDT)
Received: from dhcp-10-20-1-34.bss.redhat.com ([144.121.20.162])
 by smtp.gmail.com with ESMTPSA id l48sm340251qtb.50.2019.09.25.12.10.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 12:10:51 -0700 (PDT)
Message-ID: <3fa09bd0ce97546afc1077d4a7a11122bb7dcbdf.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 dri-devel@lists.freedesktop.org
Date: Wed, 25 Sep 2019 15:10:51 -0400
In-Reply-To: <20190925141442.23236-1-ville.syrjala@linux.intel.com>
References: <20190925141442.23236-1-ville.syrjala@linux.intel.com>
Organization: Red Hat
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30)
MIME-Version: 1.0
X-MC-Unique: 2U01XctoOQ6YZDAW96hYdw-1
X-Mimecast-Spam-Score: 0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=redhat.com; 
 s=mimecast20190719; t=1569438659;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fNetGW2Ksc9fNsF/xxuQamV/7i9Uwf2Od7tIUzpCNFY=;
 b=L1ws0wmsGuX0JlNc2iTbwSqhGH2FZgdMeIxThSimhH2YPGtehM3dCoo5xFfTmrCiI7svl/
 rh/zjOZgqaHMNmMqytQqHbHYv0beyhPhjaSG2MafxyOBMK3w64JNaYDgUcL1yiViy2NTfU
 Qd6H0FzjXd+Kg83WABBOROmG+rmRkrY=
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/dp/mst: Reduce nested ifs
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UmV2aWV3ZWQtYnk6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+CgpPbiBXZWQsIDIwMTkt
MDktMjUgYXQgMTc6MTQgKzAzMDAsIFZpbGxlIFN5cmphbGEgd3JvdGU6Cj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAKPiBSZXBsYWNlIHRo
ZSBuZXN0ZWQgaWZzIHdpdGggYSBzaW5nbGUgaWYgYW5kIGEgbG9naWNhbCBBTkQuCj4gCj4gQ2M6
IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5jb20+Cj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9n
cHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYyB8IDEwICsrKysrLS0tLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiAKPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IGIvZHJpdmVycy9ncHUvZHJt
L2RybV9kcF9tc3RfdG9wb2xvZ3kuYwo+IGluZGV4IDk3MjE2MDk5YTcxOC4uZTI1NTk3ZWIzY2Ex
IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9kcm1fZHBfbXN0X3RvcG9sb2d5LmMKPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX2RwX21zdF90b3BvbG9neS5jCj4gQEAgLTExMjMsMTEg
KzExMjMsMTEgQEAgc3RhdGljIHZvaWQgZHJtX2RwX21zdF9wdXRfcGF5bG9hZF9pZChzdHJ1Y3QK
PiBkcm1fZHBfbXN0X3RvcG9sb2d5X21nciAqbWdyLAo+ICAJY2xlYXJfYml0KHZjcGkgLSAxLCAm
bWdyLT52Y3BpX21hc2spOwo+ICAKPiAgCWZvciAoaSA9IDA7IGkgPCBtZ3ItPm1heF9wYXlsb2Fk
czsgaSsrKSB7Cj4gLQkJaWYgKG1nci0+cHJvcG9zZWRfdmNwaXNbaV0pCj4gLQkJCWlmIChtZ3It
PnByb3Bvc2VkX3ZjcGlzW2ldLT52Y3BpID09IHZjcGkpIHsKPiAtCQkJCW1nci0+cHJvcG9zZWRf
dmNwaXNbaV0gPSBOVUxMOwo+IC0JCQkJY2xlYXJfYml0KGkgKyAxLCAmbWdyLT5wYXlsb2FkX21h
c2spOwo+IC0JCQl9Cj4gKwkJaWYgKG1nci0+cHJvcG9zZWRfdmNwaXNbaV0gJiYKPiArCQkgICAg
bWdyLT5wcm9wb3NlZF92Y3Bpc1tpXS0+dmNwaSA9PSB2Y3BpKSB7Cj4gKwkJCW1nci0+cHJvcG9z
ZWRfdmNwaXNbaV0gPSBOVUxMOwo+ICsJCQljbGVhcl9iaXQoaSArIDEsICZtZ3ItPnBheWxvYWRf
bWFzayk7Cj4gKwkJfQo+ICAJfQo+ICAJbXV0ZXhfdW5sb2NrKCZtZ3ItPnBheWxvYWRfbG9jayk7
Cj4gIH0KLS0gCkNoZWVycywKCUx5dWRlIFBhdWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeA==
