Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D51A246D7D0
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 17:12:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D7DF738DF;
	Wed,  8 Dec 2021 16:12:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E705738C7;
 Wed,  8 Dec 2021 16:12:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="237666630"
X-IronPort-AV: E=Sophos;i="5.88,189,1635231600"; d="scan'208";a="237666630"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:12:18 -0800
X-IronPort-AV: E=Sophos;i="5.88,190,1635231600"; d="scan'208";a="503100017"
Received: from faerberc-mobl2.ger.corp.intel.com (HELO intel.com)
 ([10.251.209.148])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2021 08:12:09 -0800
Date: Wed, 8 Dec 2021 18:12:06 +0200
From: Andi Shyti <andi.shyti@intel.com>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <YbDZVt0gYX/jFPHf@intel.intel>
References: <20211208141613.7251-1-ramalingam.c@intel.com>
 <20211208141613.7251-5-ramalingam.c@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20211208141613.7251-5-ramalingam.c@intel.com>
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: enforce min page size for
 scratch
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
Cc: Thomas =?iso-8859-15?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 Hellstrom Thomas <thomas.hellstrom@intel.com>,
 Matthew Auld <matthew.auld@intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt and Ram,

On Wed, Dec 08, 2021 at 07:46:13PM +0530, Ramalingam C wrote:
> From: Matthew Auld <matthew.auld@intel.com>
> 
> If the device needs 64K minimum GTT pages for device local-memory,
> like on XEHPSDV, then we need to fail the allocation if we can't
> meet it, instead of falling back to 4K pages, otherwise we can't
> safely support the insertion of device local-memory pages for
> this vm, since the HW expects the correct physical alignment and
> size for every PTE, if we mark the page-table as 64K GTT mode.
> 
> v2: s/userpsace/userspace [Thomas]
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Ramalingam C <ramalingam.c@intel.com>
> Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
