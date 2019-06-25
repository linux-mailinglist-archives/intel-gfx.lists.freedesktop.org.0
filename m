Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A4A685538B
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Jun 2019 17:37:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A67F88E7E;
	Tue, 25 Jun 2019 15:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3712C88E7E
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 15:37:06 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id m10so27777953edv.6
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Jun 2019 08:37:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=CmvdQpyHq1G4KJcm50f+DSk2D5GYxiKFPI3724Ay5Ws=;
 b=pN5XHDgtHPZpxZZ06ScB/s/W2Zg003xQvmYxsrEy4x9qz5nsezHbU6rdZ/fb59wsK7
 vdShrRP7ysVF5WR4UFL+1oaCXVi17a+DX9rKyJLjtdsjAEufbKprygRNlP5V7p4TG3qf
 cUB02eE7dT/YeXy+Gp7Utf9+xXr/ljpymhnYj7ksYPfDuRL8layorZVB8eq6upFqy8xY
 APK4p8955uniyk8C2zv4QrY63v8kpNlhkv4GDmseWDa2HsvgK2mlx0EiPvRXjymSr7Rk
 oRfnxcfu4csTiXfBKjtcsX+/Qj0c68VxsftEMT2yt7Aac/QtTsZCMmMFAl5R6z//xej4
 1+oA==
X-Gm-Message-State: APjAAAWeq5PDPJha5oa7b5FBePc5vBjQv7SXCJgGRxSK7UgUdsqdCxkQ
 Iow3e4hmiYtUG7pMpnsnYRYJ/g==
X-Google-Smtp-Source: APXvYqxND3BwmvVa2nZq1D6ZAJ8gShVqNHzRGKaj7vVBh8P75cFmVlQT13irBAvAxEzr2Hx3JIlA/Q==
X-Received: by 2002:a17:906:401a:: with SMTP id
 v26mr119813485ejj.62.1561477024877; 
 Tue, 25 Jun 2019 08:37:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id m32sm4952270edc.89.2019.06.25.08.37.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 08:37:03 -0700 (PDT)
Date: Tue, 25 Jun 2019 17:37:01 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Arkadiusz Hiler <arkadiusz.hiler@intel.com>
Message-ID: <20190625153701.GA12905@phenom.ffwll.local>
References: <20181016222341.1537-1-drawat@vmware.com>
 <20181016222341.1537-5-drawat@vmware.com>
 <CAKMK7uEUN_-cdkMxvO1VwhD7YhGTNgd56y+Z8Pjv53Ri7wMSNw@mail.gmail.com>
 <20190625060132.rsidgloshp7oz4ud@ahiler-desk1.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625060132.rsidgloshp7oz4ud@ahiler-desk1.fi.intel.com>
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CmvdQpyHq1G4KJcm50f+DSk2D5GYxiKFPI3724Ay5Ws=;
 b=GNDqgROvUkRZpWzseLV8e0HIYkJGgeVlsnnagU3wbChdbZyjoMrKRgyHnrP/L5RT0p
 xvPOxgZSFfqBE0+EEsVouEtZEt7wU7PH0rzirSgnN2w5sbMvfS3hBEZNhBo5LXW5AZXV
 BcMuTO6dtRHpTC0NJg9TN1Egk4ZSNH3KbNkWw=
Subject: Re: [Intel-gfx] [PATCH i-g-t 5/5] tests/kms_selftest: Integrate
 kernel selftest test-drm_modeset
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
 IGT development <igt-dev@lists.freedesktop.org>,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Deepak Rawat <drawat@vmware.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBKdW4gMjUsIDIwMTkgYXQgMDk6MDE6MzJBTSArMDMwMCwgQXJrYWRpdXN6IEhpbGVy
IHdyb3RlOgo+IE9uIFRodSwgSnVuIDIwLCAyMDE5IGF0IDAzOjIwOjAyUE0gKzAyMDAsIERhbmll
bCBWZXR0ZXIgd3JvdGU6Cj4gPiBPbiBUdWUsIE9jdCAxNiwgMjAxOCBhdCAwMzoyMzo0MVBNIC0w
NzAwLCBEZWVwYWsgUmF3YXQgd3JvdGU6Cj4gPiA+IENhbGwga2VybmVsIHNlbGZ0ZXN0IG1vZHVs
ZSB0ZXN0LWRybV9tb2Rlc2V0IGZvciB0ZXN0aW5nIEtNUy4KPiA+ID4KPiA+ID4gdjI6Cj4gPiA+
IC0gQWRkIHRlc3QgYWxwaGFiZXRpY2FsbHkuCj4gPiA+IC0gQWRkIHRlc3QgdG8gbWVzb24gYnVp
bGQuCj4gPiA+Cj4gPiA+IHYzOiBSZW5hbWUgdG8ga21zX3NlbGZ0ZXN0Lgo+ID4gPgo+ID4gPiBT
aWduZWQtb2ZmLWJ5OiBEZWVwYWsgUmF3YXQgPGRyYXdhdEB2bXdhcmUuY29tPgo+ID4gCj4gPiBK
dXN0IHJlYWxpemVkIHRoYXQgdGhpcyBuZXZlciBsYW5kZWQgLi4uIGFueSByZWFzb25zPyBXb3Vs
ZCBiZSBuaWNlIHRvIGdldAo+ID4gdGhpcyBoYW5kbGVkLgo+ID4gCj4gPiBQZXRyaS9BcmVrPwo+
ID4gCj4gPiBDaGVlcnMsIERhbmllbAo+IAo+IFdoYXQgZG8geW91IG1lYW4gYnkgInRoaXMgbmV2
ZXIgbGFuZGVkIj8KPiAKPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2lndC1n
cHUtdG9vbHMvY29tbWl0Lzc3NjZiMWUyMzQ4Ygo+IAo+IGNvbW1pdCA3NzY2YjFlMjM0OGIzMmNj
OGVkNThhOTcyYzZmZDUzYjIwMjc5NTQ5Cj4gQXV0aG9yOiAgICAgRGVlcGFrIFJhd2F0IDxkcmF3
YXRAdm13YXJlLmNvbT4KPiBBdXRob3JEYXRlOiBUdWUgT2N0IDE2IDE1OjIzOjQxIDIwMTggLTA3
MDAKPiBDb21taXQ6ICAgICBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgo+
IENvbW1pdERhdGU6IFdlZCBPY3QgMTcgMDk6NDE6MDcgMjAxOCArMDIwMAo+IAo+IHRlc3RzL2tt
c19zZWxmdGVzdDogSW50ZWdyYXRlIGtlcm5lbCBzZWxmdGVzdCB0ZXN0LWRybV9tb2Rlc2V0CgpI
bSBub3Qgc3VyZSB3aGF0IEkgbG9va2VkIGF0LCBidXQgaXQgd2FzbnQgdGhlcmUuIFNvcnJ5IGZv
ciB0aGUgbm9pc2UuCi1EYW5pZWwKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIs
IEludGVsIENvcnBvcmF0aW9uCmh0dHA6Ly9ibG9nLmZmd2xsLmNoCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
