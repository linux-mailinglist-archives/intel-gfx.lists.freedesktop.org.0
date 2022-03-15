Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB6304D9A81
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Mar 2022 12:39:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5EDE010E3BC;
	Tue, 15 Mar 2022 11:39:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 29CCA10E3B6
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Mar 2022 11:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647344377; x=1678880377;
 h=message-id:date:mime-version:subject:to:references:cc:
 from:in-reply-to:content-transfer-encoding;
 bh=14802VU1pqA15+6FMEjmIJ05qZEJj4BJUTlZand2mzU=;
 b=N0KPcW93bD9a+MaEw9z+5XLrINyh3nozMvOmQsnrZ2kHH6Zu+Dflt9Nu
 nWu0ufJG2TK82PjyyOQe24vpOJ3yLrdJXT0Z4CdtiD5lq4VLDSZG2XMWL
 SstWTepJX7b8GoAl/c2c79fTwpyeYiBVU+i8PAfJLJbE7g27BXqln4tsW
 BwMfI15pTpZ64a5hRyzwQOOOztnKlKGXD6Mop93F597flfxyHnq+VipqC
 RK1BgBPPLk5l8h1G+tYlDVdEiHwR53ITBogmHhTOw+Q8IzhfiaDJFqa5n
 faQ3PV7C3riJvD0Nxjk2drOdqXZNEEnJ+QJ+rsbhAyUg3JGBWnbEtFxkR A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10286"; a="256466480"
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="256466480"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 04:39:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,183,1643702400"; d="scan'208";a="556886897"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.35.121])
 ([10.252.35.121])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2022 04:39:31 -0700
Message-ID: <98dd3a33-2fff-f3f3-1d96-61294e080efd@linux.intel.com>
Date: Tue, 15 Mar 2022 12:39:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220314112837.352931-1-matthew.auld@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <20220314112837.352931-1-matthew.auld@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 0/7] Some more bits for small BAR enabling
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
Cc: Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

Also feel free to upgrade my a-b to r-b for the series.


Regards,

Nirmoy

On 14/03/2022 12:28, Matthew Auld wrote:
> The leftover bits around dealing with stolen-local memory + small BAR, plus
> some related fixes.
>
> v2: some tweaks based on feedback from Ville
> v3: directly probe the PTE to derive the physical offset within lmem
>
