Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 000D012201D
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2019 01:56:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 406186E917;
	Tue, 17 Dec 2019 00:56:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com
 [IPv6:2a00:1450:4864:20::242])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F4A86E8F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 23:40:37 +0000 (UTC)
Received: by mail-lj1-x242.google.com with SMTP id e28so1880388ljo.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 15:40:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=wSZHlO0HLZeAyJZOYAbytFQfR6VAJpW0hkSpY0Gio3c=;
 b=W0aeNHwT+XkCRmdJQ4gPRY7AM2h6ZQfLiyaNLjuFjvjtZH7pILX2k9q/AYaq5a9Lam
 16ARxxvhfsIh3rv5WwtU90IV1hBihkSb0yZV4h7l9zb0Rxl6MTY9OvsFwD17WFZW5nLB
 RcuKWT8VGQw0/DHdeIspj3SEiv1i7++XSGd1exMSRjz/wV38ylUMfDhst+4FbQtzHZwS
 vKsVZBG3kMLT1OxWPAqzkJ1O9oe8waWScDmQG+l6RNGdUABCo6UqhmjSia7btcZW0XeI
 EwCRvKQDDz64gtdWeYWaEq8JTDHU5LYFH34KGXMe7fdZqSNh/u2PxVLkTBGjQspgJaID
 8g9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=wSZHlO0HLZeAyJZOYAbytFQfR6VAJpW0hkSpY0Gio3c=;
 b=rh90kix1+Bz0hY6M/RCsw4yoQQJpM5nfof9utJZcQb3JrVPD1rmXIcK1zKutfZC9jM
 8/62+dgu6lR14oKDCeAVlSc7r+Od6hFITACK+h4o3UnAPDdcLKj/NJ+amFhaIpwkeONy
 E2801BeABIUJUN9TRyD+s5/kQ0pkxR1laAOxNbm3UmuDmLT06qXEzjxJ1aGrRQWGXcXL
 UmMUX5vSK4GaHmxjMmYPcc5v2aqoO4TSC1ITxgpkZ0Ai8qhiLieRmvTSJ1g2ZUCtfKVm
 O93O9mQ927VOOvb3uk3x5D86kNheAjCNPzXTavWf1s62BnTZ4vnAM06fjZgNbNoJuTru
 poJQ==
X-Gm-Message-State: APjAAAXtFy3qzf82AFqq/+Ht83BfUznXDe/ReLB9YaF7EvfDvLSPWMes
 fTxPaUbLaej22uV5QyGlCFEh2Jk3jLQq20rMfFuQ9w==
X-Google-Smtp-Source: APXvYqyHcHWhvKmCmUIJ/bmGJRefxdk70RCBl+VTOM20rgOQ70v7ZntHe/1FANZWvJZUHtvNfT1dR3Up1HSKc3soy2A=
X-Received: by 2002:a2e:9b95:: with SMTP id z21mr1023761lji.112.1576539635175; 
 Mon, 16 Dec 2019 15:40:35 -0800 (PST)
MIME-Version: 1.0
References: <20191205093346.57930-1-rajatja@google.com>
 <20191205093346.57930-3-rajatja@google.com>
In-Reply-To: <20191205093346.57930-3-rajatja@google.com>
From: Rajat Jain <rajatja@google.com>
Date: Mon, 16 Dec 2019 15:39:58 -0800
Message-ID: <CACK8Z6Fe7XPPMGmtbC9yAKxJsZnNBpe464O3QffWD3_vdgYiYA@mail.gmail.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Sean Paul <sean@poorly.run>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, 
 Chris Wilson <chris@chris-wilson.co.uk>, Imre Deak <imre.deak@intel.com>, 
 =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, 
 intel-gfx@lists.freedesktop.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Mat King <mathewk@google.com>,
 Daniel Thompson <daniel.thompson@linaro.org>, Jonathan Corbet <corbet@lwn.net>,
 Pavel Machek <pavel@denx.de>, Sean Paul <seanpaul@google.com>,
 Duncan Laurie <dlaurie@google.com>, 
 Jesse Barnes <jsbarnes@google.com>, Thierry Reding <thierry.reding@gmail.com>
