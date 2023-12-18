Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 472288179A6
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:28:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BCFB10E25A;
	Mon, 18 Dec 2023 18:28:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 476E410E1FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:27:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702924030; x=1734460030;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TLZWpFLozaqp6zlTAMS3KB10++bFwn6RItdncOud8Ho=;
 b=f62kCAHIruLVX18cNf6uU7JpNZNDEpVapsv5SaTuHbJ7i4A9uaW94klg
 OaElX8nWxtOCVt/Posx817Kuh0tlCRNGFH6jdKmVJii0lcXBK9fJuQh2s
 LWtjBYACI/9SSWKtgAlYd1a19JuTooELEYckG8Acoc9AgvGEFtQGxveLK
 5pUrLGhIdg2zDX6Od23scgQW9riYbFQwKkzbAidyUuB0eNdFYCXBF8dm5
 /Km13My1T1mopnQCOk2MHOO5dD974I1wYU0wv3kEregQXTDUIjcCyd9EY
 KB1MSXAegozBqXu3XsQSb5LU+QmjGce8O3MD9xL9oxeEShmN0jQVujet+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="426661532"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="426661532"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 08:18:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10928"; a="845994901"
X-IronPort-AV: E=Sophos;i="6.04,286,1695711600"; d="scan'208";a="845994901"
Received: from ycohe13-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.77])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 08:18:17 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>
Subject: Re: [PATCH 3/6] Revert "ALSA: hda/hdmi: add connect-all quirk for
 ASUSTeK Prime B560M-A"
In-Reply-To: <alpine.DEB.2.22.394.2312181540440.14041@eliteleevi.tm.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
 <20231212180253.2883124-4-kai.vehmanen@linux.intel.com>
 <87le9rvfwf.fsf@intel.com>
 <alpine.DEB.2.22.394.2312181540440.14041@eliteleevi.tm.intel.com>
Date: Mon, 18 Dec 2023 18:18:14 +0200
Message-ID: <87frzzv60p.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 18 Dec 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> Hi,
>
> On Mon, 18 Dec 2023, Jani Nikula wrote:
>
>> On Tue, 12 Dec 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
>> > --- a/sound/pci/hda/patch_hdmi.c
>> > +++ b/sound/pci/hda/patch_hdmi.c
>> > @@ -1993,7 +1993,6 @@ static const struct snd_pci_quirk force_connect_list[] = {
>> >  	SND_PCI_QUIRK(0x103c, 0x871a, "HP", 1),
>> >  	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
>> >  	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
>> > -	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
>> 
>> So there's no replacement for this commit. Is that correct?
>> 
>> I've rebased topic/core-for-CI on top of v6.7-rc6, and everything else
>> got resolved with the upstream commits but this. I left this one in for
>> now, should I drop it?
>
> yes, this can be dropped. This was reported in the bug report as one 
> affected id, but it's not valid and I dropped in the series I sent 
> upstream. The i915 CI had no failures with this dropped, so seems we are 
> good to go.

Thanks, done.

BR,
Jani.

-- 
Jani Nikula, Intel
