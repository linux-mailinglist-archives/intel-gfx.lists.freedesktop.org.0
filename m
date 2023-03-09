Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0D06B17AA
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 01:11:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 320AB10E76A;
	Thu,  9 Mar 2023 00:11:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EC4910E76A
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 00:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678320671; x=1709856671;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=X6oJJqQcAVzP2pgHq+jf6cOb/9OUMItl5bUxXrbWMcE=;
 b=Xc4ecutd3Qz8PRCKjwvuWV0ZQuk+DILTgr1MegpKhyxCVjXLMWAKSPa0
 HWDjUIXDEjnZDawhkX09nJ596Y0Pw4pRDwZC2OQDQLdzsDh2qyFRmEs6r
 W5WKfnzNpqiknETY4yfPetHg0XPvTyzxI29pg/1ruT1UqjWh9cEiwubjc
 GnwhguzlfrNsOjf/b+d2YNoUZyBGnpfherSxdBDz4fYRC4mPUBshRVPlQ
 sb7a6XuWtfPoIR4RP+SY8xSdJsi1ZJQ2JbMdVEML3mR4gbq3AgObnNodf
 wDq+qMGaRkdi+9FHiW6Q5tI8VrKYvXPOxfZv4SMPiBBZR9OoC5LuwNkcE Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="333782500"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="333782500"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 16:11:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="787343407"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="787343407"
Received: from gbain-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.108])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 16:11:08 -0800
Date: Thu, 9 Mar 2023 01:11:05 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZAkkGd5jBUPuxYZA@ashyti-mobl2.lan>
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230308133624.2131582-1-andrzej.hajda@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, chris.p.wilson@linux.intel.com,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andrzej,

On Wed, Mar 08, 2023 at 02:36:24PM +0100, Andrzej Hajda wrote:
> Tests on DG2 machines show that releasing forcewakes during BAR resize
> results later in forcewake ack timeouts. Since forcewakes can be realeased
> asynchronously the simplest way to prevent it is to get all forcewakes
> for duration of BAR resizing.
> 
> v2: hold rpm as well during resizing (Rodrigo)
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
