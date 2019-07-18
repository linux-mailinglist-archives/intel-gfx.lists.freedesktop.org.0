Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4E76CAA6
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2019 10:09:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 469FD6E343;
	Thu, 18 Jul 2019 08:09:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-x544.google.com (mail-ed1-x544.google.com
 [IPv6:2a00:1450:4864:20::544])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD10C6E342
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 08:09:14 +0000 (UTC)
Received: by mail-ed1-x544.google.com with SMTP id k8so29322079edr.11
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2019 01:09:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Iyfr5/1NYNdQhpDWPT06wuP/cAAoXegst7lt2IsF58=;
 b=sgKkT+kiiCNDzROWEWmZESyQiQtB7v8s/KWI7g7dHkvnWIRphYRdU8B7RflvmmY17P
 47YEhfQUNBhohukjNd3haQ4nSNsjVUeOv2e7gd5IWJ+eczZH+8ndnE57R10x4wy2KERM
 3p33lMSkP6PWYhqeMWl3WIG0FuxiGckVSEVPnCBzvfcyQb+lb7sa92DhMN5/Y0xRYhVp
 HHo7Go2kLrdlpFPhtJGyqIncqeHx/j6IYZrwud9HApudXQJt9VuRUyDttUEnVf70Nts1
 Mx2ZfiQcmQwk4Gh3NrvqNXHiKdfwEpJMMPuDukzWIlrvWudK2vshR65Uq/CfFt76FFfm
 a2RQ==
X-Gm-Message-State: APjAAAXS2Cw22pZeKd911RxJFfUoV/5qMVOxayNRGpZ6E8MOyVP6PJ+3
 EGryBJyA7KMMuhcmuna8KvXNj/6d
X-Google-Smtp-Source: APXvYqykBiX6Jo5Tfwh9csgIjcDSqs9NfSDZzAEw+X4to7YWwbULxI67P9uCx6KZm68g1spWwShXGQ==
X-Received: by 2002:a17:906:6582:: with SMTP id
 x2mr12620386ejn.2.1563437352239; 
 Thu, 18 Jul 2019 01:09:12 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:569e:0:3106:d637:d723:e855])
 by smtp.gmail.com with ESMTPSA id l38sm7608440eda.1.2019.07.18.01.09.11
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 01:09:11 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 18 Jul 2019 10:09:03 +0200
Message-Id: <20190718080903.22622-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+Iyfr5/1NYNdQhpDWPT06wuP/cAAoXegst7lt2IsF58=;
 b=Z7bNK0nfFW0N6BAI/rd5EED657okw9jUljgqrouABquv5zutt1fVG9cnzovdPvciis
 KmFVJJy3QcvbNE2hG6hzs11SjCaCGvNXExkjBAoy7FPPfdiQgzM2w8/Q6zsSmyUaMgdt
 r+fACRtZtYBPe+sS/se1+IEvfwhP/fSaBENKo=
Subject: [Intel-gfx] [PATCH] vt: Grab console_lock around con_is_bound in
 show_bind
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
Cc: Nicolas Pitre <nicolas.pitre@linaro.org>, linux-s390@vger.kernel.org,
 linux-fbdev@vger.kernel.org, Adam Borowski <kilobyte@angband.pl>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Martin Hostettler <textshell@uchuujin.de>,
 Mikulas Patocka <mpatocka@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Sam Ravnborg <sam@ravnborg.org>,
 Jens Remus <jremus@linux.ibm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Tm90IHJlYWxseSBoYXJtZnVsIG5vdCB0bywgYnV0IGFsc28gbm90IGhhcm0gaW4gZ3JhYmJpbmcg
dGhlIGxvY2suIEFuZAp0aGlzIHNodXRzIHVwIGEgbmV3IFdBUk5JTkcgSSBpbnRyb2R1Y2VkIGlu
IGNvbW1pdCBkZGRlM2MxOGI3MDAgKCJ2dDoKTW9yZSBsb2NraW5nIGNoZWNrcyIpLgoKUmVwb3J0
ZWQtYnk6IEplbnMgUmVtdXMgPGpyZW11c0BsaW51eC5pYm0uY29tPgpDYzogbGludXgta2VybmVs
QHZnZXIua2VybmVsLm9yZwpDYzogZHJpLWRldmVsQGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
bGludXgtZmJkZXZAdmdlci5rZXJuZWwub3JnCkNjOiBsaW51eC1zMzkwQHZnZXIua2VybmVsLm9y
ZwpDYzogR3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4KQ2M6
IE5pY29sYXMgUGl0cmUgPG5pY29sYXMucGl0cmVAbGluYXJvLm9yZz4KQ2M6IE1hcnRpbiBIb3N0
ZXR0bGVyIDx0ZXh0c2hlbGxAdWNodXVqaW4uZGU+CkNjOiBBZGFtIEJvcm93c2tpIDxraWxvYnl0
ZUBhbmdiYW5kLnBsPgpDYzogTWlrdWxhcyBQYXRvY2thIDxtcGF0b2NrYUByZWRoYXQuY29tPgpT
aWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6
IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBTYW0gUmF2bmJvcmcg
PHNhbUByYXZuYm9yZy5vcmc+Ci0tLQogZHJpdmVycy90dHkvdnQvdnQuYyB8IDYgKysrKystCiAx
IGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0
IGEvZHJpdmVycy90dHkvdnQvdnQuYyBiL2RyaXZlcnMvdHR5L3Z0L3Z0LmMKaW5kZXggZWM5MmYz
NmFiNWM0Li4zNGFhMzlkMWFlZDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvdHR5L3Z0L3Z0LmMKKysr
IGIvZHJpdmVycy90dHkvdnQvdnQuYwpAQCAtMzc3MSw3ICszNzcxLDExIEBAIHN0YXRpYyBzc2l6
ZV90IHNob3dfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2VfYXR0cmlidXRl
ICphdHRyLAogCQkJIGNoYXIgKmJ1ZikKIHsKIAlzdHJ1Y3QgY29uX2RyaXZlciAqY29uID0gZGV2
X2dldF9kcnZkYXRhKGRldik7Ci0JaW50IGJpbmQgPSBjb25faXNfYm91bmQoY29uLT5jb24pOwor
CWludCBiaW5kOworCisJY29uc29sZV9sb2NrKCk7CisJYmluZCA9IGNvbl9pc19ib3VuZChjb24t
PmNvbik7CisJY29uc29sZV91bmxvY2soKTsKIAogCXJldHVybiBzbnByaW50ZihidWYsIFBBR0Vf
U0laRSwgIiVpXG4iLCBiaW5kKTsKIH0KLS0gCjIuMjAuMQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21h
aWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
