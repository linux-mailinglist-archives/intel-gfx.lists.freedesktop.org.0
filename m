Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D07C84671B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2019 20:06:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93CF889B29;
	Fri, 14 Jun 2019 18:06:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com
 [IPv6:2a00:1450:4864:20::529])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9024A89B18
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 18:06:46 +0000 (UTC)
Received: by mail-ed1-x529.google.com with SMTP id z25so4671914edq.9
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2019 11:06:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:content-transfer-encoding:user-agent;
 bh=g3bBpCqR4JdCSVxARfG8FYPws67sQtkL+QCflwgsrU8=;
 b=m/z033a+N5xT7kRC/Ptwa6xEN4aeDcUy69vkEauom/C/5fbIBRbjYGrYsoRXpHPKx6
 CWumCib47eU3QdTKFySsNsJ+qxvRr2dJKXi8x1p/M8sJGsZxuKDxHizqwOUGxWOiS810
 IROOW+hW3siZgNJLK1eSXEGAbnIKcPP/7XVZas9qQQI42ZZoByOLSAs2qWDuX/5cfnwA
 M4LV3e2wIp3FvAejx6+RFbYxQU7ZWGE0BNpbBFz4YQ/NVGFkR7CjGAiu1T3sf5mK+3rs
 CFuvyyTDyTQBLH+zg/cnPw2lxuz3Kj67bBtByKM+zl1RlmrUOfytMC1Lyr/NGrrJF20n
 GF2g==
X-Gm-Message-State: APjAAAUtk9ZgB+p151vvpb29KwPIlhwUqdi3li9dQ3hwP/qd2g/dW2B7
 jRv5hJ8ta6sF/IcQC/Rgt0Y0hAW1NAY=
X-Google-Smtp-Source: APXvYqxzogT7C/JBfJZx80tfn37dmsu58JxljXNbuFNWvfD1e/JXLL5NE+yipXzAx4ItE8li1op3yg==
X-Received: by 2002:a17:906:708d:: with SMTP id
 b13mr3354627ejk.89.1560535605138; 
 Fri, 14 Jun 2019 11:06:45 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id c26sm1071071ede.32.2019.06.14.11.06.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 11:06:44 -0700 (PDT)
Date: Fri, 14 Jun 2019 20:06:35 +0200
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190614180606.GA26087@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
X-Operating-System: Linux phenom 4.19.0-5-amd64 
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :content-transfer-encoding:user-agent;
 bh=g3bBpCqR4JdCSVxARfG8FYPws67sQtkL+QCflwgsrU8=;
 b=cIImAaKrKKeaoeh+zWSEbA+ybEuYvfgx6/cl2Vfkk50QBWnfilqAW5biCxk1ZEWJpi
 CNWrvm/C4TfMe9jejb8r2tdxKt2PwaiSJjufY9HjNzBAVVM+T1dOAEVtDfmsVwV0mu+f
 HBSXjbPPZU/ACdvqgvgjClmMx05uehZcph+sw=
