Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB67881798A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Dec 2023 19:22:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54F9910E072;
	Mon, 18 Dec 2023 18:21:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D53510E27A
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Dec 2023 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702923533; x=1734459533;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=RUs050mo8VWBP/Jpwk+HnPwysSzII9bV/YrepI+gEF4=;
 b=Fg8lyMTyX6QVvgc+WdlHgvDFbUO4b6nrE5Jx5fsewtkajtFZWEvWbdj9
 T1TdeGgoTQWrfmMS0oaV39YGyo2hWnTYKLo8CPKWliLAo4RnhfUrEqeJF
 qj+KfZWkGj3KDHSBej2MjC4+zmFlv+izymMgqy1x0+AFjT3UjSo9GGuJ8
 XmPTtLPdh4N1B8OMQmB9RoACD5eRgCtflKPqRH/i24Xu/JgtF25mFRqsO
 vUCUFWIemR4GhYbBxkAPtWK9DVK8io6ure9rHnn0CGXvdjWbGQHUasvec
 HJy253Qx1llXYe4JKv9/LTbxS6Qw0gVPMZyKPXDMjPI48dpefVrlV62IY g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="380492231"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="380492231"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 05:43:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10927"; a="775586006"
X-IronPort-AV: E=Sophos;i="6.04,285,1695711600"; d="scan'208";a="775586006"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2023 05:43:44 -0800
Date: Mon, 18 Dec 2023 15:43:33 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH 3/6] Revert "ALSA: hda/hdmi: add connect-all quirk for
 ASUSTeK Prime B560M-A"
In-Reply-To: <87le9rvfwf.fsf@intel.com>
Message-ID: <alpine.DEB.2.22.394.2312181540440.14041@eliteleevi.tm.intel.com>
References: <20231212180253.2883124-1-kai.vehmanen@linux.intel.com>
 <20231212180253.2883124-4-kai.vehmanen@linux.intel.com>
 <87le9rvfwf.fsf@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
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

Hi,

On Mon, 18 Dec 2023, Jani Nikula wrote:

> On Tue, 12 Dec 2023, Kai Vehmanen <kai.vehmanen@linux.intel.com> wrote:
> > --- a/sound/pci/hda/patch_hdmi.c
> > +++ b/sound/pci/hda/patch_hdmi.c
> > @@ -1993,7 +1993,6 @@ static const struct snd_pci_quirk force_connect_list[] = {
> >  	SND_PCI_QUIRK(0x103c, 0x871a, "HP", 1),
> >  	SND_PCI_QUIRK(0x103c, 0x8711, "HP", 1),
> >  	SND_PCI_QUIRK(0x103c, 0x8715, "HP", 1),
> > -	SND_PCI_QUIRK(0x1043, 0x8694, "ASUS", 1),  /* SKL/KBL + PRIME B560M-A */
> 
> So there's no replacement for this commit. Is that correct?
> 
> I've rebased topic/core-for-CI on top of v6.7-rc6, and everything else
> got resolved with the upstream commits but this. I left this one in for
> now, should I drop it?

yes, this can be dropped. This was reported in the bug report as one 
affected id, but it's not valid and I dropped in the series I sent 
upstream. The i915 CI had no failures with this dropped, so seems we are 
good to go.

Br, Kai
