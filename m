Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E4E34EB43A
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 21:46:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F15210F220;
	Tue, 29 Mar 2022 19:46:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3074F10F220
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 19:46:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648583163; x=1680119163;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=a5mokd9fvd/jYx5nJJb5K2jS4PwmrteAD3x5KbtFOmo=;
 b=Bu5PBeCB+1/2KbLR0RpV1Kag+m7DdGnXh1VpSwq2OkkXxkjCq3vZLsLD
 S9K/35Gpgt0gmUNaix2NH5856xxPH04jL8kHeslt9Jxa/InJVgarJQYOC
 2rgCI3B2TxGIqG2/wl1s5zj0uUm9QqAyv0TO5wHRxT1HkvSiaXFTs3ggd
 UxGU2bdeXv0KpIovCfI2NZWtIZeD3LWH4OSLFpB5DrNlei8/NgLkWwgrt
 CKALKrF7bn8RQTrtxo1SCwU3/GJjI2NMIqLmzJxEpkJyZY5jdYkLy726F
 E30OjjHPUQIJftT2B9RVvNGMz7uFF4glrLXVUC5JZjhlExc1WXzC56WyD w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="259069000"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="259069000"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 12:46:00 -0700
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="694839282"
Received: from ldmartin-desk2.jf.intel.com (HELO ldmartin-desk2)
 ([10.24.12.102])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 12:46:00 -0700
Date: Tue, 29 Mar 2022 12:45:59 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20220329194559.iiai2t2kkhrkfw7o@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20220329000822.1323195-1-matthew.d.roper@intel.com>
 <20220329000822.1323195-2-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20220329000822.1323195-2-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] topic/core-for-CI: Add ATS-M PCI IDs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 05:08:22PM -0700, Matt Roper wrote:
>ATS-M device IDs should be considered to behave as additional DG2-G10
>IDs (for ATS-M150) or DG2-G11 IDs (for ATS-M75).
>
>Bspec: 44477
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>


Acked-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
