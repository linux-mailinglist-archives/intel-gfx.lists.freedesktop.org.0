Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E7BB302B82
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Jan 2021 20:25:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E43486E1ED;
	Mon, 25 Jan 2021 19:25:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A3DB6E1ED
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 19:25:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1611602703;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=J5t4uyfj8TRdwZ/fvPQWIaQpBADUpE7PNoniasbl9zM=;
 b=Hd0vjkdflrB/i6YYPRXrH+RQfeP5JFqJSr2MmwG8fC+wx8WanRMr2XX2vdWZM8iEOCi5UY
 NsrSS/sFbHOz4A7HhMlNo5QxjP4XtDhvGMFkXyJuTDn4DuiTBNB4CrrMT2ugZjI2ilpRH/
 HEV/xpNAtbCMtgBeudaksiF807+lXmM=
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com
 [209.85.160.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-180-wsfiYoA2NeqmpxrbOb_ezg-1; Mon, 25 Jan 2021 14:25:00 -0500
X-MC-Unique: wsfiYoA2NeqmpxrbOb_ezg-1
Received: by mail-qt1-f200.google.com with SMTP id n22so7896144qtv.10
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Jan 2021 11:25:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=J5t4uyfj8TRdwZ/fvPQWIaQpBADUpE7PNoniasbl9zM=;
 b=Hirgmqkb292KQulceDZZxWWk7n8TLrfe11scrne5hPSbhAntWN22Nd7gYdxfeKnpK/
 2XeJXTC961bOdI3e8DwraltRzcWDoBN3mhSV33fzRcGFZ2Y5P6ns4JyFT9Q4uxkum8aM
 kdyzGZ6rvYI5QoQDIOKsAIPpASKuktKoQfGqPeOhPHKvzJ7X07Bb1b4Ud1ZpIxxg3ZTl
 xvq6HCuJnhDCW3aJsQggU8+Uu/LAedSGqCU/WArk2rPGbN2KRFH/7gXXLPdoX35rQNtR
 K9J/7jAs2RwDj9aBuKexbU5JN0XORt1+bVH7cBrhXKgzHJmPpxvy/tKsCAj7q159tI3G
 S7xw==
X-Gm-Message-State: AOAM532jQfG0GYvKFBTKFZgAVx/wH51es3G5DVp39JTk91YRde91xhez
 kFRD5F9jDpLGWdKNX1wmUtXaV2A+HofCiHW3PTU+GMmF86PC1ynGaLCOoCrHWod7KT1uMt923bO
 w6a033fgWuzii5FMedZ63n0c7ak8c
X-Received: by 2002:aed:2644:: with SMTP id z62mr2042624qtc.146.1611602699641; 
 Mon, 25 Jan 2021 11:24:59 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzlzXb5NfGvxXaKrFngavT+wZnmDoNR8XnISdzmJkXRsuy549Wm1lkxFgmTOMYDlFr1qjW4kg==
X-Received: by 2002:aed:2644:: with SMTP id z62mr2042606qtc.146.1611602699424; 
 Mon, 25 Jan 2021 11:24:59 -0800 (PST)
Received: from Whitewolf.lyude.net
 (pool-108-49-102-102.bstnma.fios.verizon.net. [108.49.102.102])
 by smtp.gmail.com with ESMTPSA id g128sm12446097qkd.91.2021.01.25.11.24.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Jan 2021 11:24:58 -0800 (PST)
Message-ID: <2be72160accef04bf2ed7341b3619befc2121330.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 25 Jan 2021 14:24:58 -0500
In-Reply-To: <20210125173636.1733812-2-imre.deak@intel.com>
References: <20210125173636.1733812-1-imre.deak@intel.com>
 <20210125173636.1733812-2-imre.deak@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.38.3 (3.38.3-1.fc33)
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=lyude@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Fix the MST PBN divider
 calculation
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
Cc: Ville Syrjala <ville.syrjala@intel.com>, stable@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIxLTAxLTI1IGF0IDE5OjM2ICswMjAwLCBJbXJlIERlYWsgd3JvdGU6Cj4gQXRt
IHRoZSBkcml2ZXIgd2lsbCBjYWxjdWxhdGUgYSB3cm9uZyBNU1QgdGltZXNsb3RzL01UUCAoYWth
IHRpbWUgdW5pdCkKPiB2YWx1ZSBmb3IgTVNUIHN0cmVhbXMgaWYgdGhlIGxpbmsgcGFyYW1ldGVy
cyAobGluayByYXRlIG9yIGxhbmUgY291bnQpCj4gYXJlIGxpbWl0ZWQgaW4gYSB3YXkgaW5kZXBl
bmRlbnQgb2YgdGhlIHNpbmsgY2FwYWJpbGl0aWVzIChyZXBvcnRlZCBieQo+IERQQ0QpLgo+IAo+
IE9uZSBleGFtcGxlIG9mIHN1Y2ggYSBsaW1pdGF0aW9uIGlzIHdoZW4gYSBNVVggYmV0d2VlbiB0
aGUgc2luayBhbmQKPiBzb3VyY2UgY29ubmVjdHMgb25seSBhIGxpbWl0ZWQgbnVtYmVyIG9mIGxh
bmVzIHRvIHRoZSBkaXNwbGF5IGFuZAo+IGNvbm5lY3RzIHRoZSByZXN0IG9mIHRoZSBsYW5lcyB0
byBvdGhlciBwZXJpcGhlcmFscyAoVVNCKS4KPiAKPiBBbm90aGVyIGlzc3VlIGlzIHRoYXQgYXRt
IE1TVCBjb3JlIGNhbGN1bGF0ZXMgdGhlIGRpdmlkZXIgYmFzZWQgb24gdGhlCj4gYmFja3dhcmRz
IGNvbXBhdGlibGUgRFBDRCAoYXQgYWRkcmVzcyAweDAwMDApIHZzLiB0aGUgZXh0ZW5kZWQKPiBj
YXBhYmlsaXR5IGluZm8gKGF0IGFkZHJlc3MgMHgyMjAwKS4gVGhpcyBjYW4gcmVzdWx0IGluIGxl
YXZpbmcgc29tZQo+IHBhcnQgb2YgdGhlIE1TVCBCVyB1bnVzZWQgKEZvciBpbnN0YW5jZSBpbiBj
YXNlIG9mIHRoZSBXRDE5VEIgZG9jaykuCj4gCj4gRml4IHRoZSBhYm92ZSB0d28gaXNzdWVzIGJ5
IGNhbGN1bGF0aW5nIHRoZSBQQk4gZGl2aWRlciB2YWx1ZSBiYXNlZCBvbgo+IHRoZSByYXRlIGFu
ZCBsYW5lIGNvdW50IGxpbmsgcGFyYW1ldGVycyB0aGF0IHRoZSBkcml2ZXIgdXNlcyBmb3IgYWxs
Cj4gb3RoZXIgY29tcHV0YXRpb24uCj4gCj4gQnVnemlsbGE6IGh0dHBzOi8vZ2l0bGFiLmZyZWVk
ZXNrdG9wLm9yZy9kcm0vaW50ZWwvLS9pc3N1ZXMvMjk3Nwo+IENjOiBMeXVkZSBQYXVsIDxseXVk
ZUByZWRoYXQuY29tPgo+IENjOiBWaWxsZSBTeXJqYWxhIDx2aWxsZS5zeXJqYWxhQGludGVsLmNv
bT4KPiBDYzogPHN0YWJsZUB2Z2VyLmtlcm5lbC5vcmc+Cj4gU2lnbmVkLW9mZi1ieTogSW1yZSBE
ZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPgo+IC0tLQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYyB8IDQgKysrLQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX21zdC5jCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jCj4gaW5kZXggZDZhMWI5NjFhMGU4Li5iNDYyMWVkMDEyN2Ug
MTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9tc3Qu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbXN0LmMKPiBA
QCAtNjgsNyArNjgsOSBAQCBzdGF0aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2xpbmtfY29u
ZmlnKHN0cnVjdAo+IGludGVsX2VuY29kZXIgKmVuY29kZXIsCj4gwqAKPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHNsb3RzID0gZHJtX2RwX2F0b21pY19maW5kX3ZjcGlfc2xvdHMo
c3RhdGUsICZpbnRlbF9kcC0KPiA+bXN0X21nciwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+cG9ydCwKPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19zdGF0ZS0+cGJuLCAwKTsK
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY3J0Y19z
dGF0ZS0+cGJuLAo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoAo+IGRybV9kcF9nZXRfdmNfcGF5bG9hZF9idyhjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrLAo+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAoKVGhpcyBwYXRjaCBsb29rcyBmaW5lLCBob3dl
dmVyIHlvdSBzaG91bGQgdGFrZSBjYXJlIHRvIGFsc28gdXBkYXRlIHRoZQpkb2N1bWVudGF0aW9u
IGZvciBkcm1fZHBfYXRvbWljX2ZpbmRfdmNwaV9zbG90cygpIHNvIHRoYXQgaXQgbWVudGlvbmVz
IHRoYXQKcGJuX2RpdiBzaG91bGQgYmUgRFNDIGF3YXJlIGJ1dCBhbHNvIGlzIG5vdCBleGNsdXNp
dmUgdG8gc3lzdGVtcyBzdXBwb3J0aW5nIERTQwpvdmVyIE1TVCAoc2VlIHRoZSBkb2NzIGZvciB0
aGUgQHBibl9kaXYgcGFyYW1ldGVyKQoKVGhhbmsgeW91IGZvciBkb2luZyB0aGlzISBJJ3ZlIGJl
ZW4gbWVhbmluZyB0byBmaXggdGhlIFdEMTkgaXNzdWVzIGZvciBhIHdoaWxlCm5vdyBidXQgaGF2
ZSBiZWVuIHRvbyBib2dnZWQgZG93biBieSBvdGhlciBzdHVmZiB0byBzcGVuZCBhbnkgdGltZSBv
biBNU1QKcmVjZW50bHkuCgo+IMKgwqDCoMKgwqDCoMKgIGNydGNfc3RhdGUtPmxhbmVfY291bnQp
KTsKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmIChzbG90cyA9PSAtRURFQURM
SykKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gc2xvdHM7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoc2xvdHMgPj0g
MCkKCi0tIApTaW5jZXJlbHksCiAgIEx5dWRlIFBhdWwgKHNoZS9oZXIpCiAgIFNvZnR3YXJlIEVu
Z2luZWVyIGF0IFJlZCBIYXQKICAgCk5vdGU6IEkgZGVhbCB3aXRoIGEgbG90IG9mIGVtYWlscyBh
bmQgaGF2ZSBhIGxvdCBvZiBidWdzIG9uIG15IHBsYXRlLiBJZiB5b3UndmUKYXNrZWQgbWUgYSBx
dWVzdGlvbiwgYXJlIHdhaXRpbmcgZm9yIGEgcmV2aWV3L21lcmdlIG9uIGEgcGF0Y2gsIGV0Yy4g
YW5kIEkKaGF2ZW4ndCByZXNwb25kZWQgaW4gYSB3aGlsZSwgcGxlYXNlIGZlZWwgZnJlZSB0byBz
ZW5kIG1lIGFub3RoZXIgZW1haWwgdG8gY2hlY2sKb24gbXkgc3RhdHVzLiBJIGRvbid0IGJpdGUh
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
