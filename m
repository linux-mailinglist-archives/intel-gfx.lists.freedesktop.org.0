Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7068480C3
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Jun 2019 13:34:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CA2F891AD;
	Mon, 17 Jun 2019 11:34:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA16D89187;
 Mon, 17 Jun 2019 11:34:16 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id g135so8848565wme.4;
 Mon, 17 Jun 2019 04:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6vIJVypIdCiKtnMi/GL5XD7d9M7bCA5ys3hvbjLIEWQ=;
 b=MASISfP168o71goJI3ANGXMPhi4JqjiqzpfH+RNg983hKwc7GsdNDjGOJ8ujTCq0wd
 sGKm9QN/2CLsM4ZQk3i7wdNQPTpJ1felXa+XSg0aiMQ/JiRRcqOcKqvvKyGXgObgcvcM
 +xxuYiuzoM4zSfZIuFJX7bfdO24lUNkoH+qoiOy+tdwRcsSVHufj88OwM2Pk3zhDGRvm
 RKNGF4NBuwD1jtwPtlfRmKbo1H1vtgh4MsbXjeY8SjkZhG3pEXZxawAla8yHAJ6Z5bEF
 DEdUT90xGkBwtE5GzAfoC3cXeZCUUt5kpMiM/7YFQOTImNjmBBzP+twZiFpuNkbx/pTO
 H7DQ==
X-Gm-Message-State: APjAAAVpiblfkWyY4GD42oU3fkTyJ0Mek9oAiwB8TrOEBCRVL5Tz3OcP
 90KFyfavpHgDlOBgU1+m/U7RybAa
X-Google-Smtp-Source: APXvYqz0xgeVd7UrSBlvAd1YtI5hoMhQ89i8mcswZ4d8zje3TlEMqOsIQhdidHNmbEDUboBGHGml3w==
X-Received: by 2002:a1c:44d7:: with SMTP id
 r206mr19174712wma.164.1560771255130; 
 Mon, 17 Jun 2019 04:34:15 -0700 (PDT)
Received: from abel.fritz.box ([2a02:908:1252:fb60:ad86:6268:1a78:d4c])
 by smtp.gmail.com with ESMTPSA id s188sm12062110wmf.40.2019.06.17.04.34.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 04:34:14 -0700 (PDT)
From: "=?UTF-8?q?Christian=20K=C3=B6nig?=" <ckoenig.leichtzumerken@gmail.com>
X-Google-Original-From: =?UTF-8?q?Christian=20K=C3=B6nig?=
 <christian.koenig@amd.com>
To: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 amd-gfx@lists.freedesktop.org
Date: Mon, 17 Jun 2019 13:34:08 +0200
Message-Id: <20190617113413.1869-1-christian.koenig@amd.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=6vIJVypIdCiKtnMi/GL5XD7d9M7bCA5ys3hvbjLIEWQ=;
 b=X6Fj5qT2MB6lcFr3xMo1tNauC65eRl6pl0eSHq7g/gKDWN+tqB640+E4VBVpTRpmz+
 sI9ScgEu8+G0hnmR6ozcPtFwWaYlDnXw6iBPl6zwTp0b+zEOpCS6U+XhSeZnov5WIFe6
 LcKPVmEPP+46N5xUXrK2flbJgXYwINNQGeMEZ49GOKmdt3FExR/2dLS1OaAaMc/dOrxa
 MPmiTsY2zO5JHwVKoSBW3qLvVolccpIBrxKCDWWEDFo7cqcFQ1TknweBhBxXVDsEEw/F
 b7cWPKTzbcJ8BJzBKiKWexCTlYNhqB0QmasEc4pd9LbxR1wvTkdMlCSuPmMo4eA2hFk+
 6rNQ==
Subject: [Intel-gfx] [PATCH 1/6] dma-buf: add dynamic DMA-buf handling v10
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

