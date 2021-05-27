Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF8939308B
	for <lists+intel-gfx@lfdr.de>; Thu, 27 May 2021 16:13:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09C886E8CE;
	Thu, 27 May 2021 14:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com
 [IPv6:2a00:1450:4864:20::330])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 740176E071
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 14:13:45 +0000 (UTC)
Received: by mail-wm1-x330.google.com with SMTP id
 z137-20020a1c7e8f0000b02901774f2a7dc4so5210734wmc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 May 2021 07:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2pe98/RoIUXzCDVRxl/xmCe1bCIiBUSFO5AAZsF4X4c=;
 b=alPZpF7SeTpWeSbpc0ZPPsk5l/suic7NEUHpp/IXuPKsjiE7TAj7JKR0jXmPuCRpq5
 tf3Kb/XwFGPzanNdyylcNmsjcAikDvoHO1li9hoBcWerRJb+o++v8EVJ1amNiZyuM2tc
 EdkR7VvgdQL0e/ZLGzrvdEQWTe8ZswqhAPXQI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2pe98/RoIUXzCDVRxl/xmCe1bCIiBUSFO5AAZsF4X4c=;
 b=pUVCJJTgEK8v6Mzb8lqCFSe7zLJzJtwoo5DAKmt+qijbWE/RNM60jcdHe3qPk6taa8
 GOCnDm+VM/v3VHpZ18WRPees2gvv+qBFOA8krQxedrlwVl6bI/Sm1umO0oetcWex6KF+
 G23QR/FEJ2kIQb85JcdI6SFsJG3q3B+jFbS+AkrRFlMxXpVz3LUJGcWRJkkcWcokFyh/
 JVhaiiv48U07if3u7W/jiPRMjum2bqggPjk//JdlJqUKPCkBNV8YV9T9jWPzlnwW6052
 LFDBnBKEmP0l/DtJQVO4HTJRibexKiQBbekLJcl3P7X9nVQj4CJeEgP0elbeNyUvT6Ez
 CgcA==
X-Gm-Message-State: AOAM530CCz6+BU5v4ywSL84/rbdGnQNcU4nEzCUgSnGHk+Ca8+pKeAWn
 DL2bReR/ybfN6lhpMaTlIQiOOWT1MycMsg==
X-Google-Smtp-Source: ABdhPJzBO2UICZkAwLu/Rqqoi7NON5gruwxwEPx5K5AazVNBcswTvcRJR6t/GItpOQYQtf7nDo/w1g==
X-Received: by 2002:a1c:8016:: with SMTP id b22mr3674409wmd.43.1622124824100; 
 Thu, 27 May 2021 07:13:44 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id x10sm3381136wrt.65.2021.05.27.07.13.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 07:13:43 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Date: Thu, 27 May 2021 16:13:34 +0200
Message-Id: <20210527141337.3857901-2-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
References: <20210527141337.3857901-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/4] dma-buf: Require VM_PFNMAP vma for mmap
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
 Matthew Wilcox <willy@infradead.org>, Sumit Semwal <sumit.semwal@linaro.org>,
 linaro-mm-sig@lists.linaro.org, Jason Gunthorpe <jgg@ziepe.ca>,
 John Stultz <john.stultz@linaro.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Suren Baghdasaryan <surenb@google.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

