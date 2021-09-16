Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C29A740DBD6
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Sep 2021 15:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B7136EDDA;
	Thu, 16 Sep 2021 13:54:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B04E6EDDA
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Sep 2021 13:54:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10109"; a="202064803"
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="202064803"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:54:25 -0700
X-IronPort-AV: E=Sophos;i="5.85,298,1624345200"; d="scan'208";a="530175934"
Received: from kumardhx-mobl1.gar.corp.intel.com (HELO [10.252.50.13])
 ([10.252.50.13])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2021 06:54:25 -0700
To: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
Cc: intel-gfx@lists.freedesktop.org
References: <20210830121006.2978297-1-maarten.lankhorst@linux.intel.com>
 <20210830121006.2978297-14-maarten.lankhorst@linux.intel.com>
 <20210908031149.GQ11424@nvishwa1-DESK>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Message-ID: <b7a4a3e9-0d31-54d4-7cd0-6bf89d88a837@linux.intel.com>
Date: Thu, 16 Sep 2021 15:54:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20210908031149.GQ11424@nvishwa1-DESK>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 13/19] drm/i915: Take object lock in
 i915_ggtt_pin if ww is not set
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

Op 08-09-2021 om 05:11 schreef Niranjana Vishwanathapura:
> On Mon, Aug 30, 2021 at 02:10:00PM +0200, Maarten Lankhorst wrote:
>> i915_vma_wait_for_bind needs the vma lock held, fix the caller.
>>
>
> Need an lock assert in i915_vma_wait_for_bind()?
>
> Niranjana 
Yeah, makes sense. I suppose changing dma_resv_get_excl_unlocked() to dma_resv_excl_fence() will work too. Will do that instead..
