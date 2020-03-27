Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3718F19558D
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Mar 2020 11:45:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB7D06E9F8;
	Fri, 27 Mar 2020 10:45:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ua1-x942.google.com (mail-ua1-x942.google.com
 [IPv6:2607:f8b0:4864:20::942])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 847FE6E9F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 10:45:49 +0000 (UTC)
Received: by mail-ua1-x942.google.com with SMTP id l18so3314494uak.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Mar 2020 03:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a3E+XTxu9wxtN4cBdk+vcb48tcIQ1mb27uaVS+nXiPA=;
 b=nXq7SsYgocuHLD72E/TGOhvKgXLX0ubKB6tge5Bj+UqYrqGDCYLGVjkp3brUOVpQ39
 VSMUgeD+Ya/1AcDmqgxZ2me51vgJ8ypoSn4LUgOCOgG1iLY1zVVsYJtOUPcL9EwjD1bE
 FpbBdSOtI/cx01vaL9T3XdZlWZp6pdxp95Xq18ww4D9pItj2e5to3emG9U+Lw6ubE2IT
 qQGyO6GHn/kVdv7CXW2OHx+IB6jXoHfHg9PrxoNIfmTWuU9x2Ud1c9HlQLwiORFCxPXS
 rT72Y3zEq3VR5oaMx6OANoCfLx00QNCHMFPB6Tg5mPjER0x4U1AaYajn3pwhB7vF+Ae9
 FO3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a3E+XTxu9wxtN4cBdk+vcb48tcIQ1mb27uaVS+nXiPA=;
 b=pDCLN70Lcj2ffycBl9tg5553+UVaxKFwkje7fRe4nVdfSr+ppkd0SXcoF4dVqvFfnJ
 dSp4OmwN+NL783xTOxlUmVZjxv8Z5rwuiWdttkbh6UUwDMDc0Ldn54D0O3ndwW7/lOfm
 TOQurnmkYqp/yTXld3KgsEQRVd/rWN6eacBLC7uSpGFVcMs+fAfwvqvA8oA6tN5mrqPa
 XPzYaE3YgM4wL4gAnzsX4nB9htmxVUVVBzv+jXlRlrDBSsR3OE0+ijE7Fsz9avCMxkRH
 gywlFuLTztL4X2tnGHsP9GKWVLjyoXZgNyFgPwqvjWjihWJpev2Vja/2UtoOAIi28NnD
 7ukQ==
X-Gm-Message-State: ANhLgQ2iF7ImBr5ISVf9EbY5nRCpqjLHEv6ulOxpjm9GapBMzgwysD0Z
 MOQP8AOdE3sMD3gNGGqetrNLX8XQVFIzqFhUtdE=
X-Google-Smtp-Source: ADFU+vsnX1IC+kRbVSPBbfJYDv9GHl7JNSnxm5l6Ow9cX943Om8opjWbJIEH3UULfcwoBtbILH7ZS3MrGQl8Wrul7uY=
X-Received: by 2002:ab0:344f:: with SMTP id a15mr10244848uaq.2.1585305947830; 
 Fri, 27 Mar 2020 03:45:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200325192429.GA8865@SDF.ORG>
 <CAM0jSHNGok83kk1Z7vm4rKJw3O1uC=9czSuNfidW6wb900HppQ@mail.gmail.com>
 <20200326202121.GC15115@SDF.ORG>
In-Reply-To: <20200326202121.GC15115@SDF.ORG>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Fri, 27 Mar 2020 10:45:20 +0000
Message-ID: <CAM0jSHOk45jFh5p_54Yx8UQA0jmpR8=oCLbXjCScn3pe02Ck+Q@mail.gmail.com>
To: George Spelvin <lkml@sdf.org>
Subject: Re: [Intel-gfx] [PATCH]
 drivers/gpu/drm/i915/selftests/i915_buddy.c: Fix bug
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 26 Mar 2020 at 20:21, George Spelvin <lkml@sdf.org> wrote:
>
> On Thu, Mar 26, 2020 at 05:04:43PM +0000, Matthew Auld wrote:
> > Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>
> Thank you!  I got some incomprehensible error emails (reproduced at
> https://patchwork.freedesktop.org/series/75090/) from the patchwork
> daemon, complaining about additional test failures.  Obviously, I care,
> but I can't tell if this is a genuine error, or just a flaky test being
> sensitive to the exact random number generation algorithm.
>
> If you understand these messages, do they look like I broke something?

No, doesn't seem to be related to your change.

https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_17090/shards-all.html?testfilter=buddy
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
