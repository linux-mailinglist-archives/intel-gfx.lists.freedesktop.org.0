Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E9654875AE
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Aug 2019 11:18:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2788A6EDC0;
	Fri,  9 Aug 2019 09:18:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com
 [IPv6:2a00:1450:4864:20::344])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E44406E6F2;
 Wed,  7 Aug 2019 13:53:17 +0000 (UTC)
Received: by mail-wm1-x344.google.com with SMTP id s15so125911wmj.3;
 Wed, 07 Aug 2019 06:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=d8jxvxkDjIwnMjhFTSMRgIlDZ9fe5+CUfRdDQUfjjTk=;
 b=guOtJIVPHlK5kElhWKglHIxNrCkpVycoMXXNb9pkoeQak51au/tQ78+M2vn81oOg+I
 xJhHdzF0UQA/KS/b5sD1T2qwHGUZmZ/PmT6YEhkCo598FqDAI17lO+6jeHy5SaKrPlEA
 +0NFuBXMRptjFlZ7WfkpwH2AumSnPafc9MCNwoJuBA9pyybaXBWrxFmSxYZSOWxaQiVE
 iqb9zskkclver2T0lEq8fd2rgqRexQzHigBRSaGktRnzNME1GTACo0x/AsyebidOX0r7
 3ojmzTtnJP4Dbm9eoeqTbziXJ44dF+g9hjo3nEnhKFKHy3LQ5r+esWo5F7uz2UGxliB3
 uGfg==
X-Gm-Message-State: APjAAAWD4gVy/jnlT9iRyIAhkQM38BVGUhaQFPFO9HvwRV1VqO/5stxd
 p5ja8hMH5XLZ+tioZXWAM2F7yolG
X-Google-Smtp-Source: APXvYqx1KiSb9cYKBbrhej0Vgz0jnW2VjWvV6uIAlyHQqbIHWZaUNxdeATR3xgB8lWmnJ0j95IYz6A==
X-Received: by 2002:a1c:c14b:: with SMTP id r72mr100474wmf.166.1565185996096; 
 Wed, 07 Aug 2019 06:53:16 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:645a:5b76:280d:27be])
 by smtp.gmail.com with ESMTPSA id o11sm33095wmh.37.2019.08.07.06.53.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 06:53:15 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, linaro-mm-sig@lists.linaro.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk
Date: Wed,  7 Aug 2019 15:53:12 +0200
Message-Id: <20190807135312.1730-4-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807135312.1730-1-christian.koenig@amd.com>
References: <20190807135312.1730-1-christian.koenig@amd.com>
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 09 Aug 2019 09:15:44 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=d8jxvxkDjIwnMjhFTSMRgIlDZ9fe5+CUfRdDQUfjjTk=;
 b=l6OK5z62ltfC1P3dB6qeIuXpK6RqmJIHkQUvgjcBSF1fmhHGS7kL5BDOLPnoYDs3d1
 KWfbh5hb3LeYG+b3amKoxASddIKvRfUfCs4YKmxlDB2V75YE24ibf4fvzoubIG9vrALM
 bDOeZtsNIMeXxZFoGO/0J08FnSh3wUTCmrHS/mQ4oHaAQVbqcfPGDmNFPXmPOA3Z/z8B
 1GhQdoAEKjQl2/7BXvpasLh4Yli6pMyLtlT7dEgbuxjds8ur8tgeKEYfFBox7crw4T5/
 rY93oItJ/ronaQLnWozsFXhLRv72jPjOJbOc2NRxOQpU99sy1tKBE6vr0WHTbSNHjB9k
 SPkw==
