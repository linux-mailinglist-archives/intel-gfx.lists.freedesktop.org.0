Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A567125C8D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 09:25:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D1A16EAD8;
	Thu, 19 Dec 2019 08:25:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A205F6EAD8
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 08:25:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 00:25:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="222204165"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by fmsmga001.fm.intel.com with ESMTP; 19 Dec 2019 00:25:45 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
In-Reply-To: <20191219003654.rbcljj54pfkgs3h6@ldmartin-desk1.jf.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
 <87o8w61804.fsf@intel.com>
 <20191219002730.ah3ajiwlzg4nc52r@ldmartin-desk1.jf.intel.com>
 <20191219003654.rbcljj54pfkgs3h6@ldmartin-desk1.jf.intel.com>
Date: Thu, 19 Dec 2019 10:25:44 +0200
Message-ID: <87lfr8yb5j.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 0/5] display: prefer 3-letter acronym
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

On Wed, 18 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
> On Wed, Dec 18, 2019 at 04:27:30PM -0800, Lucas De Marchi wrote:
>>On Wed, Dec 18, 2019 at 08:07:55AM +0200, Jani Nikula wrote:
>>>On Tue, 17 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>>This bothered me for a while so I decided to give it a try: let's
>>>>normalize on using the platform acronym for function prefixes.
>>>
>>>The mixed use has always bothered me too.
>>>
>>>Acked-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>>(Up next, IS_BROADWELL vs. IS_BDW_ULT etc... ;)
>>
>>actually next are the functions using <platform>_ prefix. I will leave
>>the IS_* macros for later or bundle them in the respective commits (not
>>that I didn't change IS_ICELAKE, IS_TIGERLAKE, etc.  Maybe it's a good
>>idea to just bundle them in next iteration.
>>
>
> also I was concentrating only on display/. If we are to change all the
> IS_* macros this has to be done in the entire driver.  Do you think it
> belongs in the same commit? It will be pretty intrusive.

Maybe just leave the IS_* later for now? Because it's going to be one
big ugly commit, or you have to add the TLA versions on the side and
migrate gradually. Either way it's pretty painful I think...

BR,
Jani.


>
> Lucas De Marchi
>
>>thanks
>>Lucas De Marchi
>>
>>
>>>
>>>
>>>>
>>>>This does the conversion for some platforms. There are others missing,
>>>>but I'm sending this early for the case the idea is shot down.
>>>>
>>>>Lucas De Marchi (5):
>>>>  drm/i915/display: prefer 3-letter acronym for haswell
>>>>  drm/i915/display: prefer 3-letter acronym for skylake
>>>>  drm/i915/display: prefer 3-letter acronym for cannonlake
>>>>  drm/i915/display: prefer 3-letter acronym for icelake
>>>>  drm/i915/display: prefer 3-letter acronym for ironlake
>>>>
>>>> drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
>>>> drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>>>> drivers/gpu/drm/i915/display/intel_display.c  | 278 +++++++++---------
>>>> drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>>>> drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
>>>> .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>>>> 6 files changed, 163 insertions(+), 167 deletions(-)
>>>
>>>-- 
>>>Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
