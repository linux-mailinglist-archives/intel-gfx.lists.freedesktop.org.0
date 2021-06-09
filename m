Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 967DB3A0F7F
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jun 2021 11:18:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A25D89F41;
	Wed,  9 Jun 2021 09:18:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com
 [IPv6:2607:f8b0:4864:20::e35])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE08489F41;
 Wed,  9 Jun 2021 09:18:53 +0000 (UTC)
Received: by mail-vs1-xe35.google.com with SMTP id q2so5080915vsr.1;
 Wed, 09 Jun 2021 02:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=ennvFw/mU48JbmhrcKIuOOumeudswlfu+tEnCytz0U8=;
 b=Htzu/QMrvPVqhLPBML5/QHvGxLBZw2EVZkihxeC/N6m2geqgEwKSc9uB3Vc5+upva/
 R2k9rQDA4GeOINDGHPE1f6Og0suJzzZ/T+BzqxPJIMbH67H8zHzkTAdoXT6nZyH0A1oW
 ILFMbVLlkTYbfDW4Tnv+YmRlHC//ddjJEmZKieoYMKmJXuvCgHBqx7iyV1910+kQW6jC
 dT9tWYhY1yXCf6TPfgkUEnG1uSNaSvSp9MoBYK6ykJLNMDbGrx1rLaIPVeBzo0XlVSp2
 ZtpXzSF88tU9exVJerHcd/uYul6rzEE2VRJRvqLj2CWnhqMTM2zAoSZwk1JhzfAWY8sS
 3G6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=ennvFw/mU48JbmhrcKIuOOumeudswlfu+tEnCytz0U8=;
 b=l87juWkexGV6bLFpswQ6U71ylV5xP54jrxljNHG39JDA0L3X+ztrp2+YuKgJbRoTCL
 XkHAdavjzLhgiWFp4JQMkSI+mo9rEmE5L+54Y5ZyZlcOJrOpCnCMjol1oGTJtCyxHoHs
 /Sdwb/U2LLf5XQEV0b03ODdm377NFnBUex3ZGL60NsmqtKJnEwuoU1oTRL5QbcSGz6Zu
 b5FVeA9pSXYQ99MMgWd1hHXtLChFT2VeNDoXt7flV43sxAxJr+zjylRP0D+xMHhMMCI2
 2YhHd6vRDWLay7wG7aPzCj27BHyXuv0S58dqwzVbM5U3sCR6CYzYFjDnlPbZ0LINpK67
 nTPw==
X-Gm-Message-State: AOAM531yrPsExtPH+TY7KXwCjTaLcugzjJxbbQ7w2Lt1YcmK4QzjRNWC
 CbcomZjEQduu249yw+9oezKyImURvhBB8NexEQE=
X-Google-Smtp-Source: ABdhPJwOaodoaSnaV3+O4+SU3r6M6SWeakQNi/diBvDiaz5bQDd2/aqLlT1MJsrmOQTflJ/bIrzapwFQj2T0pfufs6M=
X-Received: by 2002:a67:2d07:: with SMTP id t7mr2925vst.31.1623230332935; Wed,
 09 Jun 2021 02:18:52 -0700 (PDT)
