Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98C7C4509B1
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 17:32:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1DF6E235;
	Mon, 15 Nov 2021 16:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6E3F6E235;
 Mon, 15 Nov 2021 16:32:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10169"; a="213508243"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="213508243"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 08:32:19 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="644883614"
Received: from mvaradha-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.108.39])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 08:32:19 -0800
Date: Mon, 15 Nov 2021 08:32:18 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20211115163218.syonn22nnawhwreu@ldmartin-desk2>
References: <cover.1636977089.git.jani.nikula@intel.com>
 <7bcaa1684587b9b008d3c41468fb40e63c54fbc7.1636977089.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <7bcaa1684587b9b008d3c41468fb40e63c54fbc7.1636977089.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/3] agp/intel-gtt: reduce intel-gtt
 dependencies more
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

On Mon, Nov 15, 2021 at 01:53:13PM +0200, Jani Nikula wrote:
>Don't include stuff on behalf of users if they're not strictly necessary
>for the header.
>
>Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
