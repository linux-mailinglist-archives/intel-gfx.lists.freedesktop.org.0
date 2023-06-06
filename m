Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EE7C723D21
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 11:22:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 837F310E31D;
	Tue,  6 Jun 2023 09:22:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36AC410E32C
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 09:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686043356; x=1717579356;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=b9VXZntpeNRoTEkueHHlfro+jLGEiHISiRUwIaILg8Y=;
 b=YpRSU55wBJswC/k0Dzechj1zYgwP6UZKu/0yDLlQ6nQnD3lpx/2z4+am
 4Eob9m81fLeUfrk0jlBBymH1WLsYXSQOTRAEjdL5KbWtTjOMy2SFvxFAS
 vwpz5nN93zADIbT4oe83Ms+HkfeNk1ZmP4sczFeYN+ozKpvJaCLA5rPr6
 sn0gJJTET44b3LcHB/wvphSRkcqyIshN/OBLjbBnr2pr7PjSRQ9FokWMy
 nq8LwztR2+J5xvSu90Eg/NYkdVGUt7Q3HZVsLgAYN4WW/PxeGmNZLvibp
 1OLAherdyX+1v9a2hgerwECdjYaxvyaiOU+eBN+0H1GjFVAIopOByor4K A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="336242099"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="336242099"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:22:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="712136053"
X-IronPort-AV: E=Sophos;i="6.00,219,1681196400"; d="scan'208";a="712136053"
Received: from yuguen-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.252.57.68])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 02:22:30 -0700
Date: Tue, 6 Jun 2023 11:22:24 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dan Carpenter <dan.carpenter@linaro.org>
Message-ID: <ZH760GjGM+7XdTa5@ashyti-mobl2.lan>
References: <ZH7tHLRZ9oBjedjN@moroto>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZH7tHLRZ9oBjedjN@moroto>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix a NULL vs IS_ERR() bug
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
Cc: intel-gfx@lists.freedesktop.org, kernel-janitors@vger.kernel.org,
 Suren Baghdasaryan <surenb@google.com>, Matthew Auld <matthew.auld@intel.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@gmail.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dan,

On Tue, Jun 06, 2023 at 11:23:56AM +0300, Dan Carpenter wrote:
> The mmap_offset_attach() function returns error pointers, it doesn't
> return NULL.
> 
> Fixes: eaee1c085863 ("drm/i915: Add a function to mmap framebuffer obj")
> Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>

Thanks for this series of fixes!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi
