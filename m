Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D6432017E
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Feb 2021 23:59:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 224B16E0F8;
	Fri, 19 Feb 2021 22:59:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD3876E0F8
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Feb 2021 22:59:27 +0000 (UTC)
IronPort-SDR: 9I7rCahDh9xZHm6fzTiqCj8nILphX9vgBknWdzKZOzLfHcDVcTrdP2r5SUvINvfSEyZiaLWzqZ
 ZLzaQryNdNDQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9900"; a="180475582"
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="180475582"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 14:59:27 -0800
IronPort-SDR: AWDqcz5aNrLMlSfE/jADiJ87e1OB9HgLGeULywBPWsNAYDKLrsPZJ27RPCAOax6TNbUX9KSxBF
 +5f4vN5edIyQ==
X-IronPort-AV: E=Sophos;i="5.81,191,1610438400"; d="scan'208";a="591048457"
Received: from anmitta2-mobl2.gar.corp.intel.com (HELO ldmartin-desk1)
 ([10.209.128.21])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2021 14:59:26 -0800
Date: Fri, 19 Feb 2021 14:59:26 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Winkler, Tomas" <tomas.winkler@intel.com>
Message-ID: <20210219225926.ldwxla7b6bppx6dz@ldmartin-desk1>
X-Patchwork-Hint: comment
References: <20210216181925.650082-1-tomas.winkler@intel.com>
 <20210216181925.650082-4-tomas.winkler@intel.com>
 <87blcjarof.fsf@intel.com>
 <b08989f480564bbea5ce187797e9e30b@intel.com>
 <20210218094916.brm7j62if573xu5c@ldmartin-desk1>
 <23876b68716b4c5085145b54029b90bc@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <23876b68716b4c5085145b54029b90bc@intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH 3/9] drm/i915/spi: add driver for on-die
 spi device
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>, Richard Weinberger <richard@nod.at>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 18, 2021 at 10:06:08PM -0800, Winkler, Tomas wrote:
>
>>
>> On Wed, Feb 17, 2021 at 08:58:12PM +0000, Winkler, Tomas wrote:
>> >>
>> >> On Tue, 16 Feb 2021, Tomas Winkler <tomas.winkler@intel.com> wrote:
>> >> > Add the platform driver for i915 on-die spi device, exposed via mfd
>> >> > framework.
>> >> >
>> >> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> >> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> >> > Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/Kconfig             |   2 +
>> >> >  drivers/gpu/drm/i915/Makefile            |   3 +
>> >> >  drivers/gpu/drm/i915/spi/intel_spi_drv.c | 116
>> >> > +++++++++++++++++++++++
>> >> >  3 files changed, 121 insertions(+)  create mode 100644
>> >> > drivers/gpu/drm/i915/spi/intel_spi_drv.c
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/Kconfig
>> >> > b/drivers/gpu/drm/i915/Kconfig index abcaa8da45ac..13c870e5878e
>> >> > 100644
>> >> > --- a/drivers/gpu/drm/i915/Kconfig
>> >> > +++ b/drivers/gpu/drm/i915/Kconfig
>> >> > @@ -27,6 +27,8 @@ config DRM_I915
>> >> >  	select CEC_CORE if CEC_NOTIFIER
>> >> >  	select VMAP_PFN
>> >> >  	select MFD_CORE
>> >> > +	select MTD
>> >>
>> >> Selecting MTD does not seem to be a popular thing to do, which is
>> >> usually a clue it's probably the wrong thing to do.
>> >Depends, if it is not selected you'll end with wrongly configured system.
>>
>> no. I believe the idea is that having a CONFIG_I915_SPI, you could do
>>
>> 	depends on MTD
>>
>> like the other drivers doing similar thing:
>>
>> 	git grep MTD -- ':(exclude)drivers/mtd' ':(exclude)arch/' '*Kconfig'
> I know the pattern and it can be done, the issue is that mtd is used mostly in embedded systems so it is not selected by the desktop distros.
>The intel spi both on PCH and in GFX takes this into different direction and usage.

humn... but then we have a problem here. You're saying most of the
people won't need it because it's used only for manufacturing*.
And yet you want it to be force selected on everybody?  That
doesn't sound like a good plan.

Lucas De Marchi


* it may actually also be useful for kernel developers too, to dump its
content and validate the parser, help debug other systems, etc.

>
>Thanks
>Tomas
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
