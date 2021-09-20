Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4648241125E
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Sep 2021 11:57:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227956E455;
	Mon, 20 Sep 2021 09:57:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF1876E455;
 Mon, 20 Sep 2021 09:57:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10112"; a="284110544"
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="284110544"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 02:57:19 -0700
X-IronPort-AV: E=Sophos;i="5.85,308,1624345200"; d="scan'208";a="473541883"
Received: from yohlee-mobl1.gar.corp.intel.com (HELO [10.214.151.93])
 ([10.214.151.93])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2021 02:57:16 -0700
To: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: maarten.lankhorst@linux.intel.com
References: <20210914193112.497379-1-thomas.hellstrom@linux.intel.com>
 <20210914193112.497379-6-thomas.hellstrom@linux.intel.com>
From: Matthew Auld <matthew.auld@intel.com>
Message-ID: <fe1f1242-d8b5-2c15-a40e-5d5cd1f28e70@intel.com>
Date: Mon, 20 Sep 2021 10:57:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210914193112.497379-6-thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v3 5/6] drm/i915: Don't back up pinned LMEM
 context images and rings during suspend
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 14/09/2021 20:31, Thomas Hellström wrote:
> Pinned context images are now reset during resume. Don't back them up,
> and assuming that rings can be assumed empty at suspend, don't back them
> up either.
> 
> Introduce a new object flag, I915_BO_ALLOC_PM_VOLATILE meaning that an
> object is allowed to lose its content on suspend.
> 
> v3:
> - Slight documentation clarification (Matthew Auld)
> 
> Signed-off-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
