Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA719F0470
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 18:53:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A966EB34;
	Tue,  5 Nov 2019 17:53:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com
 [IPv6:2a00:1450:4864:20::342])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 456766EA74;
 Tue,  5 Nov 2019 13:40:02 +0000 (UTC)
Received: by mail-wm1-x342.google.com with SMTP id t26so16080554wmi.4;
 Tue, 05 Nov 2019 05:40:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:reply-to:subject:to:cc:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-transfer-encoding:content-language;
 bh=b0UuCF0aZQ2aI4sXMhK55aJLis22oaUy2VUMpSDxgso=;
 b=e5FuFdc5sWEM6IIQYQVPmNn8OAxa8LnK/9rae7zm1d3YJG8BuPjTOo1pk9fsX+ykIY
 5P//czUIfd5lV/yTG28g7A4PkDg1ESSrBfZnwE9t69oc9ONVaV0oAljMnOtL9AQD+83H
 1EcbVHmtUWUP4Tio7tA/pQg8+2h3Rn+Cyg5CYLG85ws/6U8YYysgJO4Nw++9k/Pn9SXO
 FrncHc1RcraetJEW0QOnXuO05kbKsXHDdc4M7YOPAWP8qr95zV4JtdI8JohUNO2ALlru
 iuFabQ1wN3PwdujK5VsXRiomBBM0DuerKwq6p9ooDOOVguwKTD6/DjJ9e7IVR3gvR9UU
 Mk/g==
X-Gm-Message-State: APjAAAXuwis2hjWLF9thk+oUynv2+WHDVSA+U5EIENQezS9kqCacdJ3A
 bRFGWMZgqppz76C7/9RwV9i3+qZK
X-Google-Smtp-Source: APXvYqzZ6sdPhnPCT5teu/ZgEP0SZG0SRu2jQT/ZQ3dDbBTGI9htRohDdc5AHqxb6x0HBdCoe6Uiag==
X-Received: by 2002:a7b:c350:: with SMTP id l16mr4081706wmj.139.1572961199528; 
 Tue, 05 Nov 2019 05:39:59 -0800 (PST)
Received: from ?IPv6:2a02:908:1252:fb60:be8a:bd56:1f94:86e7?
 ([2a02:908:1252:fb60:be8a:bd56:1f94:86e7])
 by smtp.gmail.com with ESMTPSA id h124sm21913478wmf.30.2019.11.05.05.39.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 05 Nov 2019 05:39:58 -0800 (PST)
To: Daniel Vetter <daniel@ffwll.ch>
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-6-christian.koenig@amd.com>
 <20191105105252.GE10326@phenom.ffwll.local>
