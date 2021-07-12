Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B9F3C60A5
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jul 2021 18:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B8DE89D44;
	Mon, 12 Jul 2021 16:30:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com
 [IPv6:2607:f8b0:4864:20::833])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8916489D44
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 16:30:56 +0000 (UTC)
Received: by mail-qt1-x833.google.com with SMTP id c9so10276684qte.6
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Jul 2021 09:30:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=JZqLFVh2orBmSdZLmTpAxJgHi24gGC0b2AWRMqwXO1A=;
 b=lQ69eRIlDRt/sasybOFUhLztR8FCz3os2A+bQ+RinJvsDk9Ynzc63v8NUbPCfSSlbD
 AP0nqAqsyQlRE6xpJtHojSbWt8jsOsZzR0P1X1t5mqiEey6RSPUGdyF9zbD/LVCj27bq
 FxlmAQ7lSlXTrJpU18FFXnsy0tJtlKDu/NoRG1ENDMtfaB3CGJLr3hYKDgd1u9QCr9u2
 HQfrOQBqIqmJt1nec/hTiAVr4A7UGD5aKlFEzgBScjKm3IF5BPlLu+h32gMN2L+Xam+K
 dqKQg7kgEDHWSKB0eG8qwTboS2/o09/urYSyxGqZauqzjF1fDIIGQIb9aSgLA4cWbJSg
 ly9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=JZqLFVh2orBmSdZLmTpAxJgHi24gGC0b2AWRMqwXO1A=;
 b=f8FHhOt+070XIG8llFRLzp89ynCl7RqfPqcARnynoLu9LoQ00eZUNbJIq2qxYI1Lkp
 7oDY2cnmsDSZJXyfup1t/mF1eEAR4uMiMzcWiHDxkTKDMxqPhkX0u3SoDzwkpL3mUccW
 zFmuj7VUNRtwdNQOCR+/CWjr5a/LTDkAk19kMG/aBwQBKzlFk7tJ6S08z3JA0cJvIoDR
 Lyk77BSNEO3dWxaNdNarasWUh6vFZOnytjhUpTQr4Yl2/G5lyUxVJTcsmqMw+9G6Z0f4
 LjLaFHNY6VaGLP2O5G2irv8zbbpLH3GAHQHWQtWvHSVQiUgjtbJjdCauiFUXF6Rid7PK
 /ZfQ==
X-Gm-Message-State: AOAM531RTQ4xA70UHr0np7WPETsnd42LLeSR9q88sLRs3FchKrhs/O+V
 D4h861GPzya9glaR/eddZS1q+y4RkyZjZd5IXhs=
X-Google-Smtp-Source: ABdhPJzGIn+Vh6VkVRlIhSLXGSqWBRGXmhFx1pc5sB6mILr7MK2BSdZFXCbuI2zpHf4ZyaoUhVem9Yv5lFR592dlfIs=
X-Received: by 2002:ac8:5c8c:: with SMTP id r12mr47815465qta.265.1626107455431; 
 Mon, 12 Jul 2021 09:30:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210712161815.24776-1-ville.syrjala@linux.intel.com>
 <20210712161815.24776-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20210712161815.24776-2-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 12 Jul 2021 17:30:26 +0100
Message-ID: <CAM0jSHPNbXzAjv_Myt3Aqru+DNi5anpyCVkX6mXpiXtyYA94aQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: s/0/NULL/
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAxMiBKdWwgMjAyMSBhdCAxNzoxOCwgVmlsbGUgU3lyamFsYQo8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4KPgo+IFVzZSBOVUxMIHdoZXJlIGFwcHJvcHJpYXRl
Lgo+Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmluZ19zdWJtaXNzaW9uLmM6MTIx
MDoyNDogd2FybmluZzogVXNpbmcgcGxhaW4gaW50ZWdlciBhcyBOVUxMIHBvaW50ZXIKPgo+IFNp
Z25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+ClJldmlld2VkLWJ5OiBNYXR0aGV3IEF1bGQgPG1hdHRoZXcuYXVsZEBpbnRlbC5jb20+Cl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBt
YWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3Rz
LmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
