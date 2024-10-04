Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E0E98FFB1
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 11:27:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A9D310E29B;
	Fri,  4 Oct 2024 09:27:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X4esJBEf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D20910E29B;
 Fri,  4 Oct 2024 09:27:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728034067; x=1759570067;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=n2ERZzHx17HYUi/YgOUUX9HRmBzHaZ2HDiGPOpM3yqg=;
 b=X4esJBEfmAW1pzJnBf3KKRQulr16fEGBt9vNyYTfICb1AH9K6jQEHwPf
 +Otl5HyXUUptj7HyizozWUumaCfe0tjgvfKEDSfZzqs6xETps0bmPDG2b
 +Tdm1k21hzCKJIgox8HOOxkEhtzNoEQvs3x1TYKMC3FlwuupC6gP8s9a1
 5uYxEBUAGElbHmkXDCnj7XJVuAnhdvhVPl5902pXdKHJ2CSMkpBwv+LKZ
 PO4q1cAOtTens1nDyW2ZKGNXC+7+hQLlxa37/Keau9NdyGupohkROss/u
 1nCCi82A0WFndB3mQPXNiwhwu4HYa4NTz9ddumWrTQ4x0XUNv6NXwBcUj w==;
X-CSE-ConnectionGUID: ttwBfmT7QluCmIrUWhShtA==
X-CSE-MsgGUID: TKzKOHJST1i7m6MRF5y/YQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="44717676"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="44717676"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 02:27:47 -0700
X-CSE-ConnectionGUID: Ib7MwaVkSxiEOoi18Mr5/Q==
X-CSE-MsgGUID: AGS5a5UBQ4mROksBvwzzaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="79413041"
Received: from dneilan-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.89])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 02:27:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
 integer 0
In-Reply-To: <SJ1PR11MB61295ADC70452548919B3598B9712@SJ1PR11MB6129.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241002181655.582597-1-jani.nikula@intel.com>
 <SJ1PR11MB61295ADC70452548919B3598B9712@SJ1PR11MB6129.namprd11.prod.outlook.com>
Date: Fri, 04 Oct 2024 12:27:42 +0300
Message-ID: <87jzeorze9.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 03 Oct 2024, "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Wednesday, October 2, 2024 11:47 PM
>> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>
>> Subject: [PATCH] drm/i915: use NULL for zero wakeref_t instead of plain
>> integer 0
>>
>> As of commit 2edc6a75f26c ("drm/i915: switch intel_wakeref_t underlying
>> type to struct ref_tracker *") we gained quite a few sparse warnings about
>> "Using plain integer as NULL pointer" for using 0 to initialize wakeref_t. Switch
>> to NULL everywhere.
>>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> LGTM
> Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Thanks, pushed to drm-intel-next.

BR,
Jani.

-- 
Jani Nikula, Intel