T24gdGhlIGV4cG9ydGVyIHNpZGUgd2UgYWRkIG9wdGlvbmFsIGV4cGxpY2l0IHBpbm5pbmcgY2Fs
bGJhY2tzLiBJZiB0aG9zZQpjYWxsYmFja3MgYXJlIGltcGxlbWVudGVkIHRoZSBmcmFtZXdvcmsg
bm8gbG9uZ2VyIGNhY2hlcyBzZyB0YWJsZXMgYW5kIHRoZQptYXAvdW5tYXAgY2FsbGJhY2tzIGFy
ZSBhbHdheXMgY2FsbGVkIHdpdGggdGhlIGxvY2sgb2YgdGhlIHJlc2VydmF0aW9uIG9iamVjdApo
ZWxkLgoKT24gdGhlIGltcG9ydGVyIHNpZGUgd2UgYWRkIGFuIG9wdGlvbmFsIGludmFsaWRhdGUg
Y2FsbGJhY2suIFRoaXMgY2FsbGJhY2sgaXMKdXNlZCBieSB0aGUgZXhwb3J0ZXIgdG8gaW5mb3Jt
IHRoZSBpbXBvcnRlcnMgdGhhdCB0aGVpciBtYXBwaW5ncyBzaG91bGQgYmUKZGVzdHJveWVkIGFz
IHNvb24gYXMgcG9zc2libGUuCgpUaGlzIGFsbG93cyB0aGUgZXhwb3J0ZXIgdG8gcHJvdmlkZSB0
aGUgbWFwcGluZ3Mgd2l0aG91dCB0aGUgbmVlZCB0byBwaW4KdGhlIGJhY2tpbmcgc3RvcmUuCgp2
MjogZG9uJ3QgdHJ5IHRvIGludmFsaWRhdGUgbWFwcGluZ3Mgd2hlbiB0aGUgY2FsbGJhY2sgaXMg
TlVMTCwKICAgIGxvY2sgdGhlIHJlc2VydmF0aW9uIG9iaiB3aGlsZSB1c2luZyB0aGUgYXR0YWNo
bWVudHMsCiAgICBhZGQgaGVscGVyIHRvIHNldCB0aGUgY2FsbGJhY2sKdjM6IG1vdmUgZmxhZyBm
b3IgaW52YWxpZGF0aW9uIHN1cHBvcnQgaW50byB0aGUgRE1BLWJ1ZiwKICAgIHVzZSBuZXcgYXR0
YWNoX2luZm8gc3RydWN0dXJlIHRvIHNldCB0aGUgY2FsbGJhY2sKdjQ6IHVzZSBpbXBvcnRlcl9w
cml2IGZpZWxkIGluc3RlYWQgb2YgbWFuZ2xpbmcgZXhwb3J0ZXIgcHJpdi4KdjU6IGRyb3AgaW52
YWxpZGF0aW9uX3N1cHBvcnRlZCBmbGFnCnY2OiBzcXVhc2ggdG9nZXRoZXIgd2l0aCBwaW4vdW5w
aW4gY2hhbmdlcwp2NzogcGluL3VucGluIHRha2VzIGFuIGF0dGFjaG1lbnQgbm93CnY4OiBudWtl
IGRtYV9idWZfYXR0YWNobWVudF8obWFwfHVubWFwKV9sb2NrZWQsCiAgICBldmVyeXRoaW5nIGlz
IG5vdyBoYW5kbGVkIGJhY2t3YXJkIGNvbXBhdGlibGUKdjk6IGFsd2F5cyBjYWNoZSB3aGVuIGV4
cG9ydC9pbXBvcnRlciBkb24ndCBhZ3JlZSBvbiBkeW5hbWljIGhhbmRsaW5nCnYxMDogbWluaW1h
bCBzdHlsZSBjbGVhbnVwCgpTaWduZWQtb2ZmLWJ5OiBDaHJpc3RpYW4gS8O2bmlnIDxjaHJpc3Rp
YW4ua29lbmlnQGFtZC5jb20+Ci0tLQogZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYyB8IDE4OCAr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKysrKystLQogaW5jbHVkZS9saW51eC9kbWEt
YnVmLmggICB8IDEwOSArKysrKysrKysrKysrKysrKysrKy0tCiAyIGZpbGVzIGNoYW5nZWQsIDI4
MyBpbnNlcnRpb25zKCspLCAxNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL2Rt
YS1idWYvZG1hLWJ1Zi5jIGIvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYuYwppbmRleCBhMmQzNGM2
YjgwYTUuLmY3NTY4NzBiYTUwOSAxMDA2NDQKLS0tIGEvZHJpdmVycy9kbWEtYnVmL2RtYS1idWYu
YworKysgYi9kcml2ZXJzL2RtYS1idWYvZG1hLWJ1Zi5jCkBAIC00MDksNiArNDA5LDkgQEAgc3Ry
dWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFfYnVmX2V4cG9ydF9p
bmZvICpleHBfaW5mbykKIAkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CiAJfQogCisJaWYgKFdB
Uk5fT04oZXhwX2luZm8tPm9wcy0+Y2FjaGVfc2d0X21hcHBpbmcgJiYgZXhwX2luZm8tPm9wcy0+
cGluKSkKKwkJcmV0dXJuIEVSUl9QVFIoLUVJTlZBTCk7CisKIAlpZiAoIXRyeV9tb2R1bGVfZ2V0
KGV4cF9pbmZvLT5vd25lcikpCiAJCXJldHVybiBFUlJfUFRSKC1FTk9FTlQpOwogCkBAIC01MzAs
MTAgKzUzMywxMiBAQCB2b2lkIGRtYV9idWZfcHV0KHN0cnVjdCBkbWFfYnVmICpkbWFidWYpCiBF
WFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7CiAKIC8qKgotICogZG1hX2J1Zl9hdHRhY2gg
LSBBZGQgdGhlIGRldmljZSB0byBkbWFfYnVmJ3MgYXR0YWNobWVudHMgbGlzdDsgb3B0aW9uYWxs
eSwKKyAqIGRtYV9idWZfZHluYW1pY19hdHRhY2ggLSBBZGQgdGhlIGRldmljZSB0byBkbWFfYnVm
J3MgYXR0YWNobWVudHMgbGlzdDsgb3B0aW9uYWxseSwKICAqIGNhbGxzIGF0dGFjaCgpIG9mIGRt
YV9idWZfb3BzIHRvIGFsbG93IGRldmljZS1zcGVjaWZpYyBhdHRhY2ggZnVuY3Rpb25hbGl0eQot
ICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gYXR0YWNoIGRldmljZSB0by4KLSAqIEBkZXY6CVtp
bl0JZGV2aWNlIHRvIGJlIGF0dGFjaGVkLgorICogQGRtYWJ1ZjoJCVtpbl0JYnVmZmVyIHRvIGF0
dGFjaCBkZXZpY2UgdG8uCisgKiBAZGV2OgkJW2luXQlkZXZpY2UgdG8gYmUgYXR0YWNoZWQuCisg
KiBAaW1wb3J0ZXJfb3BzCVtpbl0JaW1wb3J0ZXIgb3BlcmF0aW9ucyBmb3IgdGhlIGF0dGFjaG1l
bnQKKyAqIEBpbXBvcnRlcl9wcml2CVtpbl0JaW1wb3J0ZXIgcHJpdmF0ZSBwb2ludGVyIGZvciB0
aGUgYXR0YWNobWVudAogICoKICAqIFJldHVybnMgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCBw
b2ludGVyIGZvciB0aGlzIGF0dGFjaG1lbnQuIEF0dGFjaG1lbnRzCiAgKiBtdXN0IGJlIGNsZWFu
ZWQgdXAgYnkgY2FsbGluZyBkbWFfYnVmX2RldGFjaCgpLgpAQCAtNTQ3LDggKzU1MiwxMCBAQCBF
WFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3B1dCk7CiAgKiBhY2Nlc3NpYmxlIHRvIEBkZXYsIGFu
ZCBjYW5ub3QgYmUgbW92ZWQgdG8gYSBtb3JlIHN1aXRhYmxlIHBsYWNlLiBUaGlzIGlzCiAgKiBp
bmRpY2F0ZWQgd2l0aCB0aGUgZXJyb3IgY29kZSAtRUJVU1kuCiAgKi8KLXN0cnVjdCBkbWFfYnVm
X2F0dGFjaG1lbnQgKmRtYV9idWZfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCi0JCQkJ
CSAgc3RydWN0IGRldmljZSAqZGV2KQorc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqCitkbWFf
YnVmX2R5bmFtaWNfYXR0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsIHN0cnVjdCBkZXZpY2Ug
KmRldiwKKwkJICAgICAgIGNvbnN0IHN0cnVjdCBkbWFfYnVmX2F0dGFjaF9vcHMgKmltcG9ydGVy
X29wcywKKwkJICAgICAgIHZvaWQgKmltcG9ydGVyX3ByaXYpCiB7CiAJc3RydWN0IGRtYV9idWZf
YXR0YWNobWVudCAqYXR0YWNoOwogCWludCByZXQ7CkBAIC01NjIsNiArNTY5LDggQEAgc3RydWN0
IGRtYV9idWZfYXR0YWNobWVudCAqZG1hX2J1Zl9hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1
ZiwKIAogCWF0dGFjaC0+ZGV2ID0gZGV2OwogCWF0dGFjaC0+ZG1hYnVmID0gZG1hYnVmOworCWF0
dGFjaC0+aW1wb3J0ZXJfb3BzID0gaW1wb3J0ZXJfb3BzOworCWF0dGFjaC0+aW1wb3J0ZXJfcHJp
diA9IGltcG9ydGVyX3ByaXY7CiAKIAltdXRleF9sb2NrKCZkbWFidWYtPmxvY2spOwogCkBAIC01
NzAsMTYgKzU3OSw3MiBAQCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICpkbWFfYnVmX2F0dGFj
aChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAogCQlpZiAocmV0KQogCQkJZ290byBlcnJfYXR0YWNo
OwogCX0KKwlyZXNlcnZhdGlvbl9vYmplY3RfbG9jayhkbWFidWYtPnJlc3YsIE5VTEwpOwogCWxp
c3RfYWRkKCZhdHRhY2gtPm5vZGUsICZkbWFidWYtPmF0dGFjaG1lbnRzKTsKKwlyZXNlcnZhdGlv
bl9vYmplY3RfdW5sb2NrKGRtYWJ1Zi0+cmVzdik7CiAKIAltdXRleF91bmxvY2soJmRtYWJ1Zi0+
bG9jayk7CiAKKwkvKiBXaGVuIGVpdGhlciB0aGUgaW1wb3J0ZXIgb3IgdGhlIGV4cG9ydGVyIGNh
bid0IGhhbmRsZSBkeW5hbWljCisJICogbWFwcGluZ3Mgd2UgY2FjaGUgdGhlIG1hcHBpbmcgaGVy
ZSB0byBhdm9pZCBpc3N1ZXMgd2l0aCB0aGUKKwkgKiByZXNlcnZhdGlvbiBvYmplY3QgbG9jay4K
KwkgKi8KKwlpZiAoZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoYXR0YWNoKSAhPQorCSAg
ICBkbWFfYnVmX2lzX2R5bmFtaWMoZG1hYnVmKSkgeworCQlzdHJ1Y3Qgc2dfdGFibGUgKnNndDsK
KworCQlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFjaC0+ZG1hYnVmKSkgeworCQkJcmVzZXJ2
YXRpb25fb2JqZWN0X2xvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YsIE5VTEwpOworCQkJcmV0ID0g
ZG1hX2J1Zl9waW4oYXR0YWNoKTsKKwkJCWlmIChyZXQpCisJCQkJZ290byBlcnJfdW5sb2NrOwor
CQl9CisKKwkJc2d0ID0gZG1hYnVmLT5vcHMtPm1hcF9kbWFfYnVmKGF0dGFjaCwgRE1BX0JJRElS
RUNUSU9OQUwpOworCQlpZiAoIXNndCkKKwkJCXNndCA9IEVSUl9QVFIoLUVOT01FTSk7CisJCWlm
IChJU19FUlIoc2d0KSkgeworCQkJcmV0ID0gUFRSX0VSUihzZ3QpOworCQkJZ290byBlcnJfdW5w
aW47CisJCX0KKwkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCisJCQly
ZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKKwkJYXR0YWNo
LT5zZ3QgPSBzZ3Q7CisJCWF0dGFjaC0+ZGlyID0gRE1BX0JJRElSRUNUSU9OQUw7CisJfQorCiAJ
cmV0dXJuIGF0dGFjaDsKIAogZXJyX2F0dGFjaDoKIAlrZnJlZShhdHRhY2gpOwogCW11dGV4X3Vu
bG9jaygmZG1hYnVmLT5sb2NrKTsKIAlyZXR1cm4gRVJSX1BUUihyZXQpOworCitlcnJfdW5waW46
CisJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCisJCWRtYV9idWZfdW5w
aW4oYXR0YWNoKTsKKworZXJyX3VubG9jazoKKwlpZiAoZG1hX2J1Zl9pc19keW5hbWljKGF0dGFj
aC0+ZG1hYnVmKSkKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhhdHRhY2gtPmRtYWJ1Zi0+
cmVzdik7CisKKwlkbWFfYnVmX2RldGFjaChkbWFidWYsIGF0dGFjaCk7CisJcmV0dXJuIEVSUl9Q
VFIocmV0KTsKK30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfZHluYW1pY19hdHRhY2gpOwor
CisvKioKKyAqIGRtYV9idWZfYXR0YWNoIC0gV3JhcHBlciBmb3IgZG1hX2J1Zl9keW5hbWljX2F0
dGFjaAorICogQGRtYWJ1ZjoJW2luXQlidWZmZXIgdG8gYXR0YWNoIGRldmljZSB0by4KKyAqIEBk
ZXY6CVtpbl0JZGV2aWNlIHRvIGJlIGF0dGFjaGVkLgorICoKKyAqIFdyYXBwZXIgdG8gY2FsbCBk
bWFfYnVmX2R5bmFtaWNfYXR0YWNoKCkgZm9yIGRyaXZlcnMgd2hpY2ggc3RpbGwgdXNlIGEgc3Rh
dGljCisgKiBtYXBwaW5nLgorICovCitzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICpkbWFfYnVm
X2F0dGFjaChzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmLAorCQkJCQkgIHN0cnVjdCBkZXZpY2UgKmRl
dikKK3sKKwlyZXR1cm4gZG1hX2J1Zl9keW5hbWljX2F0dGFjaChkbWFidWYsIGRldiwgTlVMTCwg
TlVMTCk7CiB9CiBFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX2F0dGFjaCk7CiAKQEAgLTU5Niwx
MSArNjYxLDIyIEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwg
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQogCWlmIChXQVJOX09OKCFkbWFidWYg
fHwgIWF0dGFjaCkpCiAJCXJldHVybjsKIAotCWlmIChhdHRhY2gtPnNndCkKKwlpZiAoYXR0YWNo
LT5zZ3QpIHsKKwkJaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCisJCQly
ZXNlcnZhdGlvbl9vYmplY3RfbG9jayhhdHRhY2gtPmRtYWJ1Zi0+cmVzdiwgTlVMTCk7CisKIAkJ
ZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBhdHRhY2gtPnNndCwgYXR0YWNoLT5k
aXIpOwogCisJCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7CisJCQlk
bWFfYnVmX3VucGluKGF0dGFjaCk7CisJCQlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKGF0dGFj
aC0+ZG1hYnVmLT5yZXN2KTsKKwkJfQorCX0KKwogCW11dGV4X2xvY2soJmRtYWJ1Zi0+bG9jayk7
CisJcmVzZXJ2YXRpb25fb2JqZWN0X2xvY2soZG1hYnVmLT5yZXN2LCBOVUxMKTsKIAlsaXN0X2Rl
bCgmYXR0YWNoLT5ub2RlKTsKKwlyZXNlcnZhdGlvbl9vYmplY3RfdW5sb2NrKGRtYWJ1Zi0+cmVz
dik7CiAJaWYgKGRtYWJ1Zi0+b3BzLT5kZXRhY2gpCiAJCWRtYWJ1Zi0+b3BzLT5kZXRhY2goZG1h
YnVmLCBhdHRhY2gpOwogCkBAIC02MDksNiArNjg1LDQ0IEBAIHZvaWQgZG1hX2J1Zl9kZXRhY2go
c3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl9kZXRhY2gpOwogCisvKioKKyAqIGRtYV9i
dWZfcGluIC0gTG9jayBkb3duIHRoZSBETUEtYnVmCisgKgorICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHdoaWNoIHNob3VsZCBiZSBwaW5uZWQKKyAqCisgKiBSZXR1cm5zOgorICogMCBvbiBz
dWNjZXNzLCBuZWdhdGl2ZSBlcnJvciBjb2RlIG9uIGZhaWx1cmUuCisgKi8KK2ludCBkbWFfYnVm
X3BpbihzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpCit7CisJc3RydWN0IGRtYV9i
dWYgKmRtYWJ1ZiA9IGF0dGFjaC0+ZG1hYnVmOworCWludCByZXQgPSAwOworCisJcmVzZXJ2YXRp
b25fb2JqZWN0X2Fzc2VydF9oZWxkKGRtYWJ1Zi0+cmVzdik7CisKKwlpZiAoZG1hYnVmLT5vcHMt
PnBpbikKKwkJcmV0ID0gZG1hYnVmLT5vcHMtPnBpbihhdHRhY2gpOworCisJcmV0dXJuIHJldDsK
K30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfcGluKTsKKworLyoqCisgKiBkbWFfYnVmX3Vu
cGluIC0gUmVtb3ZlIGxvY2sgZnJvbSBETUEtYnVmCisgKgorICogQGF0dGFjaDoJW2luXQlhdHRh
Y2htZW50IHdoaWNoIHNob3VsZCBiZSB1bnBpbm5lZAorICovCit2b2lkIGRtYV9idWZfdW5waW4o
c3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKQoreworCXN0cnVjdCBkbWFfYnVmICpk
bWFidWYgPSBhdHRhY2gtPmRtYWJ1ZjsKKworCXJlc2VydmF0aW9uX29iamVjdF9hc3NlcnRfaGVs
ZChkbWFidWYtPnJlc3YpOworCisJaWYgKGRtYWJ1Zi0+b3BzLT51bnBpbikKKwkJZG1hYnVmLT5v
cHMtPnVucGluKGF0dGFjaCk7Cit9CitFWFBPUlRfU1lNQk9MX0dQTChkbWFfYnVmX3VucGluKTsK
KwogLyoqCiAgKiBkbWFfYnVmX21hcF9hdHRhY2htZW50IC0gUmV0dXJucyB0aGUgc2NhdHRlcmxp
c3QgdGFibGUgb2YgdGhlIGF0dGFjaG1lbnQ7CiAgKiBtYXBwZWQgaW50byBfZGV2aWNlXyBhZGRy
ZXNzIHNwYWNlLiBJcyBhIHdyYXBwZXIgZm9yIG1hcF9kbWFfYnVmKCkgb2YgdGhlCkBAIC02Mjgs
NiArNzQyLDcgQEAgc3RydWN0IHNnX3RhYmxlICpkbWFfYnVmX21hcF9hdHRhY2htZW50KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAkJCQkJZW51bSBkbWFfZGF0YV9kaXJlY3Rp
b24gZGlyZWN0aW9uKQogewogCXN0cnVjdCBzZ190YWJsZSAqc2dfdGFibGU7CisJaW50IHI7CiAK
IAltaWdodF9zbGVlcCgpOwogCkBAIC02NDYsMTAgKzc2MSwzOCBAQCBzdHJ1Y3Qgc2dfdGFibGUg
KmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
LAogCQlyZXR1cm4gYXR0YWNoLT5zZ3Q7CiAJfQogCisJaWYgKGRtYV9idWZfYXR0YWNobWVudF9p
c19keW5hbWljKGF0dGFjaCkpIHsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X2Fzc2VydF9oZWxkKGF0
dGFjaC0+ZG1hYnVmLT5yZXN2KTsKKworCQkvKgorCQkgKiBNYXBwaW5nIGEgRE1BLWJ1ZiBjYW4g
dHJpZ2dlciBpdHMgaW52YWxpZGF0aW9uLCBwcmV2ZW50CisJCSAqIHNlbmRpbmcgdGhpcyBldmVu
dCB0byB0aGUgY2FsbGVyIGJ5IHRlbXBvcmFyeSByZW1vdmluZworCQkgKiB0aGlzIGF0dGFjaG1l
bnQgZnJvbSB0aGUgbGlzdC4KKwkJICovCisJCWxpc3RfZGVsKCZhdHRhY2gtPm5vZGUpOworCisJ
fSBlbHNlIGlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpKSB7CisJCXJlc2Vy
dmF0aW9uX29iamVjdF9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsKKwkJciA9IGRt
YV9idWZfcGluKGF0dGFjaCk7CisJCWlmIChyKSB7CisJCQlyZXNlcnZhdGlvbl9vYmplY3RfdW5s
b2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2KTsKKwkJCXJldHVybiBFUlJfUFRSKHIpOworCQl9CisJ
fQorCiAJc2dfdGFibGUgPSBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5tYXBfZG1hX2J1ZihhdHRhY2gs
IGRpcmVjdGlvbik7CiAJaWYgKCFzZ190YWJsZSkKIAkJc2dfdGFibGUgPSBFUlJfUFRSKC1FTk9N
RU0pOwogCisJaWYgKGRtYV9idWZfYXR0YWNobWVudF9pc19keW5hbWljKGF0dGFjaCkpIHsKKwkJ
bGlzdF9hZGQoJmF0dGFjaC0+bm9kZSwgJmF0dGFjaC0+ZG1hYnVmLT5hdHRhY2htZW50cyk7CisK
Kwl9IGVsc2UgaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpIHsKKwkJaWYg
KElTX0VSUihzZ190YWJsZSkpCisJCQlkbWFfYnVmX3VucGluKGF0dGFjaCk7CisJCXJlc2VydmF0
aW9uX29iamVjdF91bmxvY2soYXR0YWNoLT5kbWFidWYtPnJlc3YpOworCX0KKwogCWlmICghSVNf
RVJSKHNnX3RhYmxlKSAmJiBhdHRhY2gtPmRtYWJ1Zi0+b3BzLT5jYWNoZV9zZ3RfbWFwcGluZykg
ewogCQlhdHRhY2gtPnNndCA9IHNnX3RhYmxlOwogCQlhdHRhY2gtPmRpciA9IGRpcmVjdGlvbjsK
QEAgLTY4MSwxMCArODI0LDQxIEBAIHZvaWQgZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50KHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCwKIAlpZiAoYXR0YWNoLT5zZ3QgPT0gc2dfdGFi
bGUpCiAJCXJldHVybjsKIAorCWlmIChkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRh
Y2gpKQorCQlyZXNlcnZhdGlvbl9vYmplY3RfYXNzZXJ0X2hlbGQoYXR0YWNoLT5kbWFidWYtPnJl
c3YpOworCWVsc2UgaWYgKGRtYV9idWZfaXNfZHluYW1pYyhhdHRhY2gtPmRtYWJ1ZikpCisJCXJl
c2VydmF0aW9uX29iamVjdF9sb2NrKGF0dGFjaC0+ZG1hYnVmLT5yZXN2LCBOVUxMKTsKKwogCWF0
dGFjaC0+ZG1hYnVmLT5vcHMtPnVubWFwX2RtYV9idWYoYXR0YWNoLCBzZ190YWJsZSwgZGlyZWN0
aW9uKTsKKworCWlmIChkbWFfYnVmX2lzX2R5bmFtaWMoYXR0YWNoLT5kbWFidWYpICYmCisJICAg
ICFkbWFfYnVmX2F0dGFjaG1lbnRfaXNfZHluYW1pYyhhdHRhY2gpKSB7CisJCWRtYV9idWZfdW5w
aW4oYXR0YWNoKTsKKwkJcmVzZXJ2YXRpb25fb2JqZWN0X3VubG9jayhhdHRhY2gtPmRtYWJ1Zi0+
cmVzdik7CisJfQogfQogRVhQT1JUX1NZTUJPTF9HUEwoZG1hX2J1Zl91bm1hcF9hdHRhY2htZW50
KTsKIAorLyoqCisgKiBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3MgLSBpbnZhbGlkYXRlIGFs
bCBtYXBwaW5ncyBvZiB0aGlzIGRtYV9idWYKKyAqCisgKiBAZG1hYnVmOglbaW5dCWJ1ZmZlciB3
aGljaCBtYXBwaW5ncyBzaG91bGQgYmUgaW52YWxpZGF0ZWQKKyAqCisgKiBJbmZvcm1zIGFsbCBh
dHRhY2htZW5zdCB0aGF0IHRoZXkgbmVlZCB0byBkZXN0cm95IGFuZCByZWNyZWF0ZWQgYWxsIHRo
ZWlyCisgKiBtYXBwaW5ncy4KKyAqLwordm9pZCBkbWFfYnVmX2ludmFsaWRhdGVfbWFwcGluZ3Mo
c3RydWN0IGRtYV9idWYgKmRtYWJ1ZikKK3sKKwlzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICph
dHRhY2g7CisKKwlyZXNlcnZhdGlvbl9vYmplY3RfYXNzZXJ0X2hlbGQoZG1hYnVmLT5yZXN2KTsK
KworCWxpc3RfZm9yX2VhY2hfZW50cnkoYXR0YWNoLCAmZG1hYnVmLT5hdHRhY2htZW50cywgbm9k
ZSkKKwkJaWYgKGF0dGFjaC0+aW1wb3J0ZXJfb3BzICYmIGF0dGFjaC0+aW1wb3J0ZXJfb3BzLT5p
bnZhbGlkYXRlKQorCQkJYXR0YWNoLT5pbXBvcnRlcl9vcHMtPmludmFsaWRhdGUoYXR0YWNoKTsK
K30KK0VYUE9SVF9TWU1CT0xfR1BMKGRtYV9idWZfaW52YWxpZGF0ZV9tYXBwaW5ncyk7CisKIC8q
KgogICogRE9DOiBjcHUgYWNjZXNzCiAgKgpAQCAtMTA5NywxMCArMTI3MSwxMiBAQCBzdGF0aWMg
aW50IGRtYV9idWZfZGVidWdfc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKnMsIHZvaWQgKnVudXNlZCkK
IAkJc2VxX3B1dHMocywgIlx0QXR0YWNoZWQgRGV2aWNlczpcbiIpOwogCQlhdHRhY2hfY291bnQg
PSAwOwogCisJCXJlc2VydmF0aW9uX29iamVjdF9sb2NrKGJ1Zl9vYmotPnJlc3YsIE5VTEwpOwog
CQlsaXN0X2Zvcl9lYWNoX2VudHJ5KGF0dGFjaF9vYmosICZidWZfb2JqLT5hdHRhY2htZW50cywg
bm9kZSkgewogCQkJc2VxX3ByaW50ZihzLCAiXHQlc1xuIiwgZGV2X25hbWUoYXR0YWNoX29iai0+
ZGV2KSk7CiAJCQlhdHRhY2hfY291bnQrKzsKIAkJfQorCQlyZXNlcnZhdGlvbl9vYmplY3RfdW5s
b2NrKGJ1Zl9vYmotPnJlc3YpOwogCiAJCXNlcV9wcmludGYocywgIlRvdGFsICVkIGRldmljZXMg
YXR0YWNoZWRcblxuIiwKIAkJCQlhdHRhY2hfY291bnQpOwpkaWZmIC0tZ2l0IGEvaW5jbHVkZS9s
aW51eC9kbWEtYnVmLmggYi9pbmNsdWRlL2xpbnV4L2RtYS1idWYuaAppbmRleCA0NWI5NzY3ZTY3
ZWMuLjkwYzMxOTNiZTdhNSAxMDA2NDQKLS0tIGEvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKKysr
IGIvaW5jbHVkZS9saW51eC9kbWEtYnVmLmgKQEAgLTk5LDE0ICs5OSw0MCBAQCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgewogCSAqLwogCXZvaWQgKCpkZXRhY2gpKHN0cnVjdCBkbWFfYnVmICosIHN0cnVj
dCBkbWFfYnVmX2F0dGFjaG1lbnQgKik7CiAKKwkvKioKKwkgKiBAcGluOgorCSAqCisJICogVGhp
cyBpcyBjYWxsZWQgYnkgZG1hX2J1Zl9waW4gYW5kIGxldHMgdGhlIGV4cG9ydGVyIGtub3cgdGhh
dCB0aGUKKwkgKiBETUEtYnVmIGNhbid0IGJlIG1vdmVkIGFueSBtb3JlLgorCSAqCisJICogVGhp
cyBpcyBjYWxsZWQgd2l0aCB0aGUgZG1hYnVmLT5yZXN2IG9iamVjdCBsb2NrZWQuCisJICoKKwkg
KiBUaGlzIGNhbGxiYWNrIGlzIG9wdGlvbmFsLgorCSAqCisJICogUmV0dXJuczoKKwkgKgorCSAq
IDAgb24gc3VjY2VzcywgbmVnYXRpdmUgZXJyb3IgY29kZSBvbiBmYWlsdXJlLgorCSAqLworCWlu
dCAoKnBpbikoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNoKTsKKworCS8qKgorCSAq
IEB1bnBpbjoKKwkgKgorCSAqIFRoaXMgaXMgY2FsbGVkIGJ5IGRtYV9idWZfdW5waW4gYW5kIGxl
dHMgdGhlIGV4cG9ydGVyIGtub3cgdGhhdCB0aGUKKwkgKiBETUEtYnVmIGNhbiBiZSBtb3ZlZCBh
Z2Fpbi4KKwkgKgorCSAqIFRoaXMgaXMgY2FsbGVkIHdpdGggdGhlIGRtYWJ1Zi0+cmVzdiBvYmpl
Y3QgbG9ja2VkLgorCSAqCisJICogVGhpcyBjYWxsYmFjayBpcyBvcHRpb25hbC4KKwkgKi8KKwl2
b2lkICgqdW5waW4pKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0dGFjaCk7CisKIAkvKioK
IAkgKiBAbWFwX2RtYV9idWY6CiAJICoKIAkgKiBUaGlzIGlzIGNhbGxlZCBieSBkbWFfYnVmX21h
cF9hdHRhY2htZW50KCkgYW5kIGlzIHVzZWQgdG8gbWFwIGEKIAkgKiBzaGFyZWQgJmRtYV9idWYg
aW50byBkZXZpY2UgYWRkcmVzcyBzcGFjZSwgYW5kIGl0IGlzIG1hbmRhdG9yeS4gSXQKLQkgKiBj
YW4gb25seSBiZSBjYWxsZWQgaWYgQGF0dGFjaCBoYXMgYmVlbiBjYWxsZWQgc3VjY2Vzc2Z1bGx5
LiBUaGlzCi0JICogZXNzZW50aWFsbHkgcGlucyB0aGUgRE1BIGJ1ZmZlciBpbnRvIHBsYWNlLCBh
bmQgaXQgY2Fubm90IGJlIG1vdmVkCi0JICogYW55IG1vcmUKKwkgKiBjYW4gb25seSBiZSBjYWxs
ZWQgaWYgQGF0dGFjaCBoYXMgYmVlbiBjYWxsZWQgc3VjY2Vzc2Z1bGx5LgogCSAqCiAJICogVGhp
cyBjYWxsIG1heSBzbGVlcCwgZS5nLiB3aGVuIHRoZSBiYWNraW5nIHN0b3JhZ2UgZmlyc3QgbmVl
ZHMgdG8gYmUKIAkgKiBhbGxvY2F0ZWQsIG9yIG1vdmVkIHRvIGEgbG9jYXRpb24gc3VpdGFibGUg
Zm9yIGFsbCBjdXJyZW50bHkgYXR0YWNoZWQKQEAgLTEyNyw2ICsxNTMsOSBAQCBzdHJ1Y3QgZG1h
X2J1Zl9vcHMgewogCSAqIGFueSBvdGhlciBraW5kIG9mIHNoYXJpbmcgdGhhdCB0aGUgZXhwb3J0
ZXIgbWlnaHQgd2lzaCB0byBtYWtlCiAJICogYXZhaWxhYmxlIHRvIGJ1ZmZlci11c2Vycy4KIAkg
KgorCSAqIFRoaXMgaXMgYWx3YXlzIGNhbGxlZCB3aXRoIHRoZSBkbWFidWYtPnJlc3Ygb2JqZWN0
IGxvY2tlZCB3aGVuCisJICogdGhlIHBpbi91bnBpbiBjYWxsYmFja3MgYXJlIGltcGxlbWVudGVk
LgorCSAqCiAJICogUmV0dXJuczoKIAkgKgogCSAqIEEgJnNnX3RhYmxlIHNjYXR0ZXIgbGlzdCBv
ZiBvciB0aGUgYmFja2luZyBzdG9yYWdlIG9mIHRoZSBETUEgYnVmZmVyLApAQCAtMTQ0LDkgKzE3
Myw2IEBAIHN0cnVjdCBkbWFfYnVmX29wcyB7CiAJICoKIAkgKiBUaGlzIGlzIGNhbGxlZCBieSBk
bWFfYnVmX3VubWFwX2F0dGFjaG1lbnQoKSBhbmQgc2hvdWxkIHVubWFwIGFuZAogCSAqIHJlbGVh
c2UgdGhlICZzZ190YWJsZSBhbGxvY2F0ZWQgaW4gQG1hcF9kbWFfYnVmLCBhbmQgaXQgaXMgbWFu
ZGF0b3J5LgotCSAqIEl0IHNob3VsZCBhbHNvIHVucGluIHRoZSBiYWNraW5nIHN0b3JhZ2UgaWYg
dGhpcyBpcyB0aGUgbGFzdCBtYXBwaW5nCi0JICogb2YgdGhlIERNQSBidWZmZXIsIGl0IHRoZSBl
eHBvcnRlciBzdXBwb3J0cyBiYWNraW5nIHN0b3JhZ2UKLQkgKiBtaWdyYXRpb24uCiAJICovCiAJ
dm9pZCAoKnVubWFwX2RtYV9idWYpKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKiwKIAkJCSAg
ICAgIHN0cnVjdCBzZ190YWJsZSAqLApAQCAtMzExLDYgKzMzNywzNSBAQCBzdHJ1Y3QgZG1hX2J1
ZiB7CiAJfSBjYl9leGNsLCBjYl9zaGFyZWQ7CiB9OwogCisvKioKKyAqIHN0cnVjdCBkbWFfYnVm
X2F0dGFjaF9vcHMgLSBpbXBvcnRlciBvcGVyYXRpb25zIGZvciBhbiBhdHRhY2htZW50CisgKiBA
aW52YWxpZGF0ZTogW29wdGlvbmFsXSBpbnZhbGlkYXRlIGFsbCBtYXBwaW5ncyBtYWRlIHVzaW5n
IHRoaXMgYXR0YWNobWVudC4KKyAqCisgKiBBdHRhY2htZW50IG9wZXJhdGlvbnMgaW1wbGVtZW50
ZWQgYnkgdGhlIGltcG9ydGVyLgorICovCitzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzIHsKKwkv
KioKKwkgKiBAaW52YWxpZGF0ZToKKwkgKgorCSAqIElmIHRoZSBpbnZhbGlkYXRlIGNhbGxiYWNr
IGlzIHByb3ZpZGVkIHRoZSBmcmFtZXdvcmsgY2FuIGF2b2lkCisJICogcGlubmluZyB0aGUgYmFj
a2luZyBzdG9yZSB3aGlsZSBtYXBwaW5ncyBleGlzdHMuCisJICoKKwkgKiBUaGlzIGNhbGxiYWNr
IGlzIGNhbGxlZCB3aXRoIHRoZSBsb2NrIG9mIHRoZSByZXNlcnZhdGlvbiBvYmplY3QKKwkgKiBh
c3NvY2lhdGVkIHdpdGggdGhlIGRtYV9idWYgaGVsZCBhbmQgdGhlIG1hcHBpbmcgZnVuY3Rpb24g
bXVzdCBiZQorCSAqIGNhbGxlZCB3aXRoIHRoaXMgbG9jayBoZWxkIGFzIHdlbGwuIFRoaXMgbWFr
ZXMgc3VyZSB0aGF0IG5vIG1hcHBpbmcKKwkgKiBpcyBjcmVhdGVkIGNvbmN1cnJlbnRseSB3aXRo
IGFuIG9uZ29pbmcgaW52YWxpZGF0aW9uLgorCSAqCisJICogQWZ0ZXIgdGhlIGNhbGxiYWNrIGFs
bCBleGlzdGluZyBtYXBwaW5ncyBhcmUgc3RpbGwgdmFsaWQgdW50aWwgYWxsCisJICogZmVuY2Vz
IGluIHRoZSBkbWFfYnVmcyByZXNlcnZhdGlvbiBvYmplY3QgYXJlIHNpZ25hbGVkLiBBZnRlciBn
ZXR0aW5nIGFuCisJICogaW52YWxpZGF0aW9uIGNhbGxiYWNrIGFsbCBtYXBwaW5ncyBzaG91bGQg
YmUgZGVzdHJveWVkIGJ5IHRoZSBpbXBvcnRlciB1c2luZworCSAqIHRoZSBub3JtYWwgZG1hX2J1
Zl91bm1hcF9hdHRhY2htZW50KCkgZnVuY3Rpb24gYXMgc29vbiBhcyBwb3NzaWJsZS4KKwkgKgor
CSAqIE5ldyBtYXBwaW5ncyBjYW4gYmUgY3JlYXRlZCBpbW1lZGlhdGVseSwgYnV0IGNhbid0IGJl
IHVzZWQgYmVmb3JlIHRoZQorCSAqIGV4Y2x1c2l2ZSBmZW5jZSBpbiB0aGUgZG1hX2J1ZnMgcmVz
ZXJ2YXRpb24gb2JqZWN0IGlzIHNpZ25hbGVkLgorCSAqLworCXZvaWQgKCppbnZhbGlkYXRlKShz
dHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICphdHRhY2gpOworfTsKKwogLyoqCiAgKiBzdHJ1Y3Qg
ZG1hX2J1Zl9hdHRhY2htZW50IC0gaG9sZHMgZGV2aWNlLWJ1ZmZlciBhdHRhY2htZW50IGRhdGEK
ICAqIEBkbWFidWY6IGJ1ZmZlciBmb3IgdGhpcyBhdHRhY2htZW50LgpAQCAtMzE5LDYgKzM3NCw4
IEBAIHN0cnVjdCBkbWFfYnVmIHsKICAqIEBzZ3Q6IGNhY2hlZCBtYXBwaW5nLgogICogQGRpcjog
ZGlyZWN0aW9uIG9mIGNhY2hlZCBtYXBwaW5nLgogICogQHByaXY6IGV4cG9ydGVyIHNwZWNpZmlj
IGF0dGFjaG1lbnQgZGF0YS4KKyAqIEBpbXBvcnRlcl9vcHM6IGltcG9ydGVyIG9wZXJhdGlvbnMg
Zm9yIHRoaXMgYXR0YWNobWVudC4KKyAqIEBpbXBvcnRlcl9wcml2OiBpbXBvcnRlciBzcGVjaWZp
YyBhdHRhY2htZW50IGRhdGEuCiAgKgogICogVGhpcyBzdHJ1Y3R1cmUgaG9sZHMgdGhlIGF0dGFj
aG1lbnQgaW5mb3JtYXRpb24gYmV0d2VlbiB0aGUgZG1hX2J1ZiBidWZmZXIKICAqIGFuZCBpdHMg
dXNlciBkZXZpY2UocykuIFRoZSBsaXN0IGNvbnRhaW5zIG9uZSBhdHRhY2htZW50IHN0cnVjdCBw
ZXIgZGV2aWNlCkBAIC0zMzYsNiArMzkzLDkgQEAgc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCB7
CiAJc3RydWN0IHNnX3RhYmxlICpzZ3Q7CiAJZW51bSBkbWFfZGF0YV9kaXJlY3Rpb24gZGlyOwog
CXZvaWQgKnByaXY7CisKKwljb25zdCBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2hfb3BzICppbXBvcnRl
cl9vcHM7CisJdm9pZCAqaW1wb3J0ZXJfcHJpdjsKIH07CiAKIC8qKgpAQCAtMzg2LDEwICs0NDYs
NDIgQEAgc3RhdGljIGlubGluZSB2b2lkIGdldF9kbWFfYnVmKHN0cnVjdCBkbWFfYnVmICpkbWFi
dWYpCiAJZ2V0X2ZpbGUoZG1hYnVmLT5maWxlKTsKIH0KIAorLyoqCisgKiBkbWFfYnVmX2lzX2R5
bmFtaWMgLSBjaGVjayBpZiBhIERNQS1idWYgdXNlcyBkeW5hbWljIG1hcHBpbmdzLgorICogQGRt
YWJ1ZjogdGhlIERNQS1idWYgdG8gY2hlY2sKKyAqCisgKiBSZXR1cm5zIHRydWUgaWYgYSBETUEt
YnVmIGV4cG9ydGVyIHdhbnRzIHRvIGNyZWF0ZSBkeW5hbWljIHNnIHRhYmxlIG1hcHBpbmdzCisg
KiBmb3IgZWFjaCBhdHRhY2htZW50LiBGYWxzZSBpZiBvbmx5IGEgc2luZ2xlIHN0YXRpYyBzZyB0
YWJsZSBzaG91bGQgYmUgdXNlZC4KKyAqLworc3RhdGljIGlubGluZSBib29sIGRtYV9idWZfaXNf
ZHluYW1pYyhzdHJ1Y3QgZG1hX2J1ZiAqZG1hYnVmKQoreworCXJldHVybiAhIWRtYWJ1Zi0+b3Bz
LT5waW47Cit9CisKKy8qKgorICogZG1hX2J1Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMgLSBjaGVj
ayBpZiBhIERNQS1idWYgYXR0YWNobWVudCB1c2VzIGR5bmFtaWMKKyAqIG1hcHBpbnNnCisgKiBA
YXR0YWNoOiB0aGUgRE1BLWJ1ZiBhdHRhY2htZW50IHRvIGNoZWNrCisgKgorICogUmV0dXJucyB0
cnVlIGlmIGEgRE1BLWJ1ZiBpbXBvcnRlciB3YW50cyB0byB1c2UgZHluYW1pYyBzZyB0YWJsZSBt
YXBwaW5ncyBhbmQKKyAqIGNhbGxzIHRoZSBtYXAvdW5tYXAgZnVuY3Rpb25zIHdpdGggdGhlIHJl
c2VydmF0aW9uIG9iamVjdCBsb2NrZWQuCisgKi8KK3N0YXRpYyBpbmxpbmUgYm9vbAorZG1hX2J1
Zl9hdHRhY2htZW50X2lzX2R5bmFtaWMoc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0YWNo
KQoreworCXJldHVybiBhdHRhY2gtPmltcG9ydGVyX29wcyAmJiBhdHRhY2gtPmltcG9ydGVyX29w
cy0+aW52YWxpZGF0ZTsKK30KKwogc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqZG1hX2J1Zl9h
dHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1ZiwKLQkJCQkJCQlzdHJ1Y3QgZGV2aWNlICpkZXYp
OworCQkJCQkgIHN0cnVjdCBkZXZpY2UgKmRldik7CitzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICoKK2RtYV9idWZfZHluYW1pY19hdHRhY2goc3RydWN0IGRtYV9idWYgKmRtYWJ1Ziwgc3RydWN0
IGRldmljZSAqZGV2LAorCQkgICAgICAgY29uc3Qgc3RydWN0IGRtYV9idWZfYXR0YWNoX29wcyAq
aW1wb3J0ZXJfb3BzLAorCQkgICAgICAgdm9pZCAqaW1wb3J0ZXJfcHJpdik7CiB2b2lkIGRtYV9i
dWZfZGV0YWNoKHN0cnVjdCBkbWFfYnVmICpkbWFidWYsCi0JCQkJc3RydWN0IGRtYV9idWZfYXR0
YWNobWVudCAqZG1hYnVmX2F0dGFjaCk7CisJCSAgICBzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50
ICphdHRhY2gpOworaW50IGRtYV9idWZfcGluKHN0cnVjdCBkbWFfYnVmX2F0dGFjaG1lbnQgKmF0
dGFjaCk7Cit2b2lkIGRtYV9idWZfdW5waW4oc3RydWN0IGRtYV9idWZfYXR0YWNobWVudCAqYXR0
YWNoKTsKIAogc3RydWN0IGRtYV9idWYgKmRtYV9idWZfZXhwb3J0KGNvbnN0IHN0cnVjdCBkbWFf
YnVmX2V4cG9ydF9pbmZvICpleHBfaW5mbyk7CiAKQEAgLTQwMSw2ICs0OTMsNyBAQCBzdHJ1Y3Qg
c2dfdGFibGUgKmRtYV9idWZfbWFwX2F0dGFjaG1lbnQoc3RydWN0IGRtYV9idWZfYXR0YWNobWVu
dCAqLAogCQkJCQllbnVtIGRtYV9kYXRhX2RpcmVjdGlvbik7CiB2b2lkIGRtYV9idWZfdW5tYXBf
YXR0YWNobWVudChzdHJ1Y3QgZG1hX2J1Zl9hdHRhY2htZW50ICosIHN0cnVjdCBzZ190YWJsZSAq
LAogCQkJCWVudW0gZG1hX2RhdGFfZGlyZWN0aW9uKTsKK3ZvaWQgZG1hX2J1Zl9pbnZhbGlkYXRl
X21hcHBpbmdzKHN0cnVjdCBkbWFfYnVmICpkbWFfYnVmKTsKIGludCBkbWFfYnVmX2JlZ2luX2Nw
dV9hY2Nlc3Moc3RydWN0IGRtYV9idWYgKmRtYV9idWYsCiAJCQkgICAgIGVudW0gZG1hX2RhdGFf
ZGlyZWN0aW9uIGRpcik7CiBpbnQgZG1hX2J1Zl9lbmRfY3B1X2FjY2VzcyhzdHJ1Y3QgZG1hX2J1
ZiAqZG1hX2J1ZiwKLS0gCjIuMTcuMQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KSW50ZWwtZ2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJl
ZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGlu
Zm8vaW50ZWwtZ2Z4
