Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF704179A69
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Mar 2020 21:50:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B91A6E0F6;
	Wed,  4 Mar 2020 20:50:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECD216E0F6
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Mar 2020 20:50:29 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 12:50:29 -0800
X-IronPort-AV: E=Sophos;i="5.70,515,1574150400"; d="scan'208";a="234165668"
Received: from cbors-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.40.133])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Mar 2020 12:50:27 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <875zfkph5o.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200303142347.15696-1-aditya.swarup@intel.com>
 <87d09tpiji.fsf@intel.com>
 <20200303203030.GA470950@mdroper-desk1.amr.corp.intel.com>
 <875zfkph5o.fsf@intel.com>
Date: Wed, 04 Mar 2020 22:50:26 +0200
Message-ID: <8736anq1yl.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix uninitialized
 variable
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 04 Mar 2020, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 03 Mar 2020, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Tue, Mar 03, 2020 at 05:25:21PM +0200, Jani Nikula wrote:
>>> On Tue, 03 Mar 2020, Aditya Swarup <aditya.swarup@intel.com> wrote:
>>> > -	struct lrc_timestamp data;
>>> > +	struct lrc_timestamp data = { 0 };
>>> 
>>> {} is preferred over {0}.
>>
>> Is there a reference for this (e.g., in the kernel coding style)?  I
>> thought this came up a couple years ago and the consensus was the other
>> way, although I could be misremembering.  Unless it's changed in a
>> recent standard, I think {} is only legal in C++, so using it in C code
>> is a gcc-ism?
>
> Both are widely used in the kernel. I think we've mostly converged to {}
> in i915. Yes, it's a gcc-ism in C code, but the kernel is gcc, not
> standard C.
>
> I can't find a reference right now, but ISTR there are some warnings
> issued in some cases with the {0} initializer, depending on the struct
> and perhaps on the compiler.

Here's one [1].

BR,
Jani.


[1] http://patchwork.freedesktop.org/patch/msgid/20200304183654.GA9011@paulmck-ThinkPad-P72


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
