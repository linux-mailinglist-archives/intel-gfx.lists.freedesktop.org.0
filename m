Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AC6120726
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 14:28:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF5F6E528;
	Mon, 16 Dec 2019 13:28:24 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F8FB6E528
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 13:28:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Dec 2019 05:28:22 -0800
X-IronPort-AV: E=Sophos;i="5.69,321,1571727600"; d="scan'208";a="209300489"
Received: from dtriolet-mobl1.ger.corp.intel.com (HELO [10.251.84.191])
 ([10.251.84.191])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 Dec 2019 05:28:20 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, Intel-gfx@lists.freedesktop.org
References: <20191216120704.958-1-tvrtko.ursulin@linux.intel.com>
 <20191216120704.958-3-tvrtko.ursulin@linux.intel.com>
 <157650225139.2428.9564824266116523055@skylake-alporthouse-com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <7979138a-e88a-abfa-b69e-86df820c30c4@linux.intel.com>
Date: Mon, 16 Dec 2019 13:28:18 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <157650225139.2428.9564824266116523055@skylake-alporthouse-com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Expose list of clients in
 sysfs
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


On 16/12/2019 13:17, Chris Wilson wrote:
> Quoting Tvrtko Ursulin (2019-12-16 12:07:01)
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Expose a list of clients with open file handles in sysfs.
>>
>> This will be a basis for a top-like utility showing per-client and per-
>> engine GPU load.
>>
>> Currently we only expose each client's pid and name under opaque numbered
>> directories in /sys/class/drm/card0/clients/.
>>
>> For instance:
>>
>> /sys/class/drm/card0/clients/3/name: Xorg
>> /sys/class/drm/card0/clients/3/pid: 5664
> 
> Should we even bother having the name here? And just have a link to pid
> instead? Contemplating even pidfd for ultramodern.

I haven't looked at what symlink creation facilities sysfs would allow. 
But even then, I don't see how we could link to proc from sysfs.

I had a quick read on pidfd and don't see how it fits. What did you have 
in mind?

Regards,

Tvrtko



_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
