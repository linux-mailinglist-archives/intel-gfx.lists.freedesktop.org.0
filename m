Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AA487391C0A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 May 2021 17:31:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 470026E5AE;
	Wed, 26 May 2021 15:31:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com
 [IPv6:2a00:1450:4864:20::329])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BBCC6E3F5
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 15:31:05 +0000 (UTC)
Received: by mail-wm1-x329.google.com with SMTP id
 f20-20020a05600c4e94b0290181f6edda88so788640wmq.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 May 2021 08:31:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RB2ZWVJP4SRB/tEOtf84RYCzItdRRncT9gVbFIJersM=;
 b=jUTaxs8wkvnpXVTo9NGd5DMUK4X7BLiCyc7IkcBcpKdpg2cu7cMaQnUlj3U1L2HHwj
 T0gIFLpPA+Id87xr9rm5QT1CzseB6PnvWpzV9jqu7FlYFQ1QqMcvYhJrbcjTkUTVzWXy
 sFen1l8p0mM4diskaTrZbyo2hBW2GRwQrucwA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RB2ZWVJP4SRB/tEOtf84RYCzItdRRncT9gVbFIJersM=;
 b=Q+YwlHGi5acUKu3IbXbwdGN/DO1WMxmywZN6vTaBCmOWeN//lYA3aSjEz4PAdz6ovj
 WuQ+eWmhSy/MpJBBGsnsOwSzKSnIWmmpkwtBpcorp4AlKED3VQyDKP6iTSEt8YPzwk18
 Zi6iqjpl1ebjRe4ZxXk1Sya4ox3zjU1s+plP95Kn+Nky1hBUyUTw+zCN3BYzadQcLRnx
 8Fi3L9jrq3YtIOhCDzvChM+hsSeu3qGp0bJ4AlT/HGrSP2M6W2KuGgQMbMAChvpz8ODv
 Ks7cu6T/M3GWiCeA8TtemvsO+xKFMjxRkpgbh7KhvbxOyZFtaGMrFcY03un0+2e6MQuM
 h42g==
X-Gm-Message-State: AOAM530n4e5+7sn+/djzihGV58SV9RJQAxnZ1BsuVCjXUao1j+E4TVj+
 FLknS59F8PhZ7BZUhTDGNhGneyD6XMxpNg==
X-Google-Smtp-Source: ABdhPJylB8/u0/JgesRvpK4QDmT4zR+S8J7rFzGdL/nnmwm9hzw9d8oFiUjh4Sdh2XdASIpILFY8ZA==
X-Received: by 2002:a1c:7f86:: with SMTP id a128mr28929956wmd.20.1622043064306; 
 Wed, 26 May 2021 08:31:04 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id h15sm14965458wmq.1.2021.05.26.08.31.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 08:31:03 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Wed, 26 May 2021 17:30:58 +0200
