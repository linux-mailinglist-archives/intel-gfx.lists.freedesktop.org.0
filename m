Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B77845B7D4
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 10:52:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC3946EA1A;
	Wed, 24 Nov 2021 09:52:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F02C86E4B1
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 09:52:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235064889"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235064889"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:52:45 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="497617488"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 01:52:43 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <3d153da0-8bef-1a6b-d292-34b1f54ac938@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-3-alan.previn.teres.alexis@intel.com>
 <3d153da0-8bef-1a6b-d292-34b1f54ac938@intel.com>
Date: Wed, 24 Nov 2021 11:52:41 +0200
Message-ID: <87fsrlnamu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC 2/7] drm/i915/guc: Update GuC ADS size for
 error capture lists
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

On Tue, 23 Nov 2021, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> Hi,
>
> just few random nits below
>
> -Michal
>
>
> On 23.11.2021 00:03, Alan Previn wrote:
>> +/* Define all device tables of GuC error capture register lists */
>> +
>> +/********************************* Gen12 LP  *********************************/
>
> didn't we move away from "GEN" naming ?

Yes.

>
>> +/************** GLOBAL *************/
>
> do we really need all these decorations ?

No, please remove them.

>
>> +struct __guc_mmio_reg_descr gen12lp_global_regs[] = {
>> +	{SWF_ILK(0),               0,      0, "SWF_ILK0"},
>> +	/* Add additional register list */
>
> do we need this reminder ?

No, please remove them.

Also, all of these need to be static.


BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
