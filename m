Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E38A58EA46
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 12:09:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A983110F655;
	Wed, 10 Aug 2022 10:09:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7066B99539
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 10:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660126149; x=1691662149;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=iSyf+GcUmxKKthWpaDCaZ+bNPFx/2iW+Br3vzKzOBl4=;
 b=k/bETjpKhenMbOoLqEMD1SLaL9pTHRPUNGmlGuILC6lRqaxSJoAoZDH4
 U+nhh47LaTI0//rJ7bNXaN4mHqUNLIMEDEhSXGBWum+9DgEIsh9QGfQev
 NSYV/xp+fPaG4/hU8/QbzJwe45QnsFRRlahqxBnZUqiWmdf6tdoB464cD
 apZVyHj4+y86FlrXuA05CvYnHhlTs/0byt9BD+27At3i3KPHP/xxU9Zo3
 Dh/HQshAURGrmFzsyadfN5Lg+u7Oyw5nYB9FhSVqF/MNA+1Cz3o8Xx0dZ
 nzhtn+lLoj3aEXxWD2IrxPeHEb0ngjjqeMkm4vXUgXlP5LY+tWXfPrET4 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="270822313"
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="270822313"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 03:09:07 -0700
X-IronPort-AV: E=Sophos;i="5.93,227,1654585200"; d="scan'208";a="664832722"
Received: from iefimov-mobl1.ccr.corp.intel.com (HELO localhost)
 ([10.252.49.172])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2022 03:09:06 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB317739FF517CFEE8D12BA9A7BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1659607033.git.jani.nikula@intel.com>
 <d28b9b9fef4f496bdaaad5503dd8e0027f167518.1659607033.git.jani.nikula@intel.com>
 <DM6PR11MB317739FF517CFEE8D12BA9A7BA659@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Wed, 10 Aug 2022 13:09:03 +0300
Message-ID: <87iln0v29s.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with
 REG_BIT() in register definitions
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

On Wed, 10 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, August 4, 2022 3:29 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [Intel-gfx] [PATCH 2/2] drm/i915/hdcp: replace BIT() with REG_BIT()
>> in register definitions
>>
>> Registers contents are supposed to be defined using REG_BIT() to ensure
>> they're u32 and the shift is within bounds.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks for the review, pushed both.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
