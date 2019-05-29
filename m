Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2D32DB67
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2019 13:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD1FD6E2C7;
	Wed, 29 May 2019 11:08:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com
 [IPv6:2607:f8b0:4864:20::e42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7DB5B6E2C8;
 Wed, 29 May 2019 11:08:24 +0000 (UTC)
Received: by mail-vs1-xe42.google.com with SMTP id q64so1488505vsd.1;
 Wed, 29 May 2019 04:08:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Vrq9QjFKRqOVva5uB4wN6LejKKf36hH0W7GxhY5CSeo=;
 b=YA6Bn1xQAHaWsqkbJjdnIU/MpI6NkNd0OzhStwKv6xCfZE+8MA8PN844wUoFdxVoDX
 B1plmDlVbxwIjipkaPSeT1bhl6bJNTRXjfaLhMLVIOLYzlJ/0GxPFdxxzc5tTnBuQhPl
 WhhfClJWXIVyVf5iH8CmPWRU1lX3zJBzNEK88AsmAvHd7fGDj71hs6Il5k+dYmjDSUr0
 0bdIpbPt18D9g3ImYjp3gkMBxXmj+VubJw1SW9dHsaLdJAXc+TwHaykDb35PHRSV9pS3
 igNy0Av20SIb/Fm+oWbR6yDeuuMYS1YWQH9GXt4glCqi3L4WXuYz6c1NhO8wqV665AzF
 JyZA==
X-Gm-Message-State: APjAAAX2QudVfhP7viI1HPUtCsY6OVcn9PiVu+9cmqwnTtfCdg5Ho6a7
 ace+IRrFpEtbLhJ69HiiPwu90CywrhAZK1qpbgjQ2fyr
X-Google-Smtp-Source: APXvYqwcluabAS9epnVS9BKXIZSTz3RqGejw8smHITSCErIAoFxRAHDDjipGLPjp5Mh5GRlw/qOyfOaxYyYEkCdiNN0=
X-Received: by 2002:a67:fb04:: with SMTP id d4mr129649vsr.125.1559128103539;
 Wed, 29 May 2019 04:08:23 -0700 (PDT)
MIME-Version: 1.0
References: <20190527011951.h2adglmq2g24exov@smtp.gmail.com>
 <155895198890.6190.3140856123443499779@skylake-alporthouse-com>
In-Reply-To: <155895198890.6190.3140856123443499779@skylake-alporthouse-com>
From: Rodrigo Siqueira <rodrigosiqueiramelo@gmail.com>
Date: Wed, 29 May 2019 08:08:12 -0300
Message-ID: <CADKXj+4z6L1CHiKtwtrMY+UPEA0+tEGvQ8=-jDR-rHq9j2CTLA@mail.gmail.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=Vrq9QjFKRqOVva5uB4wN6LejKKf36hH0W7GxhY5CSeo=;
 b=b89lVvlPZq6aZKHtOPaq/eG8gy/ysF+7oYOD9WMD2v8At8KRggKSCFMUo5sKqXPdqm
 TVdFjZ14lymRp7VVDwClVhse05thHnDl/q+Gc9pG72azMG8Gke98Tl10v+nhYqLA/V1J
 lkMf1Pfzn8NSoVAkfSGyzKqIxtmzKoFYA2sYUfnkdzYhwrsVdl3rfctW/1vBUEbGNBZG
 SV4zdyZsTShu4yjVGreTnrqFqpd0YtlTipqFPGp5tudIHdemAeolqxMQkD2xMqBdDzFS
 uNlpN4zVFHHRCrh+MZgbCWR/nW5PH9RfpSWP1UpSZHdnMK22nNtXCKlGm4mhsLfdiEY5
 jq+g==
Subject: Re: [Intel-gfx] [PATCH V3 i-g-t] lib: Drop __kms_addfb() wrapper
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
Cc: Simon Ser <simon.ser@intel.com>,
 IGT GPU Tools <igt-dev@lists.freedesktop.org>,
 Intel GFX ML <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgQ2hyaXMsCgpUaGFuayB5b3UgZm9yIHlvdXIgZmVlZGJhY2sgYW5kIHRoZSBleHBsYW5hdGlv
biBhYm91dCBpZ3RfaW9jdGwsIG5vdwpJJ3ZlIGdvdCBpdC4KCk9uIE1vbiwgTWF5IDI3LCAyMDE5
IGF0IDc6MTMgQU0gQ2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+IHdyb3Rl
Ogo+Cj4gUXVvdGluZyBSb2RyaWdvIFNpcXVlaXJhICgyMDE5LTA1LTI3IDAyOjE5OjUxKQo+ID4g
VGhlIGZ1bmN0aW9uIF9fa21zX2FkZGZiKCkgYW5kIGRybU1vZGVBZGRGQjJXaXRoTW9kaWZpZXJz
KCkgaGF2ZSBhCj4gPiBzaW1pbGFyIGNvZGUuIER1ZSB0byB0aGlzIHNpbWlsYXJpdHksIHRoaXMg
Y29tbWl0IHJlcGxhY2VzIGFsbCB0aGUKPiA+IG9jY3VycmVuY2VzIG9mICBfX2ttc19hZGRmYigp
IGJ5IGRybU1vZGVBZGRGQjJXaXRoTW9kaWZpZXJzKCkgYW5kIGFkZHMKPiA+IHRoZSByZXF1aXJl
ZCBhZGFwdGF0aW9ucy4KPgo+IE5vLiBUaGVyZSBpcyBhIGNyaXRpY2FsIGRpZmZlcmVuY2UgYmV0
d2VlbiB0aGUgdHdvOiBpZ3RfaW9jdGwuIFRoYXQKPiBhbGxvd3MgdXMgdG8gY29udHJvbCB0aGUg
aW9jdGwgZm9yIGVycm9yIGluamVjdGlvbiBpbnRvIHRoZSBrZXJuZWwuCj4KPiBJZiB5b3Ugd2Fu
dCB0byB0ZXN0IGxpYmRybSBBUEkgYW5kIG5vdCB0aGUga2VybmVsLCBwbGVhc2UgYWRkIHRlc3Rz
Cj4gdG8gbGliZHJtLgo+IC1DaHJpcwoKCgotLSAKClJvZHJpZ28gU2lxdWVpcmEKaHR0cHM6Ly9z
aXF1ZWlyYS50ZWNoCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
