Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4D5C590C14
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Aug 2022 08:45:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55446A3C2C;
	Fri, 12 Aug 2022 06:45:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59A79B6BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Aug 2022 06:45:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660286736; x=1691822736;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=sbia2Fjida0BU1r3v4PB7v1dD2lKOqbKLLAcdidI+Bg=;
 b=b7lNTOcBj/GKfxEP4n7MgBMl+MEY0WyFyWslmKwXxSMpueRQFy7IEjib
 oZ+9/WgTiBGl7Ibzm6SH17KIMqDJg9WBCpYD15FLzu3tL6ZduNwKztYqm
 vQU904G/KvYRNqUNwva8ItipDG0Lcq1/HzE0DRGVVzFPgDco/ICnkdui4
 zVFSYZbjRfTBlZWO3Ai/cMo+XcPWeDc6uLznWwiYNP7Qup0DDq4s3LmT7
 jl/jJSSqxUUsXlyosTFvnGmeTyu9cWmD7YciHGjgWLUo8CACWqRzLKrPG
 e/RwoLjBFmSQ6A9/q3XvGhfLU/ScBPJuXWkvwH5mETVuXhRFY7aeCWT/w g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10436"; a="377827340"
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="377827340"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:45:35 -0700
X-IronPort-AV: E=Sophos;i="5.93,231,1654585200"; d="scan'208";a="634538276"
Received: from ebrazil-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.37.174])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 23:45:34 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM6PR11MB3177E362FAC572AB8DB40F5BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1660230121.git.jani.nikula@intel.com>
 <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177E362FAC572AB8DB40F5BBA679@DM6PR11MB3177.namprd11.prod.outlook.com>
Date: Fri, 12 Aug 2022 09:45:31 +0300
Message-ID: <875yiyt0xg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
 display.funcs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 12 Aug 2022, "Murthy, Arun R" <arun.r.murthy@intel.com> wrote:
>> -----Original Message-----
>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani
>> Nikula
>> Sent: Thursday, August 11, 2022 8:37 PM
>> To: intel-gfx@lists.freedesktop.org
>> Cc: Nikula, Jani <jani.nikula@intel.com>; De Marchi, Lucas
>> <lucas.demarchi@intel.com>
>> Subject: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
>> display.funcs
>>
>> Move display related members under drm_i915_private display sub-struct.
>>
> The commit msg becomes same for the patches. Can it be more precise as
> to move all hotplug related struct under display sub-struct?

Yeah, just copy-pasted for now.

BR,
Jani.


>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
> Upon adding proper commit msg
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
>
> Thanks and Regards,
> Arun R Murthy
> --------------------

-- 
Jani Nikula, Intel Open Source Graphics Center
