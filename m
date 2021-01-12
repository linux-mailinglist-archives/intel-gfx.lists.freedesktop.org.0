Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8982F35D7
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Jan 2021 17:32:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 884EE89B3B;
	Tue, 12 Jan 2021 16:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58DD589B3B
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Jan 2021 16:32:15 +0000 (UTC)
IronPort-SDR: vrrvgAgUVCZil4XVTeeu55d8RrMsKrWEjHq0SVHgyoBgia+/86M1PdrzQSGugqmqvyqCYKIKI/
 iLectyabZmFg==
X-IronPort-AV: E=McAfee;i="6000,8403,9862"; a="178217467"
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="178217467"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:32:14 -0800
IronPort-SDR: z/MjcB11Uxjul1f3pEXHLVHaM0Z+TpgrNlr9USMOP4cKvqoVQddSUo9ak5gwLT/SXgQGNzLPQa
 MCLl1HompvSg==
X-IronPort-AV: E=Sophos;i="5.79,341,1602572400"; d="scan'208";a="381484936"
Received: from vbucoci-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.39.237])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2021 08:32:12 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Aditya Swarup <aditya.swarup@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <d533f8a7-9ffb-9c38-5e90-c1b9a8c984b4@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210108231853.2859646-1-aditya.swarup@intel.com>
 <20210108231853.2859646-2-aditya.swarup@intel.com>
 <20210108234440.GO3894148@mdroper-desk1.amr.corp.intel.com>
 <878s8zw7tw.fsf@intel.com> <875z43w7kq.fsf@intel.com>
 <20210111205743.GC4758@mdroper-desk1.amr.corp.intel.com>
 <d533f8a7-9ffb-9c38-5e90-c1b9a8c984b4@intel.com>
Date: Tue, 12 Jan 2021 18:32:09 +0200
Message-ID: <87lfcyt8ty.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/tgl: Use TGL stepping info for
 applying WAs
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 11 Jan 2021, Aditya Swarup <aditya.swarup@intel.com> wrote:
> On 1/11/21 12:57 PM, Matt Roper wrote:
>> On Mon, Jan 11, 2021 at 10:18:45PM +0200, Jani Nikula wrote:
>>> On Mon, 11 Jan 2021, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>>>> On Fri, 08 Jan 2021, Matt Roper <matthew.d.roper@intel.com> wrote:
>>>>> On Fri, Jan 08, 2021 at 03:18:52PM -0800, Aditya Swarup wrote:
>>>>>> TGL adds another level of indirection for applying WA based on stepping
>>>>>> information rather than PCI REVID. So change TGL_REVID enum into
>>>>>> stepping enum and use PCI REVID as index into revid to stepping table to
>>>>>> fetch correct display and GT stepping for application of WAs as
>>>>>> suggested by Matt Roper.
>>>>>
>>>>> So to clarify the goal is to rename "revid" -> "stepping" because the
>>>>> values like "A1," "C0," etc. are't the actual PCI revision ID, but
>>>>> rather descriptions of the stepping of a given IP block; the enum values
>>>>> we use to represent those are arbitrary and don't matter as long as
>>>>> they're monotonically increasing for comparisons.  The PCI revision ID
>>>>> is just the input we use today to deduce what the IP steppings are, and
>>>>> there's talk that we could determine the IP steppings in a different way
>>>>> at some point in the future.
>>>>>
>>>>> Furthermore, since the same scheme will be used at least for ADL-S, we
>>>>> should drop the "TGL" prefix since there's no need to name these general
>>>>> enum values in a platform-specific manner.
>>>>>
>>>>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>>>>
>>>>> We should probably make the same kind of change to KBL (and use the same
>>>>> stepping enum) too since it has the same kind of extra indirection as
>>>>> TGL/ADL-S, but we can do that as a followup patch.
>>>>
>>>> FWIW I have a wip series changing the whole thing to abstract steppings
>>>> enums that are shared between platforms, but it's in a bit of limbo
>>>> because the previous revid changes were applied to drm-intel-gt-next,
>>>> and it's fallen pretty far out of sync with drm-intel-next. All of this
>>>> really belongs to drm-intel-next, but can't do that until the branches
>>>> sync up again.
>>>
>>> Btw this series doesn't apply to drm-intel-next either, for the same
>>> reason, and the ADL-S platform definition and PCI IDs must *not* be
>>> applied to drm-intel-gt-next.
>
> The reason behind this patch not cleanly applying on drm-intel-next is because
> drm/i915/tgl: Add bound checks and simplify TGL REVID macros
> isn't present on that branch but present on gt-next. 
>
> The patch doesn't apply on gt-next because of a conflict in the following hunk:
>         /* Wa_1409825376:tgl (pre-prod)*/
> -       if (IS_TGL_DISP_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_B1))
> +       if (IS_TGL_DISP_STEPPING(dev_priv, STEP_A0, STEP_B1))
>
> which can be easily fixed during backmerge process as I was able apply the patch
> cleanly on gt-next. 
> I don't understand the "must *not*" reasoning behind not applying this patch on gt-next.

I think I've explained this in several replies in this thread now.

> It was common consesus during initial review that separating
> stepping/revid parsing in a separate .c file will be pushed in after
> ADLS changes and adding this patch won't add any extra churn, just a
> minor rebase for your approach.

Misunderstanding I guess. I thought the required changes had already
been pushed, and we weren't waiting for further changes on this.

I certainly wasn't expecting the generic revid -> stepping rename at
this point, as I don't think they are required for ADL-S at all. I
thought the consensus was that I'll do the refactoring.

Anyway, I can deal with the churn and the rebases, no problem.


BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
