Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F4181688F6
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2020 22:05:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBC76F577;
	Fri, 21 Feb 2020 21:05:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com
 [IPv6:2a00:1450:4864:20::343])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C18D56F558
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 21:04:31 +0000 (UTC)
Received: by mail-wm1-x343.google.com with SMTP id q9so3153460wmj.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Feb 2020 13:04:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Q5R9BISRhwbobALJQRmJk6fDqDSskkRT9sp55A6Z0oo=;
 b=gQ5jSayM1pJy5OItsc/YGEZyaauMKhsDQ0OoeA89/f52Thj/Lifl1qL+i8zRSviEIG
 +WgxUzcLxDAtr51cx+C1u4vP54snKrEl3OWU7lXKo1HKJGhF3EBn6r3THkYS+Ag51YAW
 4gGdoTmJfTOoGtKXC8HV1GosNp2aLyoklVVME=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Q5R9BISRhwbobALJQRmJk6fDqDSskkRT9sp55A6Z0oo=;
 b=FwumAtLYs3Ydt1iYm6i/9KXKqjecSr/k4Kz30yiwbIJKROJfHH9IIb42oLYCbce6Rj
 qgHzDupozeq3AuVD+8BSfZ47ZsCbmubwIH0O+OZx5SwBYdwJKZUV8/dPsglXqNmJop/m
 02dIPfchpzLVTpaYstHSI2diMacKTBYxoYT73S2Qs04/qCaA2wkWVCFIagaTSwqcLiIl
 KP3SgISHSoQSlAmv++i+hi+hFgOaNh2dey8/5cytE5eXJlEBl1WE4H28qj+G+n7ItOOc
 lvBI3KDLMEve9MbxegyVguypg8/FYo5zOOkSnv5HxqPkVwuoejy9SiUcuV7NXmlHAODx
 Ht5A==
X-Gm-Message-State: APjAAAVpD7+tPiIJIAN18EEXFMH4+S4HVBA3kUwWgYnTiOQz6KkBJKl1
 jeokSd7D4x5kheQhb9uSwz9BGA==
X-Google-Smtp-Source: APXvYqxEBbFV6DD9L7ahRqv80BdgqFQz6ds7EJ8WG0CFIB2BdZvU0OabtaJP8m472+vNO6Vl2NVYhQ==
X-Received: by 2002:a05:600c:145:: with SMTP id
 w5mr5418785wmm.157.1582319070396; 
 Fri, 21 Feb 2020 13:04:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id z6sm5483930wrw.36.2020.02.21.13.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 21 Feb 2020 13:04:29 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 21 Feb 2020 22:03:16 +0100
Message-Id: <20200221210319.2245170-49-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 48/51] drm/mipi-dbi: Drop explicit
 drm_mode_config_cleanup call
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maxime Ripard <mripard@kernel.org>, Eric Anholt <eric@anholt.net>,
 =?UTF-8?q?Noralf=20Tr=C3=B8nnes?= <noralf@tronnes.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>,
 Sam Ravnborg <sam@ravnborg.org>, David Lechner <david@lechnology.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

