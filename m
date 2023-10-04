Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8437B8D4B
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Oct 2023 21:24:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BA1410E190;
	Wed,  4 Oct 2023 19:24:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B25B410E190
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Oct 2023 19:24:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696447468; x=1727983468;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=zKeTmqq3Vbp3kEoMpFOLUc6G62wXsls0BJ59BO1Dh8k=;
 b=QkF/38qQcbHWSb+y2vIav5Rmd3ANvje+0P8rg7ZeaSLBxK2MomBZjmx/
 ibZCSjeu5j/YMhg+xc9mZ5F/FcY+Hhui9c7/yHSZy1XDQDqEs/0uIzDvB
 zRs6Y1MWcZabhnxmsf8l7qWnL5Db4RFDIExxWxtXIrn4s7ZBUJJNHgBvx
 jFs68THexh9uevFYLRowuhOyaSvMPQHYtqfbnwjTaI9NDE/t3qMhiIaU8
 RCmVSxB8Tvq8gCfeaOTmxAlrD8RwwRk/euzdRd/kx7HoGThSwVAZBg06g
 WK2HDGUwLRuNPD9DLcPLG3y4l2TL+YmyxiGerFTrr4JGRCMp/MA2ZmOSE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="363552408"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="363552408"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10853"; a="755071704"
X-IronPort-AV: E=Sophos;i="6.03,201,1694761200"; d="scan'208";a="755071704"
Received: from nurf174x-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.213.147.206])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2023 12:24:19 -0700
Date: Wed, 4 Oct 2023 21:24:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <ZR273PIRDhFHmfgc@ashyti-mobl2.lan>
References: <20231004183625.1307100-1-jonathan.cavitt@intel.com>
 <ZR23GiB9UzY4OYLg@ashyti-mobl2.lan>
 <c9a82cfc-9034-4a77-fe9e-ddde2245e0fc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c9a82cfc-9034-4a77-fe9e-ddde2245e0fc@intel.com>
Subject: Re: [Intel-gfx] [PATCH v5 1/4] drm/i915: Add GuC TLB Invalidation
 pci tags
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
Cc: janusz.krzysztofik@intel.com, matthew.d.roper@intel.com,
 intel-gfx@lists.freedesktop.org, Jonathan Cavitt <jonathan.cavitt@intel.com>,
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi John,

> > > Add pci (device info) tags for if GuC TLB Invalidation is enabled.
> > > Since GuC based TLB invalidation is only strictly necessary for MTL
> > > resently, only enable GuC based TLB invalidations for MTL.
> > > 
> > > Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> > Jani was mentioning that the pci tags is not a proper title.
> > 
> > No need to resend, I think I will merge this series, so that, if
> > you agree, I can change /pci tags/pci flag/ before pushing.
> Have all the review comments been addressed? Surely it can't be pushed until
> it has at least an ack from everyone who has expressed concerns about the
> changes?

this particular patch did not receive any comment so far, except
for the "pci tags" from Jani.

This solution was somehow hinted by Tvrtko in one of the previous
review, I guess.

Personally I think that having a pci flag just for this is a bit
of an overkill, but I don't have a strong opinion about it.

Andi
