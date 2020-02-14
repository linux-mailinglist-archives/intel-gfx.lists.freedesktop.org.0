Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA86815F0AB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2020 18:57:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20A676FB69;
	Fri, 14 Feb 2020 17:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 505386FB69
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Feb 2020 17:57:14 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Feb 2020 09:57:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,441,1574150400"; d="scan'208";a="227679665"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga008.jf.intel.com with ESMTP; 14 Feb 2020 09:57:09 -0800
To: Brian Welty <brian.welty@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200213001418.5899-1-brian.welty@intel.com>
 <158155408885.11180.1339348747260218156@skylake-alporthouse-com>
 <6783dddd-a9e4-c8b2-c169-b5aa7088dd7f@intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <383e75e2-a29a-4c8c-e3ba-579008464a45@intel.com>
Date: Fri, 14 Feb 2020 09:56:58 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <6783dddd-a9e4-c8b2-c169-b5aa7088dd7f@intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Fix selftest_mocs for
 DGFX
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 2/12/20 4:49 PM, Brian Welty wrote:
> 
> On 2/12/2020 4:34 PM, Chris Wilson wrote:
>> Quoting Brian Welty (2020-02-13 00:14:18)
>>> For DGFX devices, the MOCS control value is not initialized or used.
>>
>> Then why is the table populated?
>> -Chris
>>
> 
> The format has changed (been reduced?) for DGFX.  drm_i915_mocs_entry.l3cc_value is what is still initialized/used.
> Probably first needed is the patch that defines the table entries for DGFX.
> Ugh, I didn't notice this wasn't applied yet.  Let me ask about this.
> 

We do have:

commit e6e2ac07118b15f25683fcbd59ea1be73ec9465d
Author: Lucas De Marchi <lucas.demarchi@intel.com>
Date:   Thu Oct 24 12:51:21 2019 -0700

     drm/i915: do not set MOCS control values on dgfx

So I see no reason not to add this change to the test side to match 
that. Maybe we can add an additional check in the test to validate that 
all the control_entries are set to 0 in the table on DGFX?

Daniele

> -Brian
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