From: =?UTF-8?Q?Christian_K=c3=b6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <0c506743-1def-2c49-886a-4fa125b33151@gmail.com>
Date: Tue, 5 Nov 2019 14:39:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191105105252.GE10326@phenom.ffwll.local>
Content-Language: en-US
X-Mailman-Approved-At: Tue, 05 Nov 2019 17:53:45 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=reply-to:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=b0UuCF0aZQ2aI4sXMhK55aJLis22oaUy2VUMpSDxgso=;
 b=CUqNwSoarPHuHTIr2+8gVOa44pJC6vMOr+Eukgv7xaoow0yLUfWXtbonm7uUT95uGl
 Ty0tDiNpGjEFv2JuoDjxn3dkgeaH0Qig3eZ5DzDU0dpHn1lqvBffuO/33nyoBLfftQEC
 BItIwev7gzLMrWRxQxwB22t9LlIOPoQ7xG4VAknq0PqA75hq1vbZ+pOV+WmXh5NFDtUg
 WFmeKL4xcU8CGjSJXjheghqM35FrErJARAcRixhnt3lWXIwMzLZj2i/WpOcxJwDazwFF
 R9phxIIAwuHqg10L25RwF3x3pvYxN8+hf5d2fESLggegKm7l69L98iesHKyKvI4cSIi4
 E2Yw==
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/amdgpu: implement
 amdgpu_gem_prime_move_notify
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.23
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
Reply-To: christian.koenig@amd.com
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QW0gMDUuMTEuMTkgdW0gMTE6NTIgc2NocmllYiBEYW5pZWwgVmV0dGVyOgo+IE9uIFR1ZSwgT2N0
IDI5LCAyMDE5IGF0IDExOjQwOjQ5QU0gKzAxMDAsIENocmlzdGlhbiBLw7ZuaWcgd3JvdGU6Cj4+
IEltcGxlbWVudCB0aGUgaW1wb3J0ZXIgc2lkZSBvZiB1bnBpbm5lZCBETUEtYnVmIGhhbmRsaW5n
Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmln
QGFtZC5jb20+Cj4+IC0tLQo+PiAgIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKy0KPj4gICBkcml2ZXJzL2dwdS9kcm0v
YW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgIHwgIDYgKysrKysKPj4gICAyIGZpbGVzIGNoYW5n
ZWQsIDMzIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kbWFfYnVmLmMgYi9kcml2ZXJzL2dwdS9k
cm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jCj4+IGluZGV4IDM2MjljZmU1M2FhZC4uYWYz
OTU1M2M1MWFkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfZG1hX2J1Zi5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9k
bWFfYnVmLmMKPj4gQEAgLTQ1Niw3ICs0NTYsMzMgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29i
aihzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikKPj4gICAJ
cmV0dXJuIEVSUl9QVFIocmV0KTsKPj4gICB9Cj4+ICAgCj4+ICsvKioKPj4gKyAqIGFtZGdwdV9k
bWFfYnVmX21vdmVfbm90aWZ5IC0gJmF0dGFjaC5tb3ZlX25vdGlmeSBpbXBsZW1lbnRhdGlvbgo+
PiArICoKPj4gKyAqIEBhdHRhY2g6IHRoZSBETUEtYnVmIGF0dGFjaG1lbnQKPj4gKyAqCj4+ICsg
KiBJbnZhbGlkYXRlIHRoZSBETUEtYnVmIGF0dGFjaG1lbnQsIG1ha2luZyBzdXJlIHRoYXQgdGhl
IHdlIHJlLWNyZWF0ZSB0aGUKPj4gKyAqIG1hcHBpbmcgYmVmb3JlIHRoZSBuZXh0IHVzZS4KPj4g
KyAqLwo+PiArc3RhdGljIHZvaWQKPj4gK2FtZGdwdV9kbWFfYnVmX21vdmVfbm90aWZ5KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCkKPj4gK3sKPj4gKwlzdHJ1Y3QgdHRtX29wZXJh
dGlvbl9jdHggY3R4ID0geyBmYWxzZSwgZmFsc2UgfTsKPj4gKwlzdHJ1Y3QgZHJtX2dlbV9vYmpl
Y3QgKm9iaiA9IGF0dGFjaC0+aW1wb3J0ZXJfcHJpdjsKPj4gKwlzdHJ1Y3QgYW1kZ3B1X2JvICpi
byA9IGdlbV90b19hbWRncHVfYm8ob2JqKTsKPj4gKwlzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFj
ZW1lbnQgPSB7fTsKPj4gKwlpbnQgcjsKPj4gKwo+PiArCWlmIChiby0+dGJvLm1lbS5tZW1fdHlw
ZSA9PSBUVE1fUExfU1lTVEVNKQo+PiArCQlyZXR1cm47Cj4+ICsKPj4gKwlyID0gdHRtX2JvX3Zh
bGlkYXRlKCZiby0+dGJvLCAmcGxhY2VtZW50LCAmY3R4KTsKPj4gKwlpZiAocikKPj4gKwkJRFJN
X0VSUk9SKCJGYWlsZWQgdG8gaW52YWxpZGF0ZSBETUEtYnVmIGltcG9ydCAoJWQpKVxuIiwgcik7
Cj4gV2hlcmUgZG8geW91IHVwZGF0ZSBwYWdldGFibGVzPwo+Cj4gVGhlIG9ubHkgdGhpbmcgSSd2
ZSBmb3VuZCBpcyBpbiB0aGUgYW1kZ3B1IENTIGNvZGUsIHdoaWNoIGlzIHdheSB0byBsYXRlCj4g
Zm9yIHRoaXMgc3R1ZmYgaGVyZS4gUGx1cyBUVE0gZG9lc24ndCBoYW5kbGUgdmlydHVhbCBtZW1v
cnkgYXQgYWxsIChhc2lkZQo+IGZyb20gdGhlIGdhcnQgdHQpLCBzbyBjbGVhcmx5IHlvdSBuZWVk
IHRvIGNhbGwgaW50byBhbWRncHUgY29kZSBzb21ld2hlcmUKPiBmb3IgdGhpcy4gQnV0IEkgZGlk
bid0IGZpbmQgaXQsIG5laXRoZXIgaW4geW91ciAtPm1vdmVfbm90aWZ5IG5vciB0aGUKPiAtPm1v
dmUgY2FsbGJhY2sgaW4gdHRtX2JvX2RyaXZlci4KPgo+IEhvdyBkb2VzIHRoaXMgd29yaz8KClBh
Z2UgdGFibGVzIGFyZSBub3QgdXBkYXRlZCB1bnRpbCB0aGUgbmV4dCBjb21tYW5kIHN1Ym1pc3Np
b24sIGUuZy4gaW4gCmFtZGdwdV9jcy5jCgpUaGlzIGlzIHNhdmUgc2luY2UgYWxsIHByZXZpb3Vz
IGNvbW1hbmQgc3VibWlzc2lvbnMgYXJlIGFkZGVkIHRvIHRoZSAKZG1hX3Jlc3Ygb2JqZWN0IGFz
IGZlbmNlcyBhbmQgdGhlIGRtYV9idWYgY2FuJ3QgYmUgbW92ZWQgYmVmb3JlIHRob3NlIAphcmUg
c2lnbmFsZWQuCgpDaHJpc3RpYW4uCgo+IC1EYW5pZWwKPgo+PiArfQo+PiArCj4+ICAgc3RhdGlj
IGNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgYW1kZ3B1X2RtYV9idWZfYXR0YWNoX29w
cyA9IHsKPj4gKwkubW92ZV9ub3RpZnkgPSBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQo+PiAg
IH07Cj4+ICAgCj4+ICAgLyoqCj4+IEBAIC00OTIsNyArNTE4LDcgQEAgc3RydWN0IGRybV9nZW1f
b2JqZWN0ICphbWRncHVfZ2VtX3ByaW1lX2ltcG9ydChzdHJ1Y3QgZHJtX2RldmljZSAqZGV2LAo+
PiAgIAkJcmV0dXJuIG9iajsKPj4gICAKPj4gICAJYXR0YWNoID0gZG1hX2J1Zl9keW5hbWljX2F0
dGFjaChkbWFfYnVmLCBkZXYtPmRldiwKPj4gLQkJCQkJJmFtZGdwdV9kbWFfYnVmX2F0dGFjaF9v
cHMsIE5VTEwpOwo+PiArCQkJCQkmYW1kZ3B1X2RtYV9idWZfYXR0YWNoX29wcywgb2JqKTsKPj4g
ICAJaWYgKElTX0VSUihhdHRhY2gpKSB7Cj4+ICAgCQlkcm1fZ2VtX29iamVjdF9wdXQob2JqKTsK
Pj4gICAJCXJldHVybiBFUlJfQ0FTVChhdHRhY2gpOwo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9h
bWRncHUvYW1kZ3B1X29iamVjdC5jCj4+IGluZGV4IGFjNzc2ZDI2MjBlYi4uY2ZhNDYzNDFjOWE3
IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0
LmMKPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jCj4+
IEBAIC04NjEsNiArODYxLDkgQEAgaW50IGFtZGdwdV9ib19waW5fcmVzdHJpY3RlZChzdHJ1Y3Qg
YW1kZ3B1X2JvICpibywgdTMyIGRvbWFpbiwKPj4gICAJCXJldHVybiAwOwo+PiAgIAl9Cj4+ICAg
Cj4+ICsJaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKQo+PiArCQlkbWFfYnVmX3Bpbihi
by0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCk7Cj4+ICsKPj4gICAJYm8tPmZsYWdzIHw9IEFNREdQ
VV9HRU1fQ1JFQVRFX1ZSQU1fQ09OVElHVU9VUzsKPj4gICAJLyogZm9yY2UgdG8gcGluIGludG8g
dmlzaWJsZSB2aWRlbyByYW0gKi8KPj4gICAJaWYgKCEoYm8tPmZsYWdzICYgQU1ER1BVX0dFTV9D
UkVBVEVfTk9fQ1BVX0FDQ0VTUykpCj4+IEBAIC05NDQsNiArOTQ3LDkgQEAgaW50IGFtZGdwdV9i
b191bnBpbihzdHJ1Y3QgYW1kZ3B1X2JvICpibykKPj4gICAKPj4gICAJYW1kZ3B1X2JvX3N1YnRy
YWN0X3Bpbl9zaXplKGJvKTsKPj4gICAKPj4gKwlpZiAoYm8tPnRiby5iYXNlLmltcG9ydF9hdHRh
Y2gpCj4+ICsJCWRtYV9idWZfdW5waW4oYm8tPnRiby5iYXNlLmltcG9ydF9hdHRhY2gpOwo+PiAr
Cj4+ICAgCWZvciAoaSA9IDA7IGkgPCBiby0+cGxhY2VtZW50Lm51bV9wbGFjZW1lbnQ7IGkrKykg
ewo+PiAgIAkJYm8tPnBsYWNlbWVudHNbaV0ubHBmbiA9IDA7Cj4+ICAgCQliby0+cGxhY2VtZW50
c1tpXS5mbGFncyAmPSB+VFRNX1BMX0ZMQUdfTk9fRVZJQ1Q7Cj4+IC0tIAo+PiAyLjE3LjEKPj4K
Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gZHJp
LWRldmVsIG1haWxpbmcgbGlzdAo+PiBkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4+
IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVs
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1n
ZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9s
aXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
