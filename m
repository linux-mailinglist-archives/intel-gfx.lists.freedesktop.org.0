Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7D74693E6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 11:29:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E107973F41;
	Mon,  6 Dec 2021 10:22:05 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89B0F6E8F3;
 Mon,  6 Dec 2021 08:49:40 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10189"; a="237216485"
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="237216485"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 00:49:39 -0800
X-IronPort-AV: E=Sophos;i="5.87,291,1631602800"; d="scan'208";a="604765678"
Received: from akerber-mobl.amr.corp.intel.com (HELO [10.212.86.72])
 ([10.212.86.72])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 00:49:38 -0800
Message-ID: <c9f5c2b9-b560-93f1-47e1-a4771111385d@linux.intel.com>
Date: Mon, 6 Dec 2021 08:49:36 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <20211203155456.3954189-1-tvrtko.ursulin@linux.intel.com>
 <87k0glup34.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87k0glup34.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH i-g-t] intel-gpu-top: Add support for per
 client stats
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
Cc: igt-dev@lists.freedesktop.org, Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 04/12/2021 01:38, Dixit, Ashutosh wrote:
> On Fri, 03 Dec 2021 07:54:56 -0800, Tvrtko Ursulin wrote:
>>
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Use the i915 exported data in /proc/<pid>/fdinfo to show GPU utilization
>> per DRM client.
> 
> Didn't we just remove it? Adding it back now? Sorry for the probably dumb
> question :/

Same feature two implementation flavours. :) Removed the version using 
API removed from i915 back in April (or so), proposing to add a version 
using different API (https://patchwork.freedesktop.org/series/92574/).

Regards,

Tvrtko
