Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6C811403E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2019 12:40:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 636E46E04A;
	Thu,  5 Dec 2019 11:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62D266E04A
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Dec 2019 11:40:41 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id u6so965697vkn.13
 for <intel-gfx@lists.freedesktop.org>; Thu, 05 Dec 2019 03:40:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7BUs+WTEF0HSI+yB+DYxaAz39SvXHr50ivpqOCfSybg=;
 b=kanoMMfjEjltwpW7Xb5emqITA0JpR2O9uHUMaG9fZPI+0tzHtgWD7EaP7XLsZ0d89T
 2f0b7a89jhidPVfS+P40qJkTUOEnzj8lA44MhtScWBD0iO7BtDv8Fgg3Ip4YQ5sJX2he
 q+KTUVnTSsgR415s5Npeh54TW7k0pGhc+DoYsL1Arunn461FuH/4Z+XfH944OB+cLPkg
 R4UHIG7sDrmI7XObmqIAfdCVJgFpaKQDQ5o35CAMojcJA5p8iZxyn3PxfdM+8/3u5uK/
 wGgorJbcDCjgyEKBcQMwiJTE2P1wLd2BtylScc85ESfgUP5yVGjNgTafBXEGmaEhu4Ik
 RJpg==
X-Gm-Message-State: APjAAAWQyi6C2537RdJUMsAO91yjeNygCmVPwty58KJk4ppbyzHPScnu
 H8g1Ngx7brMbfAttXVmNcshNYOWmc7zqM0LzMIw=
X-Google-Smtp-Source: APXvYqx6EXAKbvhqht6D2UKGMaO9FBezSe7PgCOJ0rM7YZVaJ8Ery1UJzFGIhj/NRhqt8XVgNEF9IUJSo3E+mB0fkZk=
X-Received: by 2002:a1f:5e13:: with SMTP id s19mr5929670vkb.12.1575546040220; 
 Thu, 05 Dec 2019 03:40:40 -0800 (PST)
MIME-Version: 1.0
References: <20191202065458.9477-1-ramalingam.c@intel.com>
In-Reply-To: <20191202065458.9477-1-ramalingam.c@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 5 Dec 2019 11:40:13 +0000
Message-ID: <CAM0jSHMUq0p-1aAg453VdjPm8UrtYb=Fk7KDAo4gHmLrPZ+TCQ@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=7BUs+WTEF0HSI+yB+DYxaAz39SvXHr50ivpqOCfSybg=;
 b=Kq8Ce9s7kCOOt45mJC8HZZsSmh+1+euc9MhRXp9q6kEq1TtrQ8F8oqpZWwrFBNzavF
 d+KgHCU0/ArwfTUAo2nenUkYfcHI7UbQrGugxCrlj1EmyUX0tFi2zOm1COn6lFkMt1In
 1Ck74R1OFaLHl5pBhC+HyRF7sEnTwBGun/4+W6AHbFvHlKZ2TbQ4RHWSrGIYX/OPEFps
 MX8C6WznuoqOyGbw+iqtO++5H/Dfdi6XPYqfGxvJzVqZyML5vRUx2dd4CgqioqXsIOWQ
 yirBIiBXMoTIIBirHAJBu1Um9s4Oxu3JcnIG31X3lqLJ+RySbaNoreuW7PxJbgutRcI9
 v58A==
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: lookup for mem_region of a
 mem_type
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyIERlYyAyMDE5IGF0IDA2OjU1LCBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+IHdyb3RlOgo+Cj4gTG9va3VwIGZ1bmN0aW9uIHRvIHJldHJpZXZlIHRoZSBwb2lu
dGVyIHRvIGEgbWVtb3J5IHJlZ2lvbiBvZgo+IGEgbWVtX3R5cGUuCj4KPiBTaWduZWQtb2ZmLWJ5
OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0BpbnRlbC5jb20+Cj4gY2M6IE1hdHRoZXcgQXVs
ZCA8bWF0dGhldy5hdWxkQGludGVsLmNvbT4KPiAtLS0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfbWVtb3J5X3JlZ2lvbi5jIHwgMTIgKysrKysrKysrKysrCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX21lbW9yeV9yZWdpb24uaCB8ICAzICsrKwo+ICAyIGZpbGVzIGNoYW5nZWQs
IDE1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF9tZW1vcnlfcmVnaW9uLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlf
cmVnaW9uLmMKPiBpbmRleCBiYWFlYWVjYzY0YWYuLmFlODk5ZGY3YTFjMiAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9tZW1vcnlfcmVnaW9uLmMKPiBAQCAtMTYsNiArMTYsMTgg
QEAgY29uc3QgdTMyIGludGVsX3JlZ2lvbl9tYXBbXSA9IHsKPiAgICAgICAgIFtJTlRFTF9SRUdJ
T05fU1RPTEVOXSA9IFJFR0lPTl9NQVAoSU5URUxfTUVNT1JZX1NUT0xFTiwgMCksCj4gIH07Cj4K
PiArc3RydWN0IGludGVsX21lbW9yeV9yZWdpb24gKgo+ICtpbnRlbF9tZW1vcnlfcmVnaW9uX2xv
b2t1cChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwKPiArICAgICAgICAgICAgICAgICAg
ICAgICAgICBlbnVtIGludGVsX21lbW9yeV90eXBlIG1lbV90eXBlKQo+ICt7Cj4gKyAgICAgICBl
bnVtIGludGVsX3JlZ2lvbl9pZCBpZDsKPiArCj4gKyAgICAgICBmb3IgKGlkID0gSU5URUxfUkVH
SU9OX1NNRU07IGlkIDwgSU5URUxfUkVHSU9OX1VOS05PV047IGlkKyspCj4gKyAgICAgICAgICAg
ICAgIGlmIChpOTE1LT5tbS5yZWdpb25zW2lkXS0+dHlwZSA9PSBtZW1fdHlwZSkKCklzIGl0IG5v
dCB3b3J0aCBkb2luZzoKCmlmIChyZWdpb24gJiYgcmVnaW9uLT50eXBlID09IG1lbV90eXBlKQoK
PwoKSSBndWVzcyB3ZSBjYW4gYWx3YXlzIGV4dGVuZCBhbmQgaW1wcm92ZSB1cG9uIHRoaXMgbGF0
ZXIuClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
