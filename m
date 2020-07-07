Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C9012178F0
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68A56E7E6;
	Tue,  7 Jul 2020 20:13:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com
 [IPv6:2a00:1450:4864:20::443])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C57E6E7D9
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:04 +0000 (UTC)
Received: by mail-wr1-x443.google.com with SMTP id s10so46550804wrw.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=288QC5fKBToLFpFuoOPQqa37hzJ8GViPNZgBbpolevY=;
 b=exbtvFm/IDGUVNkPZ+J6eOk/nKAYYZYnwZjGPqn4diJ0GPNqgp8huhSLLZXvWl635s
 SW4E6QQuTZgdY7pe95x7AGPcPBSzYsyKzcyQVjeYtQ/3mSTlpcm9bstPy6xqhxQdc3lU
 nhih5p7E42c1af44f6sBfO4t1NWm5I/2bCo5A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=288QC5fKBToLFpFuoOPQqa37hzJ8GViPNZgBbpolevY=;
 b=DwhOQAu/RJvglmb+05REHITHSKgPDJyk8q9q9aVYgr1EfSaM/ibGK78bEXSnLisnFG
 MXeB6GWpPcFZhW9IePjdNzg4BqtqqwATDfkVSW50ZX61vXVOmUlQy8hpSEGWzo1osWBA
 Toy8tMC+q3wvPsQJNjJYT3bGaa80vpUHa6G1VKZ5m9KX2oznTNX1D92jKwWhsQZtTOsA
 Cns/T0i0H2C16Yk7Q2qYr+bxsQk/rNUbC/4SuMIYhK0cehwNFEy+CSUZ7vWmdi8gMWHo
 TjtAvwcnsGfPdLRoyJh5HW9ovptiwsWgAjNtH+OruQSKKnWBpsbr5jlkLL4ABulIc0vb
 kNHg==
X-Gm-Message-State: AOAM532x6sFTGRO0P+PTd6idG4CJJ6G1Tike//An6jCbyC7k3V9pUZh+
 mjZBFmNzx/j0ISo6DHUnQvNFjw==
X-Google-Smtp-Source: ABdhPJzJC+HAl1m5YFWCn6DTeDFu8lcCd90/+4+vD1TO4Q9nKElNEoSd/j3rcAA3OQS0WKjwS/G1Mg==
X-Received: by 2002:a5d:40cb:: with SMTP id b11mr56760051wrq.263.1594152782893; 
 Tue, 07 Jul 2020 13:13:02 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.13.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:13:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:22 +0200
Message-Id: <20200707201229.472834-19-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 18/25] drm/amdgpu: use dma-fence annotations in
 cs_submit()
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
Cc: linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 amd-gfx@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 linaro-mm-sig@lists.linaro.org, Daniel Vetter <daniel.vetter@intel.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhpcyBpcyBhIGJpdCB0cmlja3ksIHNpbmNlIC0+bm90aWZpZXJfbG9jayBpcyBoZWxkIHdoaWxl
IGNhbGxpbmcKZG1hX2ZlbmNlX3dhaXQgd2UgbXVzdCBlbnN1cmUgdGhhdCBhbHNvIHRoZSByZWFk
IHNpZGUgKGkuZS4KZG1hX2ZlbmNlX2JlZ2luX3NpZ25hbGxpbmcpIGlzIG9uIHRoZSBzYW1lIHNp
ZGUuIElmIHdlIG1peCB0aGlzIHVwCmxvY2tkZXAgY29tcGxhaW50cywgYW5kIHRoYXQncyBhZ2Fp
biB3aHkgd2Ugd2FudCB0byBoYXZlIHRoZXNlCmFubm90YXRpb25zLgoKQSBuaWNlIHNpZGUgZWZm
ZWN0IG9mIHRoaXMgaXMgdGhhdCBiZWNhdXNlIG9mIHRoZSBmc19yZWNsYWltIHByaW1pbmcKZm9y
IGRtYV9mZW5jZV9lbmFibGUgbG9ja2RlcCBub3cgYXV0b21hdGljYWxseSBjaGVja3MgZm9yIHVz
IHRoYXQKbm90aGluZyBpbiBoZXJlIGFsbG9jYXRlcyBtZW1vcnksIHdpdGhvdXQgZXZlbiBydW5u
aW5nIGFueSB1c2VycHRyCndvcmtsb2Fkcy4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5v
cmcKQ2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2Vy
Lmtlcm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdp
bHNvbi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51
eC5pbnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5j
b20+ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29t
PgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIHwgNSArKysrKwog
MSBmaWxlIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jIGIvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUv
YW1kZ3B1X2NzLmMKaW5kZXggYTUxMmNjYmM0ZGVhLi44NTg1MjhhMDZmZTcgMTAwNjQ0Ci0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9jcy5jCkBAIC0xMjEyLDYgKzEyMTIsNyBAQCBzdGF0aWMg
aW50IGFtZGdwdV9jc19zdWJtaXQoc3RydWN0IGFtZGdwdV9jc19wYXJzZXIgKnAsCiAJc3RydWN0
IGFtZGdwdV9qb2IgKmpvYjsKIAl1aW50NjRfdCBzZXE7CiAJaW50IHI7CisJYm9vbCBmZW5jZV9j
b29raWU7CiAKIAlqb2IgPSBwLT5qb2I7CiAJcC0+am9iID0gTlVMTDsKQEAgLTEyMjYsNiArMTIy
Nyw4IEBAIHN0YXRpYyBpbnQgYW1kZ3B1X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNl
ciAqcCwKIAkgKi8KIAltdXRleF9sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAorCWZl
bmNlX2Nvb2tpZSA9IGRtYV9mZW5jZV9iZWdpbl9zaWduYWxsaW5nKCk7CisKIAkvKiBJZiB1c2Vy
cHRyIGFyZSBpbnZhbGlkYXRlZCBhZnRlciBhbWRncHVfY3NfcGFyc2VyX2JvcygpLCByZXR1cm4K
IAkgKiAtRUFHQUlOLCBkcm1Jb2N0bCBpbiBsaWJkcm0gd2lsbCByZXN0YXJ0IHRoZSBhbWRncHVf
Y3NfaW9jdGwuCiAJICovCkBAIC0xMjYyLDEyICsxMjY1LDE0IEBAIHN0YXRpYyBpbnQgYW1kZ3B1
X2NzX3N1Ym1pdChzdHJ1Y3QgYW1kZ3B1X2NzX3BhcnNlciAqcCwKIAlhbWRncHVfdm1fbW92ZV90
b19scnVfdGFpbChwLT5hZGV2LCAmZnByaXYtPnZtKTsKIAogCXR0bV9ldV9mZW5jZV9idWZmZXJf
b2JqZWN0cygmcC0+dGlja2V0LCAmcC0+dmFsaWRhdGVkLCBwLT5mZW5jZSk7CisJZG1hX2ZlbmNl
X2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5u
b3RpZmllcl9sb2NrKTsKIAogCXJldHVybiAwOwogCiBlcnJvcl9hYm9ydDoKIAlkcm1fc2NoZWRf
am9iX2NsZWFudXAoJmpvYi0+YmFzZSk7CisJZG1hX2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNl
X2Nvb2tpZSk7CiAJbXV0ZXhfdW5sb2NrKCZwLT5hZGV2LT5ub3RpZmllcl9sb2NrKTsKIAogZXJy
b3JfdW5sb2NrOgotLSAKMi4yNy4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5m
by9pbnRlbC1nZngK
