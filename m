Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E4B4F6568
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 18:30:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC63510E1A8;
	Wed,  6 Apr 2022 16:30:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBA8210E367
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 16:30:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649262631; x=1680798631;
 h=date:from:to:subject:message-id:references:mime-version:
 in-reply-to; bh=7IjczQwuBOjNcxCe4Z726W4pMJ2pmjAnuT96TuVtkA4=;
 b=kS+9AzaUHNQQBtjlm3FTiQHtFRvS97rJLwIrjD9EPp/7bykWdTJOI14v
 XQC4c8nY4XQylL87DTCwwxEBPE9HiAMnVyulhtH6aa7G6C+0wYOUE7nXh
 vszNSPfP/qWqOqF5gr5m/Qoj9HY6Oex6unpLkHewz818xZ3xtUSQNeusr
 Jxe/Lpe36vYAn6OtFqMY7TK2jUlf4wZNhYpH5x9eeRixORZCWm9CbyS94
 5Nwik/0VPX1InFmXaMrg9OVGnJStAIQeiL4usck30T0rOTy2tQNV44AIn
 ZE5E7wU9Ch1GXc8DCCOPGAKtENhFFfN4KozKOQwoqoiUXI6Sdct+moTgG w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10309"; a="248619592"
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="248619592"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 09:30:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,240,1643702400"; d="scan'208";a="652443061"
Received: from aclausch-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.8.158])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 09:30:30 -0700
Date: Wed, 6 Apr 2022 09:30:30 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20220406163030.syvmf4imgrxhbcvo@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220405184118.2714322-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220405184118.2714322-1-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH topic/core-for-CI] ALSA: hda/i915 - skip
 acomp init if no matching display
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

On Tue, Apr 05, 2022 at 11:41:18AM -0700, Lucas De Marchi wrote:
>From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>
>In systems with only a discrete i915 GPU, the acomp init will
>always timeout for the PCH HDA controller instance.
>
>Avoid the timeout by checking the PCI device hierarchy
>whether any display class PCI device can be found on the system,
>and at the same level as the HDA PCI device. If found, proceed
>with the acomp init, which will wait until i915 probe is complete
>and component binding can proceed. If no matching display
>device is found, the audio component bind can be safely skipped.
>
>The bind timeout will still be hit if the display is present
>in the system, but i915 driver does not bind to it by configuration
>choice or probe error. In this case the 60sec timeout will be
>hit.
>
>Signed-off-by: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>
>Link: https://lore.kernel.org/r/20220405123622.2874457-1-kai.vehmanen@linux.intel.com
>Signed-off-by: Takashi Iwai <tiwai@suse.de>
>(cherry picked from commit c9db8a30d9f091aa571b5fb7c3f434cde107b02c)
>[ applied on sound/for-linus - cherry-pick it in topic/core-for-CI to
>  unblock some CI tests ]
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

with the ack from Kai that it's ok to merge this temporarily to
topic/core-for-CI as it's already merged in sound tree, I pushed it.

thanks
Lucas De Marchi
