Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFFF293C2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2019 10:55:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24CA06E0E9;
	Fri, 24 May 2019 08:54:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDCEB6E0F3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 08:54:43 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id p26so13358761edr.2
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2019 01:54:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3VFKuM3MW7HhJw8g+F0ZAMGgocYe76vTXpU+uF+1TQo=;
 b=QsFp9cum/AeAHb7Pco8iYChuQ/6CFtKse4C31QE9haFay1DTTsDlI00kwBi4gCFKeU
 aj2uDnuCiA9cCFDMxbWGKCPbMz/4JMZDxqBXlMmgxKtHuA/O6sDXjjp5RrK9C4MuGijq
 eO5KHBVXJBTBsj22g04jGiJ9OwaU02yXsgW51SM9k1ULnw+MFhOGJTjIt1VwY1DJlzCX
 fMm2vcQhrzuCxgcQEGcUU250+DuJ7ateyl66D7rSL2T2ic7XGUUdk1E1clBAbdyPgpR/
 u8qblVFTBX3w40Ctipgj49cny3+ExLoY+VyYWQerfsJbk02toZ/24A/4EGdpUtAnl5XT
 cmBA==
X-Gm-Message-State: APjAAAVqSciU1ozcARXE6Sk6vOKna0r7qrJ6KcFSc/dQx/Y8ochxZ+tN
 +Gqp3WfPC9/240tOtdR/qptn9w==
X-Google-Smtp-Source: APXvYqxEVgu2quVopIofi1fANkMhstACI2EGNdT+MIZH3gHRE5pFQbfKt9ctKt7SsMjsTvmXSEszUQ==
X-Received: by 2002:a17:906:2ac5:: with SMTP id
 m5mr81917352eje.71.1558688082399; 
 Fri, 24 May 2019 01:54:42 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id 96sm567082edq.68.2019.05.24.01.54.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 01:54:41 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: LKML <linux-kernel@vger.kernel.org>
Date: Fri, 24 May 2019 10:53:52 +0200
Message-Id: <20190524085354.27411-32-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
References: <20190524085354.27411-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3VFKuM3MW7HhJw8g+F0ZAMGgocYe76vTXpU+uF+1TQo=;
 b=cvyCEwSj1QIHhiUcfE6glzcCA2U8gdeQg0UJH+eLHNVqhr9yA74lr76XhDC68i/K4s
 ySqXKthJaclCts4kf7qGy4NZyjN9KsaoOAoblQUPftMCEF/SeQQBYvkHtmqPvnJ5Mrm+
 4wMOGUPvzJhyy1ifC2pEL2npDGzuVq8hf/6JQ=
