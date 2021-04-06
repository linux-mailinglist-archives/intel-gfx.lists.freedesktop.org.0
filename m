Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBE73555DC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Apr 2021 15:57:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C7D26E836;
	Tue,  6 Apr 2021 13:57:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0C8D6E836
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Apr 2021 13:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1617717460;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TsL2HCQg2kjvfy7dfmD7S9qUIJxr0kbcu2bow7J0YPY=;
 b=XIL4LqpgPhFkwzrFls/1TZrhDhf3+auawfFjpIjNfSWVYP6fUTDuoAoyDlBC4AocYDnujI
 2pJ50Qs9eecXQifzemC+PJRnEuzCYCz/Q0HzYa0m6dPaUqNJ8rEOhab12JRRb/jemo52WC
 RaEgZ9tTmpypbkEkoBg+knRVaJ7Iz7Q=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-13-N_wrc-69Njij8Be9OpcAvQ-1; Tue, 06 Apr 2021 09:57:34 -0400
X-MC-Unique: N_wrc-69Njij8Be9OpcAvQ-1
Received: by mail-ej1-f71.google.com with SMTP id a22so5470098ejx.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 06 Apr 2021 06:57:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=TsL2HCQg2kjvfy7dfmD7S9qUIJxr0kbcu2bow7J0YPY=;
 b=rzQRzD3XGqdvDo8QftZo9y0uXztqaOKnj7eosLhK5cc2VbgfShUFIfz2VAleSWsaH9
 vJLAq3ICUTbuyJZ0zE0Je45Z0Sz8I2ZgPbA8Xekps4oon3duc3kJ8OcssDYfuN7ZJYfs
 ObJcirFngteSiR69SrJfz6dkJ/DgJ9Cswkah4kxMjloRpwzm3wraYyHcjBVR7kgEWrRT
 bhFb/aYt19lvrXCwPEhdfqAX/2nMnudZHrEAcDVYF80c+hsDif7TeDbc0YE7zJJQOd2Z
 xXPhtD7OdvmAb4zFnh/ixCJIVE6c48vxix4p9lzZdNdpevSKqClKaFbvziyWFBdpr3Eb
 LfHw==
X-Gm-Message-State: AOAM530kk1/9kKD9HPcgGAdylntWYvEJAxN8qhsmRp1KG3lzk+lpqxj+
 lTYLLU+DpRa8jReynEmuhzVa6b+g/S+W81ZUrJys2eCI8PFT/ishgvM4e4DqsotZFwnhSmd+XOn
 cQ4USVVtedNQSvZ0rRPcptJ5drTef
X-Received: by 2002:a17:906:3713:: with SMTP id
 d19mr11097551ejc.513.1617717453734; 
 Tue, 06 Apr 2021 06:57:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwk9Zku0D++lHUF1bQuSlpPMLGJuHX/d44JoyRlzfOgSAzh3ryT3WIdn2jdZrd4OEa2Y19ijQ==
