Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F26C3162C63
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 18:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 388396EA44;
	Tue, 18 Feb 2020 17:17:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA3C56E985;
 Mon, 17 Feb 2020 15:50:50 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id p17so18990667wma.1;
 Mon, 17 Feb 2020 07:50:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:from:to:references:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=8tneq4cKbjw4M83AJwCzWJYkK4pRVK0YqY3+dncAXxs=;
 b=O8nnSjFFOfg9TDDv75n+TRaozOhKMAGlMQAlD6FL9yCvveUpvGEdQOGxiubspCM8IF
 IQoV3kEVYMI7AF1RMEc7lg8gISNeRkcOBYrr+1ZEdtrhEKYiswCHr5RQjqqRqPf4fdOk
 AkGhbjgH5Rvdrdjcl9o4jxH38rYpUOy/su4HxGaZPHLx5zYk+bOK0/dZ7mD+JMLwD6sM
 GnOB+uv39dhURTnFpb0wfUKdEe9E4JYJ+7FUq44xr0jxf89wUxCA96fEvlifst7Ga8p4
 gcVPAg9KcxaKSq+woxdIDJthFf3ZfijOVwvKwODzmOW9xTZBaEP4DhMtc6waKpBh26Iz
 rNHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=8tneq4cKbjw4M83AJwCzWJYkK4pRVK0YqY3+dncAXxs=;
 b=jYNVyxCCLmSJshRhjxk1SXCo8JiAXJVTMa5viHHRBuXNB0v/fj28sITgqCYmWpJw+P
 1OqxQFEz+4ywEygSbfXRlPuUOCJlPFzw/xLorea1mLKM4mgxZIdD+fYQTWSyiBB0APQa
 h+WieGN7hxk34rqGomUVgcFommWTB3QJ9v3lgprTyDp2Ua8nEc2YhH6QlN2jkJ/KbjHM
 LhmpwfsijrxbubK5xeeHD3Rnsbdo17RnM8vYkhC3pROhdQpN4Km3tD1jX62cv6wLOhPJ
 gCZRhB70zkd3NZODkU5lbWOB+RxlZKirMWlsF3vRVdBPNeGiDt1PkZ9ZD2w4jQcXosX3
 Ifaw==
X-Gm-Message-State: APjAAAXQJqGSYX+uypJ0DJU3XF0RIVDxOkHiPaz6fTZQHtfZfijYvEOy
 /0EmnAtXeOScyUPawW6kRM4=
X-Google-Smtp-Source: APXvYqwNYycOlUJv0kl7d2GX2UlFNnOZRsZZkNY7zGyo0zomzTUmnzI+DODj1bpZSCbJYu5kgKHsMA==
X-Received: by 2002:a7b:ce18:: with SMTP id m24mr22875924wmc.123.1581954649217; 
 Mon, 17 Feb 2020 07:50:49 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id v14sm1572364wrm.28.2020.02.17.07.50.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Feb 2020 07:50:48 -0800 (PST)
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
To: dri-devel@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 linux-media@vger.kernel.org, intel-gfx@lists.freedesktop.org, daniel@ffwll.ch
References: <20200217154509.2265-1-christian.koenig@amd.com>
 <20200217154509.2265-2-christian.koenig@amd.com>
Message-ID: <88966f5e-2852-24c1-994e-fa8a1cfb9a3c@gmail.com>
Date: Mon, 17 Feb 2020 16:50:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200217154509.2265-2-christian.koenig@amd.com>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 18 Feb 2020 17:16:57 +0000
Subject: Re: [Intel-gfx] [PATCH 1/5] dma-buf: add dynamic DMA-buf handling
 v14
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

