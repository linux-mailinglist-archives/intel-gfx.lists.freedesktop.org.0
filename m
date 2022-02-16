Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E5DFF4BA112
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Feb 2022 14:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91D4010E6B2;
	Thu, 17 Feb 2022 13:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E7210E3D6;
 Wed, 16 Feb 2022 19:38:37 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 01E7BB81ED6;
 Wed, 16 Feb 2022 19:38:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 28A69C004E1;
 Wed, 16 Feb 2022 19:38:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1645040312;
 bh=YUNeMwnffWU/vzA+11lFMuMWe0+JjFTHVyeqME5xzxw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RvhRgyEjawXUAql0FqCTCcTpqR6GYBvsqNC9EZPqI5ZukTe3YMkyAiJ+1YKBf+Rlr
 sxewfhO7AtNd8GwQy/RQGGJ/AXgX1LgrWMnZTpDKZCiIl4MoI0X8P3b4yUkf4X3JeP
 l7bOM+By1/829q8HEUDp0joAEckiMlN1bSJeEtmm9DT0v1cg0aKN9haMO+KRTEXTKx
 BIawC1huC6S2hOqZ/gswPro0qF/Bzg0858Vu6QjTMbuvQTz7D1gR8uQt+HV6mEdhmv
 BV4TgmRvjAQDxRzfAaigAGsmsMmR8Yj0ESiy1ZrH3LP0qLNGtaqg4OazRGKQ9Qu6L7
 d13KOv1rLre5w==
Date: Wed, 16 Feb 2022 13:46:09 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Message-ID: <20220216194609.GA903947@embeddedor>
References: <20220215174743.GA878920@embeddedor>
 <202202151016.C0471D6E@keescook>
 <20220215192110.GA883653@embeddedor> <Ygv8wY75hNqS7zO6@unreal>
 <20220215193221.GA884407@embeddedor>
 <CAJZ5v0jpAnQk+Hub6ue6t712RW+W0YBjb_gAcZZbUeuYMGv7mg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAJZ5v0jpAnQk+Hub6ue6t712RW+W0YBjb_gAcZZbUeuYMGv7mg@mail.gmail.com>
X-Mailman-Approved-At: Thu, 17 Feb 2022 13:26:55 +0000
Subject: Re: [Intel-gfx] [PATCH][next] treewide: Replace zero-length arrays
 with flexible-array members
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, linux-ia64@vger.kernel.org,
 Linux-sh list <linux-sh@vger.kernel.org>,
 nouveau <nouveau@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, target-devel@vger.kernel.org,
 linux-hardening@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-arch <linux-arch@vger.kernel.org>,
 linux-s390@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
 "open list:BLUETOOTH DRIVERS" <linux-bluetooth@vger.kernel.org>,
 linux-rdma@vger.kernel.org, linux-staging@lists.linux.dev,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 intel-gfx <intel-gfx@lists.freedesktop.org>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, mpi3mr-linuxdrv.pdl@broadcom.com,
 coresight@lists.linaro.org, sparmaintainer@unisys.com,
 linux-um@lists.infradead.org, greybus-dev@lists.linaro.org,
 linux-rpi-kernel@lists.infradead.org,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "open list:ACPI COMPONENT ARCHITECTURE \(ACPICA\)" <devel@acpica.org>,
 linux-cifs@vger.kernel.org,
 "open list:TARGET SUBSYSTEM" <linux-scsi@vger.kernel.org>,
 netdev <netdev@vger.kernel.org>, samba-technical@lists.samba.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-perf-users@vger.kernel.org, GR-QLogic-Storage-Upstream@marvell.com,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-alpha@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 16, 2022 at 08:05:47PM +0100, Rafael J. Wysocki wrote:
> On Tue, Feb 15, 2022 at 8:24 PM Gustavo A. R. Silva
> <gustavoars@kernel.org> wrote:
> 
> Can you also send the ACPI patch separately, please?
> 
> We would like to route it through the upstream ACPICA code base.

Yeah; no problem.

Thanks
--
Gustavo
