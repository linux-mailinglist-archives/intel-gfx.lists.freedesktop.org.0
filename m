Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E70B98AE
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2019 22:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C9C66FDE7;
	Fri, 20 Sep 2019 20:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com
 [IPv6:2a00:1450:4864:20::441])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 301E86FDE7
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 20:54:27 +0000 (UTC)
Received: by mail-wr1-x441.google.com with SMTP id l11so8090165wrx.5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2019 13:54:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=mWdxbM0tRSR5pYNS8wZnmpyBuBIghi4b6pzbDqOlViI=;
 b=VlHh7emdgGgGNIqvvySFbpLIjDQYI3i+8fa+Yp6XPsq/Xs54Cu4hlljUvXHmuivKtf
 26rUMlYYNR8x/7nXASTabGnXjLQEayFsdWZWvJUKzQD+4qSdmMDz9ZUULUrCBFsTmJXR
 yE80twHDtcv0ORMuTq+8JHMqYY/GuFPMIASigko6/z/jqJH1lAp03BXknve3bDkBCBph
 QUYxcNZmY1RJonGqC9/nLVJ1uWu8vcDKQqZPuCtp4xE9OjtZdxTd2fqOzfKi5GaxBGMe
 zfgiXaInXJGSxTQpDLaffWuSThlq5/9ggvnhDIaXj891kxh1+gxug4r7k21VXuYTFRkj
 Zxug==
X-Gm-Message-State: APjAAAV6uwe+1aJ0wSwoZAmW95tgH/VqqxQcFDaShWAq/5VFJs/gYfTJ
 R6dZZxtb7JFeJ3BTtBQESgENBaedtMVuKQujy6U=
X-Google-Smtp-Source: APXvYqz+GbCDquJnUP4itbF/K6NKgrXmRQoTBIZkQr+c/30kC1JNy/Jw2xFvihXc+xsn0MJMVyEXrOjAKS2I2TYT29I=
X-Received: by 2002:a5d:6846:: with SMTP id o6mr12665949wrw.73.1569012865712; 
 Fri, 20 Sep 2019 13:54:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190919000726.267988-1-jose.souza@intel.com>
 <20190919000726.267988-8-jose.souza@intel.com>
In-Reply-To: <20190919000726.267988-8-jose.souza@intel.com>
From: Lucas De Marchi <lucas.de.marchi@gmail.com>
Date: Fri, 20 Sep 2019 13:54:13 -0700
Message-ID: <CAKi4VAKqBimTx-tf6O7r3++gq6f=RQJhuOpXLAiJbzSi1XstOw@mail.gmail.com>
To: =?UTF-8?Q?Jos=C3=A9_Roberto_de_Souza?= <jose.souza@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=mWdxbM0tRSR5pYNS8wZnmpyBuBIghi4b6pzbDqOlViI=;
 b=h1hM+RZac1rlFw9rHzyhF60mQ5wHtBvqn+L3n7KgKqa4CGDSNW5AyqpN3cIxbgA8US
 SHSJdDOlpNGugikH/MkuSb5r9K1/1KbqU3S0DKjjAp8rDdQi7MY4+aG1CqiN4pMBgAPM
 dFsqEzWf+TmzlKvBfW6pP5rZmC39FJF9H03p+e2y3InxaVR28YOt4rvnejyrLnnoqIFR
 MofLTIGrzz49WrrjvTScz0R6l0Qj46DvtnZywRZfXGJN7pCDiWnW6XZdPUCs1xVAUrky
 62116Q/A+M3LU1I+psWkgoP8xDITmQQZqjGaz22s3oZwR4EV3GlQBXNQKZGrbmQna41B
 lEdQ==