Subject: [Intel-gfx] [PULL] drm-fixes for 5.2-rc5
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
Cc: dim-tools@lists.freedesktop.org, Maxime Ripard <maxime.ripard@bootlin.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgTGludXMsCgpOb3RoaW5nIHVuc2V0dGxpbmcgaGVyZSwgYWxzbyBub3QgYXdhcmUgb2YgYW55
dGhpbmcgc2VyaW91cyBzdGlsbCBwZW5kaW5nLgpUaGUgZWRpZCBvdmVycmlkZSByZWdyZXNzaW9u
IGZpeCB0b29rIGEgYml0IGxvbmdlciBzaW5jZSB0aGlzIHNlZW1zIHRvIGJlCmFuIGFyZWEgd2l0
aCBhbiBvdmVyYWJ1bmRhbmNlIG9mIGJhZCBvcHRpb25zLiBCdXQgdGhlIGZpeCB3ZSBoYXZlIG5v
dwpzZWVtcyBsaWtlIGEgZ29vZCBwYXRoIGZvcndhcmQuCgpOZXh0IHdlZWsgaXQgc2hvdWxkIGJl
IGJhY2sgdG8gRGF2ZS4KCmRybS1maXhlcy0yMDE5LTA2LTE0Ogpkcm0tZml4ZXMgZm9yIDUuMi1y
YzU6CgotIGZpeCByZWdyZXNzaW9uIG9uIGFtZGdwdSBvbiBTSQotIGZpeCBlZGlkIG92ZXJyaWRl
IHJlZ3Jlc3Npb24KLSBkcml2ZXIgZml4ZXM6IGFtZGdwdSwgaTkxNSwgbWVkaWF0ZWssIG1lc29u
LCBwYW5mcm9zdAotIGZpeCB3cml0ZWNvbWJpbmUgZm9yIHZtYXAgaW4gZ2VtLXNobWVtIGhlbHBl
ciAodXNlZCBieSBwYW5mcm9zdCkKLSBhZGQgbW9yZSBwYW5lbCBxdWlya3MKCkNoZWVycywgRGFu
aWVsCgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IGQxZmRiNmQ4ZjZhNDEwOWE0
MjYzMTc2Yzg0Yjg5OTA3NmE1ZjgwMDg6CgogIExpbnV4IDUuMi1yYzQgKDIwMTktMDYtMDggMjA6
MjQ6NDYgLTA3MDApCgphcmUgYXZhaWxhYmxlIGluIHRoZSBHaXQgcmVwb3NpdG9yeSBhdDoKCiAg
Z2l0Oi8vYW5vbmdpdC5mcmVlZGVza3RvcC5vcmcvZHJtL2RybSB0YWdzL2RybS1maXhlcy0yMDE5
LTA2LTE0Cgpmb3IgeW91IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gZTE0YzU4NzNkMmEzMTFlMWZi
Nzg1NzJiM2FlZmEzODgwMTAwYmM5YzoKCiAgTWVyZ2UgYnJhbmNoICdkcm0tZml4ZXMtNS4yJyBv
ZiBnaXQ6Ly9wZW9wbGUuZnJlZWRlc2t0b3Aub3JnL35hZ2Q1Zi9saW51eCBpbnRvIGRybS1maXhl
cyAoMjAxOS0wNi0xNCAxNzo1NToyMiArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KZHJtLWZpeGVzIGZvciA1LjIt
cmM1OgoKLSBmaXggcmVncmVzc2lvbiBvbiBhbWRncHUgb24gU0kKLSBmaXggZWRpZCBvdmVycmlk
ZSByZWdyZXNzaW9uCi0gZHJpdmVyIGZpeGVzOiBhbWRncHUsIGk5MTUsIG1lZGlhdGVrLCBtZXNv
biwgcGFuZnJvc3QKLSBmaXggd3JpdGVjb21iaW5lIGZvciB2bWFwIGluIGdlbS1zaG1lbSBoZWxw
ZXIgKHVzZWQgYnkgcGFuZnJvc3QpCi0gYWRkIG1vcmUgcGFuZWwgcXVpcmtzCgotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkFs
ZXggRGV1Y2hlciAoMSk6CiAgICAgIGRybS9hbWRncHU6IHJldHVybiAwIGJ5IGRlZmF1bHQgaW4g
YW1kZ3B1X3BtX2xvYWRfc211X2Zpcm13YXJlCgpCb3JpcyBCcmV6aWxsb24gKDEpOgogICAgICBk
cm0vZ2VtX3NobWVtOiBVc2UgYSB3cml0ZWNvbWJpbmUgbWFwcGluZyBmb3IgLT52YWRkcgoKRGFu
IENhcnBlbnRlciAoMSk6CiAgICAgIGRybS9hbWRncHU6IEZpeCBib3VuZHMgY2hlY2tpbmcgaW4g
YW1kZ3B1X3Jhc19pc19zdXBwb3J0ZWQoKQoKRGFuaWVsIFZldHRlciAoNCk6CiAgICAgIE1lcmdl
IGJyYW5jaCAnbWVkaWF0ZWstZHJtLWZpeGVzLTUuMicgb2YgaHR0cHM6Ly9naXRodWIuY29tL2Nr
aHUtbWVkaWF0ZWsvbGludXguZ2l0LXRhZ3MgaW50byBkcm0tZml4ZXMKICAgICAgTWVyZ2UgdGFn
ICdkcm0taW50ZWwtZml4ZXMtMjAxOS0wNi0xMycgb2YgZ2l0Oi8vYW5vbmdpdC5mcmVlZGVza3Rv
cC5vcmcvZHJtL2RybS1pbnRlbCBpbnRvIGRybS1maXhlcwogICAgICBNZXJnZSB0YWcgJ2RybS1t
aXNjLWZpeGVzLTIwMTktMDYtMTMnIG9mIGdpdDovL2Fub25naXQuZnJlZWRlc2t0b3Aub3JnL2Ry
bS9kcm0tbWlzYyBpbnRvIGRybS1maXhlcwogICAgICBNZXJnZSBicmFuY2ggJ2RybS1maXhlcy01
LjInIG9mIGdpdDovL3Blb3BsZS5mcmVlZGVza3RvcC5vcmcvfmFnZDVmL2xpbnV4IGludG8gZHJt
LWZpeGVzCgpFemVxdWllbCBHYXJjaWEgKDEpOgogICAgICBkcm0vcGFuZnJvc3Q6IFJlcXVpcmUg
dGhlIHNpbXBsZV9vbmRlbWFuZCBnb3Zlcm5vcgoKSGFucyBkZSBHb2VkZSAoMyk6CiAgICAgIGRy
bTogcGFuZWwtb3JpZW50YXRpb24tcXVpcmtzOiBBZGQgcXVpcmsgZm9yIEdQRCBwb2NrZXQyCiAg
ICAgIGRybTogcGFuZWwtb3JpZW50YXRpb24tcXVpcmtzOiBBZGQgcXVpcmsgZm9yIEdQRCBNaWNy
b1BDCiAgICAgIGRybS9pOTE1L2RzaTogVXNlIGEgZnV6enkgY2hlY2sgZm9yIGJ1cnN0IG1vZGUg
Y2xvY2sgY2hlY2sKCkhzaW4tWWkgV2FuZyAoNSk6CiAgICAgIGRybS9tZWRpYXRlazogZml4IHVu
YmluZCBmdW5jdGlvbnMKICAgICAgZHJtL21lZGlhdGVrOiB1bmJpbmQgY29tcG9uZW50cyBpbiBt
dGtfZHJtX3VuYmluZCgpCiAgICAgIGRybS9tZWRpYXRlazogY2FsbCBkcm1fYXRvbWljX2hlbHBl
cl9zaHV0ZG93bigpIHdoZW4gdW5iaW5kaW5nIGRyaXZlcgogICAgICBkcm0vbWVkaWF0ZWs6IGNs
ZWFyIG51bV9waXBlcyB3aGVuIHVuYmluZCBkcml2ZXIKICAgICAgZHJtL21lZGlhdGVrOiBjYWxs
IG10a19kc2lfc3RvcCgpIGFmdGVyIG10a19kcm1fY3J0Y19hdG9taWNfZGlzYWJsZSgpCgpKYW5p
IE5pa3VsYSAoMik6CiAgICAgIGRybS9lZGlkOiBhYnN0cmFjdCBvdmVycmlkZS9maXJtd2FyZSBF
RElEIHJldHJpZXZhbAogICAgICBkcm06IGFkZCBmYWxsYmFjayBvdmVycmlkZS9maXJtd2FyZSBF
RElEIG1vZGVzIHdvcmthcm91bmQKCkxpb25lbCBMYW5kd2VybGluICgxKToKICAgICAgZHJtL2k5
MTUvcGVyZjogZml4IHdoaXRlbGlzdCBvbiBHZW4xMCsKCkx1Y2FzIERlIE1hcmNoaSAoMSk6CiAg
ICAgIGRybS9pOTE1L2RtYzogcHJvdGVjdCBhZ2FpbnN0IHJlYWRpbmcgcmFuZG9tIG1lbW9yeQoK
TmVpbCBBcm1zdHJvbmcgKDQpOgogICAgICBkcm0vbWVzb246IGZpeCBHMTJBIEhETUkgUExMIHNl
dHRpbmdzIGZvciA0SzYwIDEwMDAvMTAwMSB2YXJpYXRpb25zCiAgICAgIGRybS9tZXNvbjogZml4
IHByaW1hcnkgcGxhbmUgZGlzYWJsaW5nCiAgICAgIGRybS9tZXNvbjogZml4IEcxMkEgcHJpbWFy
eSBwbGFuZSBkaXNhYmxpbmcKICAgICAgZHJtL3BhbmZyb3N0OiBtYWtlIGRldmZyZXEgb3B0aW9u
YWwgYWdhaW4KClNoaXJpc2ggUyAoMSk6CiAgICAgIGRybS9hbWRncHUve3V2ZCx2Y259OiBmZXRj
aCByaW5nJ3MgcmVhZF9wdHIgYWZ0ZXIgYWxsb2MKClZpbGxlIFN5cmrDpGzDpCAoMik6CiAgICAg
IGRybS9pOTE1OiBGaXggcGVyLXBpeGVsIGFscGhhIHdpdGggQ0NTCiAgICAgIGRybS9pOTE1L3Nk
dm86IEltcGxlbWVudCBwcm9wZXIgSERNSSBhdWRpbyBzdXBwb3J0IGZvciBTRFZPCgpZb25ncWlh
bmcgTml1ICgyKToKICAgICAgZHJtL21lZGlhdGVrOiBhZGp1c3QgZGRwIGNsb2NrIGNvbnRyb2wg
ZmxvdwogICAgICBkcm0vbWVkaWF0ZWs6IHJlc3BlY3QgcGFnZSBvZmZzZXQgZm9yIFBSSU1FIG1t
YXAgY2FsbHMKCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfcG0uYyAgICAgICAg
IHwgIDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9yYXMuaCAgICAgICAg
fCAgMiArCiBkcml2ZXJzL2dwdS9kcm0vYW1kL2FtZGdwdS9hbWRncHVfdmNuLmMgICAgICAgIHwg
IDQgKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3V2ZF92Nl8wLmMgICAgICAgICAgfCAg
NSArKy0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L3V2ZF92N18wLmMgICAgICAgICAgfCAg
NSArKy0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZWRpZC5jICAgICAgICAgICAgICAgICAgICAgfCA1
NSArKysrKysrKysrKysrKysrKysrKy0tLS0KIGRyaXZlcnMvZ3B1L2RybS9kcm1fZ2VtX3NobWVt
X2hlbHBlci5jICAgICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL2RybV9wYW5lbF9vcmll
bnRhdGlvbl9xdWlya3MuYyB8IDMyICsrKysrKysrKysrKysrCiBkcml2ZXJzL2dwdS9kcm0vZHJt
X3Byb2JlX2hlbHBlci5jICAgICAgICAgICAgIHwgIDcgKysrKwogZHJpdmVycy9ncHUvZHJtL2k5
MTUvaTkxNV9wZXJmLmMgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmggICAgICAgICAgICAgICAgfCAgMSArCiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9jc3IuYyAgICAgICAgICAgICAgIHwgMTggKysrKysrKysKIGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2ludGVsX2Rpc3BsYXkuYyAgICAgICAgICAgfCAxNCArKysrLS0tCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9kcnYuaCAgICAgICAgICAgICAgIHwgIDEgKwogZHJpdmVycy9ncHUvZHJt
L2k5MTUvaW50ZWxfZHNpX3ZidC5jICAgICAgICAgICB8IDExICsrKysrCiBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9pbnRlbF9zZHZvLmMgICAgICAgICAgICAgIHwgNTggKysrKysrKysrKysrKysrKysr
KysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Nkdm9fcmVncy5oICAgICAgICAg
fCAgMyArKwogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fY3J0Yy5jICAgICAgICB8
IDMwICsrKy0tLS0tLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2Rydi5j
ICAgICAgICAgfCAgOCArKy0tCiBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0u
YyAgICAgICAgIHwgIDcgKysrLQogZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyAg
ICAgICAgICAgICB8IDEyICsrKysrLQogZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX2NydGMu
YyAgICAgICAgICAgICB8ICA2ICstLQogZHJpdmVycy9ncHUvZHJtL21lc29uL21lc29uX3BsYW5l
LmMgICAgICAgICAgICB8ICA4ICsrLS0KIGRyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl92Y2xr
LmMgICAgICAgICAgICAgfCAxMyArKysrKy0KIGRyaXZlcnMvZ3B1L2RybS9tZXNvbi9tZXNvbl92
aXUuYyAgICAgICAgICAgICAgfCAgMyArLQogZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L0tjb25m
aWcgICAgICAgICAgICAgICB8ICAxICsKIGRyaXZlcnMvZ3B1L2RybS9wYW5mcm9zdC9wYW5mcm9z
dF9kZXZmcmVxLmMgICAgfCAxMyArKysrKy0KIGluY2x1ZGUvZHJtL2RybV9lZGlkLmggICAgICAg
ICAgICAgICAgICAgICAgICAgfCAgMSArCiAyOCBmaWxlcyBjaGFuZ2VkLCAyNTMgaW5zZXJ0aW9u
cygrKSwgNzMgZGVsZXRpb25zKC0pCgotLSAKRGFuaWVsIFZldHRlcgpTb2Z0d2FyZSBFbmdpbmVl
ciwgSW50ZWwgQ29ycG9yYXRpb24KaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJ
bnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Au
b3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
