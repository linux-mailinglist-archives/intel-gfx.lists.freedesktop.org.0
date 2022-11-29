Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB35B63BD65
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Nov 2022 10:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C91E10E07D;
	Tue, 29 Nov 2022 09:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA9C10E047
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Nov 2022 09:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669715819; x=1701251819;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=winORc/xBjOwTzMW55V/TayPaaPyId5nrncIxAEyJWI=;
 b=d14wU8vjsuVmjvzlI3Dlka9bmRmOZoUB2pgnRZw6+ZOBFWT7AdO9O7t1
 Q4a4hBCX6LYBOVuLujxmDy7Ua8IvZOmBYcO14846G0vYwxjXLhg4gqtSa
 i7E9Zq5NYm0HEkn1As80dW7rM8FDiQ8Ogo/bsU5p8NrOdjpQLzdLaakgF
 j61d/ocZfZfPE1R4bs2E+A7pFSPi++W1HX4te/syWncakWKoLIc1IJJS7
 7ASDZM6i4qdJPKQXqyZzp/4pEtDg2i978hMdaJzw1iQWT21jtKhSFH6BY
 fGpGhzjIyXFJlu0DcoG4P7Z3yYCg8FPzOTcZPTMbCEZbxtMWZgf1/mJIs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="377215640"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="377215640"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 01:56:59 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10545"; a="621395948"
X-IronPort-AV: E=Sophos;i="5.96,202,1665471600"; d="scan'208";a="621395948"
Received: from lclaesso-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.53.28])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2022 01:56:57 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mikko Kovanen <mikko.kovanen@aavamobile.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <87tu2j4ehb.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <DBBPR09MB466592B16885D99ABBF2393A91119@DBBPR09MB4665.eurprd09.prod.outlook.com>
 <87tu2j4ehb.fsf@intel.com>
Date: Tue, 29 Nov 2022 11:56:55 +0200
Message-ID: <87cz963wyg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsi: fix VBT send packet port
 selection for dual link DSI
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

On Mon, 28 Nov 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Sat, 26 Nov 2022, Mikko Kovanen <mikko.kovanen@aavamobile.com> wrote:
>> intel_dsi->ports contains bitmask of enabled ports and correspondingly
>> logic for selecting port for VBT packet sending must use port specific
>> bitmask when deciding appropriate port.
>>
>> Fixes: 08c59dde71b7 ("drm/i915/dsi: fix VBT send packet port selection for ICL+")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Mikko Kovanen <mikko.kovanen@aavamobile.com>
>
> Holy crap, that's embarrassing! Thanks!
>
> Despite the mistake, it always works for single-link DSI as well as port
> A on dual-link DSI, which probably covers most use cases. It's the
> commands targeted at port B (VLV+ DSI) or port C (ICL+ DSI) that go
> haywire.
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Pushed to drm-intel-next, thanks for the patch.

And promptly after pushing I realized I failed to added the link to the
issue in the commit message. Here it is for posterity:

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7601


BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> index 75e8cc4337c9..fce69fa446d5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>> @@ -137,9 +137,9 @@ static enum port intel_dsi_seq_port_to_port(struct intel_dsi *intel_dsi,
>>  		return ffs(intel_dsi->ports) - 1;
>>  
>>  	if (seq_port) {
>> -		if (intel_dsi->ports & PORT_B)
>> +		if (intel_dsi->ports & BIT(PORT_B))
>>  			return PORT_B;
>> -		else if (intel_dsi->ports & PORT_C)
>> +		else if (intel_dsi->ports & BIT(PORT_C))
>>  			return PORT_C;
>>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