Message-Id: <20210526153058.3392996-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210526151106.3390006-1-daniel.vetter@ffwll.ch>
References: <20210526151106.3390006-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Use generic_access_phys
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
Cc: =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Michel Lespinasse <walken@google.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U2luY2UKCmNvbW1pdCA5NjY2N2Y4YTQzODJkYjllZDA0MjMzMmNhNmVlMTY1YWU5YjkxMzA3CkF1
dGhvcjogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KRGF0ZTogICBGcmkg
Tm92IDI3IDE3OjQxOjIxIDIwMjAgKzAxMDAKCiAgICBtbTogQ2xvc2UgcmFjZSBpbiBnZW5lcmlj
X2FjY2Vzc19waHlzCgppdCBpcyByYWNlLWZyZWUgYW5kIGNhbiB0aGVyZWZvcmUgYmUgc2FmZWx5
IHVzZWQgZm9yIGR5bmFtaWMgbWFwcGluZ3MKbGlrZSB3ZSBoYXZlIHRvby4KCnYyIGdpdCBjb21t
aXQgLS1hbWVuZAoKKnNpZ2gqCgpDYzogSm9uIEJsb29tZmllbGQgPGpvbi5ibG9vbWZpZWxkQGlu
dGVsLmNvbT4KU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRl
bC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgpDYzogIlRo
b21hcyBIZWxsc3Ryw7ZtIiA8dGhvbWFzLmhlbGxzdHJvbUBsaW51eC5pbnRlbC5jb20+CkNjOiBD
aHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hv
cnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNjOiBBbmRyZXcgTW9ydG9u
IDxha3BtQGxpbnV4LWZvdW5kYXRpb24ub3JnPgpDYzogIkNocmlzdGlhbiBLw7ZuaWciIDxjaHJp
c3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiAiVmlsbGUgU3lyasOkbMOkIiA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+CkNjOiBNaWNoZWwgTGVzcGluYXNzZSA8d2Fsa2VuQGdvb2dsZS5j
b20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX21tYW4uYyB8IDYwICsr
Ky0tLS0tLS0tLS0tLS0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKSwg
NTQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5
MTVfZ2VtX21tYW4uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMK
aW5kZXggZjZmZTVjYjAxNDM4Li4xNmEwNTlkNTRiZGEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9tbWFuLmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z2VtL2k5MTVfZ2VtX21tYW4uYwpAQCAtNDE0LDU4ICs0MTQsNiBAQCBzdGF0aWMgdm1fZmF1bHRf
dCB2bV9mYXVsdF9ndHQoc3RydWN0IHZtX2ZhdWx0ICp2bWYpCiAJcmV0dXJuIGk5MTVfZXJyb3Jf
dG9fdm1mX2ZhdWx0KHJldCk7CiB9CiAKLXN0YXRpYyBpbnQKLXZtX2FjY2VzcyhzdHJ1Y3Qgdm1f
YXJlYV9zdHJ1Y3QgKmFyZWEsIHVuc2lnbmVkIGxvbmcgYWRkciwKLQkgIHZvaWQgKmJ1ZiwgaW50
IGxlbiwgaW50IHdyaXRlKQotewotCXN0cnVjdCBpOTE1X21tYXBfb2Zmc2V0ICptbW8gPSBhcmVh
LT52bV9wcml2YXRlX2RhdGE7Ci0Jc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9IG1t
by0+b2JqOwotCXN0cnVjdCBpOTE1X2dlbV93d19jdHggd3c7Ci0Jdm9pZCAqdmFkZHI7Ci0JaW50
IGVyciA9IDA7Ci0KLQlpZiAoaTkxNV9nZW1fb2JqZWN0X2lzX3JlYWRvbmx5KG9iaikgJiYgd3Jp
dGUpCi0JCXJldHVybiAtRUFDQ0VTOwotCi0JYWRkciAtPSBhcmVhLT52bV9zdGFydDsKLQlpZiAo
YWRkciA+PSBvYmotPmJhc2Uuc2l6ZSkKLQkJcmV0dXJuIC1FSU5WQUw7Ci0KLQlpOTE1X2dlbV93
d19jdHhfaW5pdCgmd3csIHRydWUpOwotcmV0cnk6Ci0JZXJyID0gaTkxNV9nZW1fb2JqZWN0X2xv
Y2sob2JqLCAmd3cpOwotCWlmIChlcnIpCi0JCWdvdG8gb3V0OwotCi0JLyogQXMgdGhpcyBpcyBw
cmltYXJpbHkgZm9yIGRlYnVnZ2luZywgbGV0J3MgZm9jdXMgb24gc2ltcGxpY2l0eSAqLwotCXZh
ZGRyID0gaTkxNV9nZW1fb2JqZWN0X3Bpbl9tYXAob2JqLCBJOTE1X01BUF9GT1JDRV9XQyk7Ci0J
aWYgKElTX0VSUih2YWRkcikpIHsKLQkJZXJyID0gUFRSX0VSUih2YWRkcik7Ci0JCWdvdG8gb3V0
OwotCX0KLQotCWlmICh3cml0ZSkgewotCQltZW1jcHkodmFkZHIgKyBhZGRyLCBidWYsIGxlbik7
Ci0JCV9faTkxNV9nZW1fb2JqZWN0X2ZsdXNoX21hcChvYmosIGFkZHIsIGxlbik7Ci0JfSBlbHNl
IHsKLQkJbWVtY3B5KGJ1ZiwgdmFkZHIgKyBhZGRyLCBsZW4pOwotCX0KLQotCWk5MTVfZ2VtX29i
amVjdF91bnBpbl9tYXAob2JqKTsKLW91dDoKLQlpZiAoZXJyID09IC1FREVBRExLKSB7Ci0JCWVy
ciA9IGk5MTVfZ2VtX3d3X2N0eF9iYWNrb2ZmKCZ3dyk7Ci0JCWlmICghZXJyKQotCQkJZ290byBy
ZXRyeTsKLQl9Ci0JaTkxNV9nZW1fd3dfY3R4X2ZpbmkoJnd3KTsKLQotCWlmIChlcnIpCi0JCXJl
dHVybiBlcnI7Ci0KLQlyZXR1cm4gbGVuOwotfQotCiB2b2lkIF9faTkxNV9nZW1fb2JqZWN0X3Jl
bGVhc2VfbW1hcF9ndHQoc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaikKIHsKIAlzdHJ1
Y3QgaTkxNV92bWEgKnZtYTsKQEAgLTgwMSwxNCArNzQ5LDE4IEBAIHN0YXRpYyB2b2lkIHZtX2Ns
b3NlKHN0cnVjdCB2bV9hcmVhX3N0cnVjdCAqdm1hKQogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHZt
X29wZXJhdGlvbnNfc3RydWN0IHZtX29wc19ndHQgPSB7CiAJLmZhdWx0ID0gdm1fZmF1bHRfZ3R0
LAotCS5hY2Nlc3MgPSB2bV9hY2Nlc3MsCisjaWZkZWYgQ09ORklHX0hBVkVfSU9SRU1BUF9QUk9U
CisJLmFjY2VzcyA9IGdlbmVyaWNfYWNjZXNzX3BoeXMsCisjZW5kaWYKIAkub3BlbiA9IHZtX29w
ZW4sCiAJLmNsb3NlID0gdm1fY2xvc2UsCiB9OwogCiBzdGF0aWMgY29uc3Qgc3RydWN0IHZtX29w
ZXJhdGlvbnNfc3RydWN0IHZtX29wc19jcHUgPSB7CiAJLmZhdWx0ID0gdm1fZmF1bHRfY3B1LAot
CS5hY2Nlc3MgPSB2bV9hY2Nlc3MsCisjaWZkZWYgQ09ORklHX0hBVkVfSU9SRU1BUF9QUk9UCisJ
LmFjY2VzcyA9IGdlbmVyaWNfYWNjZXNzX3BoeXMsCisjZW5kaWYKIAkub3BlbiA9IHZtX29wZW4s
CiAJLmNsb3NlID0gdm1fY2xvc2UsCiB9OwotLSAKMi4zMS4wCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
