Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4663C66D0
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Jul 2021 01:12:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3735A89F3C;
	Mon, 12 Jul 2021 23:12:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com
 [IPv6:2607:f8b0:4864:20::52c])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77FDF89F3C
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 23:12:47 +0000 (UTC)
Received: by mail-pg1-x52c.google.com with SMTP id s18so4597520pgq.3
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 16:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=jlekstrand-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nkzbM4toqBuy9BjR9h4atQc2L52M+eVAdOZMZpVFBDk=;
 b=tDRnyXqhVIUwlfOaVTpOEAikRPvjAXq64gKcuT8ZY0gnwmCnHTdn9eclV0/AwSxgl4
 rEWwXECbLSxknCRHvbCQxngpNDoXMZ2rpIehg7k7PLptDs9K5QtvH054+Fur/z2+U1BV
 eYZXPDSxccHY4s3d9OJyYC5UxW4Tx24yZ1eBwAxrkh6lHBmzM+2RaqQd/rkPe2HBinSb
 d9XJXQvhwHq7MmrLgm0NWstJexh9IUQb2VD6qCEpi5jwvQjPzZMUgPzdYRbx8qbmpdHC
 R958NToW8v8qP7OzR2+tAdiRirBRNd7nK1lMzAeugLHgKocbbdh/tUlxAJatoOQBV8K3
 7IqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nkzbM4toqBuy9BjR9h4atQc2L52M+eVAdOZMZpVFBDk=;
 b=ZWYNDgYCvy2EQkUjQR3E1EplVlFL5rQQ3Wy9+LmGDPCns+dt9b7KV5zKiJ+waRQacy
 NIyUICC1fRB4C6/KPpfI/zG8nxzjx/Zmx9tKc8+ymPZTsbuvapuUgvW1j6hoiBKexgQl
 4GNXADLm5ndXmKog+asqzvZ//ppsHbcMrsc+Mq3icWQeck+HRF5rs1vEtNtzGdZJTV8a
 5b8M5Y0YsLTmB0qX2a+JOcRP812yjalMy3JUvH2nids5KmXpPUTOevNSrIF87cUJJlXq
 pAhrWRSFJNNxcxzuseGRu4qdG5HhJQbe/Iat8SsUHzwFvJ1j8zswf0f8Cf3dTokBATfg
 Sn6g==
X-Gm-Message-State: AOAM532tIVvnmcMgu/gP7kW34JcC5AL/9OwV9xGPRPm3L8ggPFRbnYjH
 GTvmpLsbFTJ/azyTZvlWRURYeg==
X-Google-Smtp-Source: ABdhPJyeMihlcnw5PjXFBnmOw3yjdc+aPvC5oVOJOvwZz3vXp7ZqDWXukz+PUNiKFM2IRwU8psxDjg==
X-Received: by 2002:a63:1263:: with SMTP id 35mr1367308pgs.221.1626131567000; 
 Mon, 12 Jul 2021 16:12:47 -0700 (PDT)
Received: from omlet.com ([134.134.139.80])
 by smtp.gmail.com with ESMTPSA id g123sm16980940pfb.187.2021.07.12.16.12.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 16:12:46 -0700 (PDT)
From: Jason Ekstrand <jason@jlekstrand.net>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 daniel@ffwll.ch, christian.koenig@amd.com,
 thomas.hellstrom@linux.intel.com, matthew.auld@intel.com,
 maarten.lankhorst@linux.intel.com
