Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 991083B1ED6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Jun 2021 18:40:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 596216E954;
	Wed, 23 Jun 2021 16:40:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com
 [IPv6:2607:f8b0:4864:20::22b])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B126E94B
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 16:40:32 +0000 (UTC)
Received: by mail-oi1-x22b.google.com with SMTP id d19so3984355oic.7
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Jun 2021 09:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=bO3c0b9bzbqPxvGmERe0nw3g2m3wyHb0ArYewc22GjQ=;
 b=DfoDoZ1ATLOkPaoJJP1Y7Recb/hAUT58sys4flMjVyoDcCCj6MIPWobP35k276tjun
 m2Qpp8n2WyNNmg/DWg2tEVkuWg3wJfRFrJmDb0y/OcQc1esqZFUFmqCp9UW6J7brOidk
 rX+bwu4KzBcJZkU37RV+ZYYNZwZZ69NurIxxo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=bO3c0b9bzbqPxvGmERe0nw3g2m3wyHb0ArYewc22GjQ=;
 b=LSqaQ6JcDSkEm3NAKnf3ziLGoSLbjngFAqsxmhqac1ivYU5tUmQfIo0NQFjRI3cakr
 lcJPymYGTTxZB6pKlEAR2ExPXT9OGdSgqOXtJGGuKFmXjDKbHcwWhIpEjX3ims4CTYb+
 bMD9LDdl/iC0IfMTTqB0q0qP9iDYV3V+kwbQM2ia4ynHSVKOZzFhB7YxVyOrN1Pm9Hix
 O7LMhxmM05SVVWw5LVMnRTByP9W4N7FPDYFE5JcQu4SLCDxXW8RrN2Xt7iJU7cSL3ojZ
 nrcInQyTIwIV1x2FYhVutp83JIKcN4wiGofBjQJK+RL51vpl1RQFDZk9SoPkSGMd7wDC
 QQtw==
X-Gm-Message-State: AOAM531ZZCB6tEBOqsmomagHeU62clQ0E0fDvweKvA8jNyrzhE6tg5v6
 vZhAKEIR34UihSLsyfpIYWR0LWfVY0ZWXS8wfYvdtg==
X-Google-Smtp-Source: ABdhPJyoNgJIYOchT7dS33bxVfM9JG6GsPV457EI4PNXGKki7TlM99Ox1QmJPsnohK7Glr2xGWwmZXGSfqBa/K0/ATQ=
X-Received: by 2002:a54:4889:: with SMTP id r9mr3836956oic.101.1624466431860; 
 Wed, 23 Jun 2021 09:40:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210621193644.105627-1-thomas.hellstrom@linux.intel.com>
 <20210621193644.105627-2-thomas.hellstrom@linux.intel.com>
 <YNNOoqnFOWw1Xgrf@phenom.ffwll.local>
 <0415be07-452e-d7de-ecfa-9c0f80ad5fee@linux.intel.com>
