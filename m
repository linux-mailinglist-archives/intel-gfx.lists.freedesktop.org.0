Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A333B2938F
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D2ACF6E0A2;
	Fri, 24 May 2019 08:54:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com
 [IPv6:2a00:1450:4864:20::543])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2033789F49
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:07 +0000 (UTC)
Received: by mail-ed1-x543.google.com with SMTP id j12so13318420eds.7
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=KbIQNH506d7uyinFmR7MAZcUSMrKczG7pZJTMI8GyjU=;
 b=uelxxHwSzlttw0W4eeMc2ghx9smH16ODm+0GZoUxHig0Mt+eTqp2PJcrfDhNXLnCSo
 yBO+hlpvKasXn6Ryb8a7SzksZNFk27kpNjsbsXSZ0aBwNQqO6iLGAy2BLB/abb6gG6Ks
 oKN3e0S63tzRzQrX++k+q8H79ywfyQ2J+n/9mZKuFSr4XTTXt5FIUUxOfuvjOewR67xm
 mJCTKmtZH04PgriDZVgV2IoV3ARrOt3VOIJVYch7EQ6lXetVA9GhnW4fJUEJ9n3BesC7
 q0tTCxtn/s0RZrq6qFSV/xs9oJRbz2I9Kl3YP7tv7Vcd8uSehfICjnhwNMisvuX1+oJL
 US8Q==
X-Gm-Message-State: APjAAAUvqwk8BlgDq/JDIhCgKgDcRCuTWKp9R3mOPntgzf1bXt3N46gD
 iaZLUryG+TOgX2iusWG9Oh4TQQ==
X-Google-Smtp-Source: APXvYqyiRawT8vC+B4WJM0VQMmLh1LZxOrS19g4BugnYkWojWg1kQxzgMayUAw7FefR44KX3iH56PQ==
X-Received: by 2002:a50:e40f:: with SMTP id d15mr103662690edm.0.1558688045814; 
 Fri, 24 May 2019 01:54:05 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:05 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:25 +0200
Message-Id: <20190524085354.27411-5-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=KbIQNH506d7uyinFmR7MAZcUSMrKczG7pZJTMI8GyjU=;
 b=jdtIJI/b2i4YgJlmMYeyZ/qfpIKXC/shH7cE6v5onT6Vdj85CGpPp2AYk0ABglEbnL
 1WBMLJMU5Yhlzv5WzFLoLy7XvF4fUM/CPoMTxHwmeJED3X3GASPifwWYAdS3qIAvu44S
 EtOW0SCOZrzT039kR8G9ic8VrLzWELS/rmWds=
Subject: [Intel-gfx] [PATCH 04/33] vt: More locking checks
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>,
 Adam Borowski <kilobyte@angband.pl>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SSBob25lc3RseSBoYXZlIG5vIGlkZWEgd2hhdCB0aGUgc3VidGxlIGRpZmZlcmVuY2VzIGJldHdl
