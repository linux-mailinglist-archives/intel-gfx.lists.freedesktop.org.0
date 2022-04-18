Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C21504BC5
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Apr 2022 06:50:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E369F10E051;
	Mon, 18 Apr 2022 04:50:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE27010E051
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Apr 2022 04:50:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650257442; x=1681793442;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=cfktYVGize/9L8lI+GmjizlWPnVBMy3GzJp3zy7UjQM=;
 b=PovSAgCryehvDy/8YcQMftq7NJFh6ErtSFsDYWyx/mOpzykYKvAc21Zx
 pkPK/RmgfHFnyIjJ1tOnEFX74XlUjEl+2lP8BvqZDKz03mBW3gjkHnVuq
 2GRbS6rDqPotAIaIaWLLeuA62wU7DMD6+oet9z6vplr7esPdHrVxerCUS
 BGpUHbaRfvJWjuNffWNbJTPy6PpV5RTs4sT5ENbgNE9xd0hSUP3r/GGp9
 FDUjJSoGgpn8GVjvJTUaWp2DT315M2GrebqXPBKVLGwGBcaMkWsy63YNJ
 lJxfuxrgWNf2Ung88vQeh1XVBHXO7VbvOmQv7/GKrEPp+7FRrguFXJTO9 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10320"; a="288536690"
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="288536690"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 21:50:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,267,1643702400"; d="scan'208";a="528727377"
Received: from araviraj-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.181.3])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2022 21:50:32 -0700
Date: Sun, 17 Apr 2022 21:50:32 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Message-ID: <20220418045032.74gipx7fo6ajnoib@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220416064418.2364582-1-lucas.demarchi@intel.com>
 <alpine.DEB.2.22.394.2204171309420.1532214@eliteleevi.tm.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2204171309420.1532214@eliteleevi.tm.intel.com>
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org,
 alsa-devel@alsa-project.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Apr 17, 2022 at 01:13:49PM +0300, Kai Vehmanen wrote:
>Hi,
>
>On Fri, 15 Apr 2022, Lucas De Marchi wrote:
>
>> pci_get_class() will already unref the pci device passed as argument.
>> So if it's unconditionally unref'ed, even if the loop is not stopped,
>
>thanks Lucas. And yes indeed, overlooked that pci_get_class()
>will decrement the from device is specified.
>
>> --- a/sound/hda/hdac_i915.c
>> +++ b/sound/hda/hdac_i915.c
>> @@ -127,11 +127,10 @@ static int i915_gfx_present(struct pci_dev *hdac_pci)
>>  		display_dev = pci_get_class(class, display_dev);
>>
>>  		if (display_dev && display_dev->vendor == PCI_VENDOR_ID_INTEL &&
>> -		    connectivity_check(display_dev, hdac_pci))
>> +		    connectivity_check(display_dev, hdac_pci)) {
>> +			pci_dev_put(display_dev);
>>  			match = true;
>> -
>> -		pci_dev_put(display_dev);
>> -
>> +		}
>
>Reviewed-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

I applied this to our topic/core-for-CI branch to unblock CI on
DG2. Ultimately the target for this is the sound tree though.

thanks
Lucas De Marchi


>
>Br, Kai
