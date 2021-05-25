Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69093390B2E
	for <lists+intel-gfx@lfdr.de>; Tue, 25 May 2021 23:18:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 149366EB51;
	Tue, 25 May 2021 21:18:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76FCC6EB51
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 21:18:08 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id s4so15473952plg.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 May 2021 14:18:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=khdZVEEK1rP9kUwKpWiHIvVsVSC2tlfvCOHGJLhYPfw=;
 b=tZwS4IMa7UY4aVAguim0NS+EKV5ES9Vc0QRtnfHKS16itzMpsD0qciJuA9TbKgnorn
 jBhyGscwIQUdUpanxz8ZbYn2CstobqR66xLAf882Ko3LKcrnHJVT9WUHdhxLFSFvc9xX
 fldQiOpj8KTvASzbiugIedBE7GyMLhCFNDZBKMpSyEjUx5rMnpNv8mCs8NdAixzwEgMS
 oNuJmjFQx2b4YKItS5lW+L1pyEqMSPpxxjWPVCQNiF6PBzBTAf28CwazgtkFJTD/pMtj
 EsQ58zc33IMQ1vtarjZZwp7NYHPOdv1wILq2gAb/1pozU4/iu5Y08mHkp0b3XJSA5F2Y
 Cakw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=khdZVEEK1rP9kUwKpWiHIvVsVSC2tlfvCOHGJLhYPfw=;
 b=bpwUncX8jHUH0UaRWQIg+kG9d386THUHURU8cq3mv+WRbTqgubhwdj/eaVmKYgIBxf
 1vK7oWko4e9Ikr53w5VOSuEK1sINiEguj0jv2ZMhztv322XbA775vCtjIE3wanDnEOv0
 TWsOwxdUvAOYH/qI1cNmGTUnyUO5m/PEv198y4+oVbLc95bctjuNn6uJBUR6MmqgXZ+y
 zY7gafuAma0maI11QowSe2dPgJZlXCUlTdcYyt/RTAgxLX4ObfDAedOdwUxr0PdOJZvc
 MvAeM4DryzSYORirM0CJaxlrUjy4hKLLlUn8HMmn9gLV2p5KYoZA8afsrmKjnCGoY9/h
 nFeg==
X-Gm-Message-State: AOAM533Xh5dhs5VH/PEf2mlrJ1o6N3ieh3SElniyNjOKXS+0b3IMpUc5
 cGc8z8q/yguEAhRCoiNWbzX6wA==
X-Google-Smtp-Source: ABdhPJxsCexXt0qdANF6TJ1maa4rnZI7NhaWP+hRNDQJOMuYwwT9ml9eZwq+RosYMOi4/ddeowJU6w==
X-Received: by 2002:a17:90b:14cc:: with SMTP id
 jz12mr33137764pjb.210.1621977487956; 
 Tue, 25 May 2021 14:18:07 -0700 (PDT)
Received: from omlet.lan ([134.134.139.83])
 by smtp.gmail.com with ESMTPSA id e186sm14342278pfa.145.2021.05.25.14.18.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 14:18:07 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 25 May 2021 16:17:50 -0500