QWxsb3dzIHVzIHRvIGRyb3AgdGhlIGRybV9kcml2ZXIucmVsZWFzZSBjYWxsYmFjayBmcm9tIGFs
bApkcml2ZXJzLCBhbmQgcmVtb3ZlIHRoZSBtaXBpX2RiaV9yZWxlYXNlKCkgZnVuY3Rpb24uCgpU
aGlzIGlzIG1hZGUgcG9zc2libGUgYnkgYSBwcmVjZWVkaW5nIHBhdGNoIHdoaWNoIGFkZGVkIGEg
ZHJtbV8KY2xlYW51cCBhY3Rpb24gdG8gZHJtX21vZGVfY29uZmlnX2luaXQoKSwgaGVuY2UgYWxs
IHdlIG5lZWQgdG8gZG8gdG8KZW5zdXJlIHRoYXQgZHJtX21vZGVfY29uZmlnX2NsZWFudXAoKSBp
cyBydW4gb24gZmluYWwgZHJtX2RldmljZQpjbGVhbnVwIGlzIGNoZWNrIHRoZSBuZXcgZXJyb3Ig
Y29kZSBmb3IgX2luaXQoKS4KCnYyOiBFeHBsYWluIHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2li
bGUgKExhdXJlbnQpLgoKQ2M6IExhdXJlbnQgUGluY2hhcnQgPGxhdXJlbnQucGluY2hhcnRAaWRl
YXNvbmJvYXJkLmNvbT4KUmV2aWV3ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25u
ZXMub3JnPgpUZXN0ZWQtYnk6IE5vcmFsZiBUcsO4bm5lcyA8bm9yYWxmQHRyb25uZXMub3JnPgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRlbC5jb20+CkNj
OiBNYXhpbWUgUmlwYXJkIDxtcmlwYXJkQGtlcm5lbC5vcmc+CkNjOiBUaG9tYXMgWmltbWVybWFu
biA8dHppbW1lcm1hbm5Ac3VzZS5kZT4KQ2M6IERhdmlkIEFpcmxpZSA8YWlybGllZEBsaW51eC5p
ZT4KQ2M6IERhbmllbCBWZXR0ZXIgPGRhbmllbEBmZndsbC5jaD4KQ2M6IEVyaWMgQW5ob2x0IDxl
cmljQGFuaG9sdC5uZXQ+CkNjOiBEYXZpZCBMZWNobmVyIDxkYXZpZEBsZWNobm9sb2d5LmNvbT4K
Q2M6IEthbWxlc2ggR3VydWRhc2FuaSA8a2FtbGVzaC5ndXJ1ZGFzYW5pQGdtYWlsLmNvbT4KQ2M6
ICJOb3JhbGYgVHLDuG5uZXMiIDxub3JhbGZAdHJvbm5lcy5vcmc+CkNjOiBTYW0gUmF2bmJvcmcg
PHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2RybV9taXBpX2RiaS5jICB8
IDE2IC0tLS0tLS0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2h4ODM1N2QuYyAgfCAg
MSAtCiBkcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MjI1LmMgIHwgIDEgLQogZHJpdmVycy9ncHUv
ZHJtL3RpbnkvaWxpOTM0MS5jICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L2lsaTk0ODYu
YyAgfCAgMSAtCiBkcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNxdC5jIHwgIDEgLQogZHJpdmVy
cy9ncHUvZHJtL3Rpbnkvc3Q3NTg2LmMgICB8ICAxIC0KIGRyaXZlcnMvZ3B1L2RybS90aW55L3N0
NzczNXIuYyAgfCAgMSAtCiBpbmNsdWRlL2RybS9kcm1fbWlwaV9kYmkuaCAgICAgIHwgIDEgLQog
OSBmaWxlcyBjaGFuZ2VkLCAyNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vZHJtX21pcGlfZGJpLmMgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21pcGlfZGJpLmMKaW5k
ZXggOWRlMTU4NjY1OWJlLi5jMDA2MGExYzU2OWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9kcm1fbWlwaV9kYmkuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vZHJtX21pcGlfZGJpLmMKQEAg
LTU4MiwyMiArNTgyLDYgQEAgaW50IG1pcGlfZGJpX2Rldl9pbml0KHN0cnVjdCBtaXBpX2RiaV9k
ZXYgKmRiaWRldiwKIH0KIEVYUE9SVF9TWU1CT0wobWlwaV9kYmlfZGV2X2luaXQpOwogCi0vKioK
LSAqIG1pcGlfZGJpX3JlbGVhc2UgLSBEUk0gZHJpdmVyIHJlbGVhc2UgaGVscGVyCi0gKiBAZHJt
OiBEUk0gZGV2aWNlCi0gKgotICogVGhpcyBmdW5jdGlvbiBmaW5hbGl6ZXMgYW5kIGZyZWVzICZt
aXBpX2RiaS4KLSAqCi0gKiBEcml2ZXJzIGNhbiB1c2UgdGhpcyBhcyB0aGVpciAmZHJtX2RyaXZl
ci0+cmVsZWFzZSBjYWxsYmFjay4KLSAqLwotdm9pZCBtaXBpX2RiaV9yZWxlYXNlKHN0cnVjdCBk
cm1fZGV2aWNlICpkcm0pCi17Ci0JRFJNX0RFQlVHX0RSSVZFUigiXG4iKTsKLQotCWRybV9tb2Rl
X2NvbmZpZ19jbGVhbnVwKGRybSk7Ci19Ci1FWFBPUlRfU1lNQk9MKG1pcGlfZGJpX3JlbGVhc2Up
OwotCiAvKioKICAqIG1pcGlfZGJpX2h3X3Jlc2V0IC0gSGFyZHdhcmUgcmVzZXQgb2YgY29udHJv
bGxlcgogICogQGRiaTogTUlQSSBEQkkgc3RydWN0dXJlCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdGlueS9oeDgzNTdkLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9oeDgzNTdkLmMKaW5k
ZXggYzg4Yjg0MzY2ZGM1Li5hZjdmM2QxMGFhYzMgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS90aW55L2h4ODM1N2QuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9oeDgzNTdkLmMKQEAg
LTE5Niw3ICsxOTYsNiBAQCBERUZJTkVfRFJNX0dFTV9DTUFfRk9QUyhoeDgzNTdkX2ZvcHMpOwog
c3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGh4ODM1N2RfZHJpdmVyID0gewogCS5kcml2ZXJfZmVh
dHVyZXMJPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLAogCS5m
b3BzCQkJPSAmaHg4MzU3ZF9mb3BzLAotCS5yZWxlYXNlCQk9IG1pcGlfZGJpX3JlbGVhc2UsCiAJ
RFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5kZWJ1Z2ZzX2luaXQJCT0gbWlwaV9kYmlf
ZGVidWdmc19pbml0LAogCS5uYW1lCQkJPSAiaHg4MzU3ZCIsCmRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vdGlueS9pbGk5MjI1LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MjI1LmMK
aW5kZXggZmE5OThhMTYwMjZjLi4xMTg0NzdhZjQ0OTEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1
L2RybS90aW55L2lsaTkyMjUuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MjI1LmMK
QEAgLTM0Niw3ICszNDYsNiBAQCBERUZJTkVfRFJNX0dFTV9DTUFfRk9QUyhpbGk5MjI1X2ZvcHMp
Owogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIGlsaTkyMjVfZHJpdmVyID0gewogCS5kcml2ZXJf
ZmVhdHVyZXMJPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLAog
CS5mb3BzCQkJPSAmaWxpOTIyNV9mb3BzLAotCS5yZWxlYXNlCQk9IG1pcGlfZGJpX3JlbGVhc2Us
CiAJRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5uYW1lCQkJPSAiaWxpOTIyNSIsCiAJ
LmRlc2MJCQk9ICJJbGl0ZWsgSUxJOTIyNSIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
dGlueS9pbGk5MzQxLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MzQxLmMKaW5kZXggOTQ1
ZTE1MTY5ODY2Li5lMTUyZGUzNjkwMTkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90aW55
L2lsaTkzNDEuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5MzQxLmMKQEAgLTE1Miw3
ICsxNTIsNiBAQCBERUZJTkVfRFJNX0dFTV9DTUFfRk9QUyhpbGk5MzQxX2ZvcHMpOwogc3RhdGlj
IHN0cnVjdCBkcm1fZHJpdmVyIGlsaTkzNDFfZHJpdmVyID0gewogCS5kcml2ZXJfZmVhdHVyZXMJ
PSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLAogCS5mb3BzCQkJ
PSAmaWxpOTM0MV9mb3BzLAotCS5yZWxlYXNlCQk9IG1pcGlfZGJpX3JlbGVhc2UsCiAJRFJNX0dF
TV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5kZWJ1Z2ZzX2luaXQJCT0gbWlwaV9kYmlfZGVidWdm
c19pbml0LAogCS5uYW1lCQkJPSAiaWxpOTM0MSIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vdGlueS9pbGk5NDg2LmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5NDg2LmMKaW5kZXgg
MzhkMjkzY2Y1Mzc3Li41NzdhZWE2NjJhYTQgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS90
aW55L2lsaTk0ODYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9pbGk5NDg2LmMKQEAgLTE2
NSw3ICsxNjUsNiBAQCBERUZJTkVfRFJNX0dFTV9DTUFfRk9QUyhpbGk5NDg2X2ZvcHMpOwogc3Rh
dGljIHN0cnVjdCBkcm1fZHJpdmVyIGlsaTk0ODZfZHJpdmVyID0gewogCS5kcml2ZXJfZmVhdHVy
ZXMJPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlDLAogCS5mb3Bz
CQkJPSAmaWxpOTQ4Nl9mb3BzLAotCS5yZWxlYXNlCQk9IG1pcGlfZGJpX3JlbGVhc2UsCiAJRFJN
X0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5kZWJ1Z2ZzX2luaXQJCT0gbWlwaV9kYmlfZGVi
dWdmc19pbml0LAogCS5uYW1lCQkJPSAiaWxpOTQ4NiIsCmRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vdGlueS9taTAyODNxdC5jIGIvZHJpdmVycy9ncHUvZHJtL3RpbnkvbWkwMjgzcXQuYwpp
bmRleCBiOGM5NzNiYzIzNDcuLmRlY2FmNTcwNTNmZiAxMDA2NDQKLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL3RpbnkvbWkwMjgzcXQuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9taTAyODNxdC5j
CkBAIC0xNTYsNyArMTU2LDYgQEAgREVGSU5FX0RSTV9HRU1fQ01BX0ZPUFMobWkwMjgzcXRfZm9w
cyk7CiBzdGF0aWMgc3RydWN0IGRybV9kcml2ZXIgbWkwMjgzcXRfZHJpdmVyID0gewogCS5kcml2
ZXJfZmVhdHVyZXMJPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlD
LAogCS5mb3BzCQkJPSAmbWkwMjgzcXRfZm9wcywKLQkucmVsZWFzZQkJPSBtaXBpX2RiaV9yZWxl
YXNlLAogCURSTV9HRU1fQ01BX1ZNQVBfRFJJVkVSX09QUywKIAkuZGVidWdmc19pbml0CQk9IG1p
cGlfZGJpX2RlYnVnZnNfaW5pdCwKIAkubmFtZQkJCT0gIm1pMDI4M3F0IiwKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS90aW55L3N0NzU4Ni5jIGIvZHJpdmVycy9ncHUvZHJtL3Rpbnkvc3Q3
NTg2LmMKaW5kZXggMWYxYTU3NmJlOTNjLi5jMzI5NWM3MTdiYTYgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvZ3B1L2RybS90aW55L3N0NzU4Ni5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS90aW55L3N0NzU4
Ni5jCkBAIC0yODUsNyArMjg1LDYgQEAgREVGSU5FX0RSTV9HRU1fQ01BX0ZPUFMoc3Q3NTg2X2Zv
cHMpOwogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIHN0NzU4Nl9kcml2ZXIgPSB7CiAJLmRyaXZl
cl9mZWF0dXJlcwk9IERSSVZFUl9HRU0gfCBEUklWRVJfTU9ERVNFVCB8IERSSVZFUl9BVE9NSUMs
CiAJLmZvcHMJCQk9ICZzdDc1ODZfZm9wcywKLQkucmVsZWFzZQkJPSBtaXBpX2RiaV9yZWxlYXNl
LAogCURSTV9HRU1fQ01BX1ZNQVBfRFJJVkVSX09QUywKIAkuZGVidWdmc19pbml0CQk9IG1pcGlf
ZGJpX2RlYnVnZnNfaW5pdCwKIAkubmFtZQkJCT0gInN0NzU4NiIsCmRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vdGlueS9zdDc3MzVyLmMgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9zdDc3MzVy
LmMKaW5kZXggMGY0OGE1YTJkM2Q3Li42MzE4MDFjMzZmNDYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS90aW55L3N0NzczNXIuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vdGlueS9zdDc3MzVy
LmMKQEAgLTE1Nyw3ICsxNTcsNiBAQCBERUZJTkVfRFJNX0dFTV9DTUFfRk9QUyhzdDc3MzVyX2Zv
cHMpOwogc3RhdGljIHN0cnVjdCBkcm1fZHJpdmVyIHN0NzczNXJfZHJpdmVyID0gewogCS5kcml2
ZXJfZmVhdHVyZXMJPSBEUklWRVJfR0VNIHwgRFJJVkVSX01PREVTRVQgfCBEUklWRVJfQVRPTUlD
LAogCS5mb3BzCQkJPSAmc3Q3NzM1cl9mb3BzLAotCS5yZWxlYXNlCQk9IG1pcGlfZGJpX3JlbGVh
c2UsCiAJRFJNX0dFTV9DTUFfVk1BUF9EUklWRVJfT1BTLAogCS5kZWJ1Z2ZzX2luaXQJCT0gbWlw
aV9kYmlfZGVidWdmc19pbml0LAogCS5uYW1lCQkJPSAic3Q3NzM1ciIsCmRpZmYgLS1naXQgYS9p
bmNsdWRlL2RybS9kcm1fbWlwaV9kYmkuaCBiL2luY2x1ZGUvZHJtL2RybV9taXBpX2RiaS5oCmlu
ZGV4IDMzZjMyNWY1YWYyYi4uNDEyOWJiYTU1ODczIDEwMDY0NAotLS0gYS9pbmNsdWRlL2RybS9k
cm1fbWlwaV9kYmkuaAorKysgYi9pbmNsdWRlL2RybS9kcm1fbWlwaV9kYmkuaApAQCAtMTUyLDcg
KzE1Miw2IEBAIGludCBtaXBpX2RiaV9kZXZfaW5pdF93aXRoX2Zvcm1hdHMoc3RydWN0IG1pcGlf
ZGJpX2RldiAqZGJpZGV2LAogaW50IG1pcGlfZGJpX2Rldl9pbml0KHN0cnVjdCBtaXBpX2RiaV9k
ZXYgKmRiaWRldiwKIAkJICAgICAgY29uc3Qgc3RydWN0IGRybV9zaW1wbGVfZGlzcGxheV9waXBl
X2Z1bmNzICpmdW5jcywKIAkJICAgICAgY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1v
ZGUsIHVuc2lnbmVkIGludCByb3RhdGlvbik7Ci12b2lkIG1pcGlfZGJpX3JlbGVhc2Uoc3RydWN0
IGRybV9kZXZpY2UgKmRybSk7CiB2b2lkIG1pcGlfZGJpX3BpcGVfdXBkYXRlKHN0cnVjdCBkcm1f
c2ltcGxlX2Rpc3BsYXlfcGlwZSAqcGlwZSwKIAkJCSAgc3RydWN0IGRybV9wbGFuZV9zdGF0ZSAq
b2xkX3N0YXRlKTsKIHZvaWQgbWlwaV9kYmlfZW5hYmxlX2ZsdXNoKHN0cnVjdCBtaXBpX2RiaV9k
ZXYgKmRiaWRldiwKLS0gCjIuMjQuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4Cg==
