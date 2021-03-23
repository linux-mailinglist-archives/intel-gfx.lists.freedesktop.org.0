Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 257B634665A
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 18:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B906A6EABF;
	Tue, 23 Mar 2021 17:29:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [63.128.21.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3318D6EB0C
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 17:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616520598;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=IaXjku08lJw38Jz4K+oKYtPDWrWwNMciFdk/Pj53xdY=;
 b=aJhZ15oDIg1XyhjmKuGcvzd+3Nf+qETFVJ2t33YWQfe7RLnNiJorO3ycS/wIRpYzLN0fIb
 psTmXBGvjmave+RLZaXb81RBy5amLoE3HPF+VS2/i1vG4itmCE4mmEd7UvWx+mMKinv0IP
 YQrfwSjqiRrZaE+QOIgqfOJiR0aUJIE=
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com
 [209.85.218.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-540-Jpy_vuOfPl-SmgfvF8ZYXQ-1; Tue, 23 Mar 2021 13:29:57 -0400
X-MC-Unique: Jpy_vuOfPl-SmgfvF8ZYXQ-1
Received: by mail-ej1-f70.google.com with SMTP id d6so1379229ejd.15
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 10:29:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=IaXjku08lJw38Jz4K+oKYtPDWrWwNMciFdk/Pj53xdY=;
 b=VvsRljHU6dXRBozUQwOGrQzv16a2u9y+gcel8Ih7a1PFwuMjjFPPBB9c2wdu4nmkPR
 fWSaUrqVU/7tAFIbqOTqwHBzS3DjCpMA6zW6G/aelFTsQz5Locxu7BkwDagkkKtoQ8J+
 nX+2zoSF6WamaR8BQi/3dOIq4xCMPrmCjRsKlaa5n9bIyRHfvrdAonz5YKtr04cp65tt
 Z45JFFQez1a4sPmJs8tUW5dyQL6c3N7BXLulX2KVvbmOvI+/E++FdzEmZNzNRIWkEvv/
 RMioFeAMkaQ9uv5yrYkxp9Q25SDQSv7SMN4Dm85cheYgypEj8KfeFVt1+3qCpmKQTgKL
 QShw==
X-Gm-Message-State: AOAM530R4oP6HDg4ZGtTV12W2Qp4WVCULsABv//ZfUoBjjc44kNmlfdK
 tq8B9B8gfn9xcA2Ox6ABYW2QLoY/3IKp7PEeSke9/JMTEUkQHXJeeXwVsm5gayNN68C7TkajXeL
 kAascg9JBKBsOSCBd/16yMbALd43e
X-Received: by 2002:a17:906:aad5:: with SMTP id
 kt21mr5930800ejb.160.1616520595546; 
 Tue, 23 Mar 2021 10:29:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz6V1MGNXGV7WxOvZK24w+auH2ASZ5A04Mq8FkpNVUuvcpvJwnbhpBCjqVr1kZMm2UAtFaJYg==
X-Received: by 2002:a17:906:aad5:: with SMTP id
 kt21mr5930717ejb.160.1616520594343; 
 Tue, 23 Mar 2021 10:29:54 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id gz20sm11642989ejc.25.2021.03.23.10.29.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Mar 2021 10:29:53 -0700 (PDT)
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20210301154347.50052-1-hdegoede@redhat.com>
 <8d882647-bab3-dfc3-70ad-4f1910dcb5af@redhat.com>
 <YFkDYzN0NJ3Co8bT@intel.com> <YFkFH2uAR+6mNONZ@intel.com>
 <c1beb028-9f9d-ad3e-9a06-2685ca36a8d4@redhat.com>
 <YFkQigJmpLRJWxzb@intel.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <8a127f0c-ba08-3471-88f4-ef0aa281cd7b@redhat.com>
Date: Tue, 23 Mar 2021 18:29:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <YFkQigJmpLRJWxzb@intel.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/vlv_dsi: Do no shut down
 displays on reboot if a DSI panel is used
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

SGksCgpPbiAzLzIyLzIxIDEwOjQ3IFBNLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6Cj4gT24gTW9u
LCBNYXIgMjIsIDIwMjEgYXQgMTA6Mjg6MDZQTSArMDEwMCwgSGFucyBkZSBHb2VkZSB3cm90ZToK
Pj4gSGksCj4+Cj4+IE9uIDMvMjIvMjEgOTo1OSBQTSwgVmlsbGUgU3lyasOkbMOkIHdyb3RlOgo+
Pj4gT24gTW9uLCBNYXIgMjIsIDIwMjEgYXQgMDQ6NTE6NDdQTSAtMDQwMCwgUm9kcmlnbyBWaXZp
IHdyb3RlOgo+Pj4+IE9uIEZyaSwgTWFyIDE5LCAyMDIxIGF0IDA0OjQ1OjMyUE0gKzAxMDAsIEhh
bnMgZGUgR29lZGUgd3JvdGU6Cj4+Pj4+IEhpLAo+Pj4+Pgo+Pj4+PiBPbiAzLzEvMjEgNDo0MyBQ
TSwgSGFucyBkZSBHb2VkZSB3cm90ZToKPj4+Pj4+IEFmdGVyIHRoZSByZWNlbnRseSBhZGRlZCBj
b21taXQgZmUwZjFlM2JmZGZlICgiZHJtL2k5MTU6IFNodXQgZG93bgo+Pj4+Pj4gZGlzcGxheXMg
Z3JhY2VmdWxseSBvbiByZWJvb3QiKSwgdGhlIERTSSBwYW5lbCBvbiBhIENoZXJyeSBUcmFpbCBi
YXNlZAo+Pj4+Pj4gUHJlZGlhIEJhc2ljIHRhYmxldCB3b3VsZCBubyBsb25nZXIgcHJvcGVybHkg
bGlnaHQgdXAgYWZ0ZXIgcmVib290Lgo+Pj4+Pj4KPj4+Pj4+IFRoZSBiYWNrbGlnaHQgc3RpbGwg
dHVybnMgYmFjayBvbiBhZnRlciByZWJvb3QsIGJ1dCB0aGUgTENEIHNob3dzIGFuCj4+Pj4+PiBh
bGwgYmxhY2sgZGlzcGxheS4gVGhlIGRpc3BsYXkgaXMgYWxzbyBhbGwgYmxhY2sgZHVyaW5nIHRo
ZSB0aW1lIHRoYXQKPj4+Pj4+IEVGSSAvIHRoZSBHT1AgaXMgbWFuYWdpbmcgaXQsIHNvIGUuZy4g
dGhlIGdydWIgbWVudSBhbHNvIGlzIG5vdCB2aXNpYmxlLgo+Pj4+Pj4KPj4+Pj4+IEluIHRoaXMg
c2NlbmFyaW8gdGhlIHBhbmVsIGlzIGluaXRpYWxpemVkIHNvIHRoYXQgaXQgYXBwZWFycyB0byBi
ZSB3b3JraW5nCj4+Pj4+PiBhbmQgdGhlIGZhc3Rib290IGNvZGUgc2tpcHMgZG9pbmcgYSBtb2Rl
c2V0LiBGb3JjaW5nIGEgbW9kZXNldCBieSBkb2luZyBhCj4+Pj4+PiBjaHZ0IHRvIGEgdGV4dC1j
b25zb2xlIG92ZXIgc3NoIGZvbGxvd2VkIGJ5IGVjaG8taW5nIDEgYW5kIHRoZW4gMCB0bwo+Pj4+
Pj4gL3N5cy9jbGFzcy9ncmFwaGljcy9mYjAvYmxhbmsgY2F1c2VzIHRoZSBwYW5lbCB0byB3b3Jr
IGFnYWluLgo+Pj4+Pj4KPj4+Pj4+IEFkZCBhIFFVSVJLX1NLSVBfU0hVVERPV04gcXVpcmsgd2hp
Y2ggdHVybnMgaTkxNV9kcml2ZXJfc2h1dGRvd24oKSBpbnRvCj4+Pj4+PiBhIG5vLW9wIHdoZW4g
c2V0OyBhbmQgc2V0IHRoaXMgb24gdmx2L2NodiBkZXZpY2VzIHdoZW4gYSBEU0kgcGFuZWwgaXMK
Pj4+Pj4+IGRldGVjdGVkLCB0byB3b3JrIGFyb3VuZCB0aGlzLgo+Pj4+Pj4KPj4+Pj4+IEFkbWl0
dGVkbHkgdGhpcyBpcyBhIGJpdCBvZiBhIGJpZyBoYW1tZXIsIGJ1dCB0aGVzZSBwbGF0Zm9ybXMg
aGF2ZSBiZWVuCj4+Pj4+PiBhcm91bmQgZm9yIHF1aXRlIHNvbWUgdGltZSBub3cgYW5kIHRoZXkg
aGF2ZSBhbHdheXMgd29ya2VkIGZpbmUgd2l0aG91dAo+Pj4+Pj4gdGhlIG5ldyBiZWhhdmlvciB0
byBzaHV0ZG93biBldmVyeXRoaW5nIG9uIHNodXRkb3duL3JlYm9vdC4gVGhpcyBhcHByb2FjaAo+
Pj4+Pj4gc2ltcGx5IGRpc2FibGVzIHRoZSByZWNlbnRseSBpbnRyb2R1Y2VkIG5ldyBzaHV0ZG93
biBiZWhhdmlvciBpbiB0aGlzCj4+Pj4+PiBzcGVjaWZpYyBjYXNlIHdoZXJlIGl0IGlzIGtub3du
IHRvIGNhdXNlIHByb2JsZW1zLiBXaGljaCBpcyBhIG5pY2UgYW5kCj4+Pj4+PiBzaW1wbGUgd2F5
IHRvIGRlYWwgd2l0aCB0aGlzLgo+Pj4+Pj4KPj4+Pj4+IFNpZ25lZC1vZmYtYnk6IEhhbnMgZGUg
R29lZGUgPGhkZWdvZWRlQHJlZGhhdC5jb20+Cj4+Pj4+Cj4+Pj4+IFBpbmc/IFNpbmNlIHNlbmRp
bmcgdGhpcyBwYXRjaCBJJ3ZlIGJlZW4gc2VlaW5nIHRoZSBpc3N1ZSBhZGRyZXNzZWQgYnkKPj4+
Pj4gdGhpcyBvbiB2YXJpb3VyIG90aGVyIENIVCBiYXNlZCBkZXZpY2VzIHRvby4KPj4+Pj4KPj4+
Pj4gU28gd2UgaGF2ZSB2YXJpb3VzIGRldmljZXMgc3VmZmVyaW5nIGZyb20gYSBibGFjayBzY3Jl
ZW4gYWZ0ZXIgcmVib290Cj4+Pj4+IG5vdy4gVGhpcyBpcyBwcmV0dHkgc2VyaW91cyB1c2FiaWxp
dHkgcmVncmVzc2lvbi4KPj4+Pj4KPj4+Pj4gQXMgc3VjaCBpdCB3b3VsZCBiZSBnb29kIHRvIGdl
dCB0aGlzIHJldmlld2VkLCBvciBhbm90aGVyIGZpeCBwcm9wb3NlZC4KPj4+Pgo+Pj4+IEZvciB0
aGUgcXVpcmtzIHdlIHRyeSB0byBsaW1pdCB0aGVtIHRvIHZlcnkgc3BlY2lmaWMgdmVuZG9yIGFu
ZCBtb2RlbCBpZHMsCj4+Pj4gc28gSSB3b25kZXIgaWYgaXQgd291bGQgYmUgcG9zc2libGUgdG8g
Z2V0IHRoaXMgaW5mb3JtYXRpb24gaW4gaGVyZSBpbnN0ZWFkCj4+Pj4gdG8gYWxsIHRoZSB2bHYg
d2l0aCBkc2kuLi4KPj4+Pgo+Pj4+IE9yIGF2b2lkIHRoZSBxdWlyayAiaW5mcmEiIGFuZCBza2lw
IHRvIGFsbCB2bHYgd2l0aCBhY3RpdmUgZHNpPyEKPj4+Pgo+Pj4+IEphbmk/Cj4+Pj4gVmlsbGU/
Cj4+Pgo+Pj4gV2UgbmVlZCB0byBmaWd1cmUgb3V0IHdoeSB0aGUgcGFuZWwgZG9lc24ndCBzdGFy
dCB1cCBhZ2Fpbi4KPj4KPj4gTm90ZSBpdCBpcyB0aGUgR09QIHdoaWNoIGZhaWxzIHRvIGxpZ2h0
IGl0IHVwIGFnYWluLiBJIHRoaW5rIHdlIHR1cm4gc29tZXRoaW5nCj4+IG9mZiwgd2hpY2ggYWZ0
ZXIgYSBwb3dlci1vbi1yZXNldCBpcyBvbiwgc28gdGhlIEdPUCBleHBlY3RzIGl0IHRvIGJlIG9u
Lgo+IAo+IEhtbS4gRG8gYW55IG9mIHRoZSByZWJvb3Q9d2FybXxjb2xkfHdoYXRldmVyIGtub2Jz
IG1ha2UgYSBkaWZmZXJlbmNlPwo+IEFyZSB0aGVyZSBhbnkgZmFzdCB2cy4gc2xvdyBib290IHNl
dHRpbmdzIGluIHRoZSBCSU9TIHNldHVwPwoKT2ssIHNvIEkgd2FzIHJ1bm5pbmcgdGhlIHRlc3Rz
IHdoaWNoIHlvdSByZXF1ZXN0ZWQgYW5kIGR1cmluZyB0aGlzCkkgbWFuYWdlZCB0byBmaW5kIHRo
ZSByZWFsIHByb2JsZW0uCgpXaGF0IGhhcHBlbnMgb24gcmVib290IGlzIGEgcmVhbGx5IHF1aWNr
IHBhbmVsIG9mZi9vbiBjeWNsZSBhbmQgdGhhdCBpcwpjYXVzaW5nIHRoZSBpc3N1ZS4KCkkgY2Fu
IHJlcHJvZHVjZSB0aGlzIGJ5IGRvaW5nOgoKY2h2dCAzOyBlY2hvIDEgPiAvc3lzL2NsYXNzL2dy
YXBoaWNzL2ZiMC9ibGFuazsgZWNobyAwID4gL3N5cy9jbGFzcy9ncmFwaGljcy9mYjAvYmxhbmsK
ClRoZSBwcm9ibGVtIGlzIHRoYXQgd2UncmUgbm90IGhvbm9yaW5nIHBhbmVsX3B3cl9jeWNsZV9k
ZWxheSBiZWNhdXNlCmludGVsX2RzaV9tc2xlZXAoKSBpcyBhIG5vLW9wIG9uIGRldmljZXMgd2l0
aCBhIE1JUEktc2VxdWVuY2VzIHZlcnNpb24gPj0gMywKYmVjYXVzZSB0aG9zZSBzZXF1ZW5jZXMg
YWxyZWFkeSBjb250YWluIHRoZSBuZWNlc3NhcnkgZGVsYXlzLCBhdCBsZWFzdApmb3IgbW9zdCBv
ZiB0aGUgc3RlcHMgZHVyaW5nIHRoZSBvbi9vZmYgc2VxdWVuY2VzLiBJdCBzZWVtcyB0aGF0IHRo
ZQpwd3ItY3ljbGUgZGVsYXkgaXMgbm90IGhhbmRsZWQgYnkgdGhvc2UgdjMrIHNlcXVlbmNlcy4K
ClNvIGZpeGluZyB0aGlzIGlzIGFzIHNpbXBsZSBhcyBzd2l0Y2hpbmcgdG8gYSByZWd1bGFyIG1z
bGVlcCBmb3IgdGhlCmludGVsX2RzaS0+cGFuZWxfcHdyX2N5Y2xlX2RlbGF5LgoKT25jZSB3ZSBk
byB0aGF0IGl0IHdvdWxkIGJlIGdvb2QgKGZvciBlLmcuIHN1c3BlbmQvcmVzdW1lIHNwZWVkKSB0
byBmaXg6CgogICAgICAgIC8qCiAgICAgICAgICogRklYTUUgQXMgd2UgZG8gd2l0aCBlRFAsIGp1
c3QgbWFrZSBhIG5vdGUgb2YgdGhlIHRpbWUgaGVyZQogICAgICAgICAqIGFuZCBwZXJmb3JtIHRo
ZSB3YWl0IGJlZm9yZSB0aGUgbmV4dCBwYW5lbCBwb3dlciBvbi4KICAgICAgICAgKi8KCldoaWNo
IHNpdHMgcmlnaHQgYWJvdmUgdGhhdCBtc2xlZXAuIFNpbmNlIEkgaGF2ZSBhIHJlcHJvZHVjZXIg
bm93IHdoaWNoCnNob3dzIHdoZW4gdGhlIHNsZWVwIGlzIHRvbyBzaG9ydCwgaXQgc2hvdWxkIG5v
dyBiZSBlYXN5IHRpIGZpeCB0aGUgRklYTUUKYW5kIHRlc3QgdGhhdCB0aGUgZml4IHdvcmtzLiBJ
J2xsIGRvIHRoaXMgaW4gYSBzZXBhcmF0ZSBwYXRjaCBhbmQgc2VuZAphIHBhdGNoLXNldCB3aXRo
IGJvdGggcGF0Y2hlcyByZXBsYWNpbmcgdGhpcyBwYXRjaC4KClJlZ2FyZHMsCgpIYW5zCgpfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFp
bGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5m
cmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
