Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF9B5B6DF7
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Sep 2022 15:08:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48D2310E6F5;
	Tue, 13 Sep 2022 13:08:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C27FF10E6F5
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Sep 2022 13:08:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663074503; x=1694610503;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=D1Zt8y4/gnq+mnDkqmnCSzxnIHvmdmBeH8JSJz0U7Os=;
 b=NeQeBAB0OtrRADqlQSRQHz6In/s1NG8qHlzCzJr3i5a09Fhi5Farhygi
 e+Evhe38e4UfSYLUwTP0fDjukM8Y7gzu+MGiDw5LHfg6Q3n04WNEqngg6
 CD+nRwDoRwcs1Bk++BkcRp+IIcFecAB8lVKr9UOsTWJJbtfP6Gpgy+0fs
 RBDfDX9MZ11Gr3eVfUHvgmMRfVkUHdItk6eke/d8a5CVlUezJ7nrVEzrH
 9MxUnQg+VpsFW5WjF0GWccwhTxWL27eqbJ1M+s03Q8tZpSt1DR5dChAsT
 h/B3pKwqfth83fi40/D9aQiyfRj5OucrOIN0b0YOIWJMvRPHA+4n34CV1 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298134292"
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="298134292"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:08:23 -0700
X-IronPort-AV: E=Sophos;i="5.93,312,1654585200"; d="scan'208";a="678558306"
Received: from crijnder-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.56])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2022 06:08:21 -0700
Date: Tue, 13 Sep 2022 15:08:19 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YyCAw8+YEjvR2Qf1@alfio.lan>
References: <20220912121306.24926-1-anshuman.gupta@intel.com>
 <20220912121306.24926-2-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220912121306.24926-2-anshuman.gupta@intel.com>
Subject: Re: [Intel-gfx] [PATCH v4 1/2] drm/i915: Refactor userfault_wakeref
 to re-use
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
Cc: intel-gfx@lists.freedesktop.org, rodrigo.vivi@intel.com,
 Matthew Auld <matthew.auld@intel.com>, chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Anshuman,

On Mon, Sep 12, 2022 at 05:43:05PM +0530, Anshuman Gupta wrote:
> Refactor userfault_wakeref to re-use for discrete lmem mmap mapping
> as well, as on discrete GTT mmap are not supported. Moving
> userfault_wakeref from ggtt to gt structure.
> 
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
