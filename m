Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 577097DB7D3
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 11:19:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDED310E281;
	Mon, 30 Oct 2023 10:19:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B70EC10E281
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 10:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698661185; x=1730197185;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=Pa7tMcq22rm3HZrcBIE/BK6rOW3cZiOave3Z7Gsc4/g=;
 b=Og3qAiGVrWw7t0tvmUW+4S1hLizjN2Coh4qQYsEDGLgDM+2rWVjvZGUf
 qLjGJy8KJfWLM5oL0cYaJtw0XExN+6PLccooSzoXru1ShlsXlP8uJC/In
 eji6fYHQgG9qEMzdtEJdU6gsphlCWcEAzgi5d50kv35JjyWyz/8kr9PFW
 b8XQEWA5j5S5GmsDND0Z8DH8gtUgL/KciiDJmPNecJsLw34z+h+lj5mfk
 HuIbgPEM5qtC1kVTuKpOO7KJD3kdPvbivqvJnkGWdN/2TkNQIfRU9HXgG
 J8SezxIdJ8pS6f+Z5/nr4Mc+hvGQHzNABnoHZlPOyz7MxXqO99EOiGAQU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="378418779"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="378418779"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 03:19:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10878"; a="736696513"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="736696513"
Received: from squtub-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.33.238])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 03:19:44 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <DM4PR11MB647706B7EA07B147429A66C4E3A1A@DM4PR11MB6477.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231027095336.3059445-1-nemesa.garg@intel.com>
 <20231027095336.3059445-2-nemesa.garg@intel.com>
 <87v8as5njd.fsf@intel.com>
 <DM4PR11MB647706B7EA07B147429A66C4E3A1A@DM4PR11MB6477.namprd11.prod.outlook.com>
Date: Mon, 30 Oct 2023 12:19:32 +0200
Message-ID: <87sf5s5s5n.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for
 darskscreen detection
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

On Mon, 30 Oct 2023, "Garg, Nemesa" <nemesa.garg@intel.com> wrote:
> Hi Jani,
>
> Sometimes there is an issue of black screen on the display due to number of errors like invalid input buffers (black), some issue with display programming (no planes enabled, LUTs zeroed) which means some problem with DE. Upon detection following steps can be taken:
> 1.Print in dmesg so user can be aware of this issue upon checking the logs
> 2. Correction steps can be taken and the design is in progress and will come up with follow up patches.

And if the user wants to show a black screen? Does this feature flag an
error?

BR,
Jani.


>
> Thanks and Regards,
> Nemesa
>
>> -----Original Message-----
>> From: Jani Nikula <jani.nikula@linux.intel.com>
>> Sent: Friday, October 27, 2023 4:40 PM
>> To: Garg, Nemesa <nemesa.garg@intel.com>; intel-gfx@lists.freedesktop.org
>> Subject: Re: [Intel-gfx] [v2 1/2] drm/i915/display: Add support for darskscreen
>> detection
>> 
>> On Fri, 27 Oct 2023, Nemesa Garg <nemesa.garg@intel.com> wrote:
>> > Darkscreen detection checks if all the pixels of the frame are less
>> > then or equal to the comparision value. The comparision value is set
>> > to 256 i.e black. So upon getting black pixels from the pipe, the dark
>> > screen detect bit is set and an error message will be printed.
>> 
>> Okay, this still describes *what* the patch does, but not *why*. Why do we need
>> this? What for?
>> 
>> (Please just reply here for starters, instead of resending.)
>> 
>> 
>> BR,
>> Jani.
>> 
>> 
>> --
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
