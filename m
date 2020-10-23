Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2640E296ECF
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 14:23:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36F076E580;
	Fri, 23 Oct 2020 12:22:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com
 [IPv6:2a00:1450:4864:20::444])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78FAE6E578
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 12:22:47 +0000 (UTC)
Received: by mail-wr1-x444.google.com with SMTP id e17so1555874wru.12
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 05:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Pt7r3r8KzR5b5qiGeAc9wam0F2FH3YbYbdtTLI7+5pA=;
 b=J1ovvaeRgAyxo4+fhyaimEa7i+0LS95i5IhmBF2STfEkqG/VqrnAk7NJv/NWmihpPf
 X7Np5ypMJj57D3bg6y5M89f/D5DBHFvI4gBX/jBw4SJGMzN43CprGiEkGtFlLBdX8fbV
 vsahdqW51+kNqRYjTRhqxtPo2IT1e1Su+fPVA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Pt7r3r8KzR5b5qiGeAc9wam0F2FH3YbYbdtTLI7+5pA=;
 b=Y7nAqc7GTBgZ/WeLqN0LZTOX5HHZe27AtZqxytybaILe0pD2sWF1njntFC7m3YyCg4
 QHjPrP8mcPyKK1A4Qr65jx9oyjMU8Oj3DsddfXcHOUs3FBWu4pebS94ZHAb56h6qfRZY
 6RZCptvcf9ZqS9IlH2Hlfri06ZNqfntnQPtlGtTjcl0Frg2wooTGjt3OOfxyMgVpy1O5
 AMhPwv2IfP9n2pvZxfpcsf3OPhgCT4vMWh6N4EBpIj5VTrSYo0NOdonXbI203HEqdckT
 fCxPlXp0GEdYHqH8c0q9kBu3J12Bd+Myc3tROjP5GUR9THYVM+M6jR6jI36uPBvrh1OY
 jCZA==
X-Gm-Message-State: AOAM531Ll6LPfC5+p6aFZhNTBuS2cndFfM/Sfw5Q6434+SHaW6HW8kn3
 MkHy4+wGu2mMkmoxjPuEtwHQsA==
X-Google-Smtp-Source: ABdhPJzeL0b3o7SdVpsqso58ueQCQULN8UwDSO9Ve2MQd7IHgs3k/2/xklwW61HBtOOF7k0eWuT9pw==
X-Received: by 2002:a5d:4ccd:: with SMTP id c13mr2315042wrt.221.1603455766129; 
 Fri, 23 Oct 2020 05:22:46 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id y4sm3056484wrp.74.2020.10.23.05.22.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Oct 2020 05:22:45 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Fri, 23 Oct 2020 14:21:32 +0200
Message-Id: <20201023122216.2373294-21-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
References: <20201021163242.1458885-1-daniel.vetter@ffwll.ch>
 <20201023122216.2373294-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/65] drm/amdgpu: use dma-fence annotations for
 gpu reset code
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
 linaro-mm-sig@lists.linaro.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VG8gaW1wcm92ZSBjb3ZlcmFnZSBhbHNvIGFubm90YXRlIHRoZSBncHUgcmVzZXQgY29kZSBpdHNl
