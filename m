Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28F9F1D97B2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:28:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 870C489DB8;
	Tue, 19 May 2020 13:28:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com
 [IPv6:2a00:1450:4864:20::442])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90BB89DB8
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:28:04 +0000 (UTC)
Received: by mail-wr1-x442.google.com with SMTP id i15so15862213wrx.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 06:28:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hM5OXAptbKPP/8+yKuT4RVgcPXCSJuvxjvItOcy5Ch4=;
 b=JUB9zXMhx3IM69uNuCaGPLpgNhM5ZRwyVZ5kb0gbG6jKM48juOC5th7p4u10t6jVoO
 YfTIxKkevTaESlEO462+goKgJtOvUNl34FxAkta5T0Nsb9E9KujbymSahURdiNV6u8ls
 BacBPl5XG/yx7XZo7SlEHPm6RYXO2+gzLmayU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=hM5OXAptbKPP/8+yKuT4RVgcPXCSJuvxjvItOcy5Ch4=;
 b=BMLJxva8QzLriyV4nhYi91uHhqeOqRcy+Y/mstmv7SxMLGocvpo1gsfhGV40rOjoEY
 DdvVeiJHSyLTkyrDOVarNGrwjnay1oE6AWIrkZirEPZEDZSZ4bvjkHxqqmb2P1fhgzPe
 JPEN3fprAABjkWcoytLS7N+0sqPJnb3kINR67qq4Ct7lbvWFh8ElKLdrz7uQPVY3AeO8
 GbdFyBia6aVkcbHG9dQg23zEvwlNPacL5bgblqtzOsenVU7z43DS6Kx8rfcuLZhmTbtz
 /C4PdvLTFd43wQoWZMh9GFaeiIzbUWUhi/zajrsfSBxgpYEIT7BE33KzQyT+/eV+SNLZ
 dCnQ==
X-Gm-Message-State: AOAM531miWPRY1WRGwDjpfON3120Z5imHgN/QbdXBJA0Qx9S5gDn8rNI
 XoBhEu2jYOw3D5A1tKXESXEE9g==
X-Google-Smtp-Source: ABdhPJzSWGtPCk2INREnYHV0P2JSQYvdRopa+WJ/sS5YMlaRPcHSE74y7pbs0cpiCamKX4cFMl9Z/Q==
X-Received: by 2002:adf:8b98:: with SMTP id o24mr26575236wra.156.1589894883485; 
 Tue, 19 May 2020 06:28:03 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id n9sm4092620wmj.5.2020.05.19.06.28.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 06:28:02 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue, 19 May 2020 15:27:56 +0200
Message-Id: <20200519132756.682888-1-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] dma-fence: add might_sleep annotation to _wait()
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
Cc: Oded Gabbay <oded.gabbay@gmail.com>, amd-gfx@lists.freedesktop.org,
 linux-rdma@vger.kernel.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, LKML <linux-kernel@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>, linaro-mm-sig@lists.linaro.org,
 VMware Graphics <linux-graphics-maintainer@vmware.com>,
 Ben Skeggs <bskeggs@redhat.com>, Alex Deucher <alexander.deucher@amd.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-media@vger.kernel.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