Subject: [Intel-gfx] [PATCH 31/33] fbcon: Document what I learned about
 fbcon locking
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
Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Yisheng Xie <ysxie@foxmail.com>, Daniel Vetter <daniel.vetter@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SXQncyBub3QgcHJldHR5LgoKU2lnbmVkLW9mZi1ieTogRGFuaWVsIFZldHRlciA8ZGFuaWVsLnZl
dHRlckBpbnRlbC5jb20+CkNjOiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNo
PgpDYzogQmFydGxvbWllaiBab2xuaWVya2lld2ljeiA8Yi56b2xuaWVya2llQHNhbXN1bmcuY29t
PgpDYzogSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KQ2M6IFlpc2hlbmcgWGll
IDx5c3hpZUBmb3htYWlsLmNvbT4KLS0tCiBkcml2ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24u
YyB8IDE5ICsrKysrKysrKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxOSBpbnNlcnRpb25z
KCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMgYi9kcml2
ZXJzL3ZpZGVvL2ZiZGV2L2NvcmUvZmJjb24uYwppbmRleCA2YTRiYmI4NDA3YzAuLjg0NDRkNTE1
MWMyZCAxMDA2NDQKLS0tIGEvZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKKysrIGIv
ZHJpdmVycy92aWRlby9mYmRldi9jb3JlL2ZiY29uLmMKQEAgLTg4LDYgKzg4LDI1IEBACiAjICBk
ZWZpbmUgRFBSSU5USyhmbXQsIGFyZ3MuLi4pCiAjZW5kaWYKIAorLyoKKyAqIEZJWE1FOiBMb2Nr
aW5nCisgKgorICogLSBmYmNvbiBzdGF0ZSBpdHNlbGYgaXMgcHJvdGVjdGVkIGJ5IHRoZSBjb25z
b2xlX2xvY2ssIGFuZCB0aGUgY29kZSBkb2VzIGEKKyAqICAgcHJldHR5IGdvb2Qgam9iIGF0IG1h
a2luZyBzdXJlIHRoYXQgbG9jayBpcyBoZWxkIGV2ZXJ5d2hlcmUgaXQncyBuZWVkZWQuCisgKgor
ICogLSBhY2Nlc3MgdG8gdGhlIHJlZ2lzdGVyZWRfZmIgYXJyYXkgaXMgZW50aXJlbHkgdW5wcm90
ZWN0ZWQuIFRoaXMgc2hvdWxkIHVzZQorICogICBwcm9wZXIgb2JqZWN0IGxpZmV0aW1lIGhhbmRs
aW5nLCBpLmUuIGdldC9wdXRfZmJfaW5mby4gVGhpcyBhbHNvIG1lYW5zCisgKiAgIHN3aXRjaGlu
ZyBmcm9tIGluZGljZXMgdG8gcHJvcGVyIHBvaW50ZXJzIGZvciBmYl9pbmZvIGV2ZXJ5d2hlcmUu
CisgKgorICogLSBmYmNvbiBkb2Vzbid0IGJvdGhlciB3aXRoIGZiX2xvY2svdW5sb2NrIGF0IGFs
bC4gVGhpcyBpcyBidWdneSwgc2luY2UgaXQKKyAqICAgbWVhbnMgY29uY3VycmVudCBhY2Nlc3Mg
dG8gdGhlIHNhbWUgZmJkZXYgZnJvbSBib3RoIGZiY29uIGFuZCB1c2Vyc3BhY2UKKyAqICAgd2ls
bCBibG93IHVwLiBUbyBmaXggdGhpcyBhbGwgZmJjb24gY2FsbHMgZnJvbSBmYm1lbS5jIG5lZWQg
dG8gYmUgbW92ZWQgb3V0CisgKiAgIG9mIGZiX2xvY2svdW5sb2NrIHByb3RlY3RlZCBzZWN0aW9u
cywgc2luY2Ugb3RoZXJ3aXNlIHdlJ2xsIHJlY3Vyc2UgYW5kCisgKiAgIGRlYWRsb2NrIGV2ZW50
dWFsbHkuIEFzaWRlOiBEdWUgdG8gdGhlc2UgZGVhZGxvY2sgaXNzdWVzIHRoZSBmYmRldiBjb2Rl
IGluCisgKiAgIGZibWVtLmMgY2Fubm90IHVzZSBsb2NraW5nIGFzc2VydHMsIGFuZCB0aGVyZSdz
IGxvdHMgb2YgY2FsbGVycyB3aGljaCBnZXQKKyAqICAgdGhlIHJ1bGVzIHdyb25nLCBlLmcuIGZi
c3lzZnMuYyBlbnRpcmVseSBtaXNzZWQgZmJfbG9jay91bmxvY2sgY2FsbHMgdG9vLgorICovCisK
IGVudW0gewogCUZCQ09OX0xPR09fQ0FOU0hPVwk9IC0xLAkvKiB0aGUgbG9nbyBjYW4gYmUgc2hv
d24gKi8KIAlGQkNPTl9MT0dPX0RSQVcJCT0gLTIsCS8qIGRyYXcgdGhlIGxvZ28gdG8gYSBjb25z
b2xlICovCi0tIAoyLjIwLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2lu
dGVsLWdmeA==
