Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D13347A49
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Mar 2021 15:11:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31CD86E364;
	Wed, 24 Mar 2021 14:11:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [216.205.24.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BA9C6EB97
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 14:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616595064;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=XTMC5qN8DJOTO3PHrVdMzJ8JtyPTnuysM9uOY1D8nCk=;
 b=UuoMSbBoSX0hpJgY3sJju1v+0Dq6hDrrzYDWvfAQUD2xajeatKkZ8j3/OuSqecvzuu+uaR
 MUWcY+2JycCq02J5N6KegAAhlYdrnL3m3GHPwtUwdXwo5BdQ9UAZ+uXg6YrGP3B450BgWe
 GZvWGBhOjW2Q+FbMa7flbB5Kr0RVQ9Y=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-301-9rxxliHnOvWvrY7yBSDkHQ-1; Wed, 24 Mar 2021 10:11:01 -0400
X-MC-Unique: 9rxxliHnOvWvrY7yBSDkHQ-1
Received: by mail-ej1-f71.google.com with SMTP id a22so983827ejx.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Mar 2021 07:11:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XTMC5qN8DJOTO3PHrVdMzJ8JtyPTnuysM9uOY1D8nCk=;
 b=auT28Uo3XLBnvOljLEQN4ONFOhDJgUKus19ysTIWsgdtA/MUsQeRQzsaNZ74B+4OoI
 ud4EfM5LFWySwSScFMm1rVrtRzveskICx9YfUlZmSIXPE3mwGatCLXs6QQL1LaPJRC92
 pcjfnkjgpfYeC3VhTR0HdvtYLiOGt4AIhI6HH3GvTpb70M0Vx00E3zLLovw/w9KczGN2
 obhm1AW4eJuud4DdOl0H/pnmBJ9J9Fl2F73nmAMf5fmAB25WmHlrq9+WXN/0jdo+g806
 kVc+CCXvvDPMj6Vtul+5reP5UO+aODIUBy0UgWLP+8M58XmBpO8OY8DvQgmtQCxff11D
 35Zg==
X-Gm-Message-State: AOAM532kFrMieQqqvcYRW5Cp6TpldwvhrakvssF/CuaQnMUDxjVsa7kK
 xwQ6KypCb8anHje6kWnx8Hfh5/riwuf5iYXivRrnFm6t3wMvg5jAazh3//ZIgflyLd9egGTAXoa
 qBTmFlfHeopoNyrKba4xenb4mLL6Z
X-Received: by 2002:a17:907:6005:: with SMTP id
 fs5mr3946933ejc.184.1616595060661; 
 Wed, 24 Mar 2021 07:11:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz+8+Z+nLSHRtQpBhIIxIJKuenmuxIsJnN0RTUShe01v1mSGjj9VwEpUi6zVTaNGEaCJSSGwQ==
X-Received: by 2002:a17:907:6005:: with SMTP id
 fs5mr3946921ejc.184.1616595060471; 
 Wed, 24 Mar 2021 07:11:00 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id bt14sm1191350edb.92.2021.03.24.07.10.59
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 24 Mar 2021 07:11:00 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210302120040.94435-1-hdegoede@redhat.com>
 <20210302120040.94435-3-hdegoede@redhat.com> <YD5Q8mA6y4/qcelo@intel.com>
 <d620fd9d-1685-3b2a-7c3b-a5d5fa6daddc@redhat.com>
 <YFtGjHEdkMfR3bLr@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <7d9bb155-5e07-161d-c699-581d89b9fb39@redhat.com>
Date: Wed, 24 Mar 2021 15:10:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFtGjHEdkMfR3bLr@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH resend 2/2] drm/i915/display: Make
 vlv_find_free_pps() skip pipes which are in use for non DP purposes
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