RG8gaXQgdW5jb250aW9uYWxseSwgdGhlcmUncyBhIHNlcGFyYXRlIHBlZWsgZnVuY3Rpb24gd2l0
aApkbWFfZmVuY2VfaXNfc2lnbmFsbGVkKCkgd2hpY2ggY2FuIGJlIGNhbGxlZCBmcm9tIGF0b21p
YyBjb250ZXh0LgoKdjI6IENvbnNlbnN1cyBjYWxscyBmb3IgYW4gdW5jb25kaXRpb25hbCBtaWdo
dF9zbGVlcCAoQ2hyaXMsCkNocmlzdGlhbikKCkZ1bGwgYXVkaXQ6Ci0gZG1hLWZlbmNlLmg6IFVz
ZXMgTUFYX1NDSEVEVUxFX1RJTU9VVCwgZ29vZCBjaGFuY2UgdGhpcyBzbGVlcHMKLSBkbWEtcmVz
di5jOiBUaW1lb3V0IGFsd2F5cyBhdCBsZWFzdCAxCi0gc3QtZG1hLWZlbmNlLmM6IFNhdmUgdG8g
c2xlZXAgaW4gdGVzdGNhc2VzCi0gYW1kZ3B1X2NzLmM6IEJvdGggY2FsbGVycyBhcmUgZm9yIHZh
cmlhbnRzIG9mIHRoZSB3YWl0IGlvY3RsCi0gYW1kZ3B1X2RldmljZS5jOiBUd28gY2FsbGVycyBp
biB2cmFtIHJlY292ZXIgY29kZSwgYm90aCByaWdodCBuZXh0CiAgdG8gbXV0ZXhfbG9jay4KLSBh
bWRncHVfdm0uYzogVXNlIGluIHRoZSB2bV93YWl0IGlvY3RsLCBuZXh0IHRvIF9yZXNlcnZlL3Vu
cmVzZXJ2ZQotIHJlbWFpbmluZyBmdW5jdGlvbnMgaW4gYW1kZ3B1OiBBbGwgZm9yIHRlc3RfaWIg
aW1wbGVtZW50YXRpb25zIGZvcgogIHZhcmlvdXMgZW5naW5lcywgY2FsbGVyIGZvciB0aGF0IGxv
b2tzIGFsbCBzYWZlIChkZWJ1Z2ZzLCBkcml2ZXIKICBsb2FkLCByZXNldCkKLSBldG5hdml2OiBh
bm90aGVyIHdhaXQgaW9jdGwKLSBoYWJhbmFsYWJzOiBhbm90aGVyIHdhaXQgaW9jdGwKLSBub3V2
ZWF1X2ZlbmNlLmM6IGhhcmRjb2RlZCAxNSpIWiAuLi4gZ2xvcmlvdXMKLSBub3V2ZWF1X2dlbS5j
OiBoYXJkY29kZWQgMipIWiAuLi4gc28gbm90IGV2ZW4gc3VwZXIgY29uc2lzdGVudCwgYnV0CiAg
dGhpcyBvbmUgZG9lcyBoYXZlIGEgV0FSTl9PTiA6LS8gQXQgbGVhc3QgdGhpcyBvbmUgaXMgb25s
eSBhCiAgZmFsbGJhY2sgcGF0aCBmb3Igd2hlbiBrbWFsbG9jIGZhaWxzLiBNYXliZSB0aGlzIHNo
b3VsZCBiZSBwdXQgb250bwogIHNvbWUgd29ya2VyIGxpc3QgaW5zdGVhZCwgaW5zdGVhZCBvZiBh
IHdvcmsgcGVyIHVuYW1wIC4uLgotIGk5MTUvc2VsZnRlc3RzOiBIYXJkZWNvZGVkIEhaIC8gNCBv
ciBIWiAvIDgKLSBpOTE1L2d0L3NlbGZ0ZXN0czogR29pbmcgdXAgdGhlIGNhbGxjaGFpbiBsb29r
cyBzYWZlIGxvb2tpbmcgYXQKICBuZWFyYnkgY2FsbGVycwotIGk5MTUvZ3QvaW50ZWxfZ3RfcmVx
dWVzdHMuYy4gV3JhcHBlZCBpbiBhIG11dGV4X2xvY2sKLSBpOTE1L2dlbV9pOTE1X2dlbV93YWl0
LmM6IFRoZSBpOTE1LXZlcnNpb24gd2hpY2ggaXMgY2FsbGVkIGluc3RlYWQKICBmb3IgaTkxNSBm
ZW5jZXMgYWxyZWFkeSBoYXMgYSBtaWdodF9zbGVlcCgpIGFubm90YXRpb24sIHNvIGFsbCBnb29k
CgpDYzogQWxleCBEZXVjaGVyIDxhbGV4YW5kZXIuZGV1Y2hlckBhbWQuY29tPgpDYzogTHVjYXMg
U3RhY2ggPGwuc3RhY2hAcGVuZ3V0cm9uaXguZGU+CkNjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1
bGFAbGludXguaW50ZWwuY29tPgpDYzogSm9vbmFzIExhaHRpbmVuIDxqb29uYXMubGFodGluZW5A
bGludXguaW50ZWwuY29tPgpDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29t
PgpDYzogQmVuIFNrZWdncyA8YnNrZWdnc0ByZWRoYXQuY29tPgpDYzogIlZNd2FyZSBHcmFwaGlj
cyIgPGxpbnV4LWdyYXBoaWNzLW1haW50YWluZXJAdm13YXJlLmNvbT4KQ2M6IE9kZWQgR2FiYmF5
IDxvZGVkLmdhYmJheUBnbWFpbC5jb20+CkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcK
Q2M6IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtl
cm5lbC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNv
bi5jby51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5p
bnRlbC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
ClNpZ25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgot
LS0KIGRyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYyB8IDIgKysKIDEgZmlsZSBjaGFuZ2VkLCAy
IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMg
Yi9kcml2ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKaW5kZXggOTBlZGYyYjI4MWIwLi42NTZlOWFj
MmQwMjggMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtZmVuY2UuYworKysgYi9kcml2
ZXJzL2RtYS1idWYvZG1hLWZlbmNlLmMKQEAgLTIwOCw2ICsyMDgsOCBAQCBkbWFfZmVuY2Vfd2Fp
dF90aW1lb3V0KHN0cnVjdCBkbWFfZmVuY2UgKmZlbmNlLCBib29sIGludHIsIHNpZ25lZCBsb25n
IHRpbWVvdXQpCiAJaWYgKFdBUk5fT04odGltZW91dCA8IDApKQogCQlyZXR1cm4gLUVJTlZBTDsK
IAorCW1pZ2h0X3NsZWVwKCk7CisKIAl0cmFjZV9kbWFfZmVuY2Vfd2FpdF9zdGFydChmZW5jZSk7
CiAJaWYgKGZlbmNlLT5vcHMtPndhaXQpCiAJCXJldCA9IGZlbmNlLT5vcHMtPndhaXQoZmVuY2Us
IGludHIsIHRpbWVvdXQpOwotLSAKMi4yNi4yCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9pbnRlbC1nZngK
