Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBE660FD32
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 18:35:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C4B6610E699;
	Thu, 27 Oct 2022 16:35:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com
 [IPv6:2607:f8b0:4864:20::1030])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 64BBA10E699
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 16:35:37 +0000 (UTC)
Received: by mail-pj1-x1030.google.com with SMTP id
 m14-20020a17090a3f8e00b00212dab39bcdso7063654pjc.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 09:35:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=urppZBfNFt0XJ3ZhcESG7TULR6plK7BmAb/zbSwQDp8=;
 b=o3a3iNSMsWwMI8Y20Q1ZqbfszHCrda/DokFv8WT3R06YwqLHyCk3o7Q2VO4FBGfful
 8/TYklRnQWmaJj6+zSLkIsIuIng1aBSUX3x1Kzmf20jb8DW5/3TsxhFN8LspTo28XrpI
 AmdGSGrwARlf7D8rFYMgOSfvB40taSFGsydXRELdRv5Jdj8ftqly/Jyb2BKB4OiK5Wvz
 VkWn40Fg50p5OjrJW/mGO4PCxzVWKPtdOnwnWIbprRjRBeF0yjfZ9Lem1fowKz8Q+A6j
 dynGNplaXhtgFBB7eWEEBXoDPFDQiVtF5ELANn1RFUvfa+jlY65x95ttljaye2345fZs
 QaKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=urppZBfNFt0XJ3ZhcESG7TULR6plK7BmAb/zbSwQDp8=;
 b=cTc2BwOZgAvauAI0/8FKvSQivvQP62EHTTVrEp32UtdqdFd9NIaD4myc/pruE/mlDF
 vDbXs2qGb4ZAV9TBihQYgzfQ4I9yQJcBblCg6fofgVUrIlyb5S3lV8x2IPGvrfClhMeU
 Ms/iFQsmwrlKHhsICM0TVzYYUD/Y/EbtrEXYYzN269bmzwQgFQ0N0FLd9fTAwvzitUe6
 RLB69f5Vo0KLKP7fho0SEI1NKXIsqqAdr/nk0FHtqa0L0Uz4EmRd8RFeUfW+C6gWxQxV
 EtbqziM8ErStq7hq/HVIg5uD4lTJbrZ3MiQnex5kkkqkf76XMV2AsCdaFcTsjR9rAFmS
 43IQ==
X-Gm-Message-State: ACrzQf39rnrORe6XCRJFPO1oweCKZ+uXxOFSo74oQ3QdHI6uPk45CrB+
 W4v/LH+tNLeuR91vYB8z1uOgd/q4uxjhnRcUV35cGw==
X-Google-Smtp-Source: AMsMyM6It3+2j+zCgkl6u8Y+MHPUVoTqKr7o+Ow0VF1Q9QWhO8mAeIBq0NfhI8RqsxJEIFwO2j5pPV1V41nIRNdWByg=
X-Received: by 2002:a17:90b:3a88:b0:209:f35d:ad53 with SMTP id
 om8-20020a17090b3a8800b00209f35dad53mr11113376pjb.102.1666888536691; Thu, 27
 Oct 2022 09:35:36 -0700 (PDT)
MIME-Version: 1.0
References: <20221024210953.1572998-1-gwan-gyeong.mun@intel.com>
 <87mt9kppb6.wl-ashutosh.dixit@intel.com> <Y1ercgaqQwfqt42U@ashyti-mobl2.lan>
 <87ilk7pwrw.wl-ashutosh.dixit@intel.com> <Y1h8yn4QHI3aBlCe@ashyti-mobl2.lan>
In-Reply-To: <Y1h8yn4QHI3aBlCe@ashyti-mobl2.lan>
From: Nick Desaulniers <ndesaulniers@google.com>
Date: Thu, 27 Oct 2022 09:35:24 -0700
Message-ID: <CAKwvOdkpQvk31zbipLDPXfsDZ8FpGHs9t-+9JfFQO85Bs4h=wg@mail.gmail.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] [PATCH] drm/i915/hwmon: Fix a build error used with
 clang compiler
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
Cc: intel-gfx@lists.freedesktop.org, llvm@lists.linux.dev,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Oct 25, 2022 at 5:18 PM Andi Shyti <andi.shyti@linux.intel.com> wrote:
>
> Hi Ashutosh,
>
> > But I'd wait to hear from clang/llvm folks first.
>
> Yeah! Looking forward to getting some ideas :)

Gwan-gyeong, which tree and set of configs are necessary to reproduce
the observed warning?

Warnings are treated as errors, so I don't want this breaking our CI.
-- 
Thanks,
~Nick Desaulniers