Date: Mon, 12 Jul 2021 18:12:34 -0500
Message-Id: <20210712231234.1031975-2-jason@jlekstrand.net>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210712231234.1031975-1-jason@jlekstrand.net>
References: <20210712231234.1031975-1-jason@jlekstrand.net>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gem: Migrate to system at dma-buf
 attach time (v5)
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RnJvbTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29t
PgoKVW50aWwgd2Ugc3VwcG9ydCBwMnAgZG1hIG9yIGFzIGEgY29tcGxlbWVudCB0byB0aGF0LCBt
aWdyYXRlIGRhdGEKdG8gc3lzdGVtIG1lbW9yeSBhdCBkbWEtYnVmIGF0dGFjaCB0aW1lIGlmIHBv
c3NpYmxlLgoKdjI6Ci0gUmViYXNlIG9uIGR5bmFtaWMgZXhwb3J0ZXIuIFVwZGF0ZSB0aGUgaWd0
X2RtYWJ1Zl9pbXBvcnRfc2FtZV9kcml2ZXIKICBzZWxmdGVzdCB0byBtaWdyYXRlIGlmIHdlIGFy
ZSBMTUVNIGNhcGFibGUuCnYzOgotIE1pZ3JhdGUgYWxzbyBpbiB0aGUgcGluKCkgY2FsbGJhY2su
CnY0OgotIE1pZ3JhdGUgaW4gYXR0YWNoCnY1OiAoamFzb24pCi0gTG9jayBhcm91bmQgdGhlIG1p
Z3JhdGlvbgoKU2lnbmVkLW9mZi1ieTogVGhvbWFzIEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ry
b21AbGludXguaW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBNaWNoYWVsIEouIFJ1aGwgPG1pY2hh
ZWwuai5ydWhsQGludGVsLmNvbT4KUmVwb3J0ZWQtYnk6IGtlcm5lbCB0ZXN0IHJvYm90IDxsa3BA
aW50ZWwuY29tPgpTaWduZWQtb2ZmLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFu
ZC5uZXQ+ClJldmlld2VkLWJ5OiBKYXNvbiBFa3N0cmFuZCA8amFzb25Aamxla3N0cmFuZC5uZXQ+
Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5jICAgIHwgMjUg
KysrKysrKysrKysrKysrKysrLQogLi4uL2RybS9pOTE1L2dlbS9zZWxmdGVzdHMvaTkxNV9nZW1f
ZG1hYnVmLmMgIHwgIDQgKystCiAyIGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVf
Z2VtX2RtYWJ1Zi5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX2RtYWJ1Zi5j
CmluZGV4IDlhNjU1ZjY5YTA2NzEuLjMxNjNmMDA1NTQ0NzYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9kbWFidWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9nZW0vaTkxNV9nZW1fZG1hYnVmLmMKQEAgLTE3MCw4ICsxNzAsMzEgQEAgc3RhdGljIGlu
dCBpOTE1X2dlbV9kbWFidWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCiAJCQkJICBz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCiB7CiAJc3RydWN0IGRybV9pOTE1X2dl
bV9vYmplY3QgKm9iaiA9IGRtYV9idWZfdG9fb2JqKGRtYWJ1Zik7CisJc3RydWN0IGk5MTVfZ2Vt
X3d3X2N0eCB3dzsKKwlpbnQgZXJyOworCisJZm9yX2k5MTVfZ2VtX3d3KCZ3dywgZXJyLCB0cnVl
KSB7CisJCWVyciA9IGk5MTVfZ2VtX29iamVjdF9sb2NrKG9iaiwgJnd3KTsKKwkJaWYgKGVycikK
KwkJCWNvbnRpbnVlOworCisJCWlmICghaTkxNV9nZW1fb2JqZWN0X2Nhbl9taWdyYXRlKG9iaiwg
SU5URUxfUkVHSU9OX1NNRU0pKSB7CisJCQllcnIgPSAtRU9QTk9UU1VQUDsKKwkJCWNvbnRpbnVl
OworCQl9CisKKwkJZXJyID0gaTkxNV9nZW1fb2JqZWN0X21pZ3JhdGUob2JqLCAmd3csIElOVEVM
X1JFR0lPTl9TTUVNKTsKKwkJaWYgKGVycikKKwkJCWNvbnRpbnVlOwogCi0JcmV0dXJuIGk5MTVf
Z2VtX29iamVjdF9waW5fcGFnZXNfdW5sb2NrZWQob2JqKTsKKwkJZXJyID0gaTkxNV9nZW1fb2Jq
ZWN0X3dhaXRfbWlncmF0aW9uKG9iaiwgMCk7CisJCWlmIChlcnIpCisJCQljb250aW51ZTsKKwor
CQllcnIgPSBpOTE1X2dlbV9vYmplY3RfcGluX3BhZ2VzKG9iaik7CisJfQorCisJcmV0dXJuIGVy
cjsKIH0KIAogc3RhdGljIHZvaWQgaTkxNV9nZW1fZG1hYnVmX2RldGFjaChzdHJ1Y3QgZG1hX2J1
ZiAqZG1hYnVmLApkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0
cy9pOTE1X2dlbV9kbWFidWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9zZWxmdGVzdHMv
aTkxNV9nZW1fZG1hYnVmLmMKaW5kZXggM2RjMGY4YjNjZGFiMC4uNGY3ZTc3YjFjMDE1MiAxMDA2
NDQKLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL3NlbGZ0ZXN0cy9pOTE1X2dlbV9kbWFi
dWYuYworKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vc2VsZnRlc3RzL2k5MTVfZ2VtX2Rt
YWJ1Zi5jCkBAIC0xMDYsNyArMTA2LDkgQEAgc3RhdGljIGludCBpZ3RfZG1hYnVmX2ltcG9ydF9z
YW1lX2RyaXZlcih2b2lkICphcmcpCiAJaW50IGVycjsKIAogCWZvcmNlX2RpZmZlcmVudF9kZXZp
Y2VzID0gdHJ1ZTsKLQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3JlYXRlX3NobWVtKGk5MTUsIFBB
R0VfU0laRSk7CisJb2JqID0gaTkxNV9nZW1fb2JqZWN0X2NyZWF0ZV9sbWVtKGk5MTUsIFBBR0Vf
U0laRSwgMCk7CisJaWYgKElTX0VSUihvYmopKQorCQlvYmogPSBpOTE1X2dlbV9vYmplY3RfY3Jl
YXRlX3NobWVtKGk5MTUsIFBBR0VfU0laRSk7CiAJaWYgKElTX0VSUihvYmopKQogCQlnb3RvIG91
dF9yZXQ7CiAKLS0gCjIuMzEuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8v
aW50ZWwtZ2Z4Cg==
