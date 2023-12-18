Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5763F817A00
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:48:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8CA10E3B8;
	Mon, 18 Dec 2023 18:48:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00A7A10E395
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:46:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702925174; x=1734461174;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Evg1sRu6VtI+m0JBlK361GthHoFBt9rbNKVJPAg1WGQ=;
 b=i8VWppdHUgZxJJ3u+8xQYAB3riTK3KsnMNBeQxDdbGr5Jkdwfvj793jt
 gemYNkNgcyeEkDm0ZmH440o65UxsKSskTdzkovQNxxfDCNe7wx12Jdfq4
 C0AegML+MGD98xxdqBH4Gqy9Mg2o3Et0usNpqGC+dp781jvt7EaB6Noca
 lhh26LsKbUXuGnoyaKksPD/pXqPsevDozy0eGn9LbImWBoB7tpXfB5ejM
 daw8sav+aCwqkwN+dgU9UtKgR5J+CpN9bII/vg19sPAJDXfKcGJCafXu+
 i761qMoMID0847sTFen7WaD5XEEFzwJr+6KdGud6j/XaxI/FnWJdodLsZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="2708547"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; 
   d="scan'208";a="2708547"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:44:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="919250675"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="919250675"
Received: from ycohe13-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.77])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 04:44:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 3/6] Revert "ALSA: hda/hdmi: add connect-all quirk for
 ASUSTeK Prime B560M-A"
In-Reply-To: <20231212180253.2883124-4-kai.vehmanen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
 <20231212180253.2883124-4-kai.vehmanen@linux.intel.com>
Date: Mon, 18 Dec 2023 14:44:48 +0200
Message-ID: <87le9rvfwf.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 12 Dec 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> This reverts commit 6fb89f11e23453b081ec4695e5e66ccb4deb2fd0.
>
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
> ---
>  sound/pci/hda/patch_hdmi.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
> index 5232c46a32a7..b152c941414f 100644
> --- a/sound/pci/hda/patch_hdmi.c
> +++ b/sound/pci/hda/patch_hdmi.c
> @@ -1993,7 +1993,6 @@ static const struct snd_pci_quirk force_connect_list[] = {
>  	SND_PCI_QUIRK(0x103c, 0x871a, "HP", 1),
>  	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
>  	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
> -	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */

So there's no replacement for this commit. Is that correct?

I've rebased topic/core-for-CI on top of v6.7-rc6, and everything else
got resolved with the upstream commits but this. I left this one in for
now, should I drop it?

BR,
Jani.


>  	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
>  	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
>  	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),

-- 
Jani Nikula, Intel