Subject: Re: [Intel-gfx] [PATCH v2 07/13] drm/i915/tgl: TC helper function
 to return pin mapping
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
Cc: Intel Graphics <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCBTZXAgMTgsIDIwMTkgYXQgNTowNyBQTSBKb3PDqSBSb2JlcnRvIGRlIFNvdXphCjxq
b3NlLnNvdXphQGludGVsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBDbGludG9uIEEgVGF5bG9yIDxj
bGludG9uLmEudGF5bG9yQGludGVsLmNvbT4KPgo+IEFkZCBhIGhlbHBlciBmdW5jdGlvbiB0byBy
ZXR1cm4gcGluIG1hcCBmb3IgdXNlIGR1cmluZyBka2wgcGh5Cj4gRFBfTU9ERSBzZXR0aW5ncywg
UE9SVF9UWF9ERkxFWFBBMSBleGlzdCBvbiBJQ0wgYnV0IHdlIGRvbid0IG5lZWQgaXQuCj4KPiBU
aGUgdXNlciBvZiB0aGlzIGZ1bmN0aW9uIHdpbGwgY29tZSBpbiBmdXR1cmUgVEMgcGF0Y2hlcy4K
Pgo+IFNpZ25lZC1vZmYtYnk6IENsaW50b24gQSBUYXlsb3IgPGNsaW50b24uYS50YXlsb3JAaW50
ZWwuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291
emFAaW50ZWwuY29tPgo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMgfCAxNSArKysrKysrKysrKysrKysKPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF90Yy5oIHwgIDEgKwo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAg
ICAgICAgfCAgNSArKysrKwo+ICAzIGZpbGVzIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPgo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMKPiBpbmRleCAyMGZiYjA4NDgz
MGUuLjVkOTU3NzU4OGU5MSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3RjLmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMKPiBAQCAtNzAsNiArNzAsMjEgQEAgdTMyIGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFz
ayhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkKPiAgICAgICAgICAgICAgICBE
UF9MQU5FX0FTU0lHTk1FTlRfU0hJRlQoZGlnX3BvcnQtPnRjX3BoeV9maWFfaWR4KTsKPiAgfQo+
Cj4gK3UzMiBpbnRlbF90Y19wb3J0X2dldF9waW5fYXNzaWdubWVudF9tYXNrKHN0cnVjdCBpbnRl
bF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KQo+ICt7Cj4gKyAgICAgICBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoZGlnX3BvcnQtPmJhc2UuYmFzZS5kZXYpOwo+ICsgICAg
ICAgc3RydWN0IGludGVsX3VuY29yZSAqdW5jb3JlID0gJmk5MTUtPnVuY29yZTsKPiArICAgICAg
IHUzMiBwaW5fbWFzazsKPiArCj4gKyAgICAgICBwaW5fbWFzayA9IGludGVsX3VuY29yZV9yZWFk
KHVuY29yZSwKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgUE9SVF9UWF9E
RkxFWFBBMShkaWdfcG9ydC0+dGNfcGh5X2ZpYSkpOwo+ICsKPiArICAgICAgIFdBUk5fT04ocGlu
X21hc2sgPT0gMHhmZmZmZmZmZik7Cj4gKwo+ICsgICAgICAgcmV0dXJuIChwaW5fbWFzayAmIERQ
X1BJTl9BU1NJR05NRU5UX01BU0soZGlnX3BvcnQtPnRjX3BoeV9maWFfaWR4KSkgPj4KPiArICAg
ICAgICAgICAgICBEUF9QSU5fQVNTSUdOTUVOVF9TSElGVChkaWdfcG9ydC0+dGNfcGh5X2ZpYV9p
ZHgpOwoKQUZBSUNTIHRoaXMgaXMgdGNfcG9ydC1iYXNlZCwgbm90IHRjX3BoeV9maWFfaWR4LiB0
Y19waHlfZmlhX2lkeApzaG91bGQgb25seSBldmVyIGJlIHVzZWQKdG9nZXRoZXIgd2l0aCB0aGUg
SElQX0lOREVYLgoKTHVjYXMgRGUgTWFyY2hpCgo+ICt9Cj4gKwo+ICBpbnQgaW50ZWxfdGNfcG9y
dF9maWFfbWF4X2xhbmVfY291bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQp
Cj4gIHsKPiAgICAgICAgIHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShk
aWdfcG9ydC0+YmFzZS5iYXNlLmRldik7Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfdGMuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdGMuaAo+IGluZGV4IDk0NGQ4NGM4Y2NlMS4uMWI4NjM4ZGQzNDBhIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaAo+IEBAIC0xNCw2ICsxNCw3IEBAIHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlOwo+Cj4gIGJvb2wgaW50ZWxfdGNfcG9ydF9jb25uZWN0ZWQoc3Ry
dWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+ICB1MzIgaW50ZWxfdGNfcG9ydF9n
ZXRfbGFuZV9tYXNrKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KTsKPiArdTMy
IGludGVsX3RjX3BvcnRfZ2V0X3Bpbl9hc3NpZ25tZW50X21hc2soc3RydWN0IGludGVsX2RpZ2l0
YWxfcG9ydCAqZGlnX3BvcnQpOwo+ICBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4X2xhbmVfY291
bnQoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQpOwo+ICB2b2lkIGludGVsX3Rj
X3BvcnRfc2V0X2ZpYV9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50IHJlcXVpcmVk
X2xhbmVzKTsKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVnLmgKPiBpbmRleCAzMmY5OGQwZTBlOWMuLjkx
YTc5ZTgwOWRkMiAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5o
Cj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaAo+IEBAIC0xMTg0NSw0ICsx
MTg0NSw5IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgewo+ICAjZGVmaW5lIFBPUlRfVFhfREZMRVhE
UENTU1MoZmlhKSAgICAgICAgICAgICAgIF9NTUlPX0ZJQSgoZmlhKSwgMHgwMDg5NCkKPiAgI2Rl
ZmluZSAgIERQX1BIWV9NT0RFX1NUQVRVU19OT1RfU0FGRShpZHgpICAgICAoMSA8PCAoaWR4KSkK
Pgo+ICsjZGVmaW5lIFBPUlRfVFhfREZMRVhQQTEoZmlhKSAgICAgICAgICAgICAgICAgIF9NTUlP
X0ZJQSgoZmlhKSwgMHgwMDg4MCkKPiArI2RlZmluZSAgIERQX1BJTl9BU1NJR05NRU5UX1NISUZU
KGlkeCkgICAgICAgICAoKGlkeCkgKiA0KQo+ICsjZGVmaW5lICAgRFBfUElOX0FTU0lHTk1FTlRf
TUFTSyhpZHgpICAgICAgICAgICgweGYgPDwgKChpZHgpICogNCkpCj4gKyNkZWZpbmUgICBEUF9Q
SU5fQVNTSUdOTUVOVChpZHgsIHgpICAgICAgICAgICAgKCh4KSA8PCAoKGlkeCkgKiA0KSkKPiAr
Cj4gICNlbmRpZiAvKiBfSTkxNV9SRUdfSF8gKi8KPiAtLQo+IDIuMjMuMAo+Cj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBJbnRlbC1nZnggbWFpbGlu
ZyBsaXN0Cj4gSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+IGh0dHBzOi8vbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4CgoKCi0tIApMdWNhcyBE
ZSBNYXJjaGkKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