Message-Id: <20210525211753.1086069-5-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525211753.1086069-1-jason@jlekstrand.net>
References: <20210525211753.1086069-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 4/7] dma-buf: Document DMA_BUF_IOCTL_SYNC
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Sumit Semwal <sumit.semwal@linaro.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBhZGRzIGEgbmV3ICJETUEgQnVmZmVyIGlvY3RscyIgc2VjdGlvbiB0byB0aGUgZG1hLWJ1
ZiBkb2NzIGFuZCBhZGRzCmRvY3VtZW50YXRpb24gZm9yIERNQV9CVUZfSU9DVExfU1lOQy4KClNp
Z25lZC1vZmYtYnk6IEphc29uIEVrc3RyYW5kIDxqYXNvbkBqbGVrc3RyYW5kLm5ldD4KQ2M6IERh
bmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAZmZ3bGwuY2g+CkNjOiBDaHJpc3RpYW4gS8O2bmln
IDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+CkNjOiBTdW1pdCBTZW13YWwgPHN1bWl0LnNlbXdh
bEBsaW5hcm8ub3JnPgotLS0KIERvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdCB8
ICA4ICsrKysrKysKIGluY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmggICAgICAgICB8IDMyICsr
KysrKysrKysrKysrKysrKysrKysrKysrKy0KIDIgZmlsZXMgY2hhbmdlZCwgMzkgaW5zZXJ0aW9u
cygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vZHJpdmVyLWFw
aS9kbWEtYnVmLnJzdCBiL0RvY3VtZW50YXRpb24vZHJpdmVyLWFwaS9kbWEtYnVmLnJzdAppbmRl
eCA3ZjM3ZWMzMGQ5ZmQ3Li43ODRmODRmZTUwYTVlIDEwMDY0NAotLS0gYS9Eb2N1bWVudGF0aW9u
L2RyaXZlci1hcGkvZG1hLWJ1Zi5yc3QKKysrIGIvRG9jdW1lbnRhdGlvbi9kcml2ZXItYXBpL2Rt
YS1idWYucnN0CkBAIC04OCw2ICs4OCw5IEBAIGNvbnNpZGVyIHRob3VnaDoKIC0gVGhlIERNQSBi
dWZmZXIgRkQgaXMgYWxzbyBwb2xsYWJsZSwgc2VlIGBJbXBsaWNpdCBGZW5jZSBQb2xsIFN1cHBv
cnRgXyBiZWxvdyBmb3IKICAgZGV0YWlscy4KIAorLSBUaGUgRE1BIGJ1ZmZlciBGRCBhbHNvIHN1
cHBvcnRzIGEgZmV3IGRtYS1idWYtc3BlY2lmaWMgaW9jdGxzLCBzZWUKKyAgYERNQSBCdWZmZXIg
aW9jdGxzYF8gYmVsb3cgZm9yIGRldGFpbHMuCisKIEJhc2ljIE9wZXJhdGlvbiBhbmQgRGV2aWNl
IERNQSBBY2Nlc3MKIH5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn4KIApAQCAt
MTA2LDYgKzEwOSwxMSBAQCBJbXBsaWNpdCBGZW5jZSBQb2xsIFN1cHBvcnQKIC4uIGtlcm5lbC1k
b2M6OiBkcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCiAgICA6ZG9jOiBpbXBsaWNpdCBmZW5jZSBw
b2xsaW5nCiAKK0RNQSBCdWZmZXIgaW9jdGxzCit+fn5+fn5+fn5+fn5+fn5+fgorCisuLiBrZXJu
ZWwtZG9jOjogaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaAorCiBLZXJuZWwgRnVuY3Rpb25z
IGFuZCBTdHJ1Y3R1cmVzIFJlZmVyZW5jZQogfn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+fn5+
fn5+fn5+fn5+fn4KIApkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaCBi
L2luY2x1ZGUvdWFwaS9saW51eC9kbWEtYnVmLmgKaW5kZXggN2YzMDM5M2I5MmMzYi4uMWY2N2Nl
ZDg1M2IxNCAxMDA2NDQKLS0tIGEvaW5jbHVkZS91YXBpL2xpbnV4L2RtYS1idWYuaAorKysgYi9p
bmNsdWRlL3VhcGkvbGludXgvZG1hLWJ1Zi5oCkBAIC0yMiw4ICsyMiwzOCBAQAogCiAjaW5jbHVk
ZSA8bGludXgvdHlwZXMuaD4KIAotLyogYmVnaW4vZW5kIGRtYS1idWYgZnVuY3Rpb25zIHVzZWQg
Zm9yIHVzZXJzcGFjZSBtbWFwLiAqLworLyoqCisgKiBzdHJ1Y3QgZG1hX2J1Zl9zeW5jIC0gU3lu
Y2hyb25pemUgd2l0aCBDUFUgYWNjZXNzLgorICoKKyAqIFdoZW4gYSBETUEgYnVmZmVyIGlzIGFj
Y2Vzc2VkIGZyb20gdGhlIENQVSB2aWEgbW1hcCwgaXQgaXMgbm90IGFsd2F5cworICogcG9zc2li
bGUgdG8gZ3VhcmFudGVlIGNvaGVyZW5jeSBiZXR3ZWVuIHRoZSBDUFUtdmlzaWJsZSBtYXAgYW5k
IHVuZGVybHlpbmcKKyAqIG1lbW9yeS4gIFRvIG1hbmFnZSBjb2hlcmVuY3ksIERNQV9CVUZfSU9D
VExfU1lOQyBtdXN0IGJlIHVzZWQgdG8gYnJhY2tldAorICogYW55IENQVSBhY2Nlc3MgdG8gZ2l2
ZSB0aGUga2VybmVsIHRoZSBjaGFuY2UgdG8gc2h1ZmZsZSBtZW1vcnkgYXJvdW5kIGlmCisgKiBu
ZWVkZWQuCisgKgorICogUHJpb3IgdG8gYWNjZXNzaW5nIHRoZSBtYXAsIHRoZSBjbGllbnQgc2hv
dWxkIGNhbGwgRE1BX0JVRl9JT0NUTF9TWU5DCisgKiB3aXRoIERNQV9CVUZfU1lOQ19TVEFSVCBh
bmQgdGhlIGFwcHJvcHJpYXRlIHJlYWQvd3JpdGUgZmxhZ3MuICBPbmNlIHRoZQorICogYWNjZXNz
IGlzIGNvbXBsZXRlLCB0aGUgY2xpZW50IHNob3VsZCBjYWxsIERNQV9CVUZfSU9DVExfU1lOQyB3
aXRoCisgKiBETUFfQlVGX1NZTkNfRU5EIGFuZCB0aGUgc2FtZSByZWFkL3dyaXRlIGZsYWdzLgor
ICovCiBzdHJ1Y3QgZG1hX2J1Zl9zeW5jIHsKKwkvKioKKwkgKiBAZmxhZ3M6IFNldCBvZiBhY2Nl
c3MgZmxhZ3MKKwkgKgorCSAqIC0gRE1BX0JVRl9TWU5DX1NUQVJUOiBJbmRpY2F0ZXMgdGhlIHN0
YXJ0IG9mIGEgbWFwIGFjY2VzcworCSAqICAgc2Vzc2lvbi4KKwkgKgorCSAqIC0gRE1BX0JVRl9T
WU5DX0VORDogSW5kaWNhdGVzIHRoZSBlbmQgb2YgYSBtYXAgYWNjZXNzIHNlc3Npb24uCisJICoK
KwkgKiAtIERNQV9CVUZfU1lOQ19SRUFEOiBJbmRpY2F0ZXMgdGhhdCB0aGUgbWFwcGVkIERNQSBi
dWZmZXIgd2lsbAorCSAqICAgYmUgcmVhZCBieSB0aGUgY2xpZW50IHZpYSB0aGUgQ1BVIG1hcC4K
KwkgKgorCSAqIC0gRE1BX0JVRl9TWU5DX1JFQUQ6IEluZGljYXRlcyB0aGF0IHRoZSBtYXBwZWQg
RE1BIGJ1ZmZlciB3aWxsCisJICogICBiZSB3cml0dGVuIGJ5IHRoZSBjbGllbnQgdmlhIHRoZSBD
UFUgbWFwLgorCSAqCisJICogLSBETUFfQlVGX1NZTkNfUlc6IEFuIGFsaWFzIGZvciBETUFfQlVG
X1NZTkNfUkVBRCB8CisJICogICBETUFfQlVGX1NZTkNfV1JJVEUuCisJICovCiAJX191NjQgZmxh
Z3M7CiB9OwogCi0tIAoyLjMxLjEKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2ludGVsLWdmeAo=