bGYsIHNpbmNlCnRoYXQncyBjYWxsZWQgZnJvbSBvdGhlciBwbGFjZXMgdGhhbiBkcm0vc2NoZWR1
bGVyICh3aGljaCBpcyBhbHJlYWR5CmFubm90YXRlZCkuIEFubm90YXRpb25zIG5lc3RzLCBzbyB0
aGlzIGRvZXNuJ3QgYnJlYWsgYW55dGhpbmcsIGFuZAphbGxvd3MgZWFzaWVyIHRlc3RpbmcuCgpD
YzogbGludXgtbWVkaWFAdmdlci5rZXJuZWwub3JnCkNjOiBsaW5hcm8tbW0tc2lnQGxpc3RzLmxp
bmFyby5vcmcKQ2M6IGxpbnV4LXJkbWFAdmdlci5rZXJuZWwub3JnCkNjOiBhbWQtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZwpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpDYzog
Q2hyaXMgV2lsc29uIDxjaHJpc0BjaHJpcy13aWxzb24uY28udWs+CkNjOiBNYWFydGVuIExhbmto
b3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPgpDYzogQ2hyaXN0aWFuIEvD
tm5pZyA8Y2hyaXN0aWFuLmtvZW5pZ0BhbWQuY29tPgpTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0
dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPgotLS0KIGRyaXZlcnMvZ3B1L2RybS9hbWQvYW1k
Z3B1L2FtZGdwdV9kZXZpY2UuYyB8IDExICsrKysrKysrLS0tCiAxIGZpbGUgY2hhbmdlZCwgOCBp
bnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1
L2FtZGdwdV9kZXZpY2UuYwppbmRleCBlOGI0MTc1NmM5ZjkuLjAyOWEwMjZlY2ZhOSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2FtZC9hbWRncHUvYW1kZ3B1X2RldmljZS5jCisrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9hbWQvYW1kZ3B1L2FtZGdwdV9kZXZpY2UuYwpAQCAtNDQ5Niw2ICs0NDk2
LDkgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2Ug
KmFkZXYsCiAJaW50IGksIHIgPSAwOwogCWJvb2wgbmVlZF9lbWVyZ2VuY3lfcmVzdGFydCA9IGZh
bHNlOwogCWJvb2wgYXVkaW9fc3VzcGVuZGVkID0gZmFsc2U7CisJYm9vbCBmZW5jZV9jb29raWU7
CisKKwlmZW5jZV9jb29raWUgPSBkbWFfZmVuY2VfYmVnaW5fc2lnbmFsbGluZygpOwogCiAJLyoq
CiAJICogU3BlY2lhbCBjYXNlOiBSQVMgdHJpZ2dlcmVkIGFuZCBmdWxsIHJlc2V0IGlzbid0IHN1
cHBvcnRlZApAQCAtNDUyOSw2ICs0NTMyLDcgQEAgaW50IGFtZGdwdV9kZXZpY2VfZ3B1X3JlY292
ZXIoc3RydWN0IGFtZGdwdV9kZXZpY2UgKmFkZXYsCiAJCQlEUk1fSU5GTygiQmFpbGluZyBvbiBU
RFIgZm9yIHNfam9iOiVsbHgsIGhpdmU6ICVsbHggYXMgYW5vdGhlciBhbHJlYWR5IGluIHByb2dy
ZXNzIiwKIAkJCQlqb2IgPyBqb2ItPmJhc2UuaWQgOiAtMSwgaGl2ZS0+aGl2ZV9pZCk7CiAJCQlh
bWRncHVfcHV0X3hnbWlfaGl2ZShoaXZlKTsKKwkJCWRtYV9mZW5jZV9lbmRfc2lnbmFsbGluZyhm
ZW5jZV9jb29raWUpOwogCQkJcmV0dXJuIDA7CiAJCX0KIAkJbXV0ZXhfbG9jaygmaGl2ZS0+aGl2
ZV9sb2NrKTsKQEAgLTQ1NDEsOCArNDU0NSwxMCBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVj
b3ZlcihzdHJ1Y3QgYW1kZ3B1X2RldmljZSAqYWRldiwKIAkgKi8KIAlJTklUX0xJU1RfSEVBRCgm
ZGV2aWNlX2xpc3QpOwogCWlmIChhZGV2LT5nbWMueGdtaS5udW1fcGh5c2ljYWxfbm9kZXMgPiAx
KSB7Ci0JCWlmICghaGl2ZSkKKwkJaWYgKCFoaXZlKSB7CisJCQlkbWFfZmVuY2VfZW5kX3NpZ25h
bGxpbmcoZmVuY2VfY29va2llKTsKIAkJCXJldHVybiAtRU5PREVWOworCQl9CiAJCWlmICghbGlz
dF9pc19maXJzdCgmYWRldi0+Z21jLnhnbWkuaGVhZCwgJmhpdmUtPmRldmljZV9saXN0KSkKIAkJ
CWxpc3Rfcm90YXRlX3RvX2Zyb250KCZhZGV2LT5nbWMueGdtaS5oZWFkLCAmaGl2ZS0+ZGV2aWNl
X2xpc3QpOwogCQlkZXZpY2VfbGlzdF9oYW5kbGUgPSAmaGl2ZS0+ZGV2aWNlX2xpc3Q7CkBAIC00
NTU2LDggKzQ1NjIsNiBAQCBpbnQgYW1kZ3B1X2RldmljZV9ncHVfcmVjb3ZlcihzdHJ1Y3QgYW1k
Z3B1X2RldmljZSAqYWRldiwKIAkJaWYgKCFhbWRncHVfZGV2aWNlX2xvY2tfYWRldih0bXBfYWRl
diwgaGl2ZSkpIHsKIAkJCWRldl9pbmZvKHRtcF9hZGV2LT5kZXYsICJCYWlsaW5nIG9uIFREUiBm
b3Igc19qb2I6JWxseCwgYXMgYW5vdGhlciBhbHJlYWR5IGluIHByb2dyZXNzIiwKIAkJCQkgIGpv
YiA/IGpvYi0+YmFzZS5pZCA6IC0xKTsKLQkJCXIgPSAwOwotCQkJZ290byBza2lwX3JlY292ZXJ5
OwogCQl9CiAKIAkJLyoKQEAgLTQ2OTksNiArNDcwMyw3IEBAIGludCBhbWRncHVfZGV2aWNlX2dw
dV9yZWNvdmVyKHN0cnVjdCBhbWRncHVfZGV2aWNlICphZGV2LAogCiAJaWYgKHIpCiAJCWRldl9p
bmZvKGFkZXYtPmRldiwgIkdQVSByZXNldCBlbmQgd2l0aCByZXQgPSAlZFxuIiwgcik7CisJZG1h
X2ZlbmNlX2VuZF9zaWduYWxsaW5nKGZlbmNlX2Nvb2tpZSk7CiAJcmV0dXJuIHI7CiB9CiAKLS0g
CjIuMjguMAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
SW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
