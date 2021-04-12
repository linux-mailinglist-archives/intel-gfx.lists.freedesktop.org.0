Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41CEE35C1A6
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 11:35:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1EDE6E526;
	Mon, 12 Apr 2021 09:35:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 52D496E48E
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 09:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1618220139;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=VSBwqzTaxJCu+qu4cycnbtHOYaiDZgjTNv/wFXF12a8=;
 b=TpGFA2zOZJ99dw3FpuCAhGZ514txd8A8oTPswdvrUlRudX5QUuCYRZ5zy6gxkibNsjpFyH
 A8WtrUXmMTA6Go5oeIgyrPp8gr2bxNpICGRZT+tWYUtTJM3hvqTF20mvZlNxwfYdBqOBdG
 mwWjiZdli9ZJCpJGKfh9LL04GCUX2Oo=
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com
 [209.85.208.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-488-SpX1QkVxOM2uZRlSctyRwg-1; Mon, 12 Apr 2021 05:35:33 -0400
X-MC-Unique: SpX1QkVxOM2uZRlSctyRwg-1
Received: by mail-ed1-f71.google.com with SMTP id i12so2932216edu.23
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 02:35:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=VSBwqzTaxJCu+qu4cycnbtHOYaiDZgjTNv/wFXF12a8=;
 b=HE4tvK2ADMmwitwjTDDKKCyT1GUrN/JRRnocpgOFYYoNB43Igpb6Fuj6SxLMRpgoR5
 iXmcaqh1QDH1vJ8JbN41U4on/osJ9ebM/IRHATGDEy2DEvQ4R5zYjnVH6s8GbyzFGisl
 rZugljIV9YNNhNAHPdKSkqzKWyEG3YIWNsW5sEDFT842JEvoo3VeZ3BKSm+jeqVHQXk6
 4OVke+XIprTUFsAX8jqxhEESD5DHa+lWZ6fvfSpNk3fUbCI13PxEvyyndt4ZlpnkjX0I
 OahVZRc9Qk9YsftVdmedtXXw6eyiHrrSVoiDdpGols+WbzLWtQwrRZnQtJlioZSUV/oa
 HyOg==
X-Gm-Message-State: AOAM531A43192yRgBnNVwVZAmg8Q5BvvgRL3WBA163TgmIrGejLMKIuW
 WjifAeFFVVkB3vhHC4lxEAo2vM0GX/dSBb4uOLlo/FSPTx3O8CdTfPDXWVqD/kZNELOgmckFpAg
 H7/SsLjNer708S38OJHdL3XckYZ4s
X-Received: by 2002:a05:6402:354b:: with SMTP id
 f11mr28211143edd.361.1618220132307; 
 Mon, 12 Apr 2021 02:35:32 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwn7qRZYXPxfgzhGVwF7935JRoKyMzn/cqk0Z6EgucAMsJP05c03hygtrohbzmmuJN321h5zw==
X-Received: by 2002:a05:6402:354b:: with SMTP id
 f11mr28211132edd.361.1618220132109; 
 Mon, 12 Apr 2021 02:35:32 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id l1sm6116331edt.59.2021.04.12.02.35.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 12 Apr 2021 02:35:31 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210325114823.44922-1-hdegoede@redhat.com>
 <9cb6711d-d183-79d4-dfc1-d932b8c8fcab@redhat.com>
 <YG2mzs+/wZ5cH+7M@intel.com>
 <5f54a568-c81a-a54c-cbaf-2c111269c046@redhat.com>
 <YG26UEx8XI5vX3P0@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <709ffd0a-6336-83d8-5adf-6ce51825a424@redhat.com>
Date: Mon, 12 Apr 2021 11:35:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <YG26UEx8XI5vX3P0@intel.com>
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

SGksCgpPbiA0LzcvMjEgMzo1NyBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+IE9uIFdlZCwg
QXByIDA3LCAyMDIxIGF0IDAzOjUwOjM1UE0gKzAyMDAsIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4+
IEhpLAo+Pgo+PiBPbiA0LzcvMjEgMjozNCBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+Pj4g
T24gVHVlLCBBcHIgMDYsIDIwMjEgYXQgMDM6NTc6MzJQTSArMDIwMCwgSGFucyBkZSBHb2VkZSB3
cm90ZToKPj4+PiBIaSwKPj4+Pgo+Pj4+IE9uIDMvMjUvMjEgMTI6NDggUE0sIEhhbnMgZGUgR29l
ZGUgd3JvdGU6Cj4+Pj4+IEFmdGVyIHRoZSByZWNlbnRseSBhZGRlZCBjb21taXQgZmUwZjFlM2Jm
ZGZlICgiZHJtL2k5MTU6IFNodXQgZG93bgo+Pj4+PiBkaXNwbGF5cyBncmFjZWZ1bGx5IG9uIHJl
Ym9vdCIpLCB0aGUgRFNJIHBhbmVsIG9uIGEgQ2hlcnJ5IFRyYWlsIGJhc2VkCj4+Pj4+IFByZWRp
YSBCYXNpYyB0YWJsZXQgd291bGQgbm8gbG9uZ2VyIHByb3Blcmx5IGxpZ2h0IHVwIGFmdGVyIHJl
Ym9vdC4KPj4+Pj4KPj4+Pj4gSSd2ZSBtYW5hZ2VkIHRvIHJlcHJvZHVjZSB0aGlzIHdpdGhvdXQg
cmVib290aW5nIGJ5IGRvaW5nOgo+Pj4+PiBjaHZ0IDM7IGVjaG8gMSA+IC9zeXMvY2xhc3MvZ3Jh
cGhpY3MvZmIwL2JsYW5rO1wKPj4+Pj4gZWNobyAwID4gL3N5cy9jbGFzcy9ncmFwaGljcy9mYjAv
YmxhbmsKPj4+Pj4KPj4+Pj4gV2hpY2ggcmFwaWRseSB0dXJucyB0aGUgcGFuZWwgb2ZmIGFuZCBi
YWNrIG9uIGFnYWluLgo+Pj4+Pgo+Pj4+PiBUaGUgdmx2X2RzaS5jIGNvZGUgdXNlcyBhbiBpbnRl
bF9kc2lfbXNsZWVwKCkgaGVscGVyIGZvciB0aGUgdmFyaW91cyBkZWxheXMKPj4+Pj4gdXNlZCBm
b3IgcGFuZWwgb24vb2ZmLCBzaW5jZSBzdGFydGluZyB3aXRoIE1JUEktc2VxdWVuY2VzIHZlcnNp
b24gPj0gMyB0aGUKPj4+Pj4gZGVsYXlzIGFyZSBhbHJlYWR5IGluY2x1ZGVkIGluc2lkZSB0aGUg
TUlQSS1zZXF1ZW5jZXMuCj4+Pj4+Cj4+Pj4+IFRoZSBwcm9ibGVtcyBleHBvc2VkIGJ5IHRoZSAi
U2h1dCBkb3duIGRpc3BsYXlzIGdyYWNlZnVsbHkgb24gcmVib290Igo+Pj4+PiBjaGFuZ2UsIHNo
b3cgdGhhdCB1c2luZyB0aGlzIGhlbHBlciBmb3IgdGhlIHBhbmVsX3B3cl9jeWNsZV9kZWxheSBp
cwo+Pj4+PiBub3QgdGhlIHJpZ2h0IHRoaW5nIHRvIGRvLiBUaGlzIGhhcyBub3QgYmVlbiBub3Rp
Y2VkIHVudGlsIG5vdyBiZWNhdXNlCj4+Pj4+IG5vcm1hbGx5IHRoZSBwYW5lbCBuZXZlciBpcyBj
eWNsZWQgb2ZmIGFuZCBkaXJlY3RseSBvbiBhZ2FpbiBpbiBxdWljawo+Pj4+PiBzdWNjZXNzaW9u
Lgo+Pj4+Pgo+Pj4+PiBDaGFuZ2UgdGhlIG1zbGVlcCBmb3IgdGhlIHBhbmVsX3B3cl9jeWNsZV9k
ZWxheSB0byBhIG5vcm1hbCBtc2xlZXAoKQo+Pj4+PiBjYWxsIHRvIGF2b2lkIHRoZSBwYW5lbCBz
dGF5aW5nIGJsYWNrIGFmdGVyIGEgcXVpY2sgb2ZmICsgb24gY3ljbGUuCj4+Pj4+Cj4+Pj4+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPgo+Pj4+PiBG
aXhlczogZmUwZjFlM2JmZGZlICgiZHJtL2k5MTU6IFNodXQgZG93biBkaXNwbGF5cyBncmFjZWZ1
bGx5IG9uIHJlYm9vdCIpCj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdv
ZWRlQHJlZGhhdC5jb20+Cj4+Pj4KPj4+PiBQaW5nPyBWaWxsZSBBRkFJQ1QgdGhpcyBpcyByZWFk
eSBmb3IgbWVyZ2luZywgY2FuIHlvdSByZXZpZXcgdGhpcyBwbGVhc2Ugc28gdGhhdCBJIGNhbiBw
dXNoIGl0IHRvIGRybS1pbnRlbC1uZXh0ID8KPj4+Cj4+PiBEaWRuJ3QgZ2V0IHRoZSBvcmlnaW5h
bCBtYWlsLCBidXQgbGd0bS4KPj4KPj4gWWVhaCwgdGhlc2UgYm91bmNlZCBJIG1lbnRpb25lZCB0
aGF0IGluIGEgcC5zLiBpbiBvbmUgb2YgdGhlIGVtYWlscwo+PiBpbiBvdXIgcHJpdmF0ZSB0aHJl
YWRzIGFib3V0IHRoZSBtYWlsIGlzc3Vlcywgd2l0aCBwYXRjaHdvcmsgbGlua3MsCj4+IGJ1dCBJ
IGd1ZXNzIHRoZSBwLnMuIHdhcyBoaWRkZW4gaW4gYWxsIHRoZSBvdGhlciBzdHVmZiBpbiB0aGF0
IHRocmVhZC4KPj4gQW55d2F5cyB0aGlzIGlzIHNvbHZlZCBub3cuCj4+Cj4+PiBSZXZpZXdlZC1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPj4KPj4g
VGhhbmsgeW91LCBub3RlIHRoaXMgaXMgcGF0Y2ggMS8yIGRvZXMgdGhlIFJldmlld2VkLWJ5IGFw
cGx5IHRvCj4+IGJvdGg/ICBQYXRjaCAyLzIgaXMgaGVyZToKPj4KPj4gaHR0cHM6Ly9wYXRjaHdv
cmsuZnJlZWRlc2t0b3Aub3JnL3BhdGNoLzQyNTk4My8KPiAKPiBUaGF0IG9uZSBsb29rcyBnb29k
IGFzIHdlbGwuCj4gCj4gUmV2aWV3ZWQtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+CgpUaGFuayB5b3UuCgpJJ3ZlIHB1c2hlZCBib3RoIHRvIGRybS1p
bnRlbC1uZXh0IG5vdy4KClJlZ2FyZHMsCgpIYW5zCgoKCj4+Pj4+IC0tLQo+Pj4+PiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS92bHZfZHNpLmMgfCA0ICsrLS0KPj4+Pj4gIDEgZmlsZSBj
aGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4+Pj4+Cj4+Pj4+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zsdl9kc2kuYyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvdmx2X2RzaS5jCj4+Pj4+IGluZGV4IGQ1YTNmNjljNWRmMy4u
MzhkNWExZjNkZWQ1IDEwMDY0NAo+Pj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L3Zsdl9kc2kuYwo+Pj4+PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3Zs
dl9kc2kuYwo+Pj4+PiBAQCAtOTk2LDE0ICs5OTYsMTQgQEAgc3RhdGljIHZvaWQgaW50ZWxfZHNp
X3Bvc3RfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPj4+Pj4gIAkg
KiBGSVhNRSBBcyB3ZSBkbyB3aXRoIGVEUCwganVzdCBtYWtlIGEgbm90ZSBvZiB0aGUgdGltZSBo
ZXJlCj4+Pj4+ICAJICogYW5kIHBlcmZvcm0gdGhlIHdhaXQgYmVmb3JlIHRoZSBuZXh0IHBhbmVs
IHBvd2VyIG9uLgo+Pj4+PiAgCSAqLwo+Pj4+PiAtCWludGVsX2RzaV9tc2xlZXAoaW50ZWxfZHNp
LCBpbnRlbF9kc2ktPnBhbmVsX3B3cl9jeWNsZV9kZWxheSk7Cj4+Pj4+ICsJbXNsZWVwKGludGVs
X2RzaS0+cGFuZWxfcHdyX2N5Y2xlX2RlbGF5KTsKPj4+Pj4gIH0KPj4+Pj4gIAo+Pj4+PiAgc3Rh
dGljIHZvaWQgaW50ZWxfZHNpX3NodXRkb3duKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVy
KQo+Pj4+PiAgewo+Pj4+PiAgCXN0cnVjdCBpbnRlbF9kc2kgKmludGVsX2RzaSA9IGVuY190b19p
bnRlbF9kc2koZW5jb2Rlcik7Cj4+Pj4+ICAKPj4+Pj4gLQlpbnRlbF9kc2lfbXNsZWVwKGludGVs
X2RzaSwgaW50ZWxfZHNpLT5wYW5lbF9wd3JfY3ljbGVfZGVsYXkpOwo+Pj4+PiArCW1zbGVlcChp
bnRlbF9kc2ktPnBhbmVsX3B3cl9jeWNsZV9kZWxheSk7Cj4+Pj4+ICB9Cj4+Pj4+ICAKPj4+Pj4g
IHN0YXRpYyBib29sIGludGVsX2RzaV9nZXRfaHdfc3RhdGUoc3RydWN0IGludGVsX2VuY29kZXIg
KmVuY29kZXIsCj4+Pj4+Cj4+Pgo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
