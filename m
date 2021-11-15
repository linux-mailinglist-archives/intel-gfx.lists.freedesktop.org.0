Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D17164509A2
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 17:30:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5139C6E221;
	Mon, 15 Nov 2021 16:30:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3F4756E170;
 Mon, 15 Nov 2021 16:30:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="233717418"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="233717418"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 08:30:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="453874044"
Received: from mvaradha-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.108.39])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 08:30:04 -0800
Date: Mon, 15 Nov 2021 08:30:03 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211115163003.cilfnli4ovavsoml@ldmartin-desk2>
References: <cover.1636977089.git.jani.nikula@intel.com>
 <034f57db24d6936ac2e4e6830261d791240cdd79.1636977089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <034f57db24d6936ac2e4e6830261d791240cdd79.1636977089.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915: include intel-gtt.h only
 where needed
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
Cc: intel-gfx@lists.freedesktop.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 15, 2021 at 01:53:11PM +0200, Jani Nikula wrote:
>Only intel_gt.c and intel_ggtt.c need the interface.
>
>Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
