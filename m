Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C287146D7CE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 17:11:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F72B73887;
	Wed,  8 Dec 2021 16:11:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A1C397387E;
 Wed,  8 Dec 2021 16:11:36 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="301243522"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="301243522"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:11:31 -0800
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="515813300"
Received: from faerberc-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.148])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:11:28 -0800
Date: Wed, 8 Dec 2021 18:11:25 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <YbDZLbW28G5q0A0h@intel.intel>
References: <20211208141613.7251-1-ramalingam.c@intel.com>
 <20211208141613.7251-4-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211208141613.7251-4-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/gtt/xehpsdv: move scratch page
 to system memory
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
Cc: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Ram and Matt,

> On some platforms the hw has dropped support for 4K GTT pages when
> dealing with LMEM, and due to the design of 64K GTT pages in the hw, we
> can only mark the *entire* page-table as operating in 64K GTT mode,
> since the enable bit is still on the pde, and not the pte. And since we
> we still need to allow 4K GTT pages for SMEM objects, we can't have a
> "normal" 4K page-table with scratch pointing to LMEM, since that's
> undefined from the hw pov. The simplest solution is to just move the 64K
> scratch page to SMEM on such platforms and call it a day, since that
> should work for all configurations.
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Thomas Hellstrom <thomas.hellstrom@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
