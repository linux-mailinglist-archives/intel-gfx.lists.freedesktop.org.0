Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E5180D2D0
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Dec 2023 17:52:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A8210E0C6;
	Mon, 11 Dec 2023 16:52:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0136B10E0C6
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Dec 2023 16:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702313550; x=1733849550;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=H1bSVV+C3oS3atjjvMntxugKKNzmxTwuFPvBmf7LW/4=;
 b=EKqqs3lislT5/wj80Yb/wpHvk0dl5xhl5Z/VFkyq+wdRWhZE9zE+7iyy
 uQqRU9vgZQID3LnvRWyyrgnNgZnHrBLuV/HINWoavB45O2Iv48/0ZfPwE
 8ioAgEJiW6WIfBNLq2Jbjs2OB/eYrh8YZiN+MbJ5X9NaJSi+f/le6GckM
 +PISF7IFVn1Gy62DJglPJYtApwcv4ASgkkryH2NEeieetIkVDq8lRB4ge
 WeqkSzvwtp8/vVi9+IytT+L7YJy9F9qc3WWO7jRMkAXOkQ2t1RosRxxVX
 l47TeQigbgaORYm7nRgzCqLopYZFBveIsTMYJbcmsQ4Ukl28vi+l28E/h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="461153429"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="461153429"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 08:52:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10921"; a="722865822"
X-IronPort-AV: E=Sophos;i="6.04,268,1695711600"; d="scan'208";a="722865822"
Received: from kbalak2x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.68])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Dec 2023 08:52:28 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kai Vehmanen <kai.vehmanen@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] ALSA: hda/hdmi: add force-connect quirk for ASUSTeK
 Z170M Pro
In-Reply-To: <20231207170723.2371881-1-kai.vehmanen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231207170723.2371881-1-kai.vehmanen@linux.intel.com>
Date: Mon, 11 Dec 2023 18:52:25 +0200
Message-ID: <87bkawy94m.fsf@intel.com>
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

On Thu, 07 Dec 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> On ASUSTeK Z170M PRO GAMING + Intel Kaby Lake system the display codec
> pins are not registered properly without the force-connect quirk. The
> codec will report only one pin as having external connectivity, but i915
> finds all all three connectors on the system, so the two drivers are not
> in sync.
>
> Link: https://gitlab.freedesktop.org/drm/intel/-/issues/9801
> Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>

Pushed to topic/core-for-CI.

> ---
>  sound/pci/hda/patch_hdmi.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/sound/pci/hda/patch_hdmi.c b/sound/pci/hda/patch_hdmi.c
> index 3d7f8f510ec7..8bf91fe25c65 100644
> --- a/sound/pci/hda/patch_hdmi.c
> +++ b/sound/pci/hda/patch_hdmi.c
> @@ -1995,6 +1995,7 @@ static const struct snd_pci_quirk force_connect_list[] = {
>  	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
>  	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
>  	SND_PCI_QUIRK(0x1043, 0x86ae, "ASUS", 1),  /* SKL + Z170 PRO */
> +	SND_PCI_QUIRK(0x1043, 0x86c7, "ASUS", 1),  /* KBL + Z170M PRO */
>  	SND_PCI_QUIRK(0x1462, 0xec94, "MS-7C94", 1),
>  	SND_PCI_QUIRK(0x8086, 0x2060, "Intel NUC5CPYB", 1),
>  	SND_PCI_QUIRK(0x8086, 0x2081, "Intel NUC 10", 1),

-- 
Jani Nikula, Intel
