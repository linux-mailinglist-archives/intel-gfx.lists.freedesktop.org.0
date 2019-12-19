Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DF29E12589C
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 01:37:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 565486E0E5;
	Thu, 19 Dec 2019 00:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A65EC6E0E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 00:37:04 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 16:37:03 -0800
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="390356432"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.162])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 16:37:03 -0800
Date: Wed, 18 Dec 2019 16:36:54 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191219003654.rbcljj54pfkgs3h6@ldmartin-desk1.jf.intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
 <87o8w61804.fsf@intel.com>
 <20191219002730.ah3ajiwlzg4nc52r@ldmartin-desk1.jf.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191219002730.ah3ajiwlzg4nc52r@ldmartin-desk1.jf.intel.com>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 18, 2019 at 04:27:30PM -0800, Lucas De Marchi wrote:
>On Wed, Dec 18, 2019 at 08:07:55AM +0200, Jani Nikula wrote:
>>On Tue, 17 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>This bothered me for a while so I decided to give it a try: let's
>>>normalize on using the platform acronym for function prefixes.
>>
>>The mixed use has always bothered me too.
>>
>>Acked-by: Jani Nikula <jani.nikula@intel.com>
>>
>>(Up next, IS_BROADWELL vs. IS_BDW_ULT etc... ;)
>
>actually next are the functions using <platform>_ prefix. I will leave
>the IS_* macros for later or bundle them in the respective commits (not
>that I didn't change IS_ICELAKE, IS_TIGERLAKE, etc.  Maybe it's a good
>idea to just bundle them in next iteration.
>

also I was concentrating only on display/. If we are to change all the
IS_* macros this has to be done in the entire driver.  Do you think it
belongs in the same commit? It will be pretty intrusive.

Lucas De Marchi

>thanks
>Lucas De Marchi
>
>
>>
>>
>>>
>>>This does the conversion for some platforms. There are others missing,
>>>but I'm sending this early for the case the idea is shot down.
>>>
>>>Lucas De Marchi (5):
>>>  drm/i915/display: prefer 3-letter acronym for haswell
>>>  drm/i915/display: prefer 3-letter acronym for skylake
>>>  drm/i915/display: prefer 3-letter acronym for cannonlake
>>>  drm/i915/display: prefer 3-letter acronym for icelake
>>>  drm/i915/display: prefer 3-letter acronym for ironlake
>>>
>>> drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
>>> drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>>> drivers/gpu/drm/i915/display/intel_display.c  | 278 +++++++++---------
>>> drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>>> drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
>>> .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>>> 6 files changed, 163 insertions(+), 167 deletions(-)
>>
>>-- 
>>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
