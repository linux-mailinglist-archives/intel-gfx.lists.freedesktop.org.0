Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC1A506462
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 08:26:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 63AE310EAC9;
	Tue, 19 Apr 2022 06:26:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2839810EAC7
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 06:26:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650349567; x=1681885567;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=YCE8h16zsqHS4QHQNOGRDdN8mC1Z82LLhq4aJHFfAGo=;
 b=VXeoyFXfGe3yo7TbpBjqN0WmzH74G06lP3wBjcOy3a7hIogXRBw+QgS7
 tr3LA5WalanfLd+OwclHRofAY5nlULyHJ8ACxXZYgCOoab1tEae62bQbK
 HDdW27coq7Rr+S1aXVAhzNcZH1fNi/dn7NXeT1EQ+2D84hyQN0ZrTpFM1
 zneKxB7ZGHpmmVI2ogk5geDWWaBjqD2c1bcof2YD1kOwwRG9YYCRS5bzH
 cQgkbCQFUm+xfdWYz9kDEutUqKUKvoeuujQDBpgbJ0BirQTHLoy7Wyz11
 PV6fBKDgZ7oZpfcPuqgx0n4/W5OB0/uM7HCvyu9gbPeJrhKAHaMOyPZEO Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10321"; a="262549067"
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="262549067"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 23:26:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,272,1643702400"; d="scan'208";a="561601898"
Received: from ahfarrel-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.228.159])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2022 23:26:06 -0700
Date: Mon, 18 Apr 2022 23:26:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20220419062606.73bsepujqcmlnjl3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220416064418.2364582-1-lucas.demarchi@intel.com>
 <alpine.DEB.2.22.394.2204171309420.1532214@eliteleevi.tm.intel.com>
 <20220418045032.74gipx7fo6ajnoib@ldmartin-desk2>
 <s5hilr539ex.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <s5hilr539ex.wl-tiwai@suse.de>
Subject: Re: [Intel-gfx] [PATCH] ALSA: hda/i915: Fix one too many
 pci_dev_put()
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
Cc: intel-gfx@lists.freedesktop.org, alsa-devel@alsa-project.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Apr 19, 2022 at 07:54:30AM +0200, Takashi Iwai wrote:
>On Mon, 18 Apr 2022 06:50:32 +0200,
>Lucas De Marchi wrote:
>>
>> On Sun, Apr 17, 2022 at 01:13:49PM +0300, Kai Vehmanen wrote:
>> >Hi,
>> >
>> >On Fri, 15 Apr 2022, Lucas De Marchi wrote:
>> >
>> >> pci_get_class() will already unref the pci device passed as argument.
>> >> So if it's unconditionally unref'ed, even if the loop is not stopped,
>> >
>> >thanks Lucas. And yes indeed, overlooked that pci_get_class()
>> >will decrement the from device is specified.
>> >
>> >> --- a/sound/hda/hdac_i915.c
>> >> +++ b/sound/hda/hdac_i915.c
>> >> @@ -127,11 +127,10 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
>> >>  		display_dev = pci_get_class(class, display_dev);
>> >>
>> >>  		if (display_dev && display_dev->vendor == PCI_VENDOR_ID_INTEL &&
>> >> -		    connectivity_check(display_dev, hdac_pci))
>> >> +		    connectivity_check(display_dev, hdac_pci)) {
>> >> +			pci_dev_put(display_dev);
>> >>  			match = true;
>> >> -
>> >> -		pci_dev_put(display_dev);
>> >> -
>> >> +		}
>> >
>> >Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>>
>> I applied this to our topic/core-for-CI branch to unblock CI on
>> DG2. Ultimately the target for this is the sound tree though.
>
>The patch looks good, feel free to submit it.

not sure if I was clear. This patch is already targeting the sound tree:
it should apply cleanly.

topic/core-for-CI in the drm subsystem is a "temporary branch" while we
don't backmerge with the sound changes.

Lucas De Marchi

>
>
>thanks,
>
>Takashi
