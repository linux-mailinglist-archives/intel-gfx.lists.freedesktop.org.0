Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 884BA6E0A89
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 11:49:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E017510EA9E;
	Thu, 13 Apr 2023 09:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2279110EAA2;
 Thu, 13 Apr 2023 09:49:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681379370; x=1712915370;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TaB8vJNb/tlph6RWwH0UL7m6n6kZlKKFb9XYJVqODqc=;
 b=fOhP88bUTYGHbRAKrsNdEa37AiZOXnTWizo4EtJ7xk8ZrsM9tRqEJ9Wt
 Uk8ckkVmlbQx+zCON2BLLnV+4M+W6WVYT6iTurdNiyh0VoB1dgkeyLPS1
 xhOzqJOyIx18BnVYPWrIxuCDOpJmYzSFPkJr3V9jFHH7OnYdOujie/8r3
 x7NFgupk5m0GvOcqiwBK33zajfC/pSobW5kg/mD1sqMrKIbM4nQP6KCkG
 kdzpmysldHjkWYFiiRX1ls6Wo192RhAcxQPpg06BO5dzkJgcgCywU0Drr
 SjPWyrol58vffPzEerfdFEy1UqqIkQwRbic0pA6XBO4CTHBQ+sbOhnOJl A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="371991523"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="371991523"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:49:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10678"; a="639599327"
X-IronPort-AV: E=Sophos;i="5.98,341,1673942400"; d="scan'208";a="639599327"
Received: from merkanx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.55.88])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 02:49:27 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
In-Reply-To: <87v8i0b394.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230410183219.191543-1-jose.souza@intel.com>
 <ZDUc1Ya/ybwjo4DC@intel.com> <878reyer8q.fsf@intel.com>
 <ZDUkZKotRVT0bxga@intel.com> <875ya2eq6b.fsf@intel.com>
 <ZDVz2Ppm1DgVbZ0p@intel.com>
 <20230411195918.hdxyir5w7dp2qx55@ldmartin-desk2.lan>
 <0acba7b8416f79d8a392f15b0780768611967f20.camel@intel.com>
 <20230411212020.qwceyu5m6tpy42c4@ldmartin-desk2.lan>
 <95fb452a03404f8c3ec5983e6cd88a49e342c695.camel@intel.com>
 <87v8i0b394.fsf@intel.com>
Date: Thu, 13 Apr 2023 12:49:25 +0300
Message-ID: <87sfd4az8a.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v3 1/6] drm/i915: Initialize
 dkl_phy spin lock from display code path
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 13 Apr 2023, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 12 Apr 2023, "Souza, Jose" <jose.souza@intel.com> wrote:
>> The name is misleading but intel_modeset_init_noirq() is the first generic display initialization function called.
>> There is other display functions called before it but they are very specific(intel_dram_detect(), intel_bw_init_hw() and
>> intel_device_info_runtime_init()).
>
> See [1].
>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/87ile1cjh8.fsf@intel.com

All of this is cleaned up in
https://patchwork.freedesktop.org/series/116431/

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
