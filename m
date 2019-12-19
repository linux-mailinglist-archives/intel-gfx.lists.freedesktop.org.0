Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B6612586D
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 01:27:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B4CA6E0DB;
	Thu, 19 Dec 2019 00:27:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5088F6E0DB
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 00:27:39 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 16:27:38 -0800
X-IronPort-AV: E=Sophos;i="5.69,330,1571727600"; d="scan'208";a="210275417"
Received: from ldmartin-desk1.jf.intel.com ([134.134.244.162])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 18 Dec 2019 16:27:38 -0800
Date: Wed, 18 Dec 2019 16:27:30 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20191219002730.ah3ajiwlzg4nc52r@ldmartin-desk1.jf.intel.com>
References: <20191218014208.7916-1-lucas.demarchi@intel.com>
 <87o8w61804.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8w61804.fsf@intel.com>
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

On Wed, Dec 18, 2019 at 08:07:55AM +0200, Jani Nikula wrote:
>On Tue, 17 Dec 2019, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> This bothered me for a while so I decided to give it a try: let's
>> normalize on using the platform acronym for function prefixes.
>
>The mixed use has always bothered me too.
>
>Acked-by: Jani Nikula <jani.nikula@intel.com>
>
>(Up next, IS_BROADWELL vs. IS_BDW_ULT etc... ;)

actually next are the functions using <platform>_ prefix. I will leave
the IS_* macros for later or bundle them in the respective commits (not
that I didn't change IS_ICELAKE, IS_TIGERLAKE, etc.  Maybe it's a good
idea to just bundle them in next iteration.

thanks
Lucas De Marchi


>
>
>>
>> This does the conversion for some platforms. There are others missing,
>> but I'm sending this early for the case the idea is shot down.
>>
>> Lucas De Marchi (5):
>>   drm/i915/display: prefer 3-letter acronym for haswell
>>   drm/i915/display: prefer 3-letter acronym for skylake
>>   drm/i915/display: prefer 3-letter acronym for cannonlake
>>   drm/i915/display: prefer 3-letter acronym for icelake
>>   drm/i915/display: prefer 3-letter acronym for ironlake
>>
>>  drivers/gpu/drm/i915/display/intel_crt.c      |   6 +-
>>  drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +-
>>  drivers/gpu/drm/i915/display/intel_display.c  | 278 +++++++++---------
>>  drivers/gpu/drm/i915/display/intel_display.h  |   2 +-
>>  drivers/gpu/drm/i915/display/intel_dp.c       |  34 +--
>>  .../drm/i915/display/intel_fifo_underrun.c    |   6 +-
>>  6 files changed, 163 insertions(+), 167 deletions(-)
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
