Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 40C8020F4A3
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2020 14:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 64A7889B22;
	Tue, 30 Jun 2020 12:31:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5903589159
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jun 2020 12:31:50 +0000 (UTC)
IronPort-SDR: StecXaLjI/13bmBcz9Xb8/4DaD93zx3j/eNzX2n3tVvk1EdtZBCB6H1hPfqrATISZ9BU47y68Q
 uL173gaerVSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9666"; a="146202012"
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="146202012"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 05:31:49 -0700
IronPort-SDR: 5gZBXerV/WZjyGl0lidLPGJDNmLcbYKO17MhkrvvBUBvkJn+LrzFbsV/kS3xcOSZNXMkatcxiX
 QRv9qx4rPVfg==
X-IronPort-AV: E=Sophos;i="5.75,297,1589266800"; d="scan'208";a="454593302"
Received: from serbencx-mobl1.ger.corp.intel.com (HELO [10.252.49.157])
 ([10.252.49.157])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2020 05:31:48 -0700
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200623142843.423594-1-maarten.lankhorst@linux.intel.com>
 <20200623142843.423594-7-maarten.lankhorst@linux.intel.com>
 <dacbaf04-a149-38e2-5c07-3d3e10589bd3@linux.intel.com>
 <c9123589-f0ce-0925-5ce0-d5e2277f1ca5@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <179cf932-2f5f-419e-10d3-dc6ce0934963@linux.intel.com>
Date: Tue, 30 Jun 2020 13:31:46 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <c9123589-f0ce-0925-5ce0-d5e2277f1ca5@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 07/26] Revert "drm/i915/gem: Split eb_vma
 into its own allocation"
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


On 30/06/2020 12:52, Maarten Lankhorst wrote:
> Op 29-06-2020 om 17:08 schreef Tvrtko Ursulin:
>>
>> On 23/06/2020 15:28, Maarten Lankhorst wrote:
>>> This reverts commit 0f1dd02295f35dcdcbaafcbcbbec0753884ab974.
>>> This conflicts with the ww mutex handling, which needs to drop
>>> the references after gpu submission anyway, because otherwise we
>>> may risk unlocking a BO after first freeing it.
>>
>> What is the problem here? eb_vma_array_put in eb_move_to_gpu? If so, could you just move this put to later in the sequence? I am simply thinking how to avoid controversial reverts. Because on the other hand I did not figure out what 0f1dd02295f35dcdcbaafcbcbbec0753884ab974 fixed in a few minutes I spent staring at the patch.
> 
> 
> We need to unlock before we unref to prevent a use-after-free in unlock, so freeing and releasing in eb_move_to_gpu() is too early. This means we only end up with 1 path for unlock, so it's fine to revert.

You are saying the reason 0f1dd02295f35dcdcbaafcbcbbec0753884ab974 was 
added for will not be there after your changes?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
