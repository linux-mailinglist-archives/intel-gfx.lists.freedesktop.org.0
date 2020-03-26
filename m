Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57445194501
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2020 18:05:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCF96E348;
	Thu, 26 Mar 2020 17:05:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-vk1-xa42.google.com (mail-vk1-xa42.google.com
 [IPv6:2607:f8b0:4864:20::a42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8AFD6E348
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 17:05:11 +0000 (UTC)
Received: by mail-vk1-xa42.google.com with SMTP id e20so1885523vke.9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Mar 2020 10:05:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WmuSk4AyJHRN2j9GxvG8usTX/OHvru+qJwz1z4lwtsk=;
 b=syEGKcVbI2Ke8uhP3lOKMLpBA6CNg3rBVPRjcyaH7nTBY/FSnN9+h3VpaT8gw5u/XF
 fP4FWbb58x/3piXQ6eMceXlzMoZyuwD1b1IrmFlKkeTx9tE9iyI4oaEcFPsKYcVN+sT+
 j+V5XzbGVQjhxxqvIs12ESVb+52CgMQAm3+IQvXZgsiCfIeluih014DbDkbh3Wk2rS4D
 jx5WeKG2lOe3S+z1gc/6cTau3IpleVQvzath9hVEp4lnvKvdnTVyHdRw6r9QJlwIVv05
 6MduP3zJAyXewVnpXTtruP95S3DzrxskliDslRVniTKxobooxRSPt4R/WeLUV2idt55Y
 pY/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WmuSk4AyJHRN2j9GxvG8usTX/OHvru+qJwz1z4lwtsk=;
 b=uLJzHU708s+PF2hQLZD0KbIJbGSfNeZunxUb7rzj7IED4/oyzjtoqXloQLuIL5y98n
 /rgTVp/SEtKb/LXY9cbdaEqLHsca7wAi7razSZUV1+B8L/fX3ZkIaw4tdlr9U2kXHZ4E
 7Ze2NhehlTciQ+Fw1qRGpj0DGChkdV82XVPz/mZHjsCG9KWyusgyrh8IXkEHHai66RUC
 wnYuY5wsyyfX4lo4VXL31fHBax/y/Yi59dfaKSZzRZ5QyltcHubF2FIbTi3DdejBCXgm
 HUXHiWC4/dTfrLdtMUQNquN3gdQ2aegbuqxIr1qfTjxdbopILQrZrwwGp9lBm+54gpC2
 jI1Q==
X-Gm-Message-State: ANhLgQ0aVwEl237xj+o6cwmvVYPykrPpfZmYo5san0GAF0HIVdaKjhLc
 5AF23MtTi4HWcW5vhbxrnGsd4Pji4AOivEmEDSIrlGla
X-Google-Smtp-Source: ADFU+vsWgNqJupc9GzkE+sKG2Gs1FwDINk93ZG1vs+CgWm5jGMqCmzbv+DCfCFmPrnvOv5dTKv0m1N6XyEzaWYJCN/k=
X-Received: by 2002:a1f:93d4:: with SMTP id v203mr7171613vkd.78.1585242309834; 
 Thu, 26 Mar 2020 10:05:09 -0700 (PDT)
MIME-Version: 1.0
References: <20200325192429.GA8865@SDF.ORG>
In-Reply-To: <20200325192429.GA8865@SDF.ORG>
From: Matthew Auld <matthew.william.auld@gmail.com>
Date: Thu, 26 Mar 2020 17:04:43 +0000
Message-ID: <CAM0jSHNGok83kk1Z7vm4rKJw3O1uC=9czSuNfidW6wb900HppQ@mail.gmail.com>
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Matthew Auld <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 25 Mar 2020 at 21:23, George Spelvin <lkml@sdf.org> wrote:
>
> igt_mm_config() calls ilog2() on the (pseudo)random 21-bit number
> s>>12.  Once in 2 million seeds, this is zero and ilog2 summons
> the nasal demons.
>
> There was an attempt to handle this case with a max(), but that's
> too late; ms could already be something bizarre.
>
> Given that the low 12 bits of s and ms are always zero, it's a lot
> simpler just to divide them by 4096, then everything fits into 32
> bits, and we can easily generate a random number 1 <= s <= 0x1fffff.
>
> Signed-off-by: George Spelvin <lkml@sdf.org>
> Fixes: 14d1b9a6247c
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
