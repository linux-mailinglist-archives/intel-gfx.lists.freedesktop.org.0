Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3062C248403
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 13:41:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA9A89BA9;
	Tue, 18 Aug 2020 11:41:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-io1-xd44.google.com (mail-io1-xd44.google.com
 [IPv6:2607:f8b0:4864:20::d44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 933C789BA9
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 11:41:53 +0000 (UTC)
Received: by mail-io1-xd44.google.com with SMTP id g14so20904039iom.0
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 04:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IQRzeTbJ3kFwAq9b45PC9yqOKqoAF/TD3Vt6/LQeMPg=;
 b=Cto9bZQ+UDGvAPr20OVBoX+as/RygU/jlijuGAoYJ+5eRYBnEbulsg7shE0KK5PwjD
 F+VbcOhwJnR5Fdxx2oM9WZ79XBD+rHFFQjtlXZ9so9SzwspMX4Sn51hRrMsyBDp7okZ/
 s9J/gah6MHQVieYNw5LMxz1uBgW5xQYlWCt5vCGQn8JEsvXx4spmIhfGEmntBIbThUyA
 UTI+y85isjYc/iNaqzXQUd9Bhg69h59sxcGTzNSoJusHmfv71oLfhHjyuqb3smqbnIV0
 S3FyqkKLu12QLZCG4a99E1/8mjQ3iJkoB7ZHAGcCPJndpvFYRAbqx/6SaRkcR+IfwlM+
 Zdzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IQRzeTbJ3kFwAq9b45PC9yqOKqoAF/TD3Vt6/LQeMPg=;
 b=LSIKJrG42Xvzt7YNs1c+/GnCFQv3dtBxsmJWXrKZ2CSanxIV01ulTq6TSXlPKbavX3
 mZi3VZIWc2uIaOQqmSe5EpVZ9cWX9kjw6pF22+uc+KuaZsC0EH5Xm01AFmk0EiPUNgNQ
 BG9M1B+6QDq/Udx7HTJ4SozS4lID2ra70MIEwap6l3LtBuHIX+VW4CjesIQ/sDEwHr09
 5tiZ2qVyWrDE2PYcUQ13RMPjd3E4ETYorcoYQeiFgQvGM3ODIeZhodtApSBFqfPrvr6I
 oebW1j6edZaoq/nGVp3A4ICGRJdOB8ft+jz/vS1H+bJ5FXiojOsUy7IcFaDS7Rj8kMzX
 Y5AA==
X-Gm-Message-State: AOAM531tFgWNAPccEDLiP4RbhKkPFeVSsooT5VepwjaLvTsOsFuArg9k
 xufLDFBAJp3IE4G1C6j/ofQXdkH72snbJHF1xPXAsSorc10=
X-Google-Smtp-Source: ABdhPJyx+957c09+bA6QGM06rb8IiQgGSvzE6r80hnpAEDYzN/NPFlmKCLXZg8X7f+FHPW+dpzuWuFEWkFa5tzrG0oA=
X-Received: by 2002:a5d:954f:: with SMTP id a15mr16074760ios.53.1597750912814; 
 Tue, 18 Aug 2020 04:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <CA+GA0_srCED0nX7XkiuOBxsxPy8xskG0Z-Lu9bWnD=tknnJNww@mail.gmail.com>
In-Reply-To: <CA+GA0_srCED0nX7XkiuOBxsxPy8xskG0Z-Lu9bWnD=tknnJNww@mail.gmail.com>
From: =?UTF-8?Q?Marcin_=C5=9Alusarz?= <marcin.slusarz@gmail.com>
Date: Tue, 18 Aug 2020 13:37:20 +0200
Message-ID: <CA+GA0_tJyx-Xj6ORoBWj8+E8hXftWj4+qDMqvy83W7gQpMZ9oA@mail.gmail.com>
To: intel-gfx@lists.freedesktop.org
Subject: [Intel-gfx] [PATCH 2/2] drm/i915/gt: raise logging level of "gpu
 reset disabled" message
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

RnJvbTogTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBpbnRlbC5jb20+CgpGZXcgbGlu
ZXMgYWJvdmUgdGhlcmUncyBkcm1fbm90aWNlIHNheWluZyB0aGF0IHRoZSBncHUgd2lsbCBiZSBy
ZXNldC4KUHJpbnRpbmcgImdwdSByZXNldCBkaXNhYmxlZCIgdXNpbmcgbG93ZXIgbG9nZ2luZyBs
ZXZlbCBtYWtlcyBpdApoYXJkZXIgdG8gZmlndXJlIG91dCB3aGF0IGhhcHBlbmVkLgoKU2lnbmVk
LW9mZi1ieTogTWFyY2luIMWabHVzYXJ6IDxtYXJjaW4uc2x1c2FyekBpbnRlbC5jb20+Ci0tLQog
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmVzZXQuYyB8IDIgKy0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9yZXNldC5jCmluZGV4IGY0ODIzY2EyZDcxZi4uMDM4NDMxNWMxOTBkIDEwMDY0NAotLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yZXNldC5jCisrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2d0L2ludGVsX3Jlc2V0LmMKQEAgLTEwNDIsNyArMTA0Miw3IEBAIHZvaWQgaW50
ZWxfZ3RfcmVzZXQoc3RydWN0IGludGVsX2d0ICpndCwKICAgICAgICAgaWYgKGk5MTVfbW9kcGFy
YW1zLnJlc2V0KQogICAgICAgICAgICAgZHJtX2VycigmZ3QtPmk5MTUtPmRybSwgIkdQVSByZXNl
dCBub3Qgc3VwcG9ydGVkXG4iKTsKICAgICAgICAgZWxzZQotICAgICAgICAgICAgZHJtX2RiZygm
Z3QtPmk5MTUtPmRybSwgIkdQVSByZXNldCBkaXNhYmxlZFxuIik7CisgICAgICAgICAgICBkcm1f
bm90aWNlKCZndC0+aTkxNS0+ZHJtLCAiR1BVIHJlc2V0IGRpc2FibGVkXG4iKTsKICAgICAgICAg
Z290byBlcnJvcjsKICAgICB9CgotLSAKMi4yMC4xCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2ludGVsLWdmeAo=