SGksCgpPbiAzLzI0LzIxIDM6MDIgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPiBPbiBUdWUs
IE1hciAyMywgMjAyMSBhdCAxMTozOTowOUFNICswMTAwLCBIYW5zIGRlIEdvZWRlIHdyb3RlOgo+
PiBIaSwKPj4KPj4gT24gMy8yLzIxIDM6NTEgUE0sIFZpbGxlIFN5cmrDpGzDpCB3cm90ZToKPj4+
IE9uIFR1ZSwgTWFyIDAyLCAyMDIxIGF0IDAxOjAwOjQwUE0gKzAxMDAsIEhhbnMgZGUgR29lZGUg
d3JvdGU6Cj4+Pj4gQXMgZXhwbGFpbmVkIGJ5IGEgbG9uZyBjb21tZW50IGJsb2NrLCBvbiBWTFYg
aW50ZWxfc2V0dXBfb3V0cHV0cygpCj4+Pj4gc29tZXRpbWVzIHRoaW5rcyB0aGVyZSBtaWdodCBi
ZSBhbiBlRFAgcGFuZWwgY29ubmVjdGVkIHdoaWxlIHRoZXJlIGlzIG5vbmUuCj4+Pj4gSW4gdGhp
cyBjYXNlIGludGVsX3NldHVwX291dHB1dHMoKSB3aWxsIGNhbGwgaW50ZWxfZHBfaW5pdCgpIHRv
IGNoZWNrLgo+Pj4+Cj4+Pj4gSW4gdGhpcyBzY2VuYXJpbyB2bHZfZmluZF9mcmVlX3BwcygpIGVu
ZHMgdXAgc2VsZWN0aW5nIHBpcGUgQSBmb3IgdGhlIHBwcywKPj4+PiBldmVuIHRob3VnaCB0aGlz
IG1pZ2h0IGJlIGluIHVzZSBmb3Igbm9uIERQIHB1cnBvc2VzLiBXaGVuIHRoaXMgaXMgdGhlIGNh
c2UKPj4+PiB0aGVuIHRoZSBhc3NlcnRfcGlwZSgpIGluIHZsdl9mb3JjZV9wbGxfb24oKSB3aWxs
IGZhaWwgd2hlbiBjYWxsZWQgZnJvbQo+Pj4+IHZsdl9wb3dlcl9zZXF1ZW5jZXJfa2ljaygpLgo+
Pj4KPj4+IFRoZSBpZGVhIGlzIHRoYXQgeW91ICpjYW4qIHNlbGVjdCBhIFBQUyBmcm9tIGEgcGlw
ZSB1c2VkIGZvciBhIG5vbi1EUAo+Pj4gcG9ydCBzaW5jZSB0aG9zZSBkb24ndCBjYXJlIGFib3V0
IHRoZSBQUFMgc3R1ZmYuIFNvIHRoaXMgZG9lc24ndCBzZWVtCj4+PiBjb3JyZWN0Lgo+Pgo+PiBU
aGV5IG1heSBub3QgY2FyZSBhYm91dCB0aGUgUFBTIHN0dWZmLCBidXQgYXMgdGhlIFdBUk4gLyBi
YWNrdHJhY2UKPj4gc2hvd3MgaWYgdGhlIERQTExfVkNPX0VOQUJMRSBiaXQgaXMgbm90IGFscmVh
ZHkgc2V0IGZvciB0aGUgcGlwZSwgd2hpbGUKPj4gdGhlIHBpcGUgaXMgIm90aGVyd2lzZSIgaW4g
dXNlIHRoZW4gdmx2X2ZvcmNlX3BsbF9vbigpIGJlY29tZXMgdW5oYXBweQo+PiB0cmlnZ2VyaW5n
IHRoZSBXQVJOLkRQTExfVkNPX0VOQUJMRSBiaXQgaXMgbm90Cj4+Cj4+PiBhKSBJIHdvdWxkIGxp
a2UgdG8gc2VlIHRoZSBWQlQgZm9yIHRoaXMgbWFjaGluZQo+Pgo+PiBodHRwczovL2ZlZG9yYXBl
b3BsZS5vcmcvfmp3cmRlZ29lZGUvdm95by13aW5wYWQtYTE1LXZidAo+Pgo+Pj4gYikgSSB3b25k
ZXIgaWYgdGhlIERTSSBQTEwgaXMgc3VmZmljaWVudCBmb3IgZ2V0dGluZyB0aGUgUFBTIGdvaW5n
Pwo+Pgo+PiBJIGhhdmUgbm8gaWRlYSwgSSBqdXN0IG5vdGljZWQgdGhlIFdBUk4gLyBiYWNrdHJh
Y2UgYW5kIHRoaXMgc2VlbWVkCj4+IGxpa2UgYSByZWFzb25hYmx5IHdheSB0byBkZWFsIHdpdGgg
aXQuIFdpdGggdGhhdCBzYWlkIEknbSBmaW5lIHdpdGggZml4aW5nCj4+IHRoaXMgYSBkaWZmZXJl
bnQgd2F5Lgo+Pgo+Pj4gYykgSWYgd2UgZG8gbmVlZCB0aGUgbm9ybWFsIERQTEwgaXMgdGhlcmUg
YW55IGhhcm0gdG8gRFNJIGluIGVuYWJsaW5nIGl0Pwo+Pgo+PiBJIHdvdWxkIGFzc3VtZSB0aGlz
IGluY3JlYXNlcyBwb3dlci1jb25zdW1wdGlvbiBhbmQgRFNJIHBhbmVscyBhcmUgYWxtb3N0Cj4+
IGFsd2F5cyB1c2VkIGluIGJhdHRlcnkgcG93ZXJlZCBkZXZpY2VzLgo+IAo+IFRoaXMgaXMganVz
dCB1c2VkIHdoaWxlIHByb2JpbmcgdGhlIHBhbmVsLCBzbyBwb3dlciBjb25zdW1wdGlvbiBpcwo+
IG5vdCBhIGNvbmNlcm4uCgpTb3JyeSBJIG1pc2ludGVycHJldGVkIHdoYXQgeW91IHdyb3RlLCBJ
IGludGVycHJldGVkIGl0IGFzIGhhdmUgdGhlIERTSQpjb2RlIGVuYWJsZSBpdCB0byBhdm9pZCB0
aGlzIHByb2JsZW0uIEkgc2VlIG5vdyB0aGF0IHRoYXQgaXMgbm93IHdoYXQKeW91IG1lYW50LgoK
Pj4gQWxzbyB0aGlzIHdvdWxkIGltcGFjdCBhbGwgQllUL0NIVCBkZXZpY2VzLCBwb3NzaWJsZSB0
cmlnZ2VyaW5nIHVud2FudGVkCj4+IHNpZGUtZWZmZWN0cy4gV2hlcmUgYXMgdGhlIHByb3Bvc2Vk
IGZpeCBiZWxvdyBpcyBtdWNoIG1vcmUgbmFycm93bHkgdGFyZ2V0ZWQKPj4gYXQgdGhlIHByb2Js
ZW0uIEl0IG1pZ2h0IG5vdCBiZSB0aGUgbW9zdCBwcmV0dHkgZml4IGJ1dCBBRkFJQ1QgaXQgaGFz
IGEgbG93Cj4+IHJpc2sgb2YgY2F1c2luZyByZWdyZXNzaW9ucy4KPiAKPiBJdCByYXRoZXIgc2ln
bmlmaWNhbnRseSBjaGFuZ2VzIHRoZSBsb2dpYyBvZiB0aGUgd29ya2Fyb3VuZCwgcG90ZW50aWFs
bHkKPiBjYXVzaW5nIHVzIHRvIG5vdCBmaW5kIGEgZnJlZSBQUFMgYXQgYWxsLiBFZy4gaWYgeW91
IHdlcmUgdG8gYm9vdCB3aXRoCj4gYSBWTFYgd2l0aCBwaXBlIEEgLT4gZURQIEIgKyBlRFAgQyBp
bmFjdGl2ZSArIHBpcGUgQiAtPiBWR0EgdGhlbiB5b3VyCj4gY2hhbmdlIHdvdWxkIGNhdXNlIHVz
IHRvIG5vdCBmaW5kIHRoZSBmcmVlIHBpcGUgQiBQUFMgZm9yIHByb2JpbmcgZURQIEMsCj4gYW5k
IGluIHRoZSBlbmQgd2UnZCBnZXQgYSBXQVJOIGFuZCBmYWxsIGJhY2sgdG8gcGlwZSBBIFBQUyB3
aGljaCB3b3VsZAo+IGNsb2JiZXIgdGhlIGFjdHVhbGx5IGluIHVzZSBwaXBlIEEgUFBTLgoKSSB3
b3VsZCB3ZWxjb21lLCBhbmQgd2lsbCBoYXBwaWx5IHRlc3QsIGFub3RoZXIgZml4IGZvciB0aGlz
LiBBVE0gd2UKaGF2ZSBhIFdBUk4gdHJpZ2dlcmluZyBvbiBhY3R1YWwgaGFyZHdhcmUgKGFuZCBu
b3QganVzdCBpbiBhIGh5cG90aGV0aWNhbApleGFtcGxlKSBhbmQgSSB3b3VsZCBsaWtlIHRvIHNl
ZSB0aGF0IFdBUk4gZml4ZWQuIElmIHlvdSBjYW4gY29tZSB1cCB3aXRoCmEgYmV0dGVyIGZpeCBJ
IHdvdWxkIGJlIGhhcHB5IHRvIHRlc3QuCgpSZWdhcmRzLAoKSGFucwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QK
SW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9w
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
