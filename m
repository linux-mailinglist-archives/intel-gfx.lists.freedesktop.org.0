Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C71F83DFB9E
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Aug 2021 08:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E15F6E9D5;
	Wed,  4 Aug 2021 06:52:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBADB6E9D1;
 Wed,  4 Aug 2021 06:52:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10065"; a="201029980"
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="201029980"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 23:52:47 -0700
X-IronPort-AV: E=Sophos;i="5.84,293,1620716400"; d="scan'208";a="521722204"
Received: from jhogberg-mobl1.ger.corp.intel.com (HELO [10.249.254.191])
 ([10.249.254.191])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Aug 2021 23:52:45 -0700
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
To: Jason Ekstrand <jason@jlekstrand.net>, intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: Matthew Auld <matthew.auld@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
References: <20210715223900.1840576-1-jason@jlekstrand.net>
 <20210715223900.1840576-5-jason@jlekstrand.net>
 <7c9c608f-a00a-8890-d4fb-c4fe755e2073@linux.intel.com>
Message-ID: <aeda5ce6-ee21-bf9e-9e37-6223f072e51d@linux.intel.com>
Date: Wed, 4 Aug 2021 08:52:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <7c9c608f-a00a-8890-d4fb-c4fe755e2073@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/gem/ttm: Place new BOs in the
 requested region
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


On 8/4/21 8:49 AM, Thomas Hellström wrote:
> Hi, Jason,
>
> On 7/16/21 12:38 AM, Jason Ekstrand wrote:
>> __i915_gem_ttm_object_init() was ignoring the placement requests coming
>> from the client and always placing all BOs in SMEM upon creation.
>> Instead, compute the requested placement set from the object and pass
>> that into ttm_bo_init_reserved().
>
> This is done on purpose. When objects are initially created in SMEM, 
> they are created in "Limbo", meaning they have no pages and costly 
> allocation and clearing is deferred to first get_pages().
>
> So we shouldn't be doing this.

Ah, I see Matthew already responded on this. Sorry for the noise.

/Thomas


