Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C56A9FDDAA
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2019 13:26:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A71DD6E580;
	Fri, 15 Nov 2019 12:26:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa44.google.com (mail-vk1-xa44.google.com
 [IPv6:2607:f8b0:4864:20::a44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3EFF6E580
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 12:26:08 +0000 (UTC)
Received: by mail-vk1-xa44.google.com with SMTP id b64so1833928vkg.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Nov 2019 04:26:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=aGzDQ2wK7qdlp3ETfRfnvQ2Wjq0E3KcodQDSWWNDJDg=;
 b=o/1q9Wkno/KJtrcR7rwsP6S8X5IQlBIvNDOjVkYQP78fQwHhzOunZ4muKXV/2rvia7
 IPQQ6HV0r7e1UtoWoJkV6BrBxosmbSt0AdcHCeKJe1e9sqxxUx3B28e6frJWjTKvNyhk
 zjndEKGVciJEMUJwSjumwZ5GThtOuJ6KZYfUVafVr/eIfdur+i04ER88A//KPziySUp8
 vqn5kiJvJbn5XWuzdGMZZ4JMdQ3yaXtRFBtS7nZlR3e+Ji1qSI3RMxw4yPpH5KCQr8vD
 QND8mTQRMsnmxPjeWzR/2XCILsOCxUZ10p2FrcuQZkby7rCOdDyt1tSKn42nTEz7VyFM
 ZWbA==
X-Gm-Message-State: APjAAAXIxssChIG0DNYU9rs9TqebgI0HO28gjdRKvnJ5xZzYrFSRzKjV
 JKxXylcPOBsGZ3Fx5DezOjjPAScvV8w5y2vcrOU=
X-Google-Smtp-Source: APXvYqxSzRCc+5mhykNYmSu+Fy6LqJ5g7qeD2MMSZQaotOjs8Uy3Q4t/l4mEIhRBImQ9Rt1nmA5cg/80YEjj/5vh9m8=
X-Received: by 2002:a1f:a20e:: with SMTP id l14mr8314873vke.14.1573820767661; 
 Fri, 15 Nov 2019 04:26:07 -0800 (PST)
MIME-Version: 1.0
References: <20191115095200.777-1-ramalingam.c@intel.com>
In-Reply-To: <20191115095200.777-1-ramalingam.c@intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 15 Nov 2019 12:25:41 +0000
Message-ID: <CAM0jSHPThG5bx12NLZ6TxZcxDVzWreYaaqfvmzFMx6nz-=tCMA@mail.gmail.com>
To: Ramalingam C <ramalingam.c@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc;
 bh=aGzDQ2wK7qdlp3ETfRfnvQ2Wjq0E3KcodQDSWWNDJDg=;
 b=JP5/NXP3NVa/tm3m64utv+B28txVnhNUJ1AAbgSLHf4TTZ55Fjf1DMeYA9wKGjGsuB
 pUQx/hmGqN9PSi4GLfeMCzRq6/1TjlalxOHH/EvM11jl4GTiI1eNSeGanNnp+pkZ+oqL
 3/mz+3V/wDKTdqjH9+HgzAXgWuDDUgTNdNeRwe18A1tZATr7jBZKNMt/qU0gYjtm98hB
 YzIa4aUroDn7XCOzzQJ2gVJQhk5AxrtWdLOvRN4Q/k9+nAZNdU3amW4yZ4Ec85UT8Aig
 Jq9ZnWFqJRlF1vw3uBZTMx1Nm5VNJdIO5e4aGX7ADRnhmFz9PrThcNRNyvdvdcrMHgsO
 GZ3w==
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: FB allocation from LMEM,
 if supported
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxNSBOb3YgMjAxOSBhdCAwOTo1MiwgUmFtYWxpbmdhbSBDIDxyYW1hbGluZ2FtLmNA
aW50ZWwuY29tPiB3cm90ZToKPgo+IEZCIGZvciBmYmRldiBpcyBhbGxvY2F0ZWQgZnJvbSBMTUVN
IGlmIHRoZSBwbGF0Zm9ybSBzdXBwb3J0cyBMTUVNLgo+Cj4gU2lnbmVkLW9mZi1ieTogUmFtYWxp
bmdhbSBDIDxyYW1hbGluZ2FtLmNAaW50ZWwuY29tPgo+IGNjOiBNYXR0aGV3IEF1bGQgPG1hdHRo
ZXcuYXVsZEBpbnRlbC5jb20+CgpTb3VuZHMgcmVhc29uYWJsZSBJIHRoaW5rLiBEbyB3ZSBhbHNv
IG5lZWQgdG8gYWRqdXN0IGludGVsZmJfY3JlYXRlIGFzCnBhcnQgb2YgdGhpcz8gcGluX2lvbWFw
LCBnbWFkciBldGM/Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkludGVsLWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
ZwpodHRwczovL2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdm
eA==
