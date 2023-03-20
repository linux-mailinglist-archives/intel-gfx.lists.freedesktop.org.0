Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 246996C06CE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 01:25:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 751E610E050;
	Mon, 20 Mar 2023 00:25:01 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C60F810E050
 for <Intel-GFX@lists.freedesktop.org>; Mon, 20 Mar 2023 00:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679271899; x=1710807899;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=hRg4LhAkN/adgPGPV/i2N96tRIruwIc4u+L120zGVD4=;
 b=Jka1BGBZVXAuqGpPMzZbCiysyvkY058lsATvzHmsiFyblOWZIQpC5imN
 vZBfc8Fw5/BXcniy+P4tKhBMIjMot91xHt0TpCO5t2TzDwe+QUtgQ0dja
 zfEz5UW20VQN+qtgxNBKEF6T9j6q5StadhYoe/gtCjP+hcSUdoJMy6yWP
 6V4DRJQMn6o8HGdrKlHIuzVYCenaOBWP0799k8LpFByjYYViMRlCt78WW
 TGr44xz3mRc1TfPVScBcGUuWlBm+U5xg78StuSQGsUd6x+eaXYwBU05tb
 lTTwrGSq8M2bjyy3hVFNbwRsM85qNzwuWeg/rlXU4GkMhm9TSxQOHkG+L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="424824296"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="424824296"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2023 17:24:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="855101568"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="855101568"
Received: from msbunten-mobl1.amr.corp.intel.com (HELO intel.com)
 ([10.251.221.102])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2023 17:24:57 -0700
Date: Mon, 20 Mar 2023 01:24:33 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <ZBenwTnXPzvjK7WC@ashyti-mobl2.lan>
References: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230317055239.1313175-1-tejas.upadhyay@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Consider multi-gt at all places
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
Cc: Intel-GFX@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Fri, Mar 17, 2023 at 11:22:39AM +0530, Tejas Upadhyay wrote:
> In order to make igt_live_test work in proper
> way, we need to consider multi-gt in all tests
> where igt_live_test is used as well as at other
> random places where multi-gt should be considered.
> 
> Cc: Andi Shyti <andi.shyti@linux.intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

Everything looks good, but many things could potentially go wrong
when changing i915 to gt. I would like to see some positive
results from the CI before proceeding.

I will take care of resubmitting the tests once CI is back from
holiday.

Thanks Tejas,
Andi
