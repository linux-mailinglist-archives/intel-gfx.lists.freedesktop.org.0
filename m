Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B6AFE45B8B9
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Nov 2021 11:57:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DCA5F6E223;
	Wed, 24 Nov 2021 10:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B2F6E223
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Nov 2021 10:57:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10177"; a="235202739"
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="235202739"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:57:26 -0800
X-IronPort-AV: E=Sophos;i="5.87,260,1631602800"; d="scan'208";a="509834022"
Received: from moconno1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.21.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2021 02:57:24 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <20211124103300.GA4169@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211118093907.18510-1-stanislav.lisovskiy@intel.com>
 <87wnkxlunn.fsf@intel.com> <20211124103300.GA4169@intel.com>
Date: Wed, 24 Nov 2021 12:57:22 +0200
Message-ID: <87tug1lt2l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dg2: Implement WM0 cursor WA for
 DG2
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 24 Nov 2021, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Wed, Nov 24, 2021 at 12:23:08PM +0200, Jani Nikula wrote:
>> On Thu, 18 Nov 2021, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
>> > +static bool icl_need_wm1_wa(struct drm_i915_private *i915,
>> > +			    enum plane_id plane_id)
>> 
>> Commit subject having "WM0 cursor WA" and the function saying "wm1_wa"
>> looks like a discrepancy to the casual reader.
>
> Agree, not the best naming. Should be either WM0 or WM1.
> Thing is that due to nature of that W/A both can be correct.
> Patch has been pushed week ago, after r-b from Ville.
>
> I will send a fix anyway.

*shrug* Not sure it matters, just an observation going through mails.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
