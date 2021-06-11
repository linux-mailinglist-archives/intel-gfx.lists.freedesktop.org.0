Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 174BA3A4694
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Jun 2021 18:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3FF2A6F390;
	Fri, 11 Jun 2021 16:34:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com
 [IPv6:2607:f8b0:4864:20::734])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA23A6F389;
 Fri, 11 Jun 2021 16:34:32 +0000 (UTC)
Received: by mail-qk1-x734.google.com with SMTP id c124so31565378qkd.8;
 Fri, 11 Jun 2021 09:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=m57wpdr8TWkeWwx/nynR/3LHtZYg/uiz58M2l2eeaXY=;
 b=eQYGJt9LRZ6POHf+sn7TAJbi6RL+JdYreMj8rAEN3V1xwYK3PnwH5CdEktYsDTkJDa
 tsd/To/20MBR5ZYHOirzQReYUlqyEXlwpnJktzWKlssnOfvHQmpbFKCt+p9mKEVZi77k
 pToMNshbMjUUWcXrB1h1KlzvtBobt66K+4HOMzk94Qhti24PWAQ9rUqELGMz2F2UMk+R
 vGj/shuLS01zwP2ENRayZAQKxoQl/akSwNofPjoXS3GgdIjzdhcSoP55soRkTWlZW6n7
 93PBzBkBmmg8HDWpBqAvluBv8Qz7gEiLa9tkp0VApEFZ1cxM5X4GePGsBAEjKyMAu8ut
 SXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=m57wpdr8TWkeWwx/nynR/3LHtZYg/uiz58M2l2eeaXY=;
 b=Qb0O5k5m43QdgQhXtCCyYO+nvIbTC4JKF3aFtp/Nty6lSbbRnWchcLHn7WN/XaQADU
 stkJHSGTKDceatq+vRJB18FsjZyoAfV+6PoLBT1qFiO2WTBypD/1w0dLGGh2AFKpaUYL
 zorUWh1JhKgJ/uGbO2+0WcPnETfB/QxRoUeFUTXIY7cJydUIq0ccFtlaWdGwItLWpnEX
 kjtKvJv0IBM6gx5Z+jXyA8rTBjmJdu8iIRYDW2M9H78LtcAodbJew0Ac2hsUMQVsvBcw
 Tzo89WfHiwuTmc7Qw/8y05Tp6hyfrJ0fLe2q58I5wL1CwyCyRl3Li1Lj/UWnv0Rm4gYq
 O0rA==
X-Gm-Message-State: AOAM532haaZbEpF+lC5Vac4UENOD5028C7JDXDOkIWBIbopWw4TFlARb
 BblYycTo73FwfwrerSNUC5uvRu+8GPiOIoAzJMnrNonbaz9SyQ==
X-Google-Smtp-Source: ABdhPJzz+/LNojokFgUJqFSiixE+cQSoAezTJzzPcIGF+TpXFumYA/7ou8YfzU0pjLGX41i02FBHTjNYgAD91jH7saA=
X-Received: by 2002:a37:9a0b:: with SMTP id c11mr4440716qke.327.1623429272221; 
 Fri, 11 Jun 2021 09:34:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210611145459.8576-1-thomas.hellstrom@linux.intel.com>
 <20210611145459.8576-5-thomas.hellstrom@linux.intel.com>
In-Reply-To: <20210611145459.8576-5-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 11 Jun 2021 17:34:05 +0100
Message-ID: <CAM0jSHPZCDSWyfvYta4hQxDQi9oR=1CqHg1xD6aDrmz4bGXHiQ@mail.gmail.com>
To: =?UTF-8?Q?Thomas_Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/ttm: Use TTM for system
 memory
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
 ML dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAxMSBKdW4gMjAyMSBhdCAxNTo1NSwgVGhvbWFzIEhlbGxzdHLDtm0KPHRob21hcy5o
ZWxsc3Ryb21AbGludXguaW50ZWwuY29tPiB3cm90ZToKPgo+IEZvciBkaXNjcmV0ZSwgdXNlIFRU
TSBmb3IgYm90aCBjYWNoZWQgYW5kIFdDIHN5c3RlbSBtZW1vcnkuIFRoYXQgbWVhbnMKPiB3ZSBj
dXJyZW50bHkgcmVseSBvbiB0aGUgVFRNIG1lbW9yeSBhY2NvdW50aW5nIC8gc2hyaW5rZXIuIEZv
ciBjYWNoZWQKPiBzeXN0ZW0gbWVtb3J5IHdlIHNob3VsZCBjb25zaWRlciByZW1haW5pbmcgc2ht
ZW0tYmFja2VkLCB3aGljaCBjYW4gYmUKPiBpbXBsZW1lbnRlZCBmcm9tIG91ciB0dG1fdHRfcG9w
dWxhdGUgY2FsYmFjay4gV2UgY2FuIHRoZW4gYWxzbyByZXVzZSBvdXIKPiBvd24gdmVyeSBlbGFi
b3JhdGUgc2hyaW5rZXIgZm9yIHRoYXQgbWVtb3J5Lgo+Cj4gU2lnbmVkLW9mZi1ieTogVGhvbWFz
IEhlbGxzdHLDtm0gPHRob21hcy5oZWxsc3Ryb21AbGludXguaW50ZWwuY29tPgpSZXZpZXdlZC1i
eTogTWF0dGhldyBBdWxkIDxtYXR0aGV3LmF1bGRAaW50ZWwuY29tPgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZnggbWFpbGluZyBsaXN0Cklu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5v
cmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