In-Reply-To: <0415be07-452e-d7de-ecfa-9c0f80ad5fee@linux.intel.com>
From: Daniel Vetter <daniel@ffwll.ch>
Date: Wed, 23 Jun 2021 18:40:20 +0200
Message-ID: <CAKMK7uGnyGSqXjuMFid4vFkgQMhjRDt+1HdoLTsE3aSqp6A4Yw@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v6 1/3] drm/i915: Update object placement
 flags to be mutable
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBKdW4gMjMsIDIwMjEgYXQgNTozOCBQTSBUaG9tYXMgSGVsbHN0csO2bQo8dGhvbWFz
LmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gVGhhbmtzIGZvciByZXZpZXdp
bmcsIERhbmllbC4KPgo+IE9uIDYvMjMvMjEgNTowOSBQTSwgRGFuaWVsIFZldHRlciB3cm90ZToK
PiA+Cj4gPj4KPiA+PiArICAgIHVuc2lnbmVkIGludCBtZW1fZmxhZ3M6MjsKPiA+IElzIHRoZSBl
bnRpcmUgYml0ZmllbGQgYXJyYXkgYWxsIHByb3RlY3RlZCBieSBkbWFfcmVzdl9sb2NrPyBJZiBu
b3QgSSdkCj4gPiBqdXN0IGdvIHdpdGggYSBmdWxsIGZpZWxkLCBhdm9pZHMgaGVhZGFjaGVzIGFu
ZCBhbGwgdGhhdC4KPiA+Cj4gPiBBbHNvIGtlcm5lbGRvYyBmb3IgdGhpcyB3b3VsZCBiZSByZWFs
bHkgc3dlZXQuIE1lYW5zIHNvbWUgd29yayB0byBnZXQgaXQKPiA+IGdvaW5nLAo+Cj4gWWVhaCwg
bGF0ZSBkb2N1bWVudGF0aW9uIHJldmlldyBjb21tZW50cyBhZnRlciB2OSBvdWdodCB0byBiZSBm
b3JiaWRkZW4gOykKCldlbGwgSSB0aGluayB3ZSBzaG91bGQgaGF2ZSBsb2NraW5nIGFuZCBhbGwg
dGhhdCBkb2N1bWVudGVkIGZyb20gdGhlCnN0YXJ0IG1heWJlIDotUAoKQnV0IHllYWggSSBrbm93
IGl0J3MgYSBiaXQgbGF0ZSwgc28gdG90YWxseSBmaW5lIGlmIHRoYXQncyBkb25lIGFzIGEKZm9s
bG93IHVwIG9uIHRvcC4gQnV0IGZvciBuZXcgc3R1ZmYgb3IgcmV2aXNlZCBzdHVmZiB3ZSBuZWVk
IHRvIHN0YXJ0CnNvbWV3aGVyZSwgYW5kICJtYXliZSBsYXRlciB3aGVuIHdlIGhhdmUgdGltZSIg
anVzdCBuZXZlciBjdXRzIGl0IC4uLgoKPgo+ID4gYnV0IHNvbWV3aGVyZSB3ZSBuZWVkIHRvIHN0
b3AgaGFja2luZyB0b2dldGhlciB1bmRvY3VtZW50ZWQgYWQtaG9jCj4gPiBsb2NraW5nIHNjaGVt
ZXMgOi0vCj4KPiBIbW0sIHRoaXMgd2FzIGludGVuZGVkIHRvIHJlcGxhY2UgdGhlIGNoYW5nZSBv
ZiBhbmQgYWNjZXNzIG9mIG9iamVjdCBvcHMKPiAqd2l0aG91dCogdGhlIGxvY2sgaGVsZCBhbmQg
d2l0aCBwcm9wZXIgYXNzZXJ0cyBhZGRlZCBpbiB0aGUgYWNjZXNzb3JzLAo+IHNvIGl0IHdhcyBu
b3QgcmVhbGx5IGludGVuZGVkIHRvIGJlIGFuIGFkLWhvYyBsb2NraW5nIHNjaGVtZSwgSXQncwo+
IHNpbXBseSBwbGFjZW1lbnQgcmVsYXRlZCB0aGluZ3MgYXJlIHVwZGF0ZWQgdW5kZXIgdGhlIGxv
Y2suCgpZZWFoIHRoaXMgd2FzIG1vcmUgbWVhbnQgYXMgYSBnZW5lcmFsIGNvbW1lbnQuIEUuZy4g
aW4gc3RydWN0IGk5MTVfdm1hCndlIG5vdyBoYXZlIHRoZSBzaXR1YXRpb24gdGhhdCB3ZSBoYXZl
IDIgb3ZlcmxhcHBpbmcgbG9ja2luZyBzY2hlbWVzLAphbmQgaXQncyBhbG1vc3QgaW1wb3NzaWJs
ZSB0byBmaWd1cmUgb3V0IHdoaWNoIGlzIGluZmVjdCBmb3Igd2hpY2gKcGllY2VzLiBJJ2QgbGlr
ZSB0byBhdm9pZCB0aGF0IGlmIGF0IGFsbCBwb3NzaWJsZS4KCj4gSSdsbCB1cGRhdGUgdGhlIGNv
ZGUgYW5kIHJlc2VuZC4KClRoYW5rcywgRGFuaWVsCi0tIApEYW5pZWwgVmV0dGVyClNvZnR3YXJl
IEVuZ2luZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgpodHRwOi8vYmxvZy5mZndsbC5jaApfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVl
ZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