UGxlYXNlIGlnbm9yZSB0aGlzIG9uZSwgSSd2ZSBzZW5kIG91dCB0aGUgd3JvbmcgdmVyc2lvbiB3
aXRob3V0IERhbmllbHMgCmxhdGVzdCBjb21tZW50IG5pdCBwaWNrcyBmaXhlZC4KClRoZSBpbnRl
cmVzdGluZyBvbmUgaW4gdGhpcyBzZXJpZXMgaXMgdGhlIGxhc3QgcGF0Y2guCgpSZWdhcmRzLApD
aHJpc3RpYW4uCgpBbSAxNy4wMi4yMCB1bSAxNjo0NSBzY2hyaWViIENocmlzdGlhbiBLw7ZuaWc6
Cj4gT24gdGhlIGV4cG9ydGVyIHNpZGUgd2UgYWRkIG9wdGlvbmFsIGV4cGxpY2l0IHBpbm5pbmcg
Y2FsbGJhY2tzLiBXaGljaCBhcmUKPiBjYWxsZWQgd2hlbiB0aGUgaW1wb3J0ZXIgZG9lc24ndCBp
bXBsZW1lbnQgZHluYW1pYyBoYW5kbGluZywgbW92ZSBub3RpZmljYXRpb24KPiBvciBuZWVkIHRo
ZSBETUEtYnVmIGxvY2tlZCBpbiBwbGFjZSBmb3IgaXRzIHVzZSBjYXNlLgo+Cj4gT24gdGhlIGlt
cG9ydGVyIHNpZGUgd2UgYWRkIGFuIG9wdGlvbmFsIG1vdmVfbm90aWZ5IGNhbGxiYWNrLiBUaGlz
IGNhbGxiYWNrIGlzCj4gdXNlZCBieSB0aGUgZXhwb3J0ZXIgdG8gaW5mb3JtIHRoZSBpbXBvcnRl
cnMgdGhhdCB0aGVpciBtYXBwaW5ncyBzaG91bGQgYmUKPiBkZXN0cm95ZWQgYXMgc29vbiBhcyBw
b3NzaWJsZS4KPgo+IFRoaXMgYWxsb3dzIHRoZSBleHBvcnRlciB0byBwcm92aWRlIHRoZSBtYXBw
aW5ncyB3aXRob3V0IHRoZSBuZWVkIHRvIHBpbgo+IHRoZSBiYWNraW5nIHN0b3JlLgo+Cj4gdjI6
IGRvbid0IHRyeSB0byBpbnZhbGlkYXRlIG1hcHBpbmdzIHdoZW4gdGhlIGNhbGxiYWNrIGlzIE5V
TEwsCj4gICAgICBsb2NrIHRoZSByZXNlcnZhdGlvbiBvYmogd2hpbGUgdXNpbmcgdGhlIGF0dGFj
aG1lbnRzLAo+ICAgICAgYWRkIGhlbHBlciB0byBzZXQgdGhlIGNhbGxiYWNrCj4gdjM6IG1vdmUg
ZmxhZyBmb3IgaW52YWxpZGF0aW9uIHN1cHBvcnQgaW50byB0aGUgRE1BLWJ1ZiwKPiAgICAgIHVz
ZSBuZXcgYXR0YWNoX2luZm8gc3RydWN0dXJlIHRvIHNldCB0aGUgY2FsbGJhY2sKPiB2NDogdXNl
IGltcG9ydGVyX3ByaXYgZmllbGQgaW5zdGVhZCBvZiBtYW5nbGluZyBleHBvcnRlciBwcml2Lgo+
IHY1OiBkcm9wIGludmFsaWRhdGlvbl9zdXBwb3J0ZWQgZmxhZwo+IHY2OiBzcXVhc2ggdG9nZXRo
ZXIgd2l0aCBwaW4vdW5waW4gY2hhbmdlcwo+IHY3OiBwaW4vdW5waW4gdGFrZXMgYW4gYXR0YWNo
bWVudCBub3cKPiB2ODogbnVrZSBkbWFfYnVmX2F0dGFjaG1lbnRfKG1hcHx1bm1hcClfbG9ja2Vk
LAo+ICAgICAgZXZlcnl0aGluZyBpcyBub3cgaGFuZGxlZCBiYWNrd2FyZCBjb21wYXRpYmxlCj4g
djk6IGFsd2F5cyBjYWNoZSB3aGVuIGV4cG9ydC9pbXBvcnRlciBkb24ndCBhZ3JlZSBvbiBkeW5h
bWljIGhhbmRsaW5nCj4gdjEwOiBtaW5pbWFsIHN0eWxlIGNsZWFudXAKPiB2MTE6IGRyb3AgYXV0
b21hdGljYWxseSByZS1lbnRyeSBhdm9pZGFuY2UKPiB2MTI6IHJlbmFtZSBjYWxsYmFjayB0byBt
b3ZlX25vdGlmeQo+IHYxMzogYWRkIG1pZ2h0X2xvY2sgaW4gYXBwcm9wcmlhdGUgcGxhY2VzCj4g
djE0OiByZWJhc2Ugb24gc2VwYXJhdGVkIGxvY2tpbmcgY2hhbmdlCj4KPiBTaWduZWQtb2ZmLWJ5
OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gICBk
cml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jICAgICAgICAgICAgICAgICAgIHwgMTA2ICsrKysrKysr
KysrKysrKysrKy0tCj4gICBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1
Zi5jIHwgICA2ICstCj4gICBpbmNsdWRlL2xpbnV4L2RtYS1idWYuaCAgICAgICAgICAgICAgICAg
ICAgIHwgIDc4ICsrKysrKysrKysrKy0tCj4gICAzIGZpbGVzIGNoYW5nZWQsIDE3MCBpbnNlcnRp
b25zKCspLCAyMCBkZWxldGlvbnMoLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYv
ZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwo+IGluZGV4IGQzNzdiNGNhNjZi
Zi4uY2UyOTNjZWU3NmVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMK
PiArKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCj4gQEAgLTUyOSw2ICs1MjksMTAgQEAg
c3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9y
dF9pbmZvICpleHBfaW5mbykKPiAgIAkJICAgIGV4cF9pbmZvLT5vcHMtPmR5bmFtaWNfbWFwcGlu
ZykpCj4gICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwpOwo+ICAgCj4gKwlpZiAoV0FSTl9PTigh
ZXhwX2luZm8tPm9wcy0+ZHluYW1pY19tYXBwaW5nICYmCj4gKwkJICAgIChleHBfaW5mby0+b3Bz
LT5waW4gfHwgZXhwX2luZm8tPm9wcy0+dW5waW4pKSkKPiArCQlyZXR1cm4gRVJSX1BUUigtRUlO
VkFMKTsKPiArCj4gICAJaWYgKCF0cnlfbW9kdWxlX2dldChleHBfaW5mby0+b3duZXIpKQo+ICAg
CQlyZXR1cm4gRVJSX1BUUigtRU5PRU5UKTsKPiAgIAo+IEBAIC02NTMsNyArNjU3LDggQEAgRVhQ
T1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9wdXQpOwo+ICAgICogY2FsbHMgYXR0YWNoKCkgb2YgZG1h
X2J1Zl9vcHMgdG8gYWxsb3cgZGV2aWNlLXNwZWNpZmljIGF0dGFjaCBmdW5jdGlvbmFsaXR5Cj4g
ICAgKiBAZG1hYnVmOgkJW2luXQlidWZmZXIgdG8gYXR0YWNoIGRldmljZSB0by4KPiAgICAqIEBk
ZXY6CQlbaW5dCWRldmljZSB0byBiZSBhdHRhY2hlZC4KPiAtICogQGR5bmFtaWNfbWFwcGluZzoJ
W2luXQljYWxsaW5nIGNvbnZlbnRpb24gZm9yIG1hcC91bm1hcAo+ICsgKiBAaW1wb3J0ZXJfb3Bz
CVtpbl0JaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhlIGF0dGFjaG1lbnQKPiArICogQGltcG9y
dGVyX3ByaXYJW2luXQlpbXBvcnRlciBwcml2YXRlIHBvaW50ZXIgZm9yIHRoZSBhdHRhY2htZW50
Cj4gICAgKgo+ICAgICogUmV0dXJucyBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50IHBvaW50ZXIg
Zm9yIHRoaXMgYXR0YWNobWVudC4gQXR0YWNobWVudHMKPiAgICAqIG11c3QgYmUgY2xlYW5lZCB1
cCBieSBjYWxsaW5nIGRtYV9idWZfZGV0YWNoKCkuCj4gQEAgLTY2OSw3ICs2NzQsOCBAQCBFWFBP
UlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7Cj4gICAgKi8KPiAgIHN0cnVjdCBkbWFfYnVmX2F0
dGFjaG1lbnQgKgo+ICAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1h
YnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gLQkJICAgICAgIGJvb2wgZHluYW1pY19tYXBwaW5n
KQo+ICsJCSAgICAgICBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzICppbXBvcnRlcl9v
cHMsCj4gKwkJICAgICAgIHZvaWQgKmltcG9ydGVyX3ByaXYpCj4gICB7Cj4gICAJc3RydWN0IGRt
YV9idWZfYXR0YWNobWVudCAqYXR0YWNoOwo+ICAgCWludCByZXQ7Cj4gQEAgLTY4Myw3ICs2ODks
OCBAQCBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVj
dCBkZXZpY2UgKmRldiwKPiAgIAo+ICAgCWF0dGFjaC0+ZGV2ID0gZGV2Owo+ICAgCWF0dGFjaC0+
ZG1hYnVmID0gZG1hYnVmOwo+IC0JYXR0YWNoLT5keW5hbWljX21hcHBpbmcgPSBkeW5hbWljX21h
cHBpbmc7Cj4gKwlhdHRhY2gtPmltcG9ydGVyX29wcyA9IGltcG9ydGVyX29wczsKPiArCWF0dGFj
aC0+aW1wb3J0ZXJfcHJpdiA9IGltcG9ydGVyX3ByaXY7Cj4gICAKPiAgIAlpZiAoZG1hYnVmLT5v
cHMtPmF0dGFjaCkgewo+ICAgCQlyZXQgPSBkbWFidWYtPm9wcy0+YXR0YWNoKGRtYWJ1ZiwgYXR0
YWNoKTsKPiBAQCAtNzAyLDE1ICs3MDksMTkgQEAgZG1hX2J1Zl9keW5hbWljX2F0dGFjaChzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZGV2aWNlICpkZXYsCj4gICAJICAgIGRtYV9idWZf
aXNfZHluYW1pYyhkbWFidWYpKSB7Cj4gICAJCXN0cnVjdCBzZ190YWJsZSAqc2d0Owo+ICAgCj4g
LQkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCj4gKwkJaWYgKGRtYV9i
dWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpIHsKPiAgIAkJCWRtYV9yZXN2X2xvY2soYXR0
YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOwo+ICsJCQlyZXQgPSBkbWFfYnVmX3BpbihhdHRhY2gp
Owo+ICsJCQlpZiAocmV0KQo+ICsJCQkJZ290byBlcnJfdW5sb2NrOwo+ICsJCX0KPiAgIAo+ICAg
CQlzZ3QgPSBkbWFidWYtPm9wcy0+bWFwX2RtYV9idWYoYXR0YWNoLCBETUFfQklESVJFQ1RJT05B
TCk7Cj4gICAJCWlmICghc2d0KQo+ICAgCQkJc2d0ID0gRVJSX1BUUigtRU5PTUVNKTsKPiAgIAkJ
aWYgKElTX0VSUihzZ3QpKSB7Cj4gICAJCQlyZXQgPSBQVFJfRVJSKHNndCk7Cj4gLQkJCWdvdG8g
ZXJyX3VubG9jazsKPiArCQkJZ290byBlcnJfdW5waW47Cj4gICAJCX0KPiAgIAkJaWYgKGRtYV9i
dWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCj4gICAJCQlkbWFfcmVzdl91bmxvY2soYXR0
YWNoLT5kbWFidWYtPnJlc3YpOwo+IEBAIC03MjQsNiArNzM1LDEwIEBAIGRtYV9idWZfZHluYW1p
Y19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAqZGV2LAo+ICAg
CWtmcmVlKGF0dGFjaCk7Cj4gICAJcmV0dXJuIEVSUl9QVFIocmV0KTsKPiAgIAo+ICtlcnJfdW5w
aW46Cj4gKwlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkKPiArCQlkbWFf
YnVmX3VucGluKGF0dGFjaCk7Cj4gKwo+ICAgZXJyX3VubG9jazoKPiAgIAlpZiAoZG1hX2J1Zl9p
c19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkKPiAgIAkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+
ZG1hYnVmLT5yZXN2KTsKPiBAQCAtNzQ0LDcgKzc1OSw3IEBAIEVYUE9SVF9TWU1CT0xfR1BMKGRt
YV9idWZfZHluYW1pY19hdHRhY2gpOwo+ICAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqZG1h
X2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKPiAgIAkJCQkJICBzdHJ1Y3QgZGV2
aWNlICpkZXYpCj4gICB7Cj4gLQlyZXR1cm4gZG1hX2J1Zl9keW5hbWljX2F0dGFjaChkbWFidWYs
IGRldiwgZmFsc2UpOwo+ICsJcmV0dXJuIGRtYV9idWZfZHluYW1pY19hdHRhY2goZG1hYnVmLCBk
ZXYsIE5VTEwsIE5VTEwpOwo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9hdHRh
Y2gpOwo+ICAgCj4gQEAgLTc2Nyw4ICs3ODIsMTAgQEAgdm9pZCBkbWFfYnVmX2RldGFjaChzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmLCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCj4g
ICAKPiAgIAkJZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBhdHRhY2gtPnNndCwg
YXR0YWNoLT5kaXIpOwo+ICAgCj4gLQkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRt
YWJ1ZikpCj4gKwkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpIHsKPiAr
CQkJZG1hX2J1Zl91bnBpbihhdHRhY2gpOwo+ICAgCQkJZG1hX3Jlc3ZfdW5sb2NrKGF0dGFjaC0+
ZG1hYnVmLT5yZXN2KTsKPiArCQl9Cj4gICAJfQo+ICAgCj4gICAJZG1hX3Jlc3ZfbG9jayhkbWFi
dWYtPnJlc3YsIE5VTEwpOwo+IEBAIC03ODEsNiArNzk4LDQ0IEBAIHZvaWQgZG1hX2J1Zl9kZXRh
Y2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoKQo+ICAgfQo+ICAgRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9kZXRhY2gpOwo+ICAgCj4g
Ky8qKgo+ICsgKiBkbWFfYnVmX3BpbiAtIExvY2sgZG93biB0aGUgRE1BLWJ1Zgo+ICsgKgo+ICsg
KiBAYXR0YWNoOglbaW5dCWF0dGFjaG1lbnQgd2hpY2ggc2hvdWxkIGJlIHBpbm5lZAo+ICsgKgo+
ICsgKiBSZXR1cm5zOgo+ICsgKiAwIG9uIHN1Y2Nlc3MsIG5lZ2F0aXZlIGVycm9yIGNvZGUgb24g
ZmFpbHVyZS4KPiArICovCj4gK2ludCBkbWFfYnVmX3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2ht
ZW50ICphdHRhY2gpCj4gK3sKPiArCXN0cnVjdCBkbWFfYnVmICpkbWFidWYgPSBhdHRhY2gtPmRt
YWJ1ZjsKPiArCWludCByZXQgPSAwOwo+ICsKPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxkKGRtYWJ1
Zi0+cmVzdik7Cj4gKwo+ICsJaWYgKGRtYWJ1Zi0+b3BzLT5waW4pCj4gKwkJcmV0ID0gZG1hYnVm
LT5vcHMtPnBpbihhdHRhY2gpOwo+ICsKPiArCXJldHVybiByZXQ7Cj4gK30KPiArRVhQT1JUX1NZ
TUJPTF9HUEwoZG1hX2J1Zl9waW4pOwo+ICsKPiArLyoqCj4gKyAqIGRtYV9idWZfdW5waW4gLSBS
ZW1vdmUgbG9jayBmcm9tIERNQS1idWYKPiArICoKPiArICogQGF0dGFjaDoJW2luXQlhdHRhY2ht
ZW50IHdoaWNoIHNob3VsZCBiZSB1bnBpbm5lZAo+ICsgKi8KPiArdm9pZCBkbWFfYnVmX3VucGlu
KHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPiArewo+ICsJc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZiA9IGF0dGFjaC0+ZG1hYnVmOwo+ICsKPiArCWRtYV9yZXN2X2Fzc2VydF9oZWxk
KGRtYWJ1Zi0+cmVzdik7Cj4gKwo+ICsJaWYgKGRtYWJ1Zi0+b3BzLT51bnBpbikKPiArCQlkbWFi
dWYtPm9wcy0+dW5waW4oYXR0YWNoKTsKPiArfQo+ICtFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVm
X3VucGluKTsKPiArCj4gICAvKioKPiAgICAqIGRtYV9idWZfbWFwX2F0dGFjaG1lbnQgLSBSZXR1
cm5zIHRoZSBzY2F0dGVybGlzdCB0YWJsZSBvZiB0aGUgYXR0YWNobWVudDsKPiAgICAqIG1hcHBl
ZCBpbnRvIF9kZXZpY2VfIGFkZHJlc3Mgc3BhY2UuIElzIGEgd3JhcHBlciBmb3IgbWFwX2RtYV9i
dWYoKSBvZiB0aGUKPiBAQCAtODAwLDYgKzg1NSw3IEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1
Zl9tYXBfYXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gICAJ
CQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcmVjdGlvbikKPiAgIHsKPiAgIAlzdHJ1Y3Qg
c2dfdGFibGUgKnNnX3RhYmxlOwo+ICsJaW50IHI7Cj4gICAKPiAgIAltaWdodF9zbGVlcCgpOwo+
ICAgCj4gQEAgLTgyMSwxMyArODc3LDIzIEBAIHN0cnVjdCBzZ190YWJsZSAqZG1hX2J1Zl9tYXBf
YXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gsCj4gICAJCXJldHVy
biBhdHRhY2gtPnNndDsKPiAgIAl9Cj4gICAKPiAtCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0
YWNoLT5kbWFidWYpKQo+ICsJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1Zikp
IHsKPiAgIAkJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJlc3YpOwo+ICsJ
CWlmICghYXR0YWNoLT5pbXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5KSB7Cj4gKwkJCXIgPSBkbWFf
YnVmX3BpbihhdHRhY2gpOwo+ICsJCQlpZiAocikKPiArCQkJCXJldHVybiBFUlJfUFRSKHIpOwo+
ICsJCX0KPiArCX0KPiAgIAo+ICAgCXNnX3RhYmxlID0gYXR0YWNoLT5kbWFidWYtPm9wcy0+bWFw
X2RtYV9idWYoYXR0YWNoLCBkaXJlY3Rpb24pOwo+ICAgCWlmICghc2dfdGFibGUpCj4gICAJCXNn
X3RhYmxlID0gRVJSX1BUUigtRU5PTUVNKTsKPiAgIAo+ICsJaWYgKElTX0VSUihzZ190YWJsZSkg
JiYgZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSAmJgo+ICsJICAgICFhdHRhY2gt
PmltcG9ydGVyX29wcy0+bW92ZV9ub3RpZnkpCj4gKwkJZG1hX2J1Zl91bnBpbihhdHRhY2gpOwo+
ICsKPiAgIAlpZiAoIUlTX0VSUihzZ190YWJsZSkgJiYgYXR0YWNoLT5kbWFidWYtPm9wcy0+Y2Fj
aGVfc2d0X21hcHBpbmcpIHsKPiAgIAkJYXR0YWNoLT5zZ3QgPSBzZ190YWJsZTsKPiAgIAkJYXR0
YWNoLT5kaXIgPSBkaXJlY3Rpb247Cj4gQEAgLTg2Niw5ICs5MzIsMzMgQEAgdm9pZCBkbWFfYnVm
X3VubWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoLAo+ICAg
CQlkbWFfcmVzdl9hc3NlcnRfaGVsZChhdHRhY2gtPmRtYWJ1Zi0+cmVzdik7Cj4gICAKPiAgIAlh
dHRhY2gtPmRtYWJ1Zi0+b3BzLT51bm1hcF9kbWFfYnVmKGF0dGFjaCwgc2dfdGFibGUsIGRpcmVj
dGlvbik7Cj4gKwo+ICsJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikgJiYK
PiArCSAgICAhYXR0YWNoLT5pbXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5KQo+ICsJCWRtYV9idWZf
dW5waW4oYXR0YWNoKTsKPiAgIH0KPiAgIEVYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfdW5tYXBf
YXR0YWNobWVudCk7Cj4gICAKPiArLyoqCj4gKyAqIGRtYV9idWZfbW92ZV9ub3RpZnkgLSBub3Rp
ZnkgYXR0YWNobWVudHMgdGhhdCBETUEtYnVmIGlzIG1vdmluZwo+ICsgKgo+ICsgKiBAZG1hYnVm
OglbaW5dCWJ1ZmZlciB3aGljaCBpcyBtb3ZpbmcKPiArICoKPiArICogSW5mb3JtcyBhbGwgYXR0
YWNobWVuc3QgdGhhdCB0aGV5IG5lZWQgdG8gZGVzdHJveSBhbmQgcmVjcmVhdGVkIGFsbCB0aGVp
cgo+ICsgKiBtYXBwaW5ncy4KPiArICovCj4gK3ZvaWQgZG1hX2J1Zl9tb3ZlX25vdGlmeShzdHJ1
Y3QgZG1hX2J1ZiAqZG1hYnVmKQo+ICt7Cj4gKwlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2g7Cj4gKwo+ICsJZG1hX3Jlc3ZfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsKPiArCj4g
KwlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaCwgJmRtYWJ1Zi0+YXR0YWNobWVudHMsIG5vZGUp
Cj4gKwkJaWYgKGF0dGFjaC0+aW1wb3J0ZXJfb3BzICYmIGF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5t
b3ZlX25vdGlmeSkKPiArCQkJYXR0YWNoLT5pbXBvcnRlcl9vcHMtPm1vdmVfbm90aWZ5KGF0dGFj
aCk7Cj4gK30KPiArRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9tb3ZlX25vdGlmeSk7Cj4gKwo+
ICAgLyoqCj4gICAgKiBET0M6IGNwdSBhY2Nlc3MKPiAgICAqCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCj4gaW5kZXggZTJlZWM3YjY2MzM0Li5iMmNhNzhi
NmFiY2UgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2Rt
YV9idWYuYwo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVm
LmMKPiBAQCAtNDE0LDYgKzQxNCw5IEBAIGFtZGdwdV9kbWFfYnVmX2NyZWF0ZV9vYmooc3RydWN0
IGRybV9kZXZpY2UgKmRldiwgc3RydWN0IGRtYV9idWYgKmRtYV9idWYpCj4gICAJcmV0dXJuIEVS
Ul9QVFIocmV0KTsKPiAgIH0KPiAgIAo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0
YWNoX29wcyBhbWRncHVfZG1hX2J1Zl9hdHRhY2hfb3BzID0gewo+ICt9Owo+ICsKPiAgIC8qKgo+
ICAgICogYW1kZ3B1X2dlbV9wcmltZV9pbXBvcnQgLSAmZHJtX2RyaXZlci5nZW1fcHJpbWVfaW1w
b3J0IGltcGxlbWVudGF0aW9uCj4gICAgKiBAZGV2OiBEUk0gZGV2aWNlCj4gQEAgLTQ0Niw3ICs0
NDksOCBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0KHN0
cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gICAJaWYgKElTX0VSUihvYmopKQo+ICAgCQlyZXR1cm4g
b2JqOwo+ICAgCj4gLQlhdHRhY2ggPSBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKGRtYV9idWYsIGRl
di0+ZGV2LCB0cnVlKTsKPiArCWF0dGFjaCA9IGRtYV9idWZfZHluYW1pY19hdHRhY2goZG1hX2J1
ZiwgZGV2LT5kZXYsCj4gKwkJCQkJJmFtZGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMsIE5VTEwpOwo+
ICAgCWlmIChJU19FUlIoYXR0YWNoKSkgewo+ICAgCQlkcm1fZ2VtX29iamVjdF9wdXQob2JqKTsK
PiAgIAkJcmV0dXJuIEVSUl9DQVNUKGF0dGFjaCk7Cj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvbGlu
dXgvZG1hLWJ1Zi5oIGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKPiBpbmRleCBhZjczZjgzNWM1
MWMuLjc0NTZiYjkzNzYzNSAxMDA2NDQKPiAtLS0gYS9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAo+
ICsrKyBiL2luY2x1ZGUvbGludXgvZG1hLWJ1Zi5oCj4gQEAgLTkzLDE0ICs5Myw0MCBAQCBzdHJ1
Y3QgZG1hX2J1Zl9vcHMgewo+ICAgCSAqLwo+ICAgCXZvaWQgKCpkZXRhY2gpKHN0cnVjdCBkbWFf
YnVmICosIHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKik7Cj4gICAKPiArCS8qKgo+ICsJICog
QHBpbjoKPiArCSAqCj4gKwkgKiBUaGlzIGlzIGNhbGxlZCBieSBkbWFfYnVmX3BpbiBhbmQgbGV0
cyB0aGUgZXhwb3J0ZXIga25vdyB0aGF0IHRoZQo+ICsJICogRE1BLWJ1ZiBjYW4ndCBiZSBtb3Zl
ZCBhbnkgbW9yZS4KPiArCSAqCj4gKwkgKiBUaGlzIGlzIGNhbGxlZCB3aXRoIHRoZSBkbWFidWYt
PnJlc3Ygb2JqZWN0IGxvY2tlZC4KPiArCSAqCj4gKwkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlv
bmFsLgo+ICsJICoKPiArCSAqIFJldHVybnM6Cj4gKwkgKgo+ICsJICogMCBvbiBzdWNjZXNzLCBu
ZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCj4gKwkgKi8KPiArCWludCAoKnBpbikoc3Ry
dWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsKPiArCj4gKwkvKioKPiArCSAqIEB1bnBp
bjoKPiArCSAqCj4gKwkgKiBUaGlzIGlzIGNhbGxlZCBieSBkbWFfYnVmX3VucGluIGFuZCBsZXRz
IHRoZSBleHBvcnRlciBrbm93IHRoYXQgdGhlCj4gKwkgKiBETUEtYnVmIGNhbiBiZSBtb3ZlZCBh
Z2Fpbi4KPiArCSAqCj4gKwkgKiBUaGlzIGlzIGNhbGxlZCB3aXRoIHRoZSBkbWFidWYtPnJlc3Yg
b2JqZWN0IGxvY2tlZC4KPiArCSAqCj4gKwkgKiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgo+
ICsJICovCj4gKwl2b2lkICgqdW5waW4pKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFj
aCk7Cj4gKwo+ICAgCS8qKgo+ICAgCSAqIEBtYXBfZG1hX2J1ZjoKPiAgIAkgKgo+ICAgCSAqIFRo
aXMgaXMgY2FsbGVkIGJ5IGRtYV9idWZfbWFwX2F0dGFjaG1lbnQoKSBhbmQgaXMgdXNlZCB0byBt
YXAgYQo+ICAgCSAqIHNoYXJlZCAmZG1hX2J1ZiBpbnRvIGRldmljZSBhZGRyZXNzIHNwYWNlLCBh
bmQgaXQgaXMgbWFuZGF0b3J5LiBJdAo+IC0JICogY2FuIG9ubHkgYmUgY2FsbGVkIGlmIEBhdHRh
Y2ggaGFzIGJlZW4gY2FsbGVkIHN1Y2Nlc3NmdWxseS4gVGhpcwo+IC0JICogZXNzZW50aWFsbHkg
cGlucyB0aGUgRE1BIGJ1ZmZlciBpbnRvIHBsYWNlLCBhbmQgaXQgY2Fubm90IGJlIG1vdmVkCj4g
LQkgKiBhbnkgbW9yZQo+ICsJICogY2FuIG9ubHkgYmUgY2FsbGVkIGlmIEBhdHRhY2ggaGFzIGJl
ZW4gY2FsbGVkIHN1Y2Nlc3NmdWxseS4KPiAgIAkgKgo+ICAgCSAqIFRoaXMgY2FsbCBtYXkgc2xl
ZXAsIGUuZy4gd2hlbiB0aGUgYmFja2luZyBzdG9yYWdlIGZpcnN0IG5lZWRzIHRvIGJlCj4gICAJ
ICogYWxsb2NhdGVkLCBvciBtb3ZlZCB0byBhIGxvY2F0aW9uIHN1aXRhYmxlIGZvciBhbGwgY3Vy
cmVudGx5IGF0dGFjaGVkCj4gQEAgLTE0MSw5ICsxNjcsNiBAQCBzdHJ1Y3QgZG1hX2J1Zl9vcHMg
ewo+ICAgCSAqCj4gICAJICogVGhpcyBpcyBjYWxsZWQgYnkgZG1hX2J1Zl91bm1hcF9hdHRhY2ht
ZW50KCkgYW5kIHNob3VsZCB1bm1hcCBhbmQKPiAgIAkgKiByZWxlYXNlIHRoZSAmc2dfdGFibGUg
YWxsb2NhdGVkIGluIEBtYXBfZG1hX2J1ZiwgYW5kIGl0IGlzIG1hbmRhdG9yeS4KPiAtCSAqIEl0
IHNob3VsZCBhbHNvIHVucGluIHRoZSBiYWNraW5nIHN0b3JhZ2UgaWYgdGhpcyBpcyB0aGUgbGFz
dCBtYXBwaW5nCj4gLQkgKiBvZiB0aGUgRE1BIGJ1ZmZlciwgaXQgdGhlIGV4cG9ydGVyIHN1cHBv
cnRzIGJhY2tpbmcgc3RvcmFnZQo+IC0JICogbWlncmF0aW9uLgo+ICAgCSAqLwo+ICAgCXZvaWQg
KCp1bm1hcF9kbWFfYnVmKShzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosCj4gICAJCQkgICAg
ICBzdHJ1Y3Qgc2dfdGFibGUgKiwKPiBAQCAtMzM2LDYgKzM1OSwzNCBAQCBzdHJ1Y3QgZG1hX2J1
ZiB7Cj4gICAJfSBjYl9leGNsLCBjYl9zaGFyZWQ7Cj4gICB9Owo+ICAgCj4gKy8qKgo+ICsgKiBz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIC0gaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgYW4gYXR0
YWNobWVudAo+ICsgKiBAbW92ZV9ub3RpZnk6IFtvcHRpb25hbF0gbm90aWZpY2F0aW9uIHRoYXQg
dGhlIERNQS1idWYgaXMgbW92aW5nCj4gKyAqCj4gKyAqIEF0dGFjaG1lbnQgb3BlcmF0aW9ucyBp
bXBsZW1lbnRlZCBieSB0aGUgaW1wb3J0ZXIuCj4gKyAqLwo+ICtzdHJ1Y3QgZG1hX2J1Zl9hdHRh
Y2hfb3BzIHsKPiArCS8qKgo+ICsJICogQG1vdmVfbm90aWZ5Cj4gKwkgKgo+ICsJICogSWYgdGhp
cyBjYWxsYmFjayBpcyBwcm92aWRlZCB0aGUgZnJhbWV3b3JrIGNhbiBhdm9pZCBwaW5uaW5nIHRo
ZQo+ICsJICogYmFja2luZyBzdG9yZSB3aGlsZSBtYXBwaW5ncyBleGlzdHMuCj4gKwkgKgo+ICsJ
ICogVGhpcyBjYWxsYmFjayBpcyBjYWxsZWQgd2l0aCB0aGUgbG9jayBvZiB0aGUgcmVzZXJ2YXRp
b24gb2JqZWN0Cj4gKwkgKiBhc3NvY2lhdGVkIHdpdGggdGhlIGRtYV9idWYgaGVsZCBhbmQgdGhl
IG1hcHBpbmcgZnVuY3Rpb24gbXVzdCBiZQo+ICsJICogY2FsbGVkIHdpdGggdGhpcyBsb2NrIGhl
bGQgYXMgd2VsbC4gVGhpcyBtYWtlcyBzdXJlIHRoYXQgbm8gbWFwcGluZwo+ICsJICogaXMgY3Jl
YXRlZCBjb25jdXJyZW50bHkgd2l0aCBhbiBvbmdvaW5nIG1vdmUgb3BlcmF0aW9uLgo+ICsJICoK
PiArCSAqIE1hcHBpbmdzIHN0YXkgdmFsaWQgYW5kIGFyZSBub3QgZGlyZWN0bHkgYWZmZWN0ZWQg
YnkgdGhpcyBjYWxsYmFjay4KPiArCSAqIEJ1dCB0aGUgRE1BLWJ1ZiBjYW4gbm93IGJlIGluIGEg
ZGlmZmVyZW50IHBoeXNpY2FsIGxvY2F0aW9uLCBzbyBhbGwKPiArCSAqIG1hcHBpbmdzIHNob3Vs
ZCBiZSBkZXN0cm95ZWQgYW5kIHJlLWNyZWF0ZWQgYXMgc29vbiBhcyBwb3NzaWJsZS4KPiArCSAq
Cj4gKwkgKiBOZXcgbWFwcGluZ3MgY2FuIGJlIGNyZWF0ZWQgYWZ0ZXIgdGhpcyBjYWxsYmFjayBy
ZXR1cm5zLCBhbmQgd2lsbAo+ICsJICogcG9pbnQgdG8gdGhlIG5ldyBsb2NhdGlvbiBvZiB0aGUg
RE1BLWJ1Zi4KPiArCSAqLwo+ICsJdm9pZCAoKm1vdmVfbm90aWZ5KShzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2htZW50ICphdHRhY2gpOwo+ICt9Owo+ICsKPiAgIC8qKgo+ICAgICogc3RydWN0IGRtYV9i
dWZfYXR0YWNobWVudCAtIGhvbGRzIGRldmljZS1idWZmZXIgYXR0YWNobWVudCBkYXRhCj4gICAg
KiBAZG1hYnVmOiBidWZmZXIgZm9yIHRoaXMgYXR0YWNobWVudC4KPiBAQCAtMzQ0LDggKzM5NSw5
IEBAIHN0cnVjdCBkbWFfYnVmIHsKPiAgICAqIEBzZ3Q6IGNhY2hlZCBtYXBwaW5nLgo+ICAgICog
QGRpcjogZGlyZWN0aW9uIG9mIGNhY2hlZCBtYXBwaW5nLgo+ICAgICogQHByaXY6IGV4cG9ydGVy
IHNwZWNpZmljIGF0dGFjaG1lbnQgZGF0YS4KPiAtICogQGR5bmFtaWNfbWFwcGluZzogdHJ1ZSBp
ZiBkbWFfYnVmX21hcC91bm1hcF9hdHRhY2htZW50KCkgaXMgY2FsbGVkIHdpdGggdGhlCj4gLSAq
IGRtYV9yZXN2IGxvY2sgaGVsZC4KPiArICogQGltcG9ydGVyX29wczogaW1wb3J0ZXIgb3BlcmF0
aW9ucyBmb3IgdGhpcyBhdHRhY2htZW50LCBpZiBwcm92aWRlZAo+ICsgKiBkbWFfYnVmX21hcC91
bm1hcF9hdHRhY2htZW50KCkgbXVzdCBiZSBjYWxsZWQgd2l0aCB0aGUgZG1hX3Jlc3YgbG9jayBo
ZWxkLgo+ICsgKiBAaW1wb3J0ZXJfcHJpdjogaW1wb3J0ZXIgc3BlY2lmaWMgYXR0YWNobWVudCBk
YXRhLgo+ICAgICoKPiAgICAqIFRoaXMgc3RydWN0dXJlIGhvbGRzIHRoZSBhdHRhY2htZW50IGlu
Zm9ybWF0aW9uIGJldHdlZW4gdGhlIGRtYV9idWYgYnVmZmVyCj4gICAgKiBhbmQgaXRzIHVzZXIg
ZGV2aWNlKHMpLiBUaGUgbGlzdCBjb250YWlucyBvbmUgYXR0YWNobWVudCBzdHJ1Y3QgcGVyIGRl
dmljZQo+IEBAIC0zNjIsNyArNDE0LDggQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCB7Cj4g
ICAJc3RydWN0IGxpc3RfaGVhZCBub2RlOwo+ICAgCXN0cnVjdCBzZ190YWJsZSAqc2d0Owo+ICAg
CWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uIGRpcjsKPiAtCWJvb2wgZHluYW1pY19tYXBwaW5nOwo+
ICsJY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyAqaW1wb3J0ZXJfb3BzOwo+ICsJdm9p
ZCAqaW1wb3J0ZXJfcHJpdjsKPiAgIAl2b2lkICpwcml2Owo+ICAgfTsKPiAgIAo+IEBAIC00Mzgs
MTYgKzQ5MSwxOSBAQCBzdGF0aWMgaW5saW5lIGJvb2wgZG1hX2J1Zl9pc19keW5hbWljKHN0cnVj
dCBkbWFfYnVmICpkbWFidWYpCj4gICBzdGF0aWMgaW5saW5lIGJvb2wKPiAgIGRtYV9idWZfYXR0
YWNobWVudF9pc19keW5hbWljKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPiAg
IHsKPiAtCXJldHVybiBhdHRhY2gtPmR5bmFtaWNfbWFwcGluZzsKPiArCXJldHVybiAhIWF0dGFj
aC0+aW1wb3J0ZXJfb3BzOwo+ICAgfQo+ICAgCj4gICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICpkbWFfYnVmX2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAo+ICAgCQkJCQkgIHN0cnVj
dCBkZXZpY2UgKmRldik7Cj4gICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICoKPiAgIGRtYV9i
dWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRldmljZSAq
ZGV2LAo+IC0JCSAgICAgICBib29sIGR5bmFtaWNfbWFwcGluZyk7Cj4gKwkJICAgICAgIGNvbnN0
IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgKmltcG9ydGVyX29wcywKPiArCQkgICAgICAgdm9p
ZCAqaW1wb3J0ZXJfcHJpdik7Cj4gICB2b2lkIGRtYV9idWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVm
ICpkbWFidWYsCj4gICAJCSAgICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpOwo+
ICtpbnQgZG1hX2J1Zl9waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsKPiAr
dm9pZCBkbWFfYnVmX3VucGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7Cj4g
ICAKPiAgIHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmX2V4cG9ydChjb25zdCBzdHJ1Y3QgZG1hX2J1
Zl9leHBvcnRfaW5mbyAqZXhwX2luZm8pOwo+ICAgCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1h
bi9saXN0aW5mby9pbnRlbC1nZngK
