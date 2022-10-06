Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE23B5F62F0
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Oct 2022 10:42:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 993D010E515;
	Thu,  6 Oct 2022 08:42:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com
 [IPv6:2a00:1450:4864:20::136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A341710E515
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Oct 2022 08:42:46 +0000 (UTC)
Received: by mail-lf1-x136.google.com with SMTP id y5so1678994lfl.4
 for <intel-gfx@lists.freedesktop.org>; Thu, 06 Oct 2022 01:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date;
 bh=bA6ZLZCJrBDSIKFmeit5I8OLmAQAooGvy6kZsX9AZXI=;
 b=PlxF2NSSmiuEOB3Z+zKem3uZImT4xxfCojEDl5go0Qbqvx6q1BFTBfZy/jteHfW+s+
 rAd/VwDc7/780+XSI42FvoUg4LqGEuFViDY3fQT4HdT8CAskcx6J8UNWQ2fJ+kDRg+6d
 O39NLvUgWPccez2ZM2rOM6nyFsca0lQPNG3biVVeAeUIZtXy+RHUdqKWFyXUjiDa9z4B
 k3L1TPQR6oCqxFMzZkPYyCkxnIg4lpSTiW8BY2wEuY+wnyE+inht2Q0tH1HSyFpN7D76
 WLhzqbMtl7gN1AE2Bk9LQL8/s0y0kuAsu6LVHMHLhUmJIPCK0xhLSdPqXDQ11Lu2t2SY
 q4xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date;
 bh=bA6ZLZCJrBDSIKFmeit5I8OLmAQAooGvy6kZsX9AZXI=;
 b=nIAOD4vTE5tb25r01FFsjUwcQ9jsXKsF51TFCdYRVuQRnESPnIQx/x3rZLCQ7emCq/
 baV+tD5wzxzH1mDdfXIUTOSk3c08YzFo0CCEv9hxo3ILajBh6v6koTH7hOKouZ6o9po1
 dUhb3qhAkCJOqA0mpFDTtLKtsJOb3oXq5hExUw5ouDlfV5f6USEXrDmH+42VXtSsB8Qz
 HGTnZNItDpSumqo4cuI3f48CajclHEiIx8i23KEr37e3SAAlkAOTYPdkpLQ1ccJqa1L6
 D8Jm4yMuVG8U0CjHWxKB3oJYaZ7ClMwt4QBTZE/tNVrQHr3HUxY5X4GuMkFA69Dkgc/l
 U8nA==
X-Gm-Message-State: ACrzQf2ZbYkrtM4uiOCpbQSZh77otggDFB/7pgaiSQGxuSmnIJz+BQCy
 h6QfqbO4+ZLkaI1OYV8WCF59Xq4OCfn3F+/1j1A=
X-Google-Smtp-Source: AMsMyM7yDSzTYFjKcEFASDkcTI7l/bNEQe+x2HFgV5NOwNa2gv/Nua0MYEuDDnvIV5RiJ+wTa4jDkTKm8PoJT/Yu/vk=
X-Received: by 2002:a05:6512:c13:b0:4a2:7a2b:aa29 with SMTP id
 z19-20020a0565120c1300b004a27a2baa29mr351563lfu.468.1665045764634; Thu, 06
 Oct 2022 01:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20221005154159.18750-2-ville.syrjala@linux.intel.com>
 <20221005195646.17201-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20221005195646.17201-1-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 6 Oct 2022 09:42:17 +0100
Message-ID: <CAM0jSHNTFMicQ7Y5F79BYG=BU_7rZBhkbZabcC-yBMzAGiuoPQ@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2 2/3] drm/i915: Name our BARs based on the
 spec
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 5 Oct 2022 at 20:56, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We use all kinds of weird names for our base address registers.
> Take the names from the spec and stick to them to avoid confusing
> everyone.
>
> The only exceptions are IOBAR and LMEMBAR since naming them
> IOBAR_BAR and LMEMBAR_BAR looks too funny, and yet I think
> that adding the _BAR to GTTMMADR & co. (which don't have one
> in the spec name) does make it more clear what they are.
> And IOBAR vs. GTTMMADR_BAR also looks a bit too inconsistent
> for my taste.
>
> v2: Fix gvt build
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Acked-by: Matthew Auld <matthew.auld@intel.com>