X-Received: by 2002:a17:906:3713:: with SMTP id
 d19mr11097529ejc.513.1617717453585; 
 Tue, 06 Apr 2021 06:57:33 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id kx3sm6254065ejc.44.2021.04.06.06.57.32
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 06 Apr 2021 06:57:33 -0700 (PDT)
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20210325114823.44922-1-hdegoede@redhat.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <9cb6711d-d183-79d4-dfc1-d932b8c8fcab@redhat.com>
Date: Tue, 6 Apr 2021 15:57:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210325114823.44922-1-hdegoede@redhat.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/vlv_dsi: Do not skip
 panel_pwr_cycle_delay when disabling the panel
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
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksCgpPbiAzLzI1LzIxIDEyOjQ4IFBNLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+IEFmdGVyIHRo
ZSByZWNlbnRseSBhZGRlZCBjb21taXQgZmUwZjFlM2JmZGZlICgiZHJtL2k5MTU6IFNodXQgZG93
bgo+IGRpc3BsYXlzIGdyYWNlZnVsbHkgb24gcmVib290IiksIHRoZSBEU0kgcGFuZWwgb24gYSBD
aGVycnkgVHJhaWwgYmFzZWQKPiBQcmVkaWEgQmFzaWMgdGFibGV0IHdvdWxkIG5vIGxvbmdlciBw
cm9wZXJseSBsaWdodCB1cCBhZnRlciByZWJvb3QuCj4gCj4gSSd2ZSBtYW5hZ2VkIHRvIHJlcHJv
ZHVjZSB0aGlzIHdpdGhvdXQgcmVib290aW5nIGJ5IGRvaW5nOgo+IGNodnQgMzsgZWNobyAxID4g
L3N5cy9jbGFzcy9ncmFwaGljcy9mYjAvYmxhbms7XAo+IGVjaG8gMCA+IC9zeXMvY2xhc3MvZ3Jh
cGhpY3MvZmIwL2JsYW5rCj4gCj4gV2hpY2ggcmFwaWRseSB0dXJucyB0aGUgcGFuZWwgb2ZmIGFu
ZCBiYWNrIG9uIGFnYWluLgo+IAo+IFRoZSB2bHZfZHNpLmMgY29kZSB1c2VzIGFuIGludGVsX2Rz
aV9tc2xlZXAoKSBoZWxwZXIgZm9yIHRoZSB2YXJpb3VzIGRlbGF5cwo+IHVzZWQgZm9yIHBhbmVs
IG9uL29mZiwgc2luY2Ugc3RhcnRpbmcgd2l0aCBNSVBJLXNlcXVlbmNlcyB2ZXJzaW9uID49IDMg
dGhlCj4gZGVsYXlzIGFyZSBhbHJlYWR5IGluY2x1ZGVkIGluc2lkZSB0aGUgTUlQSS1zZXF1ZW5j
ZXMuCj4gCj4gVGhlIHByb2JsZW1zIGV4cG9zZWQgYnkgdGhlICJTaHV0IGRvd24gZGlzcGxheXMg
Z3JhY2VmdWxseSBvbiByZWJvb3QiCj4gY2hhbmdlLCBzaG93IHRoYXQgdXNpbmcgdGhpcyBoZWxw
ZXIgZm9yIHRoZSBwYW5lbF9wd3JfY3ljbGVfZGVsYXkgaXMKPiBub3QgdGhlIHJpZ2h0IHRoaW5n
IHRvIGRvLiBUaGlzIGhhcyBub3QgYmVlbiBub3RpY2VkIHVudGlsIG5vdyBiZWNhdXNlCj4gbm9y
bWFsbHkgdGhlIHBhbmVsIG5ldmVyIGlzIGN5Y2xlZCBvZmYgYW5kIGRpcmVjdGx5IG9uIGFnYWlu
IGluIHF1aWNrCj4gc3VjY2Vzc2lvbi4KPiAKPiBDaGFuZ2UgdGhlIG1zbGVlcCBmb3IgdGhlIHBh
bmVsX3B3cl9jeWNsZV9kZWxheSB0byBhIG5vcm1hbCBtc2xlZXAoKQo+IGNhbGwgdG8gYXZvaWQg
dGhlIHBhbmVsIHN0YXlpbmcgYmxhY2sgYWZ0ZXIgYSBxdWljayBvZmYgKyBvbiBjeWNsZS4KPiAK
PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPiBG
aXhlczogZmUwZjFlM2JmZGZlICgiZHJtL2k5MTU6IFNodXQgZG93biBkaXNwbGF5cyBncmFjZWZ1
bGx5IG9uIHJlYm9vdCIpCj4gU2lnbmVkLW9mZi1ieTogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVA
cmVkaGF0LmNvbT4KClBpbmc/IFZpbGxlIEFGQUlDVCB0aGlzIGlzIHJlYWR5IGZvciBtZXJnaW5n
LCBjYW4geW91IHJldmlldyB0aGlzIHBsZWFzZSBzbyB0aGF0IEkgY2FuIHB1c2ggaXQgdG8gZHJt
LWludGVsLW5leHQgPwoKUmVnYXJkcywKCkhhbnMKCgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyB8IDQgKystLQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
dmx2X2RzaS5jCj4gaW5kZXggZDVhM2Y2OWM1ZGYzLi4zOGQ1YTFmM2RlZDUgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMKPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYwo+IEBAIC05OTYsMTQgKzk5NiwxNCBAQCBz
dGF0aWMgdm9pZCBpbnRlbF9kc2lfcG9zdF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLAo+ICAJICogRklYTUUgQXMgd2UgZG8gd2l0aCBlRFAsIGp1c3QgbWFrZSBhIG5v
dGUgb2YgdGhlIHRpbWUgaGVyZQo+ICAJICogYW5kIHBlcmZvcm0gdGhlIHdhaXQgYmVmb3JlIHRo
ZSBuZXh0IHBhbmVsIHBvd2VyIG9uLgo+ICAJICovCj4gLQlpbnRlbF9kc2lfbXNsZWVwKGludGVs
X2RzaSwgaW50ZWxfZHNpLT5wYW5lbF9wd3JfY3ljbGVfZGVsYXkpOwo+ICsJbXNsZWVwKGludGVs
X2RzaS0+cGFuZWxfcHdyX2N5Y2xlX2RlbGF5KTsKPiAgfQo+ICAKPiAgc3RhdGljIHZvaWQgaW50
ZWxfZHNpX3NodXRkb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQo+ICB7Cj4gIAlz
dHJ1Y3QgaW50ZWxfZHNpICppbnRlbF9kc2kgPSBlbmNfdG9faW50ZWxfZHNpKGVuY29kZXIpOwo+
ICAKPiAtCWludGVsX2RzaV9tc2xlZXAoaW50ZWxfZHNpLCBpbnRlbF9kc2ktPnBhbmVsX3B3cl9j
eWNsZV9kZWxheSk7Cj4gKwltc2xlZXAoaW50ZWxfZHNpLT5wYW5lbF9wd3JfY3ljbGVfZGVsYXkp
Owo+ICB9Cj4gIAo+ICBzdGF0aWMgYm9vbCBpbnRlbF9kc2lfZ2V0X2h3X3N0YXRlKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlz
dGluZm8vaW50ZWwtZ2Z4Cg==
