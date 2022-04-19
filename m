Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E47A1507162
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Apr 2022 17:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37DDE10EEBD;
	Tue, 19 Apr 2022 15:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 01C6410EEBD
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Apr 2022 15:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650380895; x=1681916895;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=HntouFN5ejtrkvYerLJGVSQw239dqMRIJBPq+igg9rI=;
 b=g2/wigV0PGqfTdpVjrL56h/nCCQEXP31HqLyk1FmWNtMHCIc4Pdbai4F
 rF38SdFv2objVnThKq+rcTSEVmvZcUaBvPcCohA9HUbgOBt2AE357QmEL
 6FCJCkgdNDwGDaczmDg6E48lEv+TDBhaUFLlyqMejM8qPCQsrVpkhZ9SC
 y4+r4lLsj0Or3szQkTwy/BqvmE4BOYG7BxhZKaDgq7DjF6ghxj3B3N3DW
 qnKb0CwFjjhoS9KNxPJAXBt7qpg0EgGcQ5Si8mvzixSjNWPn5dtNpPa/v
 qNQSODjOqPEnesyCEHDICClK6nCsj2oURdN9h+obXcgTQX6FtfrxuXPWn g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10322"; a="251091922"
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="251091922"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 08:05:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,273,1643702400"; d="scan'208";a="666368195"
Received: from ahfarrel-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.228.159])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2022 08:05:27 -0700
Date: Tue, 19 Apr 2022 08:05:27 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20220419150527.tcdxf6gzxq3m75si@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220416064418.2364582-1-lucas.demarchi@intel.com>
 <s5h35i936b5.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <s5h35i936b5.wl-tiwai@suse.de>
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

On Tue, Apr 19, 2022 at 09:01:34AM +0200, Takashi Iwai wrote:
>On Sat, 16 Apr 2022 08:44:18 +0200,
>Lucas De Marchi wrote:
>>
>> pci_get_class() will already unref the pci device passed as argument.
>> So if it's unconditionally unref'ed, even if the loop is not stopped,
>> there will be one too many unref for each device not matched.
>>
>> Cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>
>> Cc: Takashi Iwai <tiwai@suse.de>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5701
>> Fixes: 0dc2696a4623 ("ALSA: hda/i915 - skip acomp init if no matching display")
>> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>
>Thanks, applied now.
>But the Fixes commit id was wrong.  I corrected to the right upstream
>one, c9db8a30d9f0.

indeed, I messed that up, using the hash from our local tree.

thanks
Lucas De Marchi