dGxkcjsgRE1BIGJ1ZmZlcnMgYXJlbid0IG5vcm1hbCBtZW1vcnksIGV4cGVjdGluZyB0aGF0IHlv
dSBjYW4gdXNlCnRoZW0gbGlrZSB0aGF0IChsaWtlIGNhbGxpbmcgZ2V0X3VzZXJfcGFnZXMgd29y
a3MsIG9yIHRoYXQgdGhleSdyZQphY2NvdW50aW5nIGxpa2UgYW55IG90aGVyIG5vcm1hbCBtZW1v
cnkpIGNhbm5vdCBiZSBndWFyYW50ZWVkLgoKU2luY2Ugc29tZSB1c2Vyc3BhY2Ugb25seSBydW5z
IG9uIGludGVncmF0ZWQgZGV2aWNlcywgd2hlcmUgYWxsCmJ1ZmZlcnMgYXJlIGFjdHVhbGx5IGFs
bCByZXNpZGVudCBzeXN0ZW0gbWVtb3J5LCB0aGVyZSdzIGEgaHVnZQp0ZW1wdGF0aW9uIHRvIGFz
c3VtZSB0aGF0IGEgc3RydWN0IHBhZ2UgaXMgYWx3YXlzIHByZXNlbnQgYW5kIHVzZWFibGUKbGlr
ZSBmb3IgYW55IG1vcmUgcGFnZWNhY2hlIGJhY2tlZCBtbWFwLiBUaGlzIGhhcyB0aGUgcG90ZW50
aWFsIHRvCnJlc3VsdCBpbiBhIHVhcGkgbmlnaHRtYXJlLgoKVG8gc3RvcCB0aGlzIGdhcCByZXF1
aXJlIHRoYXQgRE1BIGJ1ZmZlciBtbWFwcyBhcmUgVk1fUEZOTUFQLCB3aGljaApibG9ja3MgZ2V0
X3VzZXJfcGFnZXMgYW5kIGFsbCB0aGUgb3RoZXIgc3RydWN0IHBhZ2UgYmFzZWQKaW5mcmFzdHJ1
Y3R1cmUgZm9yIGV2ZXJ5b25lLiBJbiBzcGlyaXQgdGhpcyBpcyB0aGUgdWFwaSBjb3VudGVycGFy
dCB0bwp0aGUga2VybmVsLWludGVybmFsIENPTkZJR19ETUFCVUZfREVCVUcuCgpNb3RpdmF0ZWQg
YnkgYSByZWNlbnQgcGF0Y2ggd2hpY2ggd2FudGVkIHRvIHN3aWNoIHRoZSBzeXN0ZW0gZG1hLWJ1
ZgpoZWFwIHRvIHZtX2luc2VydF9wYWdlIGluc3RlYWQgb2Ygdm1faW5zZXJ0X3Bmbi4KCnYyOgoK
SmFzb24gYnJvdWdodCB1cCB0aGF0IHdlIGFsc28gd2FudCB0byBndWFyYW50ZWUgdGhhdCBhbGwg
cHRlcyBoYXZlIHRoZQpwdGVfc3BlY2lhbCBmbGFnIHNldCwgdG8gY2F0Y2ggZmFzdCBnZXRfdXNl
cl9wYWdlcyAob24gYXJjaGl0ZWN0dXJlcwp0aGF0IHN1cHBvcnQgdGhpcykuIEFsbG93aW5nIFZN
X01JWEVETUFQIChsaWtlIFZNX1NQRUNJQUwgZG9lcykgd291bGQKc3RpbGwgYWxsb3cgdm1faW5z
ZXJ0X3BhZ2UsIGJ1dCBsaW1pdGluZyB0byBWTV9QRk5NQVAgd2lsbCBjYXRjaCB0aGF0LgoKRnJv
bSBhdWRpdGluZyB0aGUgdmFyaW91cyBmdW5jdGlvbnMgdG8gaW5zZXJ0IHBmbiBwdGUgZW50aXJl
cwoodm1faW5zZXJ0X3Bmbl9wcm90LCByZW1hcF9wZm5fcmFuZ2UgYW5kIGFsbCBpdCdzIGNhbGxl
cnMgbGlrZQpkbWFfbW1hcF93YykgaXQgbG9va3MgbGlrZSBWTV9QRk5NQVAgaXMgYWxyZWFkeSBy
ZXF1aXJlZCBhbnl3YXksIHNvCnRoaXMgc2hvdWxkIGJlIHRoZSBjb3JyZWN0IGZsYWcgdG8gY2hl
Y2sgZm9yLgoKUmVmZXJlbmNlczogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC9DQUtNSzd1
SGkrbUcwejBIVW1OdDEzUUNDdnV0dVJWanBjUjBOalJMMTJrLVdiV3prUmdAbWFpbC5nbWFpbC5j
b20vCkFja2VkLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+
CkNjOiBKYXNvbiBHdW50aG9ycGUgPGpnZ0B6aWVwZS5jYT4KQ2M6IFN1cmVuIEJhZ2hkYXNhcnlh
biA8c3VyZW5iQGdvb2dsZS5jb20+CkNjOiBNYXR0aGV3IFdpbGNveCA8d2lsbHlAaW5mcmFkZWFk
Lm9yZz4KQ2M6IEpvaG4gU3R1bHR6IDxqb2huLnN0dWx0ekBsaW5hcm8ub3JnPgpTaWduZWQtb2Zm
LWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGludGVsLmNvbT4KQ2M6IFN1bWl0IFNl
bXdhbCA8c3VtaXQuc2Vtd2FsQGxpbmFyby5vcmc+CkNjOiAiQ2hyaXN0aWFuIEvDtm5pZyIgPGNo
cmlzdGlhbi5rb2VuaWdAYW1kLmNvbT4KQ2M6IGxpbnV4LW1lZGlhQHZnZXIua2VybmVsLm9yZwpD
YzogbGluYXJvLW1tLXNpZ0BsaXN0cy5saW5hcm8ub3JnCi0tClJlc2VuZGluZyB0aGlzIHNvIEkg
Y2FuIHRlc3QgdGhlIG5leHQgdHdvIHBhdGNoZXMgZm9yIHZnZW0vc2htZW0gaW4KaW50ZWwtZ2Z4
LWNpLiBMYXN0IHJvdW5kIGZhaWxlZCBzb21laG93LCBidXQgSSBjYW4ndCByZXBybyB0aGF0IGF0
IGFsbApsb2NhbGx5IGhlcmUuCgpObyBpbW1lZGlhdGUgcGxhbnMgdG8gbWVyZ2UgdGhpcyBwYXRj
aCBoZXJlIHNpbmNlIHR0bSBpc24ndCBhZGRyZXNzZWQKeWV0IChhbmQgdGhlcmUgd2UgaGF2ZSB0
aGUgaHVnZXB0ZSBpc3N1ZSwgZm9yIHdoaWNoIEkgZG9uJ3QgdGhpbmsgd2UKaGF2ZSBhIGNsZWFy
IGNvbnNlbnN1cyB5ZXQpLgotRGFuaWVsCi0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8
IDE1ICsrKysrKysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDIg
ZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyBiL2Ry
aXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKaW5kZXggZWFkZDFlYWEyZmI1Li5kZGE1ODNmYjFmMDMg
MTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZG1hLWJ1Zi9kbWEtYnVmLmMKKysrIGIvZHJpdmVycy9kbWEt
YnVmL2RtYS1idWYuYwpAQCAtMTI3LDYgKzEyNyw3IEBAIHN0YXRpYyBzdHJ1Y3QgZmlsZV9zeXN0
ZW1fdHlwZSBkbWFfYnVmX2ZzX3R5cGUgPSB7CiBzdGF0aWMgaW50IGRtYV9idWZfbW1hcF9pbnRl
cm5hbChzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEpCiB7CiAJ
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZjsKKwlpbnQgcmV0OwogCiAJaWYgKCFpc19kbWFfYnVmX2Zp
bGUoZmlsZSkpCiAJCXJldHVybiAtRUlOVkFMOwpAQCAtMTQyLDcgKzE0MywxMSBAQCBzdGF0aWMg
aW50IGRtYV9idWZfbW1hcF9pbnRlcm5hbChzdHJ1Y3QgZmlsZSAqZmlsZSwgc3RydWN0IHZtX2Fy
ZWFfc3RydWN0ICp2bWEpCiAJICAgIGRtYWJ1Zi0+c2l6ZSA+PiBQQUdFX1NISUZUKQogCQlyZXR1
cm4gLUVJTlZBTDsKIAotCXJldHVybiBkbWFidWYtPm9wcy0+bW1hcChkbWFidWYsIHZtYSk7CisJ
cmV0ID0gZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOworCisJV0FSTl9PTighKHZtYS0+
dm1fZmxhZ3MgJiBWTV9QRk5NQVApKTsKKworCXJldHVybiByZXQ7CiB9CiAKIHN0YXRpYyBsb2Zm
X3QgZG1hX2J1Zl9sbHNlZWsoc3RydWN0IGZpbGUgKmZpbGUsIGxvZmZfdCBvZmZzZXQsIGludCB3
aGVuY2UpCkBAIC0xMjQ0LDYgKzEyNDksOCBAQCBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2Vu
ZF9jcHVfYWNjZXNzKTsKIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJCSB1bnNpZ25lZCBsb25nIHBnb2ZmKQogewor
CWludCByZXQ7CisKIAlpZiAoV0FSTl9PTighZG1hYnVmIHx8ICF2bWEpKQogCQlyZXR1cm4gLUVJ
TlZBTDsKIApAQCAtMTI2NCw3ICsxMjcxLDExIEBAIGludCBkbWFfYnVmX21tYXAoc3RydWN0IGRt
YV9idWYgKmRtYWJ1Ziwgc3RydWN0IHZtX2FyZWFfc3RydWN0ICp2bWEsCiAJdm1hX3NldF9maWxl
KHZtYSwgZG1hYnVmLT5maWxlKTsKIAl2bWEtPnZtX3Bnb2ZmID0gcGdvZmY7CiAKLQlyZXR1cm4g
ZG1hYnVmLT5vcHMtPm1tYXAoZG1hYnVmLCB2bWEpOworCXJldCA9IGRtYWJ1Zi0+b3BzLT5tbWFw
KGRtYWJ1Ziwgdm1hKTsKKworCVdBUk5fT04oISh2bWEtPnZtX2ZsYWdzICYgVk1fUEZOTUFQKSk7
CisKKwlyZXR1cm4gcmV0OwogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9tbWFwKTsKIAot
LSAKMi4zMS4wCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpJbnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcK
aHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
