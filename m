Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2220314CC17
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 15:07:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 718DD6E39E;
	Wed, 29 Jan 2020 14:07:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com
 [IPv6:2607:f8b0:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6956E39E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 14:06:59 +0000 (UTC)
Received: by mail-ot1-x342.google.com with SMTP id r16so15629120otd.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 06:06:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=okX83GYMa/iZmvViwGHUNfKS0A27fq8qtFQ/CgC9uOc=;
 b=IKCWB9iH8JrZmN6ppT0CHuYZVuQS3OcNZ6FnGbzDJRw+Ho+Dv4G4aCiBJxF167reQE
 EYCRbpbw3WCpLatt0EMrXcTmFTW6vAuuZV6vul26LPVap56g63D4z93OgxXf6vjlLUfJ
 RirpVsz55XsCZnGIcQEbpfURdSL5WuRPtlbdA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=okX83GYMa/iZmvViwGHUNfKS0A27fq8qtFQ/CgC9uOc=;
 b=n4N6HOotjDzAK8iZcN0g6XJG1LepMVZSuPQtytUbjSidLtEq8fTmRB84JR9Z3b5pBX
 lyqlB+AKlm5MfzRcj956Vc6leAMKPppPQB1I9EtSCv0lfPfMOFGgxPnMKi9zxUte2BED
 7RVarIsuBd7xmxCZinXwH7h6iap0ruFiJuSyVsuGCKSaEdJBlGP9ZP6SE/5nSBBz+W0l
 wlzjRvi7xCwEDUms4ulqp8CsBE4U+qiqrKD6rlcz6b4lhWdaYakyjSfBKvpwyAvNDYPX
 0eTX7G9LQNRr+fjqr7JMlvtgNO/3EkV3C1uROnr4tgIkuZjtfeKr/d7eld2Z5glChYrq
 Cxwg==
X-Gm-Message-State: APjAAAXOKfB7GA5jbZEX+ZSzJTV3ujMZnY2XVnPowVoxxdgMnuBZZSqw
 J1vawUILKZdgwXQwM8f+uwN/9QB+Wuug1o/uV+Vjbg==
X-Google-Smtp-Source: APXvYqyudpjVfzJ9h0EQ7t5ykVecXlJLiGSbGrkJ8c4FNBAHkN/dnzEFRnJralgsDIA8kt6cIHSJJPdzvM3MphPV7rA=
X-Received: by 2002:a9d:6196:: with SMTP id g22mr20963911otk.204.1580306818697; 
 Wed, 29 Jan 2020 06:06:58 -0800 (PST)
MIME-Version: 1.0
References: <20200129082410.1691996-1-daniel.vetter@ffwll.ch>
 <20200129082410.1691996-4-daniel.vetter@ffwll.ch>
 <b9214acc-24ea-4007-643b-a07f6b6db065@tronnes.org>
In-Reply-To: <b9214acc-24ea-4007-643b-a07f6b6db065@tronnes.org>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Wed, 29 Jan 2020 15:06:47 +0100
Message-ID: <CAKMK7uFXnrdEr7CB_-bjXYvyYAi_ML5EO=KA8RGMomyHSwNWHw@mail.gmail.com>
To: =?UTF-8?Q?Noralf_Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/client: Rename _force to _locked
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKYW4gMjksIDIwMjAgYXQgMjoxNiBQTSBOb3JhbGYgVHLDuG5uZXMgPG5vcmFsZkB0
cm9ubmVzLm9yZz4gd3JvdGU6Cj4gRGVuIDI5LjAxLjIwMjAgMDkuMjQsIHNrcmV2IERhbmllbCBW
ZXR0ZXI6Cj4gPiBQbHVzIGV4dGVuZCB0aGUga2VybmVsZG9jIGEgYml0IHRvIGV4cGxhaW4gaG93
IHRoaXMgc2hvdWxkIGJlIHVzZWQuCj4gPiBXaXRoIHRoZSBwcmV2aW91cyBwYXRjaCB0byBkcm9w
IHRoZSBmb3JjZSByZXN0b3JlIHRoZSBtYWluIHVzZXIgb2YKPiA+IHRoaXMgZnVuY3Rpb24gaXMg
bm90IGVtcGhhc2lzIG9uIHRoZSAiSSBob2xkIHRoZSBpbnRlcm5hbCBtYXN0ZXIgbG9jawo+Cj4g
VGhlIF9ub3RfIGNvbmZ1c2VzIG1lLCB0aGUgZW1waGFzaXMgaXMgbm93IHRoYXQgIkkgaG9sZCB0
aGUgbG9jayIgcmlnaHQ/CgpPb3BzLCBJIGNvbmZ1c2VkIG15c2VsZiBhbmQgbWl4ZWQgdGhpbmdz
IHVwIGJldHdlZW4gb2xkIGFuZCBuZXcKbWVhbmluZyBhbmQgd2hhdCdzIG5vdyBpbXBvcnRhbnQg
YW5kIHdoYXQgbm90LiBzL25vdC9ub3cvLCBJJ2xsIGZpeAp3aGVuIGFwcGx5aW5nLgotRGFuaWVs
Cgo+Cj4gPiBhbHJlYWR5IiBhc3BlY3QsIHNvIHJlbmFtZSB0aGUgZnVuY3Rpb24gdG8gbWF0Y2gu
Cj4gPgo+ID4gU3VnZ2VzdGVkIGJ5IE5vcmFsZi4KPiA+Cj4gPiBDYzogTm9yYWxmIFRyw7hubmVz
IDxub3JhbGZAdHJvbm5lcy5vcmc+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxk
YW5pZWwudmV0dGVyQGludGVsLmNvbT4KPiA+IC0tLQo+Cj4gUmV2aWV3ZWQtYnk6IE5vcmFsZiBU
csO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgoKCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2Fy
ZSBFbmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KKzQxICgwKSA3OSAzNjUgNTcgNDggLSBodHRw
Oi8vYmxvZy5mZndsbC5jaApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRl
bC1nZngK
