Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1227E7EC3B7
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 14:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 601EC10E025;
	Wed, 15 Nov 2023 13:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D877610E025
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 13:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700055110; x=1731591110;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Wq9K0biAJd+uWugvhnpqHht2TiqKoqsRdn7Q5piWNtY=;
 b=Cipxx5DfsRUYlgC99PORDKwrccvq1mXIipuIkosPNcaPNlHQlPECrryS
 Y3ezvhcTIfNwzJW5myOpik0snKptMwdYR64O1swel5Esbe+D0QIzA82eP
 XrpScf6xVwaxapyzZbHxv6K6OF12cm7NcmjRZEHxp1xlSdgt960LPL0Bt
 nCZVOu5juejWPkGhxlxlY3NZ0nYP4yjRMyw4uHUuXlpL476j6aQ0WEL/c
 aC4OoBXKRnTSK+XonaS4m/1G9zHCVCEzLzuZTmZcquBcSpNZxKaVhEJSM
 uPNHpbGe4sb3cjvoIRjBRcK4fV866y5sF6Nt+fzqnvWabb818ret7YmLx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="393731657"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="393731657"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:31:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="764977866"
X-IronPort-AV: E=Sophos;i="6.03,305,1694761200"; d="scan'208";a="764977866"
Received: from jcornall-mobl3.ger.corp.intel.com (HELO [10.213.211.209])
 ([10.213.211.209])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 05:31:48 -0800
Message-ID: <02377290-cb5f-48ca-afe3-0e59b70a43de@linux.intel.com>
Date: Wed, 15 Nov 2023 13:31:46 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "Winkler, Tomas" <tomas.winkler@intel.com>
References: <20231011110157.247552-1-tomas.winkler@intel.com>
 <20231011110157.247552-4-tomas.winkler@intel.com>
 <ZVN9e3BczixJy_1H@intel.com>
 <ade96d9edd8bce1bc63dba4e2f1a92517180d774.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <ade96d9edd8bce1bc63dba4e2f1a92517180d774.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [char-misc-next 3/4] mei: pxp: re-enable client on
 errors
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
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Usyskin,
 Alexander" <alexander.usyskin@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Lubart,
 Vitaly" <vitaly.lubart@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 14/11/2023 15:31, Teres Alexis, Alan Previn wrote:
> On Tue, 2023-11-14 at 16:00 +0200, Ville Syrjälä wrote:
>> On Wed, Oct 11, 2023 at 02:01:56PM +0300, Tomas Winkler wrote:
>>> From: Alexander Usyskin <alexander.usyskin@intel.com>
>>>
>>> Disable and enable mei-pxp client on errors to clean the internal state.
>>
>> This broke i915 on my Alderlake-P laptop.
>>
> 
> 
> Hi Alex, i just relooked at the series that got merged, and i noticed
> that in patch #3 of the series, you had changed mei_pxp_send_message
> to return bytes sent instead of zero on success. IIRC, we had
> agreed to not effect the behavior of this component interface (other
> than adding the timeout) - this was the intention of Patch #4 that i
> was pushing for in order to spec the interface (which continues
> to say zero on success). We should fix this to stay with the original
> behavior - where mei-pxp should NOT send partial packets and
> will only return zero in success case where success is sending of
> the complete packets - so we don't need to get back the "bytes sent"
> from mei_pxp_send_message. So i think this might be causing the problem.
> 
> 
> Side note  to Ville:, are you enabling PXP kernel config by default in
> all MESA contexts? I recall that MESA folks were running some CI testing
> with enable pxp contexts, but didn't realize this is being enabled by
> default in all contexts. Please be aware that enabling pxp-contexts
> would temporarily disabled runtime-pm during that contexts lifetime.
> Also pxp contexts will be forced to be irrecoverable if it ever hangs.
> The former is a hardware architecture requirement but doesn't do anything
> if you're enabling display (which I beleive also blocks in ADL). The
> latter was a requirement to comply with Vulkan.

Regardless of the mei_pxp_send_message being temporarily broken, doesn't 
Ville's logs suggest the PXP detection is altogether messed up? AFAIR 
the plan was exactly to avoid stalls during Mesa init and new uapi was 
added to achieve that. But it doesn't seem to be working?!

commit 3b918f4f0c8b5344af4058f1a12e2023363d0097
Author: Alan Previn <alan.previn.teres.alexis@intel.com>
Date:   Wed Aug 2 11:25:50 2023 -0700

     drm/i915/pxp: Optimize GET_PARAM:PXP_STATUS

     After recent discussions with Mesa folks, it was requested
     that we optimize i915's GET_PARAM for the PXP_STATUS without
     changing the UAPI spec.

     Add these additional optimizations:
        - If any PXP initializatoin flow failed, then ensure that
          we catch it so that we can change the returned PXP_STATUS
          from "2" (i.e. 'PXP is supported but not yet ready')
          to "-ENODEV". This typically should not happen and if it
          does, we have a platform configuration issue.
        - If a PXP arbitration session creation event failed
          due to incorrect firmware version or blocking SOC fusing
          or blocking BIOS configuration (platform reasons that won't
          change if we retry), then reflect that blockage by also
          returning -ENODEV in the GET_PARAM:PXP_STATUS.
        - GET_PARAM:PXP_STATUS should not wait at all if PXP is
          supported but non-i915 dependencies (component-driver /
          firmware) we are still pending to complete the init flows.
          In this case, just return "2" immediately (i.e. 'PXP is
          supported but not yet ready').

AFAIU is things failed there shouldn't be long waits, repeated/constant 
ones even less so.

Regards,

Tvrtko
