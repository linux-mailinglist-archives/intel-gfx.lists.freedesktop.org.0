Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5490175C70D
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Jul 2023 14:45:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 489D810E67B;
	Fri, 21 Jul 2023 12:45:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D9BBB10E66A;
 Fri, 21 Jul 2023 12:45:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689943519; x=1721479519;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1ywFgKtUbH+wD6Lt8cjDXh1JtExA8Tc0v2vAW2ZA8Ho=;
 b=Kthf9ZVlnuWWwowGFIAbwsYvlRPxdCdMxPm8dqe3Pa/hZ2KXZO/BhXkp
 +I5HUTHilayAT+catF5LvE+mkNp4aNb8ug+4yKhKDOFXTLXUEqmEHWwon
 QIsfZ5/vTXIVpoy03FvSR54kX7XbjvseSChg/emvKAx+x2CqjeIhwKumb
 dI7vRp/+UHfgl3fMi0cFo398785NK3mQt3u33UrkK2F8hWmF3ualIQ8b0
 WpIAVMnuN7oOr6tejlkspuwRwP8A0lrsUgKwPjVaE/1zWofs8Z6lTswkV
 qhDGuDXEafNNRy67TT8DTlvYIYg9X+FoiXkqNDjcTDZKxjAzUzdacAOgw Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10777"; a="370618314"
X-IronPort-AV: E=Sophos;i="6.01,220,1684825200"; d="scan'208";a="370618314"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 05:45:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="868235335"
Received: from hbockhor-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.54.104])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2023 05:45:16 -0700
Date: Fri, 21 Jul 2023 14:45:12 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>
Message-ID: <ZLp92B6lpao5HCYQ@ashyti-mobl2.lan>
References: <20230720210737.761400-8-andi.shyti@linux.intel.com>
 <2614817.k3LOHGUjKi@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2614817.k3LOHGUjKi@jkrzyszt-mobl2.ger.corp.intel.com>
Subject: Re: [Intel-gfx] [v7,
 7/9] drm/i915/gt: Ensure memory quiesced before invalidation for
 all engines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>, "Cavitt,
 Jonathan" <jonathan.cavitt@intel.com>, linux-stable <stable@vger.kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 dri-evel <dri-devel@lists.freedesktop.org>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Janusz,

On Fri, Jul 21, 2023 at 12:10:22PM +0000, Krzysztofik, Janusz wrote:
> Hi Andi,
> 
> On Thursday, 20 July 2023 23:07:35 CEST Andi Shyti wrote:
> > Commit af9e423a8aae 
> 
> You can't use this commit ID, it is invalid (the patch you are referring to 
> belongs to your series, then is not available in any official repository, 
> hence no stable commit ID yet).

yes, I need to update it, I know... this has changed at every
revision, but I was lazy and decided to do it at the end after
the whole review process was done. I didn't think that anyone
would go and check it :-D

It's good to know that there is a thorough review here! Thanks!

> > ("drm/i915/gt: Ensure memory quiesced before
> > invalidation") has made sure that the memory is quiesced before
> > invalidating the AUX CCS table. Do it for all the other engines
> > and not just RCS.
> 
> Why do we need that now for other engines, while that former patch seemed to 
> suggest we didn't?

This whole work started from a a couple of patches from Jonathan
and slowly exploded in this series of 9 patches. I tried to
preserve his work and just add things around them.

What Jonathan originally did was to add aux invalidation support
only for RCS and Compute engines, but then hardware guys updated
the docs asking to do it for basically all the engines.

Thank you,
Andi
