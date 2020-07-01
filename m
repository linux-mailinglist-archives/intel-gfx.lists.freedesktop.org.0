Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C41B9210F94
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Jul 2020 17:43:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA2396E937;
	Wed,  1 Jul 2020 15:43:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 791A26E937
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Jul 2020 15:43:03 +0000 (UTC)
IronPort-SDR: TyxbF/q14Ja2nM7x1uZDsETgw0+UiXr7CMZR9NFO4/LqijjjSjcUKNHkddrm8zrlZk2YVWm2jY
 YGXR6X2288tg==
X-IronPort-AV: E=McAfee;i="6000,8403,9668"; a="231473812"
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="231473812"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:36:00 -0700
IronPort-SDR: xG1VzIkN8NrRCWpf3sM25XAl3jrCmm6GWOiZRHkNG00KNJrpqQGYq7ujO7+ezDojePBycqkpjW
 1FtyEa1rW3XA==
X-IronPort-AV: E=Sophos;i="5.75,300,1589266800"; d="scan'208";a="455143881"
Received: from gaulion-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.51.61])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2020 08:35:58 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <87ftabl3ku.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200625001120.22810-1-lucas.demarchi@intel.com>
 <20200625001120.22810-4-lucas.demarchi@intel.com> <87ftabl3ku.fsf@intel.com>
Date: Wed, 01 Jul 2020 18:35:55 +0300
Message-ID: <871rlvl02s.fsf@intel.com>
MIME-Version: 1.0
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Jul 2020, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Wed, 24 Jun 2020, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>  
>> +struct intel_ddi_port_info {
>
> Just thinking out loud, should we have a "struct port" or "struct
> intel_port" instead. Maybe, maybe not. *shrug*

After reading the whole series, I might lean even more towards
introducing a struct intel_port.

Not insisting you'd have to do that as part of this series, but
something to consider. How would things look like?

BR,
Jani.

>
> Anyway the patch is
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>
>> +	const char *name;
>> +	enum port port;
>> +};
>> +
>>  static inline enum dpio_channel
>>  vlv_dport_to_channel(struct intel_digital_port *dport)
>>  {

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
