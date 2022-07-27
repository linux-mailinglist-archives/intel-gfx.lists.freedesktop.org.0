Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E3E58341F
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Jul 2022 22:37:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75AAD8CF69;
	Wed, 27 Jul 2022 20:36:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34EBE8CF69
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Jul 2022 20:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658954193; x=1690490193;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CkZLQfMhb+dtZHUQlR7XdLvdvQm/OMqwEfJu7OQQRu0=;
 b=cp2MYv7eOckughAsmfPNjzefGFQPLgiFS/plw97M5hQeyghkqunP/hBT
 hC/+r+WjtaUnVg2vhXWFGMmYryF419mLpsTQIygVoBVMOpCs69Ai331y5
 h9EPTg3ZT7Ovt1YPXiRgHOSm4AnOKRS+JiGQ27YRHZp0nwMua+lQ/ldH4
 NWhnGmn0vUtX5xcyvOyfgEXNO5MZPqFBOhBwZ/sMaN7V9L2dbg2KuZZR/
 FEcwFgPQJb7eMxsKtOXtqEIUReac6BfZyr/v/8jW2z0OV9Nk8oP6fAZE1
 xNeIkFIPYJl6vJFROlVdoKYe2v5a6m5zTePX1PjAy///ZOpWXCh6IO1gh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="285889302"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="285889302"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 13:36:32 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="628531832"
Received: from cene1-mobl.ger.corp.intel.com (HELO intel.com) ([10.252.44.151])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 13:36:30 -0700
Date: Wed, 27 Jul 2022 22:36:28 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <YuGhzMYH7vXKIQh4@alfio.lan>
References: <20220727174023.16766-1-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220727174023.16766-1-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Suppress oom warning for shmemfs
 object allocation failure
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
Cc: intel-gfx@lists.freedesktop.org, matthew.auld@intel.com,
 chris.p.wilson@intel.com, andrzej.hajda@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

On Wed, Jul 27, 2022 at 07:40:23PM +0200, Nirmoy Das wrote:
> From: Chris Wilson <chris@chris-wilson.co.uk>
> 
> We report object allocation failures to userspace with ENOMEM, yet we
> still show the memory warning after failing to shrink device allocated
> pages. While this warning is similar to other system page allocation
> failures, it is superfluous to the ENOMEM provided directly to
> userspace.
> 
> v2: Add NOWARN in few more places from where we might return
>     ENOMEM to userspace.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4936
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Co-developed-by: Nirmoy Das <nirmoy.das@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
