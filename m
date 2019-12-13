Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E41711DE37
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 07:28:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B106E270;
	Fri, 13 Dec 2019 06:28:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B187C6E270
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 06:28:40 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 22:28:40 -0800
X-IronPort-AV: E=Sophos;i="5.69,308,1571727600"; d="scan'208";a="208358298"
Received: from peterhae-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.100])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 22:28:37 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>,
 Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
In-Reply-To: <20191213042213.GW85422@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20191129133709.24397-1-stanislav.lisovskiy@intel.com>
 <20191129133709.24397-2-stanislav.lisovskiy@intel.com>
 <20191213042213.GW85422@mdroper-desk1.amr.corp.intel.com>
Date: Fri, 13 Dec 2019 08:28:39 +0200
Message-ID: <87wob020yw.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v7 1/4] drm/i915: Remove skl_ddl_allocation
 struct
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

On Thu, 12 Dec 2019, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Fri, Nov 29, 2019 at 03:37:06PM +0200, Stanislav Lisovskiy wrote:
>>  struct skl_wm_level {
>> @@ -1215,6 +1210,8 @@ struct drm_i915_private {
>>  		bool distrust_bios_wm;
>>  	} wm;
>>  
>> +	u8 enabled_slices; /* GEN11 has configurable 2 slices */
>
> Intel hardware has long used the terms "slice" and "subslice" for the
> way EUs are grouped on the GT side.  Now that this is pulled out from
> the substructs that gave it additional context, I think we need to
> rename this to something like 'enabled_dbuf_slices' to avoid confusion
> with the more widespread meaning of the word 'slice.'  Same for
> intel_atomic_state farther up.

Agreed.

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
