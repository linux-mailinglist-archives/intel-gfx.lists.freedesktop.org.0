Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B7FE15FC464
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Oct 2022 13:42:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DAFF910E3F3;
	Wed, 12 Oct 2022 11:42:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 13CC010E3F3
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Oct 2022 11:42:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665574946; x=1697110946;
 h=date:from:to:cc:subject:in-reply-to:message-id:
 references:mime-version;
 bh=oWudnKyUm9NBIBk9yqRHMvKnYelzWpxb6+ISlrunTtg=;
 b=HVrnx5nTI/SMf655wzU8DI6H3YJTRQgpL/CbjrADthCtqWZCLp06cSPF
 PQvlf+pAyr61L2xHD5LWjmM5cNKpBNEYrrFyQ4I6iekfGoyEcll/5pOS6
 smEOP2kpnjK0bZWTOo4Gfo4O3NLh+7Y0GB9QiHmjKpZNSHC9mBkFjTmfq
 WSYBjsILVL9NlwhWNfMJr50gyot9yJg7t7WViZZnsZMWemX4OJ9UcJVvx
 Nx/zL3qBotrX6orL9z0EFGuEPB/yh6p8dwpJZj5tpMJzwX1QYmYMvB7tU
 8jcKiHUqf1D3UNvOomRszLLFUtRQxLPhXcsOaqg273uzvYQqFH8fgLQCa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="306398517"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="306398517"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 04:42:25 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577801092"
X-IronPort-AV: E=Sophos;i="5.95,179,1661842800"; d="scan'208";a="577801092"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2022 04:42:23 -0700
Date: Wed, 12 Oct 2022 14:42:50 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Ville Syrjala <ville.syrjala@linux.intel.com>
In-Reply-To: <20221012104936.30911-1-ville.syrjala@linux.intel.com>
Message-ID: <alpine.DEB.2.22.394.2210121436400.3532114@eliteleevi.tm.intel.com>
References: <20221011170011.17198-23-ville.syrjala@linux.intel.com>
 <20221012104936.30911-1-ville.syrjala@linux.intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH v2 22/22] drm/i915/audio: Resume HSW/BDW HDA
 controller around ELD access
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
Cc: Takashi Iwai <tiwai@suse.de>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Wed, 12 Oct 2022, Ville Syrjala wrote:

> On HSW/BDW the hardware ELD buffer does not work if the controller
> is suspended. I'm not 100% which thing in there is needed to make it
> work (at least just forcing the controller into D0 with setpci is

how does the error show up? I'm puzzled how this could have gone 
unreported for so long. I know many distros have had runtime PM disabled 
for the HDA controller driver, so that could perhaps explain some of this, 
but still seems a bit amazing.

We started SOF testing with upstream around GLK, so we never covered 
HSW/BDW, but surely in SOF we always have runtime suspend by default 
enabled on the audio side.

I'll need some more time for review. Will follow up later.

Br, Kai
