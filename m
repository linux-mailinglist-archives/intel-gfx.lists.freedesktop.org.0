Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A388C6B73BB
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Mar 2023 11:20:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B84A10E4CB;
	Mon, 13 Mar 2023 10:20:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com
 [IPv6:2a00:1450:4864:20::236])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EFCB110E4CB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 10:20:43 +0000 (UTC)
Received: by mail-lj1-x236.google.com with SMTP id b10so12090020ljr.0
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Mar 2023 03:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1678702842;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=t/qFeMrS+qznZDXLSo6sq/6g+HzV/r/J17vwZrylHPo=;
 b=KZETqQaWC2J19ajWxEHYM70bTZ5FTa/v7wb5NWolDPqDouPdc8hcFZQoSswrOnRPrM
 oNSpBq3m6vRlExd/hcgPa2tFc0deW6vrByunvjMDNqodDQX3TwkCBjfnKOv5INBy6+Ji
 gkQ5fTTrcZL94gAoaaW2wl0TOOEZ2L4rX+C1xM8bn7UVtRxEk7hwxQ6GsCM1z+bmt79i
 dNIzOeKggUiiZs7oKUB/VautjlvCdsfmTGwipJdNHo66w9amEytX6zqfXVOAReQ9nXsV
 /sxQpXAHxSunc9asjFEk5H6xPweVRe8GrPSL81mp/7NxlTT+Y8AcZHc11vX0lXeg3dI1
 /v2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678702842;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=t/qFeMrS+qznZDXLSo6sq/6g+HzV/r/J17vwZrylHPo=;
 b=aWJyScPRIHWzLA0PxxGM+yO7BhbsugT+0UfTfDsaV2PD7WNooFT22pCfRroYX5lLKt
 oo8vnBt+qIgVHIUSaMqz7ipxdVMqIPjg3ZuAygdf2rpZEjHzORO6/cBjEnWQNueb/Zv5
 qQWCVLUn7OJYUdyyqfuwq5fMrAoYV71TbUNRIcc3D3ZlL7E2V6yIqD02B53V8AbTNGrr
 FRzUWSHAwbvgbeX7kPfbI3iYb1d89KFDp1mx0fwFIlV3Z+eXQBkAyqS8K48DJqGGAiS1
 eSAWA/lm7Au8TtPB2E+est07QZ7mX2Ml9H0hAtIQEnIrYF9RVY2NstlpXIUQcK2w5m9h
 XuGw==
X-Gm-Message-State: AO0yUKXKzqslr/OBDteXhm5PI5Rk4KIX9qqquLwMVV/EvAIF18UobFsj
 vSq2f2X8A1h/369o4X/PnxXhRWn87p5YsZv5UNgvhpRWNxU=
X-Google-Smtp-Source: AK7set+JZKSPcc9TYg04KLP058+sZ5/0Fku6vx40L5sRJKs+83P0PeStHAACP4ihbFJ1p5Li8U/3KXMWg0e7PSV0/1k=
X-Received: by 2002:a05:651c:336:b0:295:d632:ba25 with SMTP id
 b22-20020a05651c033600b00295d632ba25mr10311394ljp.5.1678702842104; Mon, 13
 Mar 2023 03:20:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230313093913.30198-1-ville.syrjala@linux.intel.com>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Mon, 13 Mar 2023 10:20:15 +0000
Message-ID: <CAM0jSHN+yfZuhY+T_AzGdQja5ORmNpBe98KOJvff0hiMnWqmrA@mail.gmail.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix build with WERROR=y
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Mar 2023 at 09:39, Ville Syrjala
<ville.syrjala@linux.intel.com> wrote:
>
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Remove the unused i915 variable to fix the build with WERROR=3Dy.
>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Fixes: d1b3657fb5b6 ("drm/i915: Remove redundant check for DG1")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
