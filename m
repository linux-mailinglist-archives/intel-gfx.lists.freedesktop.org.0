Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 618AD2F5C73
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Jan 2021 09:31:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 68E6989B51;
	Thu, 14 Jan 2021 08:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 184EF89B51
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Jan 2021 08:31:39 +0000 (UTC)
IronPort-SDR: VQq9hZg07h/vO1H29hXNo6aHYNnY0BoVTFkapfkjBELSgum65C+lH2GUqCqnxNjfzEvbVGoyce
 HhxkHdmhXJJg==
X-IronPort-AV: E=McAfee;i="6000,8403,9863"; a="166002862"
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="166002862"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:31:37 -0800
IronPort-SDR: Sd8J9ezANyNlBEmD9Lepg3cox7AN5DtFMVZ9yYvzBqXrKE0eRFGUEENhvWnDb4AsKdnndF2z9N
 anL5erpY87dw==
X-IronPort-AV: E=Sophos;i="5.79,346,1602572400"; d="scan'208";a="382189625"
Received: from dforourk-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.254.146])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2021 00:31:35 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
In-Reply-To: <20210113110219.GO11717@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1610127741.git.jani.nikula@intel.com>
 <15260c28060f3f90276ab395da4d3999ccdb641f.1610127741.git.jani.nikula@intel.com>
 <20210113110219.GO11717@intel.com>
Date: Thu, 14 Jan 2021 10:31:32 +0200
Message-ID: <87ft33rkbf.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 13/17] drm/i915/pps: rename
 intel_dp_init_panel_power_sequencer* functions
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

On Wed, 13 Jan 2021, Anshuman Gupta <anshuman.gupta@intel.com> wrote:
> On 2021-01-08 at 19:44:21 +0200, Jani Nikula wrote:
>> There are a number of functions that "init" pps in various ways. Try to
>> find some more consistency in the naming.
>> 
>> Rename:
>>  - intel_dp_init_panel_power_sequencer -> pps_init_delays
>>  - intel_dp_init_panel_power_sequencer_registers -> pps_init_registers
>>  - intel_dp_init_panel_power_timestamps -> pps_init_timestamps
>> 
>> as this is what the functions do. Skip the intel_ prefix here to
>> emphasize these are static and not exported.
>> 
>> No functional changes.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> LGTM.
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>

Pushed the series up to and including this patch. Many thanks for the
reviews!

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
