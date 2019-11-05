Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E3C4EFBD7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2019 11:53:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D11E46E9CA;
	Tue,  5 Nov 2019 10:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D174D6E9C5
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Nov 2019 10:52:56 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id n1so20775595wra.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 05 Nov 2019 02:52:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition
 :content-transfer-encoding:in-reply-to:user-agent;
 bh=TKdpVF6TwvbB8GcetexoU9XGuRiB74mVvMztmY2qmqE=;
 b=AlFBfJY0f7vjT1I6Uroey1Qf3KXyvUyJgplsiFQeR5/Z0Aj2Bh24oiwDRyiXlrKElD
 eI3lbG9NMJ4XucRlV6lDWvHXrxt8sBR4y8/2pZn5/rr61FvSVhKqPXX8UyK68FwxD0Jr
 XW0aQLuadPwSYI4fbDDcYnxQdiuxX6+53n6LEw5i0GEkt6L/ld8DphyrlOD6hlJJwfUU
 mIziddAu2ZDBp69i5FTTHrnkuRjHvQ+cZNRw0VzmumlQBG2ox86dB87kp6GNEmvfFYoN
 wqt0QphMmGE9vpK4fhQZDn3ZiXkPEzbtiJXmrwgJ55rWtl85h2PkWSSk/ewD44xSiM2a
 WLUg==
X-Gm-Message-State: APjAAAXXzvEZ6S31uvAVaEcQDnYy06BNozTQMXtcVNpCNlgfAgNS9lsK
 JDhTySSgpDKD+unaPtwtgzJHJQ==
X-Google-Smtp-Source: APXvYqzVjJg/jeudj/TNfMBZc+K5TN26tQRpEYyYpCfKwy7Z6t1j5W3/5nw0wWhx7qCr4Pp9TdCCkw==
X-Received: by 2002:adf:e78c:: with SMTP id n12mr12053221wrm.94.1572951175402; 
 Tue, 05 Nov 2019 02:52:55 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id d11sm24319677wrf.80.2019.11.05.02.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 02:52:54 -0800 (PST)
Date: Tue, 5 Nov 2019 11:52:52 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>
Message-ID: <20191105105252.GE10326@phenom.ffwll.local>
References: <20191029104049.9011-1-christian.koenig@amd.com>
 <20191029104049.9011-6-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029104049.9011-6-christian.koenig@amd.com>
X-Operating-System: Linux phenom 5.2.0-3-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent;
 bh=TKdpVF6TwvbB8GcetexoU9XGuRiB74mVvMztmY2qmqE=;
 b=OufcUF3IZvb8+A+1gXi/mEok00kj2665sxfBAhqyo3KY1zzui+yHNwCZ7Um0UXu1ei
 yT4y5RA2BeIqtK0ofuoxnDU8vxjMjDNWbOO4B4GtGGncNN+PjrzOJQ0da4zM3T/aG7zK
 vNQe58mOGBiEI7knRbpegwVEStvtstSqLVbfU=
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
Cc: linaro-mm-sig@lists.linaro.org, intel-gfx@lists.freedesktop.org,
 sumit.semwal@linaro.org, dri-devel@lists.freedesktop.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCBPY3QgMjksIDIwMTkgYXQgMTE6NDA6NDlBTSArMDEwMCwgQ2hyaXN0aWFuIEvDtm5p