MIME-Version: 1.0
References: <20210604154905.660142-1-emil.l.velikov@gmail.com>
In-Reply-To: <20210604154905.660142-1-emil.l.velikov@gmail.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 9 Jun 2021 10:18:41 +0100
Message-ID: <CACvgo53UfT6e_GHCLjEsAGGPQq_Kt3zWP3UvsDK=PYTo3D0mSQ@mail.gmail.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: apply
 WaEnableVGAAccessThroughIOPort as needed
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 kernel@collabora.com, ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCA0IEp1biAyMDIxIGF0IDE2OjQ5LCBFbWlsIFZlbGlrb3YgPGVtaWwubC52ZWxpa292
QGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBGcm9tOiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBj
b2xsYWJvcmEuY29tPgo+Cj4gQ3VycmVudGx5IGFzIHRoZSB3b3JrYXJvdW5kIGlzIGFwcGxpZWQg
dGhlIHNjcmVlbiBmbGlja2Vycy4gQXMgYSByZXN1bHQKPiB3ZSBkbyBub3QgYWNoaWV2ZSBzZWFt
bGVzcyBib290IGV4cGVyaWVuY2UuCj4KPiBBdm9pZGluZyB0aGUgaXNzdWUgaW4gdGhlIGNvbW1v
biB1c2UtY2FzZSBtaWdodCBiZSBoYXJkLCBhbHRob3VnaCB3ZSBjYW4KPiByZXNvbHZlIGl0IGZv
ciBkdWFsIEdQVSBzZXR1cHMgLSB3aGVuIHRoZSAib3RoZXIiIEdQVSBpcyBwcmltYXJ5IGFuZC9v
cgo+IG91dHB1dHMgYXJlIGNvbm5lY3RlZCB0byBpdC4KPgo+IFdpdGggdGhpcyBJIHdhcyBhYmxl
IHRvIGdldCBzZWFtbGVzcyBleHBlcmllbmNlIG9uIG15IEludGVsL052aWRpYSBib3gsCj4gcnVu
bmluZyBzeXN0ZW1kLWJvb3QgYW5kIHNkZG0vWG9yZy4gTm90ZSB0aGF0IHRoZSBpOTE1IGRyaXZl
ciBpcyB3aXRoaW4KPiBpbml0cmQgd2hpbGUgdGhlIE52aWRpYSBvbmUgaXMgbm90Lgo+Cj4gV2l0
aG91dCB0aGlzIHBhdGNoLCB0aGUgc3BsYXNoIHByZXNlbnRlZCBieSBzeXN0ZW1kLWJvb3QgKFVF
RkkgQkdSVCkgaXMKPiB0b3JuIGRvd24gYXMgdGhlIGNvZGUtcGF0aCBraWNrcyBpbiwgbGVhdmlu
ZyB0aGUgbW9uaXRvciBibGFuayB1bnRpbCB0aGUKPiBsb2dpbiBtYW5hZ2VyIHN0YXJ0cy4KPgo+
IFNhbWUgaXNzdWUgd2VyZSByZXBvcnRlZCB3aXRoIHBseW1vdXRoL2dydWIsIGFsdGhvdWdoIHBl
cnNvbmFsbHkgSQo+IHdhc24ndCBhYmxlIHRvIGdldCB0aGVtIHRvIGJlaGF2ZSBvbiBteSBzZXR1
cC4KPgo+IFN1Z2dlc3RlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBFbWlsIFZlbGlrb3YgPGVtaWwudmVsaWtvdkBj
b2xsYWJvcmEuY29tPgo+IC0tLQo+Cj4gU3VwZXJzZWRlcwo+IGh0dHBzOi8vbG9yZS5rZXJuZWwu
b3JnL2RyaS1kZXZlbC8yMDIxMDUxNjE3MTQzMi4xNzM0MjY4LTEtZW1pbC5sLnZlbGlrb3ZAZ21h
aWwuY29tLwo+Cj4gVmlsbGUsIG90aGVycywKPgo+IFBhdGNoIGlzIGJhc2VkIGFnYWluc3QgZHJt
LWludGVsL2RybS1pbnRlbC1uZXh0IGFuZCB3aWxsIGFwcGx5IGNsZWFubHkKPiBhZ2FpbnN0IGRy
bS1pbnRlbC9kcm0taW50ZWwtZml4ZXMuCj4KPiBJZiBwb3NzaWJsZSwgY2FuIG9uZSBvZiB0aGUg
aTkxNSBtYWludGFpbmVycyBhcHBseSBpdCB0byB0aGUgbGF0dGVyPwo+Cj4gVGhhbmtzCj4gRW1p
bAo+IC0tLQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jIHwgMyAr
KysKPiAgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQo+Cj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZnYS5jCj4gaW5kZXggYmUzMzM2OTljNTE1Li43YmVlZjEyMDYw
OTcgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92Z2Eu
Ywo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmdhLmMKPiBAQCAt
MjksNiArMjksOSBAQCB2b2lkIGludGVsX3ZnYV9kaXNhYmxlKHN0cnVjdCBkcm1faTkxNV9wcml2
YXRlICpkZXZfcHJpdikKPiAgICAgICAgIGk5MTVfcmVnX3QgdmdhX3JlZyA9IGludGVsX3ZnYV9j
bnRybF9yZWcoZGV2X3ByaXYpOwo+ICAgICAgICAgdTggc3IxOwo+Cj4gKyAgICAgICBpZiAoaW50
ZWxfZGVfcmVhZChkZXZfcHJpdiwgdmdhX3JlZykgJiBWR0FfRElTUF9ESVNBQkxFKQo+ICsgICAg
ICAgICAgICAgICByZXR1cm47Cj4gKwo+ICAgICAgICAgLyogV2FFbmFibGVWR0FBY2Nlc3NUaHJv
dWdoSU9Qb3J0OmN0ZyxlbGssaWxrLHNuYixpdmIsdmx2LGhzdyAqLwo+ICAgICAgICAgdmdhX2dl
dF91bmludGVycnVwdGlibGUocGRldiwgVkdBX1JTUkNfTEVHQUNZX0lPKTsKPiAgICAgICAgIG91
dGIoU1IwMSwgVkdBX1NSX0lOREVYKTsKPiAtLQo+IDIuMzEuMQo+CgpIdW1ibGUgcG9rZT8KCi1F
bWlsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVs
LWdmeCBtYWlsaW5nIGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczov
L2xpc3RzLmZyZWVkZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