Subject: [Intel-gfx] [PATCH 4/4] dma-buf: nuke reservation_object seq number
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhlIG9ubHkgcmVtYWluaW5nIHVzZSBmb3IgdGhpcyBpcyB0byBwcm90ZWN0IGFnYWluc3Qgc2V0
dGluZyBhIG5ldyBleGNsdXNpdmUKZmVuY2Ugd2hpbGUgd2UgZ3JhYiBib3RoIGV4Y2x1c2l2ZSBh
bmQgc2hhcmVkLiBUaGF0IGNhbiBhbHNvIGJlIGFyY2hpdmVkIGJ5Cmxvb2tpbmcgaWYgdGhlIGV4
Y2x1c2l2ZSBmZW5jZSBoYXMgY2hhbmdlZCBvciBub3QgYWZ0ZXIgY29tcGxldGluZyB0aGUKb3Bl
cmF0aW9uLgoKdjI6IHN3aXRjaCBzZXR0aW5nIGV4Y2wgZmVuY2UgdG8gcmN1X2Fzc2lnbl9wb2lu
dGVyCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3RpYW4ua29lbmlnQGFt
ZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMgfCAyNCArKysrKy0tLS0t
LS0tLS0tLS0tLS0tLS0KIGluY2x1ZGUvbGludXgvcmVzZXJ2YXRpb24uaCAgIHwgIDkgKystLS0t
LS0tCiAyIGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMjYgZGVsZXRpb25zKC0pCgpk
aWZmIC0tZ2l0IGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMgYi9kcml2ZXJzL2RtYS1i
dWYvcmVzZXJ2YXRpb24uYwppbmRleCA5MGJjNmVmMDM1OTguLmY3ZjRhMDg1OGMyYSAxMDA2NDQK
LS0tIGEvZHJpdmVycy9kbWEtYnVmL3Jlc2VydmF0aW9uLmMKKysrIGIvZHJpdmVycy9kbWEtYnVm
L3Jlc2VydmF0aW9uLmMKQEAgLTQ5LDEyICs0OSw2IEBACiBERUZJTkVfV0RfQ0xBU1MocmVzZXJ2
YXRpb25fd3dfY2xhc3MpOwogRVhQT1JUX1NZTUJPTChyZXNlcnZhdGlvbl93d19jbGFzcyk7CiAK
LXN0cnVjdCBsb2NrX2NsYXNzX2tleSByZXNlcnZhdGlvbl9zZXFjb3VudF9jbGFzczsKLUVYUE9S
VF9TWU1CT0wocmVzZXJ2YXRpb25fc2VxY291bnRfY2xhc3MpOwotCi1jb25zdCBjaGFyIHJlc2Vy
dmF0aW9uX3NlcWNvdW50X3N0cmluZ1tdID0gInJlc2VydmF0aW9uX3NlcWNvdW50IjsKLUVYUE9S
VF9TWU1CT0wocmVzZXJ2YXRpb25fc2VxY291bnRfc3RyaW5nKTsKLQogLyoqCiAgKiByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdF9hbGxvYyAtIGFsbG9jYXRlIGZlbmNlIGxpc3QKICAqIEBzaGFyZWRf
bWF4OiBudW1iZXIgb2YgZmVuY2VzIHdlIG5lZWQgc3BhY2UgZm9yCkBAIC0xMDMsOSArOTcsNiBA
QCBzdGF0aWMgdm9pZCByZXNlcnZhdGlvbl9vYmplY3RfbGlzdF9mcmVlKHN0cnVjdCByZXNlcnZh
dGlvbl9vYmplY3RfbGlzdCAqbGlzdCkKIHZvaWQgcmVzZXJ2YXRpb25fb2JqZWN0X2luaXQoc3Ry
dWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqKQogewogCXd3X211dGV4X2luaXQoJm9iai0+bG9j
aywgJnJlc2VydmF0aW9uX3d3X2NsYXNzKTsKLQotCV9fc2VxY291bnRfaW5pdCgmb2JqLT5zZXEs
IHJlc2VydmF0aW9uX3NlcWNvdW50X3N0cmluZywKLQkJCSZyZXNlcnZhdGlvbl9zZXFjb3VudF9j
bGFzcyk7CiAJUkNVX0lOSVRfUE9JTlRFUihvYmotPmZlbmNlLCBOVUxMKTsKIAlSQ1VfSU5JVF9Q
T0lOVEVSKG9iai0+ZmVuY2VfZXhjbCwgTlVMTCk7CiB9CkBAIC0yODIsMTIgKzI3MywxMCBAQCB2
b2lkIHJlc2VydmF0aW9uX29iamVjdF9hZGRfZXhjbF9mZW5jZShzdHJ1Y3QgcmVzZXJ2YXRpb25f
b2JqZWN0ICpvYmosCiAJCWRtYV9mZW5jZV9nZXQoZmVuY2UpOwogCiAJcHJlZW1wdF9kaXNhYmxl
KCk7Ci0Jd3JpdGVfc2VxY291bnRfYmVnaW4oJm9iai0+c2VxKTsKLQkvKiB3cml0ZV9zZXFjb3Vu
dF9iZWdpbiBwcm92aWRlcyB0aGUgbmVjZXNzYXJ5IG1lbW9yeSBiYXJyaWVyICovCi0JUkNVX0lO
SVRfUE9JTlRFUihvYmotPmZlbmNlX2V4Y2wsIGZlbmNlKTsKKwlyY3VfYXNzaWduX3BvaW50ZXIo
b2JqLT5mZW5jZV9leGNsLCBmZW5jZSk7CisJLyogcG9pbnRlciB1cGRhdGUgbXVzdCBiZSB2aXNp
YmxlIGJlZm9yZSB3ZSBtb2RpZnkgdGhlIHNoYXJlZF9jb3VudCAqLwogCWlmIChvbGQpCi0JCW9s
ZC0+c2hhcmVkX2NvdW50ID0gMDsKLQl3cml0ZV9zZXFjb3VudF9lbmQoJm9iai0+c2VxKTsKKwkJ
c21wX3N0b3JlX21iKG9sZC0+c2hhcmVkX2NvdW50LCAwKTsKIAlwcmVlbXB0X2VuYWJsZSgpOwog
CiAJLyogaW5wbGFjZSB1cGRhdGUsIG5vIHNoYXJlZCBmZW5jZXMgKi8KQEAgLTM2OCwxMSArMzU3
LDggQEAgaW50IHJlc2VydmF0aW9uX29iamVjdF9jb3B5X2ZlbmNlcyhzdHJ1Y3QgcmVzZXJ2YXRp
b25fb2JqZWN0ICpkc3QsCiAJb2xkID0gcmVzZXJ2YXRpb25fb2JqZWN0X2dldF9leGNsKGRzdCk7
CiAKIAlwcmVlbXB0X2Rpc2FibGUoKTsKLQl3cml0ZV9zZXFjb3VudF9iZWdpbigmZHN0LT5zZXEp
OwotCS8qIHdyaXRlX3NlcWNvdW50X2JlZ2luIHByb3ZpZGVzIHRoZSBuZWNlc3NhcnkgbWVtb3J5
IGJhcnJpZXIgKi8KLQlSQ1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2VfZXhjbCwgbmV3KTsKLQlS
Q1VfSU5JVF9QT0lOVEVSKGRzdC0+ZmVuY2UsIGRzdF9saXN0KTsKLQl3cml0ZV9zZXFjb3VudF9l
bmQoJmRzdC0+c2VxKTsKKwlyY3VfYXNzaWduX3BvaW50ZXIoZHN0LT5mZW5jZV9leGNsLCBuZXcp
OworCXJjdV9hc3NpZ25fcG9pbnRlcihkc3QtPmZlbmNlLCBkc3RfbGlzdCk7CiAJcHJlZW1wdF9l
bmFibGUoKTsKIAogCXJlc2VydmF0aW9uX29iamVjdF9saXN0X2ZyZWUoc3JjX2xpc3QpOwpkaWZm
IC0tZ2l0IGEvaW5jbHVkZS9saW51eC9yZXNlcnZhdGlvbi5oIGIvaW5jbHVkZS9saW51eC9yZXNl
cnZhdGlvbi5oCmluZGV4IDA0NGE1Y2Q0YWY1MC4uZmQyOWJhYWQwYmUzIDEwMDY0NAotLS0gYS9p
bmNsdWRlL2xpbnV4L3Jlc2VydmF0aW9uLmgKKysrIGIvaW5jbHVkZS9saW51eC9yZXNlcnZhdGlv
bi5oCkBAIC00Niw4ICs0Niw2IEBACiAjaW5jbHVkZSA8bGludXgvcmN1cGRhdGUuaD4KIAogZXh0
ZXJuIHN0cnVjdCB3d19jbGFzcyByZXNlcnZhdGlvbl93d19jbGFzczsKLWV4dGVybiBzdHJ1Y3Qg
bG9ja19jbGFzc19rZXkgcmVzZXJ2YXRpb25fc2VxY291bnRfY2xhc3M7Ci1leHRlcm4gY29uc3Qg
Y2hhciByZXNlcnZhdGlvbl9zZXFjb3VudF9zdHJpbmdbXTsKIAogLyoqCiAgKiBzdHJ1Y3QgcmVz
ZXJ2YXRpb25fb2JqZWN0X2xpc3QgLSBhIGxpc3Qgb2Ygc2hhcmVkIGZlbmNlcwpAQCAtNzEsNyAr
NjksNiBAQCBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgewogICovCiBzdHJ1Y3QgcmVz
ZXJ2YXRpb25fb2JqZWN0IHsKIAlzdHJ1Y3Qgd3dfbXV0ZXggbG9jazsKLQlzZXFjb3VudF90IHNl
cTsKIAogCXN0cnVjdCBkbWFfZmVuY2UgX19yY3UgKmZlbmNlX2V4Y2w7CiAJc3RydWN0IHJlc2Vy
dmF0aW9uX29iamVjdF9saXN0IF9fcmN1ICpmZW5jZTsKQEAgLTE1NiwxNCArMTUzLDEyIEBAIHJl
c2VydmF0aW9uX29iamVjdF9mZW5jZXMoc3RydWN0IHJlc2VydmF0aW9uX29iamVjdCAqb2JqLAog
CQkJICBzdHJ1Y3QgcmVzZXJ2YXRpb25fb2JqZWN0X2xpc3QgKipsaXN0LAogCQkJICB1MzIgKnNo
YXJlZF9jb3VudCkKIHsKLQl1bnNpZ25lZCBpbnQgc2VxOwotCiAJZG8gewotCQlzZXEgPSByZWFk
X3NlcWNvdW50X2JlZ2luKCZvYmotPnNlcSk7CiAJCSpleGNsID0gcmN1X2RlcmVmZXJlbmNlKG9i
ai0+ZmVuY2VfZXhjbCk7CiAJCSpsaXN0ID0gcmN1X2RlcmVmZXJlbmNlKG9iai0+ZmVuY2UpOwog
CQkqc2hhcmVkX2NvdW50ID0gKmxpc3QgPyAoKmxpc3QpLT5zaGFyZWRfY291bnQgOiAwOwotCX0g
d2hpbGUgKHJlYWRfc2VxY291bnRfcmV0cnkoJm9iai0+c2VxLCBzZXEpKTsKKwkJc21wX3JtYigp
OyAvKiBTZWUgcmVzZXJ2YXRpb25fb2JqZWN0X2FkZF9leGNsX2ZlbmNlICovCisJfSB3aGlsZSAo
cmN1X2FjY2Vzc19wb2ludGVyKG9iai0+ZmVuY2VfZXhjbCkgIT0gKmV4Y2wpOwogfQogCiAvKioK
LS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3Jn
Cmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4
