Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8058C2178F8
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jul 2020 22:14:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B93189498;
	Tue,  7 Jul 2020 20:13:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 377AD8945A
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jul 2020 20:13:08 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id l2so481953wmf.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 07 Jul 2020 13:13:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8vhBO2QXji8rIT2yf3WDABSBN2A7UpHMa5cTtCVfx9g=;
 b=SI+A2Elkc84jnDWNJKdyIiWg94QLHhdHfRic7YA64NrB2zUjcHaawvIqElpfiGS5UF
 vFS/cvCNncCF3VRb1GLb2SQUTphEzGthiR0Q3gqWonj/oSVCvkQT/b8Q7NKuEISQBx4V
 XZfDuKa8LNkQLyxNGvqdeV8x2KvGAtj5Li8Uc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8vhBO2QXji8rIT2yf3WDABSBN2A7UpHMa5cTtCVfx9g=;
 b=tdB+UfVrtS6wHGpOitq+41MT6pnF+fmAs+ksPcO2R0U1Hd0J9lk63WlPpHS4QSKzGn
 RIY1h+Tsae1xGLOwC8Om8mr4l3u65DhmNNi44PELWOmp44tdbuF9f0f88hUT141GemY8
 +BBEaBYuxbWcDSyqXW7hn2XSz0PsItxZa1WQDfB0htAVJFOTzLmIKbDnv4owd7PUL280
 JLnCW6Npucqm3oqBR1TUhl/GiduHiN4JUs0RZtbPOJQKre0PJNkxF5eC9Nen6bDvV4qs
 FBUv63wejOjELNj9DyaYNgJSyJLK4Eh+TkzI1aa1jpVNJ1QwX2+2kw/bA0r2n+3BA6Rr
 FLww==
X-Gm-Message-State: AOAM532XV1cKDXtW8UpF3V94ZjppquYhaJhCb79P6WMzT6uV1A2KuxSP
 +LAVOezf4YlLGmRaKSxDer/FaA==
X-Google-Smtp-Source: ABdhPJz3xBYLJDOwYA2n2XZ64XK2kngCSUfd1JWeXQJzfB/NbmdXimIF/UOKC7vdM6lhx0lkZoAdKg==
X-Received: by 2002:a1c:7c16:: with SMTP id x22mr5594163wmc.76.1594152786931; 
 Tue, 07 Jul 2020 13:13:06 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id q7sm2515262wra.56.2020.07.07.13.13.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jul 2020 13:13:06 -0700 (PDT)
From: Daniel Vetter <daniel.vetter@ffwll.ch>
To: DRI Development <dri-devel@lists.freedesktop.org>
Date: Tue,  7 Jul 2020 22:12:25 +0200
Message-Id: <20200707201229.472834-22-daniel.vetter@ffwll.ch>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
References: <20200707201229.472834-1-daniel.vetter@ffwll.ch>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 21/25] drm/amdgpu/dc: Stop dma_resv_lock
 inversion in commit_tail
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

