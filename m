Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AD00238C7CB
	for <lists+intel-gfx@lfdr.de>; Fri, 21 May 2021 15:23:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2F96F64A;
	Fri, 21 May 2021 13:23:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com
 [IPv6:2a00:1450:4864:20::42f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5762F6F64A
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 13:23:51 +0000 (UTC)
Received: by mail-wr1-x42f.google.com with SMTP id x7so1463346wrt.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 May 2021 06:23:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fooishbar-org.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=zBr2qa8weJ1fN+pyrA9yHt47NZiiPugqQIjjkfzP+jw=;
 b=Vo39h2GhwMLbJLo+/rJ8jKdDxxx7yt/+DuSYtdRMJYd/ewYSQQsrwCnOCge0+aOIM2
 9/KcfjejnPY8GM8mZ7TLh9EDtHEL/1jvG9ThrG9zg8eAz/GKa3MaVPVSMLnA4tV2yryY
 wubn8HMprLTyeofXBSRountcrg6j1SBLsPKvAsbxcvpmEVW7xAfjiqMlhxwraaQJlRHQ
 RBb6DN/tULEGgiS/IonVr9QgSxe37CitIuX4+gnFggRx+HHuCHA5loPr60vmuDY9nqZD
 rfQA3gO4qDA/z8bt5atk4ADkTZhfdIHY0OqxfaTHUZQut/UlgKWx4Let826C6h8Ly2d/
 GudQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=zBr2qa8weJ1fN+pyrA9yHt47NZiiPugqQIjjkfzP+jw=;
 b=XmzJT2nYrItvhuuW8KFDJgyG6Frjfyn/ULLbnHJY1waol1StKttvo8Ne7coYXi1tPD
 4ndOUB8UZWmQZPSsSOpNdjFfvvcwZ+gvjHrTHd6/K+H8VipbpsF0D0GpizVnUekeDVqI
 8mtEK2jcHPEUqoGcoM8ZZxehjC72pH69mGFIqAtdjIX3jW4u3Vm0Q547dDOL7HwyCIa9
 /PUD+sC8KZv6kuxji8pEEJPpoBTVF4tfQloRx7eo1nP8uqLNXmYLSAzVG2cT+zLZEcWt
 MDGh5STVdfrPhbGRFAKjPDwjNlOo1vKxGmGCMpbhL2zCYWsWQGm9HCe3IO4Zhw4yB472
 eobw==
X-Gm-Message-State: AOAM532GIFKh6Yh5+PWy7E2XEMvy2qHDVfTqUU4NgaAn0gI7XC1a132o
 Jg4RlOhsx0GIhVpMPnqNLZV23ynAUQNOmb1fYg7vkQ==
X-Google-Smtp-Source: ABdhPJyU8TEmXK/S6OXq7q8k124HIgHp5J7hILQzz4PXVCcZY3JiYAj8Ouwu177Y0/InrwMU7WBJIc4BjzJuyR8pTms=
X-Received: by 2002:a5d:6e04:: with SMTP id h4mr9422676wrz.256.1621603429939; 
 Fri, 21 May 2021 06:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210521090959.1663703-1-daniel.vetter@ffwll.ch>
 <20210521090959.1663703-4-daniel.vetter@ffwll.ch>
 <CAPj87rMBVRamT+VAVUaUnq3C1KFVqzABi99RKs=1_vyb4YWDnQ@mail.gmail.com>
 <d1ef10e8-b774-06e5-92ab-047c58e1ea41@amd.com>
 <CAPj87rOzV1mC=Nv2zfsYXrD4ARV7cmmJmkUCSwRSw1Ksy0k-aA@mail.gmail.com>
 <39aa30e4-2726-a0ba-3537-3be609dbc0b5@amd.com>
In-Reply-To: <39aa30e4-2726-a0ba-3537-3be609dbc0b5@amd.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Fri, 21 May 2021 14:23:38 +0100
Message-ID: <CAPj87rOhByk-azt2jm=YV8WYSQH3g2+aJ83nG+5SywksXH3OYg@mail.gmail.com>
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

T24gRnJpLCAyMSBNYXkgMjAyMSBhdCAxNDowOSwgQ2hyaXN0aWFuIEvDtm5pZyA8Y2hyaXN0aWFu
LmtvZW5pZ0BhbWQuY29tPiB3cm90ZToKPiBBbSAyMS4wNS4yMSB1bSAxNDo1NCBzY2hyaWViIERh
bmllbCBTdG9uZToKPiA+IElmIHlvdSdyZSBjdXJpb3VzLCB0aGUgaW50ZXJmYWNlIGRlZmluaXRp
b25zIGFyZSBpbiB0aGUgY3NmLyBkaXJlY3RvcnkKPiA+IGluIHRoZSAnQmlmcm9zdCBrZXJuZWwg
ZHJpdmVyJyByMzBwMCBkb3dubG9hZCB5b3UgY2FuIGdldCBmcm9tIHRoZSBBcm0KPiA+IGRldmVs
b3BlciBzaXRlLiBVbmZvcnR1bmF0ZWx5IHRoZSBleGFjdCBzZW1hbnRpY3MgYXJlbid0IGNvbXBs
ZXRlbHkKPiA+IGNsZWFyLgo+Cj4gV2VsbCBpdCBpcyBhY3R1YWxseSByZWxhdGl2ZWx5IHNpbXBs
ZS4gVGFrZSBhIGxvb2sgYXQgdGhlIHRpbWVsaW5lCj4gc2VtYXBob3JlcyBmcm9tIFZ1bGthbiwg
ZXZlcnlib2R5IGlzIGJhc2ljYWxseSBpbXBsZW1lbnRpbmcgdGhlIHNhbWUKPiBzZW1hbnRpY3Mg
bm93Lgo+Cj4gV2hlbiB5b3UgcXVldWVkIHVwIGEgYnVuY2ggb2YgY29tbWFuZHMgb24geW91ciBo
YXJkd2FyZSwgdGhlIGZpcnN0IG9uZQo+IHdpbGwgd3JpdGUgdmFsdWUgMSB0byBhIDY0Yml0IG1l
bW9yeSBsb2NhdGlvbiwgdGhlIHNlY29uZCBvbmUgd2lsbCB3cml0ZQo+IHZhbHVlIDIsIHRoZSB0
aGlyZCB2YWx1ZSAzIGFuZCBzbyBvbi4gQWZ0ZXIgd3JpdGluZyB0aGUgdmFsdWUgdGhlCj4gaGFy
ZHdhcmUgcmFpc2VzIGFuZCBpbnRlcnJ1cHQgc2lnbmFsIHRvIGV2ZXJ5Ym9keSBpbnRlcmVzdGVk
Lgo+Cj4gSW4gb3RoZXIgd29yZHMgcHJldHR5IHN0YW5kYXJkIG1lbW9yeSBmZW5jZSBiZWhhdmlv
ci4KPgo+IFdoZW4geW91IG5vdyBoYXZlIGEgc2Vjb25kIHF1ZXVlIHdoaWNoIGRlcGVuZHMgb24g
d29yayBvZiB0aGUgZmlyc3Qgb25lCj4geW91IGxvb2sgYXQgdGhlIG1lbW9yeSBsb2NhdGlvbiBh
bmQgZG8gYSBjb21wYXJlLiBJZiB5b3UgZGVwZW5kIG9uIHRoZQo+IHRoaXJkIHN1Ym1pc3Npb24g
eW91IGp1c3Qgd2FpdCBmb3IgdGhlIHZhbHVlIHRvIGJlID4zIGFuZCBhcmUgZG9uZS4KClJpZ2h0
LCBpdCBpcyBjbGVhcmx5IGRlZmluZWQgdG8gdGhlIHRpbWVsaW5lIHNlbWFwaG9yZSBzZW1hbnRp
Y3MsIEkKanVzdCBtZWFudCB0aGF0IGl0J3Mgbm90IGNsZWFyIGhvdyBpdCB3b3JrcyBhdCBhIGxv
d2VyIGxldmVsIHdydCB0aGUKc3luY2hyb25pc2F0aW9uIGFuZCBzaWduYWxpbmcuIFRoZSBzaW1w
bGVzdCBwb3NzaWJsZSBpbnRlcnByZXRhdGlvbiBpcwp0aGF0IHdhaXRfYWRkcnZhbCBibG9ja3Mg
aW5maW5pdGVseSBiZWZvcmUga2ljay1jbWRidWYsIGJ1dCB0aGF0IHNlZW1zCnBhaW5mdWwgd2l0
aCBvbmx5IDMyIHF1ZXVlcy4gQW5kIHRoZSBzYW1lIGZvciBmZW5jZXMsIHdoaWNoIGFyZSBhCmJp
bmFyeSBzaWduYWwuIEkgZ3Vlc3Mgd2UnbGwgZmluZCBvdXQuIE15IHRvb3RoIGh1cnRzLgoKQ2hl
ZXJzLApEYW5pZWwKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
Cg==