ZyB3cm90ZToKPiBJbXBsZW1lbnQgdGhlIGltcG9ydGVyIHNpZGUgb2YgdW5waW5uZWQgRE1BLWJ1
ZiBoYW5kbGluZy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2Ft
ZGdwdV9kbWFfYnVmLmMgfCAyOCArKysrKysrKysrKysrKysrKysrKy0KPiAgZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X29iamVjdC5jICB8ICA2ICsrKysrCj4gIDIgZmlsZXMgY2hh
bmdlZCwgMzMgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1hX2J1Zi5jIGIvZHJpdmVycy9ncHUv
ZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RtYV9idWYuYwo+IGluZGV4IDM2MjljZmU1M2FhZC4uYWYz
OTU1M2M1MWFkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdw
dV9kbWFfYnVmLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfZG1h
X2J1Zi5jCj4gQEAgLTQ1Niw3ICs0NTYsMzMgQEAgYW1kZ3B1X2RtYV9idWZfY3JlYXRlX29iaihz
dHJ1Y3QgZHJtX2RldmljZSAqZGV2LCBzdHJ1Y3QgZG1hX2J1ZiAqZG1hX2J1ZikKPiAgCXJldHVy
biBFUlJfUFRSKHJldCk7Cj4gIH0KPiAgCj4gKy8qKgo+ICsgKiBhbWRncHVfZG1hX2J1Zl9tb3Zl
X25vdGlmeSAtICZhdHRhY2gubW92ZV9ub3RpZnkgaW1wbGVtZW50YXRpb24KPiArICoKPiArICog
QGF0dGFjaDogdGhlIERNQS1idWYgYXR0YWNobWVudAo+ICsgKgo+ICsgKiBJbnZhbGlkYXRlIHRo
ZSBETUEtYnVmIGF0dGFjaG1lbnQsIG1ha2luZyBzdXJlIHRoYXQgdGhlIHdlIHJlLWNyZWF0ZSB0
aGUKPiArICogbWFwcGluZyBiZWZvcmUgdGhlIG5leHQgdXNlLgo+ICsgKi8KPiArc3RhdGljIHZv
aWQKPiArYW1kZ3B1X2RtYV9idWZfbW92ZV9ub3RpZnkoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqYXR0YWNoKQo+ICt7Cj4gKwlzdHJ1Y3QgdHRtX29wZXJhdGlvbl9jdHggY3R4ID0geyBmYWxz
ZSwgZmFsc2UgfTsKPiArCXN0cnVjdCBkcm1fZ2VtX29iamVjdCAqb2JqID0gYXR0YWNoLT5pbXBv
cnRlcl9wcml2Owo+ICsJc3RydWN0IGFtZGdwdV9ibyAqYm8gPSBnZW1fdG9fYW1kZ3B1X2JvKG9i
aik7Cj4gKwlzdHJ1Y3QgdHRtX3BsYWNlbWVudCBwbGFjZW1lbnQgPSB7fTsKPiArCWludCByOwo+
ICsKPiArCWlmIChiby0+dGJvLm1lbS5tZW1fdHlwZSA9PSBUVE1fUExfU1lTVEVNKQo+ICsJCXJl
dHVybjsKPiArCj4gKwlyID0gdHRtX2JvX3ZhbGlkYXRlKCZiby0+dGJvLCAmcGxhY2VtZW50LCAm
Y3R4KTsKPiArCWlmIChyKQo+ICsJCURSTV9FUlJPUigiRmFpbGVkIHRvIGludmFsaWRhdGUgRE1B
LWJ1ZiBpbXBvcnQgKCVkKSlcbiIsIHIpOwoKV2hlcmUgZG8geW91IHVwZGF0ZSBwYWdldGFibGVz
PwoKVGhlIG9ubHkgdGhpbmcgSSd2ZSBmb3VuZCBpcyBpbiB0aGUgYW1kZ3B1IENTIGNvZGUsIHdo
aWNoIGlzIHdheSB0byBsYXRlCmZvciB0aGlzIHN0dWZmIGhlcmUuIFBsdXMgVFRNIGRvZXNuJ3Qg
aGFuZGxlIHZpcnR1YWwgbWVtb3J5IGF0IGFsbCAoYXNpZGUKZnJvbSB0aGUgZ2FydCB0dCksIHNv
IGNsZWFybHkgeW91IG5lZWQgdG8gY2FsbCBpbnRvIGFtZGdwdSBjb2RlIHNvbWV3aGVyZQpmb3Ig
dGhpcy4gQnV0IEkgZGlkbid0IGZpbmQgaXQsIG5laXRoZXIgaW4geW91ciAtPm1vdmVfbm90aWZ5
IG5vciB0aGUKLT5tb3ZlIGNhbGxiYWNrIGluIHR0bV9ib19kcml2ZXIuCgpIb3cgZG9lcyB0aGlz
IHdvcms/Ci1EYW5pZWwKCj4gK30KPiArCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgZG1hX2J1Zl9h
dHRhY2hfb3BzIGFtZGdwdV9kbWFfYnVmX2F0dGFjaF9vcHMgPSB7Cj4gKwkubW92ZV9ub3RpZnkg
PSBhbWRncHVfZG1hX2J1Zl9tb3ZlX25vdGlmeQo+ICB9Owo+ICAKPiAgLyoqCj4gQEAgLTQ5Miw3
ICs1MTgsNyBAQCBzdHJ1Y3QgZHJtX2dlbV9vYmplY3QgKmFtZGdwdV9nZW1fcHJpbWVfaW1wb3J0
KHN0cnVjdCBkcm1fZGV2aWNlICpkZXYsCj4gIAkJcmV0dXJuIG9iajsKPiAgCj4gIAlhdHRhY2gg
PSBkbWFfYnVmX2R5bmFtaWNfYXR0YWNoKGRtYV9idWYsIGRldi0+ZGV2LAo+IC0JCQkJCSZhbWRn
cHVfZG1hX2J1Zl9hdHRhY2hfb3BzLCBOVUxMKTsKPiArCQkJCQkmYW1kZ3B1X2RtYV9idWZfYXR0
YWNoX29wcywgb2JqKTsKPiAgCWlmIChJU19FUlIoYXR0YWNoKSkgewo+ICAJCWRybV9nZW1fb2Jq
ZWN0X3B1dChvYmopOwo+ICAJCXJldHVybiBFUlJfQ0FTVChhdHRhY2gpOwo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMgYi9kcml2ZXJzL2dw
dS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2JqZWN0LmMKPiBpbmRleCBhYzc3NmQyNjIwZWIuLmNm
YTQ2MzQxYzlhNyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRn
cHVfb2JqZWN0LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfb2Jq
ZWN0LmMKPiBAQCAtODYxLDYgKzg2MSw5IEBAIGludCBhbWRncHVfYm9fcGluX3Jlc3RyaWN0ZWQo
c3RydWN0IGFtZGdwdV9ibyAqYm8sIHUzMiBkb21haW4sCj4gIAkJcmV0dXJuIDA7Cj4gIAl9Cj4g
IAo+ICsJaWYgKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKQo+ICsJCWRtYV9idWZfcGluKGJv
LT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKPiArCj4gIAliby0+ZmxhZ3MgfD0gQU1ER1BVX0dF
TV9DUkVBVEVfVlJBTV9DT05USUdVT1VTOwo+ICAJLyogZm9yY2UgdG8gcGluIGludG8gdmlzaWJs
ZSB2aWRlbyByYW0gKi8KPiAgCWlmICghKGJvLT5mbGFncyAmIEFNREdQVV9HRU1fQ1JFQVRFX05P
X0NQVV9BQ0NFU1MpKQo+IEBAIC05NDQsNiArOTQ3LDkgQEAgaW50IGFtZGdwdV9ib191bnBpbihz
dHJ1Y3QgYW1kZ3B1X2JvICpibykKPiAgCj4gIAlhbWRncHVfYm9fc3VidHJhY3RfcGluX3NpemUo
Ym8pOwo+ICAKPiArCWlmIChiby0+dGJvLmJhc2UuaW1wb3J0X2F0dGFjaCkKPiArCQlkbWFfYnVm
X3VucGluKGJvLT50Ym8uYmFzZS5pbXBvcnRfYXR0YWNoKTsKPiArCj4gIAlmb3IgKGkgPSAwOyBp
IDwgYm8tPnBsYWNlbWVudC5udW1fcGxhY2VtZW50OyBpKyspIHsKPiAgCQliby0+cGxhY2VtZW50
c1tpXS5scGZuID0gMDsKPiAgCQliby0+cGxhY2VtZW50c1tpXS5mbGFncyAmPSB+VFRNX1BMX0ZM
QUdfTk9fRVZJQ1Q7Cj4gLS0gCj4gMi4xNy4xCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KPiBkcmktZGV2ZWwgbWFpbGluZyBsaXN0Cj4gZHJpLWRl
dmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
L21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBF
bmdpbmVlciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcg
bGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRl
c2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
