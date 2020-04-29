Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43A1BE2CA
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 17:32:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 92C7A6E9FC;
	Wed, 29 Apr 2020 15:32:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C65326E9FC;
 Wed, 29 Apr 2020 15:32:20 +0000 (UTC)
IronPort-SDR: xe+4/Uqng3v6/AOgkP+7OagxZERpjuI09l1NaTYUcUduHH9oqTUMrEmxJkeycL6k3PycJvO4UU
 ydLEArrLNoDg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2020 08:32:19 -0700
IronPort-SDR: /aiFSRDpktCQUUKZeoKT0ta2k9eSTmuETfCle+fg7FWofnx9CqcDYFWj89OkDPVIk1GvJeg0G9
 +7C5WW9CBD2g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,332,1583222400"; d="scan'208";a="294207566"
Received: from michielh-mobl.ger.corp.intel.com (HELO [10.249.47.78])
 ([10.249.47.78])
 by orsmga008.jf.intel.com with ESMTP; 29 Apr 2020 08:32:18 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200429145113.588577-1-chris@chris-wilson.co.uk>
 <20200429150500.588743-1-chris@chris-wilson.co.uk>
 <4e867fdf-6ae1-fab8-83bf-b7c02fcf3cc3@intel.com>
 <158817400505.2633.14772542047833812485@build.alporthouse.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <191e61c5-cacd-d81e-88e7-620993823b8b@intel.com>
Date: Wed, 29 Apr 2020 18:32:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <158817400505.2633.14772542047833812485@build.alporthouse.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH i-g-t] perf: Flush the work between rounds
 of gen8-unprivileged-single-ctx-counter
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
Cc: igt-dev@lists.freedesktop.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 29/04/2020 18:26, Chris Wilson wrote:
> Quoting Lionel Landwerlin (2020-04-29 16:23:34)
>> On 29/04/2020 18:05, Chris Wilson wrote:
>>> Wait until the GPU is idle before starting a fresh round of probing
>>> gen8-unprivileged-single-ctx-counter. This avoids building up a huge
>>> backlog of render copies, hogging buffers and stale contexts, and
>>> invoking the oomkiller.
>>>
>>> v2: Release everything before starting again.
>>>
>>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
>> Reviewed-by: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
> I guess I don't want to hear the answer, but does OA also want to pin
> frequencies?
> -Chris

No, some apps might set it to have consistent results but there is no 
driver/hw requirement to do this.


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