VHJ5aW5nIHRvIGdyYWIgZG1hX3Jlc3ZfbG9jayB3aGlsZSBpbiBjb21taXRfdGFpbCBiZWZvcmUg
d2UndmUgZG9uZQphbGwgdGhlIGNvZGUgdGhhdCBsZWFkcyB0byB0aGUgZXZlbnR1YWwgc2lnbmFs
bGluZyBvZiB0aGUgdmJsYW5rIGV2ZW50Cih3aGljaCBjYW4gYmUgYSBkbWFfZmVuY2UpIGlzIGRl
YWRsb2NrLXkuIERvbid0IGRvIHRoYXQuCgpIZXJlIHRoZSBzb2x1dGlvbiBpcyBlYXN5IGJlY2F1
c2UganVzdCBncmFiYmluZyBsb2NrcyB0byByZWFkCnNvbWV0aGluZyByYWNlcyBhbnl3YXkuIFdl
IGRvbid0IG5lZWQgdG8gYm90aGVyLCBSRUFEX09OQ0UgaXMKZXF1aXZhbGVudC4gQW5kIGF2b2lk
cyB0aGUgbG9ja2luZyBpc3N1ZS4KCkNjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKQ2M6
IGxpbmFyby1tbS1zaWdAbGlzdHMubGluYXJvLm9yZwpDYzogbGludXgtcmRtYUB2Z2VyLmtlcm5l
bC5vcmcKQ2M6IGFtZC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnCkNjOiBDaHJpcyBXaWxzb24gPGNocmlzQGNocmlzLXdpbHNvbi5j
by51az4KQ2M6IE1hYXJ0ZW4gTGFua2hvcnN0IDxtYWFydGVuLmxhbmtob3JzdEBsaW51eC5pbnRl
bC5jb20+CkNjOiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFtZC5jb20+ClNp
Z25lZC1vZmYtYnk6IERhbmllbCBWZXR0ZXIgPGRhbmllbC52ZXR0ZXJAaW50ZWwuY29tPgotLS0K
IGRyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgfCAxMCAr
KysrKysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlzcGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMgYi9kcml2
ZXJzL2dwdS9kcm0vYW1kL2Rpc3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCmluZGV4IDNkNDFl
ZGRjNzkwOC4uZDZiYjg3NmE3NGU1IDEwMDY0NAotLS0gYS9kcml2ZXJzL2dwdS9kcm0vYW1kL2Rp
c3BsYXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5jCisrKyBiL2RyaXZlcnMvZ3B1L2RybS9hbWQvZGlz
cGxheS9hbWRncHVfZG0vYW1kZ3B1X2RtLmMKQEAgLTY5NDksNyArNjk0OSwxMSBAQCBzdGF0aWMg
dm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5lcyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3Rh
dGUsCiAJCSAqIGV4cGxpY2l0bHkgb24gZmVuY2VzIGluc3RlYWQKIAkJICogYW5kIGluIGdlbmVy
YWwgc2hvdWxkIGJlIGNhbGxlZCBmb3IKIAkJICogYmxvY2tpbmcgY29tbWl0IHRvIGFzIHBlciBm
cmFtZXdvcmsgaGVscGVycworCQkgKgorCQkgKiBZZXMsIHRoaXMgZGVhZGxvY2tzLCBzaW5jZSB5
b3UncmUgY2FsbGluZyBkbWFfcmVzdl9sb2NrIGluIGEKKwkJICogcGF0aCB0aGF0IGxlYWRzIHRv
IGEgZG1hX2ZlbmNlX3NpZ25hbCgpLiBEb24ndCBkbyB0aGF0LgogCQkgKi8KKyNpZiAwCiAJCXIg
PSBhbWRncHVfYm9fcmVzZXJ2ZShhYm8sIHRydWUpOwogCQlpZiAodW5saWtlbHkociAhPSAwKSkK
IAkJCURSTV9FUlJPUigiZmFpbGVkIHRvIHJlc2VydmUgYnVmZmVyIGJlZm9yZSBmbGlwXG4iKTsK
QEAgLTY5NTksNiArNjk2MywxMiBAQCBzdGF0aWMgdm9pZCBhbWRncHVfZG1fY29tbWl0X3BsYW5l
cyhzdHJ1Y3QgZHJtX2F0b21pY19zdGF0ZSAqc3RhdGUsCiAJCXRtel9zdXJmYWNlID0gYW1kZ3B1
X2JvX2VuY3J5cHRlZChhYm8pOwogCiAJCWFtZGdwdV9ib191bnJlc2VydmUoYWJvKTsKKyNlbmRp
ZgorCQkvKgorCQkgKiB0aGlzIHJhY2VzIGFueXdheSwgc28gUkVBRF9PTkNFIGlzbid0IGFueSBi
ZXR0ZXIgb3Igd29yc2UKKwkJICogdGhhbiB0aGUgc3R1ZmYgYWJvdmUuIEV4Y2VwdCB0aGUgc3R1
ZmYgYWJvdmUgY2FuIGRlYWRsb2NrLgorCQkgKi8KKwkJdGlsaW5nX2ZsYWdzID0gUkVBRF9PTkNF
KGFiby0+dGlsaW5nX2ZsYWdzKTsKIAogCQlmaWxsX2RjX3BsYW5lX2luZm9fYW5kX2FkZHIoCiAJ
CQlkbS0+YWRldiwgbmV3X3BsYW5lX3N0YXRlLCB0aWxpbmdfZmxhZ3MsCi0tIAoyLjI3LjAKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
