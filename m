Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EBF46416377
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Sep 2021 18:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EA156E0D9;
	Thu, 23 Sep 2021 16:40:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA4D56E0D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 16:40:38 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B30EA6105A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 16:40:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1632415238;
 bh=V1cWZb0nJ3xV2ilEt8lFy8OBkxvOxBktcmuhLF+tzbw=;
 h=References:In-Reply-To:From:Date:Subject:To:List-Id:Cc:From;
 b=nYq0OiFr0bPM7cNwAZ1ruB7BQVh+e6Z5ky/sbWrUHtqUVjAd/B301Vc0muwMdL9XK
 2xswMHJhbG6bgrBQs8i72ar6bwBZ1GfwVKXfjSwsbz6Wie9SK6hknw0QTRurgftZ/V
 ZwZ56dR+1hwEYjfESVq3lP+Yv5LrvFOrGTHfjeAmGcenFE6dgdGnft+e2R0pFBr4/K
 UUqi0WKN06N2+BvgMXiqQoDN32l3qw72cwZ84Dd3eMrQKZVGLS0oGgFZvCXEaFICKj
 PQmcNt+srxCfj3+4jiwJqBdjC4XFwpdwwPvv0PHEwnF/YRCOFFTItW6ztECdZK7zpC
 WtVQKsY0oNpBA==
Received: by mail-io1-f49.google.com with SMTP id n71so8995790iod.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Sep 2021 09:40:38 -0700 (PDT)
X-Gm-Message-State: AOAM533ZX8eUYhoQZVmLpKey8kfy4wztJpphzjh3ZAH8/8M1LjEkA/50
 p3HdhoKWwpPFym0b8Gylr1PcOpJdbrUioPauOzA=
X-Google-Smtp-Source: ABdhPJxRzDS0jvjRFMzDM1+kAhCWeYgZVzxurLt3Cy3a9zZM1KfMR5r+yzDhH7VQpK0CZFppda2hmo235rJFGSRI2X4=
X-Received: by 2002:a5d:9601:: with SMTP id w1mr4714503iol.209.1632415238195; 
 Thu, 23 Sep 2021 09:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <c5ec6f413e4940c486505b2d511d091d@intel.com>
In-Reply-To: <c5ec6f413e4940c486505b2d511d091d@intel.com>
From: Josh Boyer <jwboyer@kernel.org>
Date: Thu, 23 Sep 2021 12:40:27 -0400
X-Gmail-Original-Message-ID: <CA+5PVA5C4PqcFfLNxzEHBFchALTvsmLoKw+TFy4Fu4zVzXAt_w@mail.gmail.com>
Message-ID: <CA+5PVA5C4PqcFfLNxzEHBFchALTvsmLoKw+TFy4Fu4zVzXAt_w@mail.gmail.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
Cc: "linux-firmware@kernel.org" <linux-firmware@kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Kyle McMartin <kyle@mcmartin.ca>, 
 "ben@decadent.org.uk" <ben@decadent.org.uk>
Content-Type: text/plain; charset="UTF-8"
Subject: Re: [Intel-gfx] i915 Updates - ADLP DMC v2.12
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Sep 20, 2021 at 5:57 PM Srivatsa, Anusha
<anusha.srivatsa@intel.com> wrote:
>
> Hi josh, Ben, Kyle
>
> Kindly add the below i915 changes to linux-firmware:
>
> linux-firmware: add frimware for mediatek bluetooth chip (MT7922) (2021-09-13 11:35:49 -0400)
>
>
>
> are available in the Git repository at:
>
>
>
>   git://anongit.freedesktop.org/drm/drm-firmware adlp_dmc_2_12

Pulled and pushed out.

josh
