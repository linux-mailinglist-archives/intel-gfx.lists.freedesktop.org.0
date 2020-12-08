Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C162D29A4
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Dec 2020 12:19:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4080C6E0C2;
	Tue,  8 Dec 2020 11:19:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D20146E0C1;
 Tue,  8 Dec 2020 11:19:00 +0000 (UTC)
IronPort-SDR: uQTRSQAAnZwIaaZyYL2ko83z/iPAriyi/a+9O1nunsDNPZdUeP99+OvC5cf6639IS9+0U/afi3
 s4PWyr2vOrRA==
X-IronPort-AV: E=McAfee;i="6000,8403,9828"; a="173986314"
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="173986314"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:19:00 -0800
IronPort-SDR: jE9Y3n188YWKCRsfPQi9Amevbu87VrVfql868hwNIPSgNmoaT/2NJ5rNbMP/CGJs8UpZr8gKeZ
 pPbkwueJ+MMQ==
X-IronPort-AV: E=Sophos;i="5.78,402,1599548400"; d="scan'208";a="407582357"
Received: from basm-mobl1.gar.corp.intel.com (HELO [10.252.54.35])
 ([10.252.54.35])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2020 03:18:58 -0800
To: Petri Latvala <petri.latvala@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
References: <20201207161150.1841453-1-chris@chris-wilson.co.uk>
 <20201207161150.1841453-2-chris@chris-wilson.co.uk>
 <20201208110405.GO7444@platvala-desk.ger.corp.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <5a032c6e-cd4a-1c17-5629-80803d8477b2@linux.intel.com>
Date: Tue, 8 Dec 2020 11:18:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20201208110405.GO7444@platvala-desk.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/2] i915/query: Directly check query
 results against GETPARAM
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 08/12/2020 11:04, Petri Latvala wrote:
> On Mon, Dec 07, 2020 at 04:11:50PM +0000, Chris Wilson wrote:
>> Simplify the cross-check by asserting that the existence of an engine in
>> the list matches the existence of the engine as reported by GETPARAM.
>> By using the comparison, we check both directions at once.
>>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Petri Latvala <petri.latvala@intel.com>
> 
> 
> For the series,
> Reviewed-by: Petri Latvala <petri.latvala@intel.com>

Yeah it's a yes from me as well. Either test was merged with or before 
the engine map feature so it had to be a bit more backward compatible.

I wonder at which point we re-implement gem_has_xcs family to use the 
query and move the get_param based tests to a single legacy test.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
