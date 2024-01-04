Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11DB382403D
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 12:06:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8200C10E3F2;
	Thu,  4 Jan 2024 11:06:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3564B10E3F2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 11:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704366378; x=1735902378;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=1/krv14iBfS6mw2iNl7MNEbwNCP1uhipK2LWMaUhYJQ=;
 b=k6Kx8aHTCxCuXpie+kOfNkSpczW6JsKmgtZQLg8Qd9XUlGjBzBXd7bYu
 NGUJFdAKWv7LK90dyRl9WRkC7423B5/Tk73GOkmeGzlV4U1JTsEGvJJLI
 8VwHuNfjumyTTxCbHZM9zqf0wm0LGIk3xkASLWgd9MFvxJ1vCx70v9F4P
 IrSkHJEjOzt96DmYHTv7LqPyAucH6xpSzEpeLWHH56OrNJtNLvthEpNPf
 Jv7Of+aUVa3y1TjYe9dmlRZ+Rxm0RZ2Dk49miZbj51nNbg3NMXbDHbEiQ
 yyivX+Kg1+jIwrjRg+sZqe21xF1ByfOlqKhCm7DyE3ty00qmhw1F7BY9y g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="396933423"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="396933423"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 03:06:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="923869652"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="923869652"
Received: from vdesserx-mobl1.ger.corp.intel.com (HELO intel.com)
 ([10.249.36.210])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 03:06:16 -0800
Date: Thu, 4 Jan 2024 12:06:13 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: Re: [V2] drm/i915: Add workaround 14019877138
Message-ID: <ZZaRDLrqdFFEnSQ9@ashyti-mobl2.lan>
References: <20240103053111.763172-1-tejas.upadhyay@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103053111.763172-1-tejas.upadhyay@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Tejas,

On Wed, Jan 03, 2024 at 11:01:11AM +0530, Tejas Upadhyay wrote:
> WA 14019877138 needed for Graphics 12.70/71 both
> 
> V2(Jani):
>   - Use drm/i915
> 
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>

looks OK to me, if no other comments, I will go ahead and merge
it.

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Andi
