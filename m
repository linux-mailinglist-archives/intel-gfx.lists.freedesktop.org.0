Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA635248402
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 13:40:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 042E489BF3;
	Tue, 18 Aug 2020 11:40:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd43.google.com (mail-io1-xd43.google.com
 [IPv6:2607:f8b0:4864:20::d43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D8FFD89BE8
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 11:40:40 +0000 (UTC)
Received: by mail-io1-xd43.google.com with SMTP id s189so20851147iod.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 04:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=8EHythZyqcSYqnIyrsV3flqqgX5tPkZwghcXZdsresE=;
 b=Y8hjTd6so4XZX8VgzlI56QQSrgiPh7wks0KLFUjBQDyGk3d22QJTSUdEWAx8Kco/N0
 DExwL2qlfgSMdf3cq6TeuFkxohVzL2LH2kWMQSS6L7HKqtaLR1IPiYOeW0B2JEiSnOTr
 8smWL/9sQriqp+kVx+49Rq3fXtI9gEuZQ40kxY5BRRk6YBmuFaqZVqehEjZKtcXHnKBm
 f/GAs/vMZ4E57c1x+Yj3Js8VcLhyPHEeVbVb/KroWSXhopVWTsldlU/rwRIwUpsY2XTn
 tTOR9xV/Y7fd+9GoSXCAOuWTffLYgq+VJ4SJlzRMP1uJ7kAhCxd8DgPuZ4B8NZkJ7ouF
 uSYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
 :content-transfer-encoding;
 bh=8EHythZyqcSYqnIyrsV3flqqgX5tPkZwghcXZdsresE=;
 b=GwduqxhygaUaj/NT01iIkCtba7YBvfgoO2djkDJ4XStDbZY0fD04wUey4LFytsWh7W
 CkRE+2K3rqiH7wEkEFyWtb+Avvb9utwIIMHj+F/21sCiqYtgQcmS6+0PVgv7IzFYqI7V
 1dV8UwOEUR8O9bIR3zozLPDPzEI9Y8ymaEHikZZs/4JUX/6j2b23Daacgub464T6F4jf
 k3kYvkf1KlmY2Rh46TFoTfP0Okwozb1/vb/XX7pNmSAHpCMaPahqXkBlAjJESpIPq0kF
 q4dQ8sckwezOKJo8/oy3vim+5Hl7ZIVTnoeUTFSk1gyW1ZQHHx4YTLf5z1GQFpdWqDCH
 yV8g==
X-Gm-Message-State: AOAM532kov27G+dBi11Z2Oh8l+m6GdrXHDBdNLNYy0p/kg78xal9BvtT
 91liRW5A0LG2Yi2ZTO8r5s0cZanoqRbNSrN4PFzpX1xpsYHr0g==
X-Google-Smtp-Source: ABdhPJwWCWMrRSHmWn+f5/dO5PzL0juga0VbKSl9AdPN/Vg9TtcQjz6H9A6FUvPMujZJq1S1OPACZ0cm/sFCpN0PEDE=
X-Received: by 2002:a05:6602:2809:: with SMTP id
 d9mr15605427ioe.79.1597750840021; 
 Tue, 18 Aug 2020 04:40:40 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@gmail.com>
Date: Tue, 18 Aug 2020 13:36:07 +0200
Message-ID: <CA+GA0_srCED0nX7XkiuOBxsxPy8xskG0Z-Lu9bWnD=tknnJNww@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gt: obey "reset" module parameter
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

RnJvbTogTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBpbnRlbC5jb20+CgpGb3Igc29t
ZSByZWFzb24gaW50ZWxfZ3RfcmVzZXQgYXR0ZW1wdHMgdG8gcmVzZXQgdGhlIEdQVSB0d2ljZS4K
T24gb25lIGNvZGUgcGF0aCAoZG9fcmVzZXQpICJyZXNldCIgcGFyYW1ldGVyIGlzIG9iZXllZCwg
YnV0IGlzCm5vdCBvbiB0aGUgb3RoZXIgb25lIChfX2ludGVsX2d0X3NldF93ZWRnZWQpLgoKRml4
IHRoaXMuCgpJIG5vdGljZWQgdGhpcyBiZWNhdXNlIEkgc3R1bWJsZWQgb24gYSBidWcgd2hpY2gg
Y29tcGxldGVseSBsb2Nrcwp1cCBhIG1hY2hpbmUgb24gcmVzZXQgKHByZXZlbnRpbmcgbWUgZnJv
bSBzYXZpbmcgdGhlIGVycm9yIHN0YXRlKQphbmQgaTkxNS5yZXNldD0wIHdhc24ndCB3b3JraW5n
IGFzIGV4cGVjdGVkLgoKU2lnbmVkLW9mZi1ieTogTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1
c2FyekBpbnRlbC5jb20+Ci0tLQogZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQu
YyB8IDMgKystCiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0p
CgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKaW5kZXggMzkwNzBiNTE0ZTY1Li5m
NDgyM2NhMmQ3MWYgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jl
c2V0LmMKKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYwpAQCAtODE2
LDcgKzgxNiw4IEBAIHN0YXRpYyB2b2lkIF9faW50ZWxfZ3Rfc2V0X3dlZGdlZChzdHJ1Y3QgaW50
ZWxfZ3QgKmd0KQogICAgIGF3YWtlID0gcmVzZXRfcHJlcGFyZShndCk7CgogICAgIC8qIEV2ZW4g
aWYgdGhlIEdQVSByZXNldCBmYWlscywgaXQgc2hvdWxkIHN0aWxsIHN0b3AgdGhlIGVuZ2luZXMg
Ki8KLSAgICBpZiAoIUlOVEVMX0lORk8oZ3QtPmk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNfZGlz
cGxheSkKKyAgICBpZiAoIUlOVEVMX0lORk8oZ3QtPmk5MTUpLT5ncHVfcmVzZXRfY2xvYmJlcnNf
ZGlzcGxheSAmJgorICAgICAgICAgICAgaTkxNV9tb2RwYXJhbXMucmVzZXQpCiAgICAgICAgIF9f
aW50ZWxfZ3RfcmVzZXQoZ3QsIEFMTF9FTkdJTkVTKTsKCiAgICAgZm9yX2VhY2hfZW5naW5lKGVu
Z2luZSwgZ3QsIGlkKQotLSAKMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2ludGVsLWdmeAo=