ZW4KY29uX2lzX3Zpc2libGUsIGNvbl9pc19mZyAoaW50ZXJuYWwgdG8gdnQuYykgYW5kIGNvbl9p
c19ib3VuZCBhcmUuIEJ1dAppdCBsb29rcyBsaWtlIGJvdGggdmMtPnZjX2Rpc3BsYXlfZmcgYW5k
IGNvbl9kcml2ZXJfbWFwIGFyZSBwcm90ZWN0ZWQKYnkgdGhlIGNvbnNvbGVfbG9jaywgc28gcHJv
YmFibHkgYmV0dGVyIGlmIHdlIGhvbGQgdGhhdCB3aGVuIGNoZWNraW5nCnRoaXMuCgpUbyBkbyB0
aGF0IEkgaGFkIHRvIGRlaW5saW5lIHRoZSBjb25faXNfdmlzaWJsZSBmdW5jdGlvbi4KClNpZ25l
ZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgpDYzogR3Jl
ZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6IE5pY29sYXMg
UGl0cmUgPG5pY29sYXMucGl0cmVAbGluYXJvLm9yZz4KQ2M6IE1hcnRpbiBIb3N0ZXR0bGVyIDx0
ZXh0c2hlbGxAdWNodXVqaW4uZGU+CkNjOiBBZGFtIEJvcm93c2tpIDxraWxvYnl0ZUBhbmdiYW5k
LnBsPgpDYzogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBmZndsbC5jaD4KQ2M6IE1pa3Vs
YXMgUGF0b2NrYSA8bXBhdG9ja2FAcmVkaGF0LmNvbT4KLS0tCiBkcml2ZXJzL3R0eS92dC92dC5j
ICAgICAgICAgICAgfCAxNiArKysrKysrKysrKysrKysrCiBpbmNsdWRlL2xpbnV4L2NvbnNvbGVf
c3RydWN0LmggfCAgNSArLS0tLQogMiBmaWxlcyBjaGFuZ2VkLCAxNyBpbnNlcnRpb25zKCspLCA0
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvdHR5L3Z0L3Z0LmMgYi9kcml2ZXJz
L3R0eS92dC92dC5jCmluZGV4IGJjOTgxM2IxNGM1OC4uYTg5ODhhMDg1MTM4IDEwMDY0NAotLS0g
YS9kcml2ZXJzL3R0eS92dC92dC5jCisrKyBiL2RyaXZlcnMvdHR5L3Z0L3Z0LmMKQEAgLTM4MTUs
NiArMzgxNSw4IEBAIGludCBjb25faXNfYm91bmQoY29uc3Qgc3RydWN0IGNvbnN3ICpjc3cpCiB7
CiAJaW50IGksIGJvdW5kID0gMDsKIAorCVdBUk5fQ09OU09MRV9VTkxPQ0tFRCgpOworCiAJZm9y
IChpID0gMDsgaSA8IE1BWF9OUl9DT05TT0xFUzsgaSsrKSB7CiAJCWlmIChjb25fZHJpdmVyX21h
cFtpXSA9PSBjc3cpIHsKIAkJCWJvdW5kID0gMTsKQEAgLTM4MjYsNiArMzgyOCwyMCBAQCBpbnQg
Y29uX2lzX2JvdW5kKGNvbnN0IHN0cnVjdCBjb25zdyAqY3N3KQogfQogRVhQT1JUX1NZTUJPTChj
b25faXNfYm91bmQpOwogCisvKioKKyAqIGNvbl9pc192aXNpYmxlIC0gY2hlY2tzIHdoZXRoZXIg
dGhlIGN1cnJlbnQgY29uc29sZSBpcyB2aXNpYmxlCisgKiBAdmM6IHZpcnR1YWwgY29uc29sZQor
ICoKKyAqIFJFVFVSTlM6IHplcm8gaWYgbm90IHZpc2libGUsIG5vbnplcm8gaWYgdmlzaWJsZQor
ICovCitib29sIGNvbl9pc192aXNpYmxlKGNvbnN0IHN0cnVjdCB2Y19kYXRhICp2YykKK3sKKwlX
QVJOX0NPTlNPTEVfVU5MT0NLRUQoKTsKKworCXJldHVybiAqdmMtPnZjX2Rpc3BsYXlfZmcgPT0g
dmM7Cit9CitFWFBPUlRfU1lNQk9MKGNvbl9pc192aXNpYmxlKTsKKwogLyoqCiAgKiBjb25fZGVi
dWdfZW50ZXIgLSBwcmVwYXJlIHRoZSBjb25zb2xlIGZvciB0aGUga2VybmVsIGRlYnVnZ2VyCiAg
KiBAc3c6IGNvbnNvbGUgZHJpdmVyCmRpZmYgLS1naXQgYS9pbmNsdWRlL2xpbnV4L2NvbnNvbGVf
c3RydWN0LmggYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0LmgKaW5kZXggZWQ3OThlMTE0
NjYzLi4yNGQ0YzE2ZTNhZTAgMTAwNjQ0Ci0tLSBhL2luY2x1ZGUvbGludXgvY29uc29sZV9zdHJ1
Y3QuaAorKysgYi9pbmNsdWRlL2xpbnV4L2NvbnNvbGVfc3RydWN0LmgKQEAgLTE2OCw5ICsxNjgs
NiBAQCBleHRlcm4gdm9pZCB2Y19TQUsoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKTsKIAogI2Rl
ZmluZSBDVVJfREVGQVVMVCBDVVJfVU5ERVJMSU5FCiAKLXN0YXRpYyBpbmxpbmUgYm9vbCBjb25f
aXNfdmlzaWJsZShjb25zdCBzdHJ1Y3QgdmNfZGF0YSAqdmMpCi17Ci0JcmV0dXJuICp2Yy0+dmNf
ZGlzcGxheV9mZyA9PSB2YzsKLX0KK2Jvb2wgY29uX2lzX3Zpc2libGUoY29uc3Qgc3RydWN0IHZj
X2RhdGEgKnZjKTsKIAogI2VuZGlmIC8qIF9MSU5VWF9DT05TT0xFX1NUUlVDVF9IICovCi0tIAoy
LjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCklu
dGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRw
czovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeA==
