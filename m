Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 915F0210F89
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:42:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E83BF6E283;
	Wed,  1 Jul 2020 15:42:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 255C76E283
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:42:02 +0000 (UTC)
IronPort-SDR: jbVdHpvyfPuSIogsq1rsJ6SQ4+mAzky8fxxljJlrNcue3MpdhreWtvBhKR4zHU/SqeR2aOyt9m
 oihaKn0LHWVg==
X-IronPort-AV: E=McAfee;i="6000,8403,9669"; a="144126622"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="144126622"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:42:01 -0700
IronPort-SDR: 6pBUJJ4u/pf8LkYFf9heqALuPQtxvp5QcuNjoK8Df41Ei0e8ijzojyLfA2ZujnRXCQeqjNEN0W
 YhcSel+0Kg8w==
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="455145807"
Received: from jhillike-mobl2.amr.corp.intel.com (HELO ldmartin-desk1)
 ([10.251.5.130])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:42:01 -0700
Date: Wed, 1 Jul 2020 08:42:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20200701154200.z3bu6gdgftccbeny@ldmartin-desk1>
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-4-lucas.demarchi@intel.com>
 <87ftabl3ku.fsf@intel.com> <871rlvl02s.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <871rlvl02s.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 3/6] drm/i915/display: start
 description-based ddi initialization
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

On Wed, Jul 01, 2020 at 06:35:55PM +0300, Jani Nikula wrote:
>On Wed, 01 Jul 2020, Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>
>>> +struct intel_ddi_port_info {
>>
>> Just thinking out loud, should we have a "struct port" or "struct
>> intel_port" instead. Maybe, maybe not. *shrug*
>
>After reading the whole series, I might lean even more towards
>introducing a struct intel_port.
>
>Not insisting you'd have to do that as part of this series, but
>something to consider. How would things look like?

I think it will be the natural next conversion, but I'd like to get the
ddi changes applied first, because the conversions will take some
time... This patch series only scratches the surface.

Lucas De Marchi

>
>BR,
>Jani.
>
>>
>> Anyway the patch is
>>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>>
>>> +	const char *name;
>>> +	enum port port;
>>> +};
>>> +
>>>  static inline enum dpio_channel
>>>  vlv_dport_to_channel(struct intel_digital_port *dport)
>>>  {
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