X-Mailman-Approved-At: Tue, 17 Dec 2019 00:56:09 +0000
Subject: Re: [Intel-gfx] [PATCH v3 3/3] drm/i915: Add support for integrated
 privacy screens
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
Cc: Rajat Jain <rajatxjain@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCBEZWMgNSwgMjAxOSBhdCAxOjM0IEFNIFJhamF0IEphaW4gPHJhamF0amFAZ29vZ2xl
LmNvbT4gd3JvdGU6Cj4KPiBDZXJ0YWluIGxhcHRvcHMgbm93IGNvbWUgd2l0aCBwYW5lbHMgdGhh
dCBoYXZlIGludGVncmF0ZWQgcHJpdmFjeQo+IHNjcmVlbnMgb24gdGhlbS4gVGhpcyBwYXRjaCBh
ZGRzIHN1cHBvcnQgZm9yIHN1Y2ggcGFuZWxzIGJ5IGFkZGluZwo+IGEgcHJpdmFjeS1zY3JlZW4g
cHJvcGVydHkgdG8gdGhlIGludGVsX2Nvbm5lY3RvciBmb3IgdGhlIHBhbmVsLCB0aGF0Cj4gdGhl
IHVzZXJzcGFjZSBjYW4gdGhlbiB1c2UgdG8gY29udHJvbCBhbmQgY2hlY2sgdGhlIHN0YXR1cy4K
Pgo+IElkZW50aWZ5aW5nIHRoZSBwcmVzZW5jZSBvZiBwcml2YWN5IHNjcmVlbiwgYW5kIGNvbnRy
b2xsaW5nIGl0LCBpcyBkb25lCj4gdmlhIEFDUEkgX0RTTSBtZXRob2RzLgo+Cj4gQ3VycmVudGx5
LCB0aGlzIGlzIGRvbmUgb25seSBmb3IgdGhlIEludGVsIGRpc3BsYXkgcG9ydHMuIEJ1dCBpbiBm
dXR1cmUsCj4gdGhpcyBjYW4gYmUgZG9uZSBmb3IgYW55IG90aGVyIHBvcnRzIGlmIHRoZSBoYXJk
d2FyZSBiZWNvbWVzIGF2YWlsYWJsZQo+IChlLmcuIGV4dGVybmFsIG1vbml0b3JzIHN1cHBvcnRp
bmcgaW50ZWdyYXRlZCBwcml2YWN5IHNjcmVlbnM/KS4KPgo+IFNpZ25lZC1vZmYtYnk6IFJhamF0
IEphaW4gPHJhamF0amFAZ29vZ2xlLmNvbT4KCkhpIEphbmksCgogSnVzdCBjaGVja2luZyB0byBz
ZWUgaWYgeW91IGdvdCBhIGNoYW5jZSB0byBsb29rIGF0IHRoaXMuLi4KClRoYW5rcywKClJhamF0
Cgo+IC0tLQo+IHYzOiAqIENoYW5nZSBsaWNlbnNlIHRvIEdQTC0yLjAgT1IgTUlUCj4gICAgICog
TW92ZSBwcml2YWN5IHNjcmVlbiBlbnVtIGZyb20gVUFQSSB0byBpbnRlbF9kaXNwbGF5X3R5cGVz
LmgKPiAgICAgKiBSZW5hbWUgcGFyYW1ldGVyIG5hbWUgYW5kIHNvbWUgb3RoZXIgbWlub3IgY2hh
bmdlcy4KPiB2MjogRm9ybWVkIGJ5IHNwbGl0dGluZyB0aGUgb3JpZ2luYWwgcGF0Y2ggaW50byBt
dWx0aXBsZSBwYXRjaGVzLgo+ICAgICAtIEFsbCBjb2RlIGhhcyBiZWVuIG1vdmVkIGludG8gaTkx
NSBub3cuCj4gICAgIC0gUHJpdmFjeSBzY3JlZW4gaXMgYSBpOTE1IHByb3BlcnR5Cj4gICAgIC0g
SGF2ZSBhIGxvY2FsIHN0YXRlIHZhcmlhYmxlIHRvIHN0b3JlIHRoZSBwcnZhY3kgc2NyZWVuLiBE
b24ndCByZWFkCj4gICAgICAgaXQgZnJvbSBoYXJkd2FyZS4KPgo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZSAgICAgICAgICAgICAgICAgfCAgMyArLQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jICAgfCAxMyArKystCj4gIC4uLi9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYyAgICB8IDM1ICsrKysrKysrKwo+ICAuLi4vZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmggICAgfCAgMSArCj4gIC4uLi9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8IDE4ICsrKysrCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyAgICAgICB8ICA2ICsrCj4gIC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmMgICB8IDcyICsrKysrKysrKysr
KysrKysrKysKPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCAg
IHwgMjUgKysrKysrKwo+ICA4IGZpbGVzIGNoYW5nZWQsIDE2OSBpbnNlcnRpb25zKCspLCA0IGRl
bGV0aW9ucygtKQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jCj4gIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZhY3lfc2NyZWVuLmgKPgo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtlZmlsZSBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L01ha2VmaWxlCj4gaW5kZXggOTBkY2YwOWY1MmNjLi5mNzA2N2M4ZjA0MDcgMTAwNjQ0Cj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9NYWtlZmlsZQo+IEBAIC0xOTcsNyArMTk3LDggQEAgaTkxNS15ICs9IFwKPiAgICAgICAg
IGRpc3BsYXkvaW50ZWxfdmdhLm8KPiAgaTkxNS0kKENPTkZJR19BQ1BJKSArPSBcCj4gICAgICAg
ICBkaXNwbGF5L2ludGVsX2FjcGkubyBcCj4gLSAgICAgICBkaXNwbGF5L2ludGVsX29wcmVnaW9u
Lm8KPiArICAgICAgIGRpc3BsYXkvaW50ZWxfb3ByZWdpb24ubyBcCj4gKyAgICAgICBkaXNwbGF5
L2ludGVsX3ByaXZhY3lfc2NyZWVuLm8KPiAgaTkxNS0kKENPTkZJR19EUk1fRkJERVZfRU1VTEFU
SU9OKSArPSBcCj4gICAgICAgICBkaXNwbGF5L2ludGVsX2ZiZGV2Lm8KPgo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+IGluZGV4IGMyODc1YjEwYWRmOS4u
YzczYjgxYzRjM2Y2IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYXRvbWljLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pYy5jCj4gQEAgLTM3LDYgKzM3LDcgQEAKPiAgI2luY2x1ZGUgImludGVsX2F0b21pYy5o
Igo+ICAjaW5jbHVkZSAiaW50ZWxfZGlzcGxheV90eXBlcy5oIgo+ICAjaW5jbHVkZSAiaW50ZWxf
aGRjcC5oIgo+ICsjaW5jbHVkZSAiaW50ZWxfcHJpdmFjeV9zY3JlZW4uaCIKPiAgI2luY2x1ZGUg
ImludGVsX3Nwcml0ZS5oIgo+Cj4gIC8qKgo+IEBAIC01NywxMSArNTgsMTQgQEAgaW50IGludGVs
X2RpZ2l0YWxfY29ubmVjdG9yX2F0b21pY19nZXRfcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0
b3IgKmNvbm5lY3RvciwKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJp
diA9IHRvX2k5MTUoZGV2KTsKPiAgICAgICAgIHN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rv
cl9zdGF0ZSAqaW50ZWxfY29ubl9zdGF0ZSA9Cj4gICAgICAgICAgICAgICAgIHRvX2ludGVsX2Rp
Z2l0YWxfY29ubmVjdG9yX3N0YXRlKHN0YXRlKTsKPiArICAgICAgIHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmludGVsX2Nvbm5lY3RvciA9IHRvX2ludGVsX2Nvbm5lY3Rvcihjb25uZWN0b3IpOwo+
Cj4gICAgICAgICBpZiAocHJvcGVydHkgPT0gZGV2X3ByaXYtPmZvcmNlX2F1ZGlvX3Byb3BlcnR5
KQo+ICAgICAgICAgICAgICAgICAqdmFsID0gaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW87
Cj4gICAgICAgICBlbHNlIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9w
cm9wZXJ0eSkKPiAgICAgICAgICAgICAgICAgKnZhbCA9IGludGVsX2Nvbm5fc3RhdGUtPmJyb2Fk
Y2FzdF9yZ2I7Cj4gKyAgICAgICBlbHNlIGlmIChwcm9wZXJ0eSA9PSBpbnRlbF9jb25uZWN0b3It
PnByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KQo+ICsgICAgICAgICAgICAgICAqdmFsID0gaW50ZWxf
Y29ubl9zdGF0ZS0+cHJpdmFjeV9zY3JlZW5fc3RhdHVzOwo+ICAgICAgICAgZWxzZSB7Cj4gICAg
ICAgICAgICAgICAgIERSTV9ERUJVR19BVE9NSUMoIlVua25vd24gcHJvcGVydHkgW1BST1A6JWQ6
JXNdXG4iLAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByb3BlcnR5LT5iYXNl
LmlkLCBwcm9wZXJ0eS0+bmFtZSk7Cj4gQEAgLTg5LDE1ICs5MywxOCBAQCBpbnQgaW50ZWxfZGln
aXRhbF9jb25uZWN0b3JfYXRvbWljX3NldF9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAq
Y29ubmVjdG9yLAo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShkZXYpOwo+ICAgICAgICAgc3RydWN0IGludGVsX2RpZ2l0YWxfY29ubmVjdG9yX3N0
YXRlICppbnRlbF9jb25uX3N0YXRlID0KPiAgICAgICAgICAgICAgICAgdG9faW50ZWxfZGlnaXRh
bF9jb25uZWN0b3Jfc3RhdGUoc3RhdGUpOwo+ICsgICAgICAgc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29ubmVjdG9yKGNvbm5lY3Rvcik7Cj4KPiAg
ICAgICAgIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+Zm9yY2VfYXVkaW9fcHJvcGVydHkpIHsK
PiAgICAgICAgICAgICAgICAgaW50ZWxfY29ubl9zdGF0ZS0+Zm9yY2VfYXVkaW8gPSB2YWw7Cj4g
ICAgICAgICAgICAgICAgIHJldHVybiAwOwo+IC0gICAgICAgfQo+IC0KPiAtICAgICAgIGlmIChw
cm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0eSkgewo+ICsgICAgICAg
fSBlbHNlIGlmIChwcm9wZXJ0eSA9PSBkZXZfcHJpdi0+YnJvYWRjYXN0X3JnYl9wcm9wZXJ0eSkg
ewo+ICAgICAgICAgICAgICAgICBpbnRlbF9jb25uX3N0YXRlLT5icm9hZGNhc3RfcmdiID0gdmFs
Owo+ICAgICAgICAgICAgICAgICByZXR1cm4gMDsKPiArICAgICAgIH0gZWxzZSBpZiAocHJvcGVy
dHkgPT0gaW50ZWxfY29ubmVjdG9yLT5wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eSkgewo+ICsgICAg
ICAgICAgICAgICBpbnRlbF9wcml2YWN5X3NjcmVlbl9zZXRfdmFsKGludGVsX2Nvbm5lY3Rvciwg
dmFsKTsKPiArICAgICAgICAgICAgICAgaW50ZWxfY29ubl9zdGF0ZS0+cHJpdmFjeV9zY3JlZW5f
c3RhdHVzID0gdmFsOwo+ICsgICAgICAgICAgICAgICByZXR1cm4gMDsKPiAgICAgICAgIH0KPgo+
ICAgICAgICAgRFJNX0RFQlVHX0FUT01JQygiVW5rbm93biBwcm9wZXJ0eSBbUFJPUDolZDolc11c
biIsCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29u
bmVjdG9yLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5j
Cj4gaW5kZXggMTEzM2M0ZTk3YmI0Li5mM2UwNDFjNzM3ZGUgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmMKPiBAQCAtMjk2LDMgKzI5Niwz
OCBAQCBpbnRlbF9hdHRhY2hfY29sb3JzcGFjZV9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yKQo+ICAgICAgICAgZHJtX29iamVjdF9hdHRhY2hfcHJvcGVydHkoJmNvbm5l
Y3Rvci0+YmFzZSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbm5lY3Rv
ci0+Y29sb3JzcGFjZV9wcm9wZXJ0eSwgMCk7Cj4gIH0KPiArCj4gK3N0YXRpYyBjb25zdCBzdHJ1
Y3QgZHJtX3Byb3BfZW51bV9saXN0IHByaXZhY3lfc2NyZWVuX2VudW1bXSA9IHsKPiArICAgICAg
IHsgUFJJVkFDWV9TQ1JFRU5fRElTQUJMRUQsICJEaXNhYmxlZCIgfSwKPiArICAgICAgIHsgUFJJ
VkFDWV9TQ1JFRU5fRU5BQkxFRCwgIkVuYWJsZWQiIH0sCj4gK307Cj4gKwo+ICsvKioKPiArICog
aW50ZWxfYXR0YWNoX3ByaXZhY3lfc2NyZWVuX3Byb3BlcnR5IC0KPiArICogICAgIGNyZWF0ZSBh
bmQgYXR0YWNoIHRoZSBjb25uZWN0ZXIncyBwcml2YWN5LXNjcmVlbiBwcm9wZXJ0eS4gKgo+ICsg
KiBAY29ubmVjdG9yOiBjb25uZWN0b3IgZm9yIHdoaWNoIHRvIGluaXQgdGhlIHByaXZhY3ktc2Ny
ZWVuIHByb3BlcnR5Cj4gKyAqCj4gKyAqIFRoaXMgZnVuY3Rpb24gY3JlYXRlcyBhbmQgYXR0YWNo
ZXMgdGhlICJwcml2YWN5LXNjcmVlbiIgcHJvcGVydHkgdG8gdGhlCj4gKyAqIGNvbm5lY3Rvci4g
SW5pdGlhbCBzdGF0ZSBvZiBwcml2YWN5LXNjcmVlbiBpcyBzZXQgdG8gZGlzYWJsZWQuCj4gKyAq
Lwo+ICt2b2lkCj4gK2ludGVsX2F0dGFjaF9wcml2YWN5X3NjcmVlbl9wcm9wZXJ0eShzdHJ1Y3Qg
ZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgaW50ZWxfY29u
bmVjdG9yICppbnRlbF9jb25uZWN0b3IgPSB0b19pbnRlbF9jb25uZWN0b3IoY29ubmVjdG9yKTsK
PiArICAgICAgIHN0cnVjdCBkcm1fcHJvcGVydHkgKnByb3A7Cj4gKwo+ICsgICAgICAgaWYgKCFp
bnRlbF9jb25uZWN0b3ItPnByaXZhY3lfc2NyZWVuX3Byb3BlcnR5KSB7Cj4gKyAgICAgICAgICAg
ICAgIHByb3AgPSBkcm1fcHJvcGVydHlfY3JlYXRlX2VudW0oY29ubmVjdG9yLT5kZXYsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgRFJNX01PREVfUFJP
UF9FTlVNLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICJwcml2YWN5LXNjcmVlbiIsCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgcHJpdmFjeV9zY3JlZW5fZW51bSwKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIEFSUkFZX1NJWkUocHJpdmFjeV9zY3JlZW5fZW51bSkpOwo+
ICsgICAgICAgICAgICAgICBpZiAoIXByb3ApCj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmV0
dXJuOwo+ICsKPiArICAgICAgICAgICAgICAgaW50ZWxfY29ubmVjdG9yLT5wcml2YWN5X3NjcmVl
bl9wcm9wZXJ0eSA9IHByb3A7Cj4gKyAgICAgICB9Cj4gKwo+ICsgICAgICAgZHJtX29iamVjdF9h
dHRhY2hfcHJvcGVydHkoJmNvbm5lY3Rvci0+YmFzZSwgcHJvcCwKPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIFBSSVZBQ1lfU0NSRUVOX0RJU0FCTEVEKTsKPiArfQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb25uZWN0b3IuaAo+IGluZGV4IDkz
YTczNzVjODE5Ni4uNjEwMDVmMzdhMzM4IDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY29ubmVjdG9yLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Nvbm5lY3Rvci5oCj4gQEAgLTMxLDUgKzMxLDYgQEAgdm9pZCBpbnRl
bF9hdHRhY2hfZm9yY2VfYXVkaW9fcHJvcGVydHkoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5l
Y3Rvcik7Cj4gIHZvaWQgaW50ZWxfYXR0YWNoX2Jyb2FkY2FzdF9yZ2JfcHJvcGVydHkoc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gIHZvaWQgaW50ZWxfYXR0YWNoX2FzcGVjdF9y
YXRpb19wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yKTsKPiAgdm9pZCBp
bnRlbF9hdHRhY2hfY29sb3JzcGFjZV9wcm9wZXJ0eShzdHJ1Y3QgZHJtX2Nvbm5lY3RvciAqY29u
bmVjdG9yKTsKPiArdm9pZCBpbnRlbF9hdHRhY2hfcHJpdmFjeV9zY3JlZW5fcHJvcGVydHkoc3Ry
dWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4KPiAgI2VuZGlmIC8qIF9fSU5URUxfQ09O
TkVDVE9SX0hfXyAqLwo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oCj4gaW5kZXggMGE0YTA0MTE2MDkxLi5hMGFkZGQyYzUzNzYgMTAw
NjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaAo+IEBAIC00MzMsNiArNDMzLDIzIEBAIHN0cnVjdCBpbnRlbF9jb25uZWN0b3Igewo+
ICAgICAgICAgc3RydWN0IHdvcmtfc3RydWN0IG1vZGVzZXRfcmV0cnlfd29yazsKPgo+ICAgICAg
ICAgc3RydWN0IGludGVsX2hkY3AgaGRjcDsKPiArCj4gKyAgICAgICAvKiBPcHRpb25hbCAicHJp
dmFjeS1zY3JlZW4iIHByb3BlcnR5IGZvciB0aGUgY29ubmVjdG9yIHBhbmVsICovCj4gKyAgICAg
ICBzdHJ1Y3QgZHJtX3Byb3BlcnR5ICpwcml2YWN5X3NjcmVlbl9wcm9wZXJ0eTsKPiArfTsKPiAr
Cj4gKy8qKgo+ICsgKiBlbnVtIGludGVsX3ByaXZhY3lfc2NyZWVuX3N0YXR1cyAtIHByaXZhY3lf
c2NyZWVuIHN0YXR1cwo+ICsgKgo+ICsgKiBUaGlzIGVudW0gaXMgdXNlZCB0byB0cmFjayBhbmQg
Y29udHJvbCB0aGUgc3RhdGUgb2YgdGhlIGludGVncmF0ZWQgcHJpdmFjeQo+ICsgKiBzY3JlZW4g
cHJlc2VudCBvbiBzb21lIGRpc3BsYXkgcGFuZWxzLCB2aWEgdGhlICJwcml2YWN5LXNjcmVlbiIg
cHJvcGVydHkuCj4gKyAqCj4gKyAqIEBQUklWQUNZX1NDUkVFTl9ESVNBQkxFRDogVGhlIHByaXZh
Y3ktc2NyZWVuIG9uIHRoZSBwYW5lbCBpcyBkaXNhYmxlZAo+ICsgKiBAUFJJVkFDWV9TQ1JFRU5f
RU5BQkxFRDogIFRoZSBwcml2YWN5LXNjcmVlbiBvbiB0aGUgcGFuZWwgaXMgZW5hYmxlZAo+ICsg
KiovCj4gK2VudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3RhdHVzIHsKPiArICAgICAgIFBSSVZB
Q1lfU0NSRUVOX0RJU0FCTEVEID0gMCwKPiArICAgICAgIFBSSVZBQ1lfU0NSRUVOX0VOQUJMRUQg
PSAxLAo+ICB9Owo+Cj4gIHN0cnVjdCBpbnRlbF9kaWdpdGFsX2Nvbm5lY3Rvcl9zdGF0ZSB7Cj4g
QEAgLTQ0MCw2ICs0NTcsNyBAQCBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUg
ewo+Cj4gICAgICAgICBlbnVtIGhkbWlfZm9yY2VfYXVkaW8gZm9yY2VfYXVkaW87Cj4gICAgICAg
ICBpbnQgYnJvYWRjYXN0X3JnYjsKPiArICAgICAgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5f
c3RhdHVzIHByaXZhY3lfc2NyZWVuX3N0YXR1czsKPiAgfTsKPgo+ICAjZGVmaW5lIHRvX2ludGVs
X2RpZ2l0YWxfY29ubmVjdG9yX3N0YXRlKHgpIGNvbnRhaW5lcl9vZih4LCBzdHJ1Y3QgaW50ZWxf
ZGlnaXRhbF9jb25uZWN0b3Jfc3RhdGUsIGJhc2UpCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHAuYwo+IGluZGV4IDZiMjA5MTkzY2JiYi4uNzllNWE0ZGFkZTFkIDEwMDY0NAo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYwo+IEBAIC02Miw2ICs2Miw3IEBA
Cj4gICNpbmNsdWRlICJpbnRlbF9sc3Bjb24uaCIKPiAgI2luY2x1ZGUgImludGVsX2x2ZHMuaCIK
PiAgI2luY2x1ZGUgImludGVsX3BhbmVsLmgiCj4gKyNpbmNsdWRlICJpbnRlbF9wcml2YWN5X3Nj
cmVlbi5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfcHNyLmgiCj4gICNpbmNsdWRlICJpbnRlbF9zaWRl
YmFuZC5oIgo+ICAjaW5jbHVkZSAiaW50ZWxfdGMuaCIKPiBAQCAtNjYwMSw2ICs2NjAyLDcgQEAg
aW50ZWxfZHBfYWRkX3Byb3BlcnRpZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0
IGRybV9jb25uZWN0b3IgKmNvbm5lY3QKPiAgewo+ICAgICAgICAgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjb25uZWN0b3ItPmRldik7Cj4gICAgICAgICBlbnVt
IHBvcnQgcG9ydCA9IGRwX3RvX2RpZ19wb3J0KGludGVsX2RwKS0+YmFzZS5wb3J0Owo+ICsgICAg
ICAgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqaW50ZWxfY29ubmVjdG9yID0gdG9faW50ZWxfY29u
bmVjdG9yKGNvbm5lY3Rvcik7Cj4KPiAgICAgICAgIGlmICghSVNfRzRYKGRldl9wcml2KSAmJiBw
b3J0ICE9IFBPUlRfQSkKPiAgICAgICAgICAgICAgICAgaW50ZWxfYXR0YWNoX2ZvcmNlX2F1ZGlv
X3Byb3BlcnR5KGNvbm5lY3Rvcik7Cj4gQEAgLTY2MzEsNiArNjYzMywxMCBAQCBpbnRlbF9kcF9h
ZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBzdHJ1Y3QgZHJtX2Nvbm5l
Y3RvciAqY29ubmVjdAo+Cj4gICAgICAgICAgICAgICAgIC8qIExvb2t1cCB0aGUgQUNQSSBub2Rl
IGNvcnJlc3BvbmRpbmcgdG8gdGhlIGNvbm5lY3RvciAqLwo+ICAgICAgICAgICAgICAgICBpbnRl
bF9hY3BpX2RldmljZV9pZF91cGRhdGUoZGV2X3ByaXYpOwo+ICsKPiArICAgICAgICAgICAgICAg
LyogQ2hlY2sgZm9yIGludGVncmF0ZWQgUHJpdmFjeSBzY3JlZW4gc3VwcG9ydCAqLwo+ICsgICAg
ICAgICAgICAgICBpZiAoaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChpbnRlbF9jb25uZWN0
b3IpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGludGVsX2F0dGFjaF9wcml2YWN5X3NjcmVl
bl9wcm9wZXJ0eShjb25uZWN0b3IpOwo+ICAgICAgICAgfQo+ICB9Cj4KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wcml2YWN5X3NjcmVlbi5jCj4gbmV3IGZp
bGUgbW9kZSAxMDA2NDQKPiBpbmRleCAwMDAwMDAwMDAwMDAuLmM4YTViNjRmOTRmYgo+IC0tLSAv
ZGV2L251bGwKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ByaXZh
Y3lfc2NyZWVuLmMKPiBAQCAtMCwwICsxLDcyIEBACj4gKy8vIFNQRFgtTGljZW5zZS1JZGVudGlm
aWVyOiBHUEwtMi4wIE9SIE1JVAo+ICsvKgo+ICsgKiBJbnRlbCBBQ1BJIHByaXZhY3kgc2NyZWVu
IGNvZGUKPiArICoKPiArICogQ29weXJpZ2h0IMKpIDIwMTkgR29vZ2xlIEluYy4KPiArICovCj4g
Kwo+ICsjaW5jbHVkZSA8bGludXgvYWNwaS5oPgo+ICsKPiArI2luY2x1ZGUgImludGVsX3ByaXZh
Y3lfc2NyZWVuLmgiCj4gKwo+ICsjZGVmaW5lIENPTk5FQ1RPUl9EU01fUkVWSUQgMQo+ICsKPiAr
I2RlZmluZSBDT05ORUNUT1JfRFNNX0ZOX1BSSVZBQ1lfRU5BQkxFICAgICAgICAgICAgICAgIDIK
PiArI2RlZmluZSBDT05ORUNUT1JfRFNNX0ZOX1BSSVZBQ1lfRElTQUJMRSAgICAgICAgICAgICAg
IDMKPiArCj4gK3N0YXRpYyBjb25zdCBndWlkX3QgZHJtX2Nvbm5fZHNtX2d1aWQgPQo+ICsgICAg
ICAgR1VJRF9JTklUKDB4QzcwMzMxMTMsIDB4ODcyMCwgMHg0Q0VCLAo+ICsgICAgICAgICAgICAg
ICAgIDB4OTAsIDB4OTAsIDB4OUQsIDB4NTIsIDB4QjMsIDB4RTUsIDB4MkQsIDB4NzMpOwo+ICsK
PiArLyogTWFrZXMgX0RTTSBjYWxsIHRvIHNldCBwcml2YWN5IHNjcmVlbiBzdGF0dXMgKi8KPiAr
c3RhdGljIHZvaWQgYWNwaV9wcml2YWN5X3NjcmVlbl9jYWxsX2RzbShhY3BpX2hhbmRsZSBjb25u
X2hhbmRsZSwgdTY0IGZ1bmMpCj4gK3sKPiArICAgICAgIHVuaW9uIGFjcGlfb2JqZWN0ICpvYmo7
Cj4gKwo+ICsgICAgICAgb2JqID0gYWNwaV9ldmFsdWF0ZV9kc20oY29ubl9oYW5kbGUsICZkcm1f
Y29ubl9kc21fZ3VpZCwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIENPTk5FQ1RP
Ul9EU01fUkVWSUQsIGZ1bmMsIE5VTEwpOwo+ICsgICAgICAgaWYgKCFvYmopIHsKPiArICAgICAg
ICAgICAgICAgRFJNX0RFQlVHX0RSSVZFUigiZmFpbGVkIHRvIGV2YWx1YXRlIF9EU00gZm9yIGZu
ICVsbHhcbiIsIGZ1bmMpOwo+ICsgICAgICAgICAgICAgICByZXR1cm47Cj4gKyAgICAgICB9Cj4g
Kwo+ICsgICAgICAgQUNQSV9GUkVFKG9iaik7Cj4gK30KPiArCj4gK3ZvaWQgaW50ZWxfcHJpdmFj
eV9zY3JlZW5fc2V0X3ZhbChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5f
c3RhdHVzIHZhbCkKPiArewo+ICsgICAgICAgYWNwaV9oYW5kbGUgYWNwaV9oYW5kbGUgPSBjb25u
ZWN0b3ItPmFjcGlfaGFuZGxlOwo+ICsKPiArICAgICAgIGlmICghYWNwaV9oYW5kbGUpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybjsKPiArCj4gKyAgICAgICBpZiAodmFsID09IFBSSVZBQ1lfU0NS
RUVOX0RJU0FCTEVEKQo+ICsgICAgICAgICAgICAgICBhY3BpX3ByaXZhY3lfc2NyZWVuX2NhbGxf
ZHNtKGFjcGlfaGFuZGxlLAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9ESVNBQkxFKTsKPiArICAgICAgIGVsc2Ug
aWYgKHZhbCA9PSBQUklWQUNZX1NDUkVFTl9FTkFCTEVEKQo+ICsgICAgICAgICAgICAgICBhY3Bp
X3ByaXZhY3lfc2NyZWVuX2NhbGxfZHNtKGFjcGlfaGFuZGxlLAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFC
TEUpOwo+ICsgICAgICAgZWxzZQo+ICsgICAgICAgICAgICAgICBEUk1fV0FSTigiJXM6IENhbm5v
dCBzZXQgcHJpdmFjeSBzY3JlZW4gdG8gaW52YWxpZCB2YWwgJXVcbiIsCj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgIGRldl9uYW1lKGNvbm5lY3Rvci0+YmFzZS5kZXYtPmRldiksIHZhbCk7Cj4g
K30KPiArCj4gK2Jvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50ZWxf
Y29ubmVjdG9yICpjb25uZWN0b3IpCj4gK3sKPiArICAgICAgIGFjcGlfaGFuZGxlIGhhbmRsZSA9
IGNvbm5lY3Rvci0+YWNwaV9oYW5kbGU7Cj4gKwo+ICsgICAgICAgaWYgKCFoYW5kbGUpCj4gKyAg
ICAgICAgICAgICAgIHJldHVybiBmYWxzZTsKPiArCj4gKyAgICAgICBpZiAoIWFjcGlfY2hlY2tf
ZHNtKGhhbmRsZSwgJmRybV9jb25uX2RzbV9ndWlkLAo+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICBDT05ORUNUT1JfRFNNX1JFVklELAo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAx
IDw8IENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9FTkFCTEUgfAo+ICsgICAgICAgICAgICAgICAg
ICAgICAgICAgICAxIDw8IENPTk5FQ1RPUl9EU01fRk5fUFJJVkFDWV9ESVNBQkxFKSkgewo+ICsg
ICAgICAgICAgICAgICBEUk1fV0FSTigiJXM6IE9kZCwgY29ubmVjdG9yIEFDUEkgbm9kZSBidXQg
bm8gcHJpdmFjeSBzY3JuP1xuIiwKPiArICAgICAgICAgICAgICAgICAgICAgICAgZGV2X25hbWUo
Y29ubmVjdG9yLT5iYXNlLmRldi0+ZGV2KSk7Cj4gKyAgICAgICAgICAgICAgIHJldHVybiBmYWxz
ZTsKPiArICAgICAgIH0KPiArICAgICAgIERSTV9ERVZfSU5GTyhjb25uZWN0b3ItPmJhc2UuZGV2
LT5kZXYsICJzdXBwb3J0cyBwcml2YWN5IHNjcmVlblxuIik7Cj4gKyAgICAgICByZXR1cm4gdHJ1
ZTsKPiArfQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3ByaXZhY3lfc2NyZWVuLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3By
aXZhY3lfc2NyZWVuLmgKPiBuZXcgZmlsZSBtb2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAw
MC4uNmFkYTIzNGEyMTYxCj4gLS0tIC9kZXYvbnVsbAo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHJpdmFjeV9zY3JlZW4uaAo+IEBAIC0wLDAgKzEsMjUgQEAKPiAr
LyogU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IEdQTC0yLjAgT1IgTUlUICovCj4gKy8qCj4gKyAq
IENvcHlyaWdodCDCqSAyMDE5IEdvb2dsZSBJbmMuCj4gKyAqLwo+ICsKPiArI2lmbmRlZiBfX0RS
TV9QUklWQUNZX1NDUkVFTl9IX18KPiArI2RlZmluZSBfX0RSTV9QUklWQUNZX1NDUkVFTl9IX18K
PiArCj4gKyNpbmNsdWRlICJpbnRlbF9kaXNwbGF5X3R5cGVzLmgiCj4gKwo+ICsjaWZkZWYgQ09O
RklHX0FDUEkKPiArYm9vbCBpbnRlbF9wcml2YWN5X3NjcmVlbl9wcmVzZW50KHN0cnVjdCBpbnRl
bF9jb25uZWN0b3IgKmNvbm5lY3Rvcik7Cj4gK3ZvaWQgaW50ZWxfcHJpdmFjeV9zY3JlZW5fc2V0
X3ZhbChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IsCj4gKyAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIGVudW0gaW50ZWxfcHJpdmFjeV9zY3JlZW5fc3RhdHVzIHZhbCk7
Cj4gKyNlbHNlCj4gK2Jvb2wgaW50ZWxfcHJpdmFjeV9zY3JlZW5fcHJlc2VudChzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IpOwo+ICt7Cj4gKyAgICAgICByZXR1cm4gZmFsc2U7Cj4g
K30KPiArdm9pZCBpbnRlbF9wcml2YWN5X3NjcmVlbl9zZXRfdmFsKHN0cnVjdCBpbnRlbF9jb25u
ZWN0b3IgKmNvbm5lY3RvciwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51
bSBpbnRlbF9wcml2YWN5X3NjcmVlbl9zdGF0dXMgdmFsKQo+ICt7IH0KPiArI2VuZGlmIC8qIENP
TkZJR19BQ1BJICovCj4gKwo+ICsjZW5kaWYgLyogX19EUk1fUFJJVkFDWV9TQ1JFRU5fSF9fICov
Cj4gLS0KPiAyLjI0LjAuMzkzLmczNGRjMzQ4ZWFmLWdvb2cKPgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
