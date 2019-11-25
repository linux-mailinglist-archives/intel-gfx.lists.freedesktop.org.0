Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BAF50108B1B
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2019 10:44:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B1346E096;
	Mon, 25 Nov 2019 09:44:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 295CD6E096
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 09:44:04 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id a15so17088394wrf.9
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2019 01:44:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iSmNGXwr7kI9x8aaaLkjUAscIM9SqwQv2RCAyEgTVbo=;
 b=b9H4n64DlIydupGfrKleACQajPo4sMMeYyLYH1DX9Q3TdwjLNMLERnKUfVsX2jMGu8
 fYz7zhRnkD8doXPQ90ECJny9AyIAjCesRIIpFW28cLEiRiFogkZe51MGgU47xoN1EZvM
 851U6PTbuvVzeXnNGfl9YYTiZpWsEAeeja/Pb377JOSfpwGjd7ghT2JzHcwroHGaIRUM
 FMbOeavik3tk1eYLioziyDXt9R49YSGcZaBORBhUjlGiOEMM0rdg5NfkS7OSZvtCQNeI
 WChOEwrD84Fd1IPzJKnblcBjww5C24BX+S9m2cQlIoANYnksB68IhwR4aPcHlwS1Mhl+
 NtKg==
X-Gm-Message-State: APjAAAVgoRcIpN7HrkVS80OLhbvaR/TV56yfTkfJz8qt8TiUjqMO/I3y
 Me5eww9Hmi4F5bWisBSNGr2Y8sXAVM8=
X-Google-Smtp-Source: APXvYqxA0Dvd4XRSGmFfjbFuy4hCi71K2+LFykYrVq1LJ6uVN6jnzWIMbDRYgQfqxSpeX8FQM5GSPg==
X-Received: by 2002:a5d:4445:: with SMTP id x5mr31839933wrr.341.1574675042826; 
 Mon, 25 Nov 2019 01:44:02 -0800 (PST)
Received: from phenom.ffwll.local (212-51-149-96.fiber7.init7.net.
 [212.51.149.96])
 by smtp.gmail.com with ESMTPSA id x2sm7598233wmc.3.2019.11.25.01.44.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 01:44:02 -0800 (PST)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Mon, 25 Nov 2019 10:43:52 +0100
Message-Id: <20191125094356.161941-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=iSmNGXwr7kI9x8aaaLkjUAscIM9SqwQv2RCAyEgTVbo=;
 b=fkQuVcJJlkr/poaM8VllMT5BFMwFqe317tWBouImc2jBQVMTTH0OSigcpo+w91T4js
 yYpdia6AGt34Ay7d2eM9xYTAXPKI/1lviDS5QnRtX0eKxk1nnYbShY8BcRv7XZXWyIlf
 OuqBFECxnCOk+0QWuzOCo2lb1b5frGcixDnJE=
Subject: [Intel-gfx] [PATCH 0/4] consistently use dma_resv locking wrappers
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgYWxsLAoKVGhpcyBpcyBwcmVwIHdvcmsgZm9yIHNvbWUgZG1hX3Jlc3Ygc2VyaWVzIEknbSB0
aW5rZXJpbmcgd2l0aCwgYnV0IEkKZmlndXJlZCBnb29kIHRvIHNwbGl0IHRoaXMgb3V0IHNpbmNl
IGdvb2QgaWRlYSB0byBsYW5kIHRoaXMgbm8gbWF0dGVyIHdoYXQKZXhhY3RseSBJJ2xsIGVuZCB1
cCBjcmVhdGluZyBpbiBkbWFfcmVzdi4gV2l0aCB0aGVzZSBldmVyeXRoaW5nIGluCmRyaXZlcnMv
Z3B1IG5pY2VseSBnb2VzIHRocm91Z2ggZWl0aGVyIHRoZSBkbWFfcmVzdiBvciBkcm1fbW9kZXNl
dF9sb2NrCndyYXBwZXJzLCBhbmQgZG9lc24ndCBjYWxsIHd3X211dGV4IGRpcmVjdGx5LgoKUmV2
aWV3LCBjb21tZW50cywgYWNrcyBhbGwgdmVyeSBtdWNoIHdlbGNvbWUsIGFzIHVzdWFsLgoKQ2hl
ZXJzLCBEYW5pZWwKCkRhbmllbCBWZXR0ZXIgKDQpOgogIGRybS9ldG5hdml2OiBVc2UgZG1hX3Jl
c3YgbG9ja2luZyB3cmFwcGVycwogIGRybS9pOTE1OiBVc2UgZG1hX3Jlc3YgbG9ja2luZyB3cmFw
cGVycwogIGRybS9tc206IFVzZSBkbWFfcmVzdiBsb2NraW5nIHdyYXBwZXJzCiAgZHJtL3ZjNDog
VXNlIGRtYV9yZXN2IGxvY2tpbmcgd3JhcHBlcnMKCiBkcml2ZXJzL2dwdS9kcm0vZXRuYXZpdi9l
dG5hdml2X2dlbV9zdWJtaXQuYyAgIHwgIDggKysrLS0tLS0KIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2dlbS9pOTE1X2dlbV9leGVjYnVmZmVyLmMgfCAgNiArKystLS0KIGRyaXZlcnMvZ3B1L2RybS9t
c20vbXNtX2dlbV9zdWJtaXQuYyAgICAgICAgICAgfCAxMCArKysrKy0tLS0tCiBkcml2ZXJzL2dw
dS9kcm0vdmM0L3ZjNF9nZW0uYyAgICAgICAgICAgICAgICAgIHwgMTEgKysrKystLS0tLS0KIDQg
ZmlsZXMgY2hhbmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0pCgotLSAKMi4y
NC4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRl
bC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6
Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZng=
