Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01DE47D5661
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 17:30:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BAAB10E3D5;
	Tue, 24 Oct 2023 15:30:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C78C10E3D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 15:30:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698161403; x=1729697403;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=S9MyHCjMDShPa6EdDiT20WKOLwmwo5wjDiydtd+Rk3Y=;
 b=J7toAPiNstlvrCt/mn8Yx0vGtF6olsPPSftqIxkqEIYSfEPy5AVO0FRF
 yZRM2d8/aj1BK25ObFDywo8Dq4bBOlcRnrcDfsLmxhuhuA5MoXPJENT0E
 hwIOdSpmwo5YEaT8KsDUgtO6hiEXK+8/kn/XFrJfPjISm5uQBQolzIbAn
 T1axyvZOIVvdBlbdKZwXMvNVeJEM9dbRMZANmHy+g8sz0LeUFgD9hODNp
 ugm51vB/rAmPCUG1N972kjh6h2PRQC6oD5RhdCNAdmclc/n1YcS7v79pM
 HhMVMgM0VLvJ0B+dY51CxdKwPdLa757eTzYGkNWdxT0orbi3u8O3qbu35 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453562530"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="453562530"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 08:29:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758500609"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758500609"
Received: from yaminehx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.33.158])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 08:29:35 -0700
Date: Tue, 24 Oct 2023 17:29:33 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZTfi3Y57b-GObc4t@ashyti-mobl2.lan>
References: <20231019163913.2097183-2-matthew.d.roper@intel.com>
 <20231019170241.2102037-2-matthew.d.roper@intel.com>
 <ZTeySSFGbBpmfn-7@ashyti-mobl2.lan>
 <20231024152139.GU5757@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231024152139.GU5757@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mcr: Hold GT forcewake during
 steering operations
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
Cc: intel-gfx@lists.freedesktop.org,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

...

> > Cc: <stable@vger.kernel.org> # v6.3+
> 
> No stable kernels support MTL (even if they have some of the commits,
> it's all dead code).  We don't want to tag things for stable if they
> don't meet the stable kernel requirements.

yes, right... how could I have missed that :-D

> > When the access to the hardware was added.
> > 
> > BTW, given that currently we hold the forcewake already, is this
> > really a fix or is this more looking at the future? Is the Fixes
> > tag necessary?
> 
> I'm not 100% sure we hold forcewake in all the cases where we work with
> MCR registers.  For example, some of the big ones like wa_list_apply()
> don't grab forcewake until after we've already acquired the MCR
> semaphore.

yeah... OK!

> > Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

This stands.

Thanks, Matt!

Andi
