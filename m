Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E9C1800B6
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 15:54:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9169389FCC;
	Tue, 10 Mar 2020 14:54:43 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 024BB89FCC
 for <Intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 14:54:41 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 07:54:41 -0700
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="236058019"
Received: from pkosiack-mobl2.ger.corp.intel.com (HELO [10.252.21.27])
 ([10.252.21.27])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 10 Mar 2020 07:54:40 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20200310142958.12039-1-tvrtko.ursulin@linux.intel.com>
 <158385085872.28297.4063749064051393510@build.alporthouse.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <3289249b-9e2f-611c-d5a8-9b70514d0136@linux.intel.com>
Date: Tue, 10 Mar 2020 14:54:38 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <158385085872.28297.4063749064051393510@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Consolidate forcewake status
 display
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



On 10/03/2020 14:34, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2020-03-10 14:29:58)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Use new common helper intel_gt_show_forcewake from both old and new
>> debugfs code.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Cc: Andi Shyti <andi.shyti@intel.com>
> 
> Fair enough,
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> 
> Though the question is why didn't we kill off the toplevel fw_domains?

Yeah, I was asking myself the same. Looks like there is no users in IGT 
so we could just as well. Second patch to follow..

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
