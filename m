Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 39DE460FA8C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 16:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9989610E65F;
	Thu, 27 Oct 2022 14:38:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02EF910E653
 for <Intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 14:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666881519; x=1698417519;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=1txbTAtjE56EX9D4ddBx/JjLRLCNwcs8zGSv/ynl+u4=;
 b=dxEj13yZUZsdMOF1mn3n+Nle+zv2Fp6X3GeSI9cLlzrpruPZXWMIOCP4
 GRvYaBI5jAfbob8BWqfOv1m1qjBGfourYzYSZ+hRARLJY7g+SNFpa3fdh
 IpzYLRThelcTNdY0NtwyGjm8wXqwplYSJOgmLm3sZxIN1I9VffAvBOGvY
 xhxxPfGnokOJP++WXCswuoAmudH2A8pRjmHkC5o2DLGomQHeGcc90IFTL
 M5d+ImykdpTVkQPMbCeubTBmZNsG8Di6Rsmj7xi2PSBBpOb/2EU0oQOO8
 1i4GyDNKp1BO6rI9OyJPUjBNwkhj/dJVbPetVeGEdik9zWcuOdBD+o1YR w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="287955574"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="287955574"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:35:43 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="665698491"
X-IronPort-AV: E=Sophos;i="5.95,217,1661842800"; d="scan'208";a="665698491"
Received: from rgrilak-mobl.ger.corp.intel.com (HELO [10.213.238.72])
 ([10.213.238.72])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2022 07:35:39 -0700
Message-ID: <c88d0c33-8616-faa4-b33e-5de36d7b73fd@linux.intel.com>
Date: Thu, 27 Oct 2022 15:35:37 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.3
Content-Language: en-US
To: =?UTF-8?Q?Christian_K=c3=b6nig?= <christian.koenig@amd.com>,
 Intel-gfx@lists.freedesktop.org
References: <20221019173254.3361334-1-tvrtko.ursulin@linux.intel.com>
 <20221019173254.3361334-3-tvrtko.ursulin@linux.intel.com>
 <77499370-bb0e-7f7e-ac1b-ad14f47578d9@amd.com>
 <391a77ea-1120-eb23-31f9-e7a14d84b10e@linux.intel.com>
 <04182f67-2c98-add4-be60-539ffe2e9d6a@amd.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <04182f67-2c98-add4-be60-539ffe2e9d6a@amd.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [RFC 02/17] drm: Track clients per owning process
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
Cc: Rob Clark <robdclark@chromium.org>, Kenny.Ho@amd.com,
 Daniel Vetter <daniel.vetter@ffwll.ch>, Johannes Weiner <hannes@cmpxchg.org>,
 linux-kernel@vger.kernel.org,
 =?UTF-8?Q?St=c3=a9phane_Marchesin?= <marcheu@chromium.org>,
 Zefan Li <lizefan.x@bytedance.com>, Dave Airlie <airlied@redhat.com>,
 Tejun Heo <tj@kernel.org>, cgroups@vger.kernel.org,
 "T . J . Mercier" <tjmercier@google.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 20/10/2022 12:33, Christian König wrote:
> Am 20.10.22 um 09:34 schrieb Tvrtko Ursulin:
>>
>> On 20/10/2022 07:40, Christian König wrote:
>>> Am 19.10.22 um 19:32 schrieb Tvrtko Ursulin:
>>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>>
>>>> To enable propagation of settings from the cgroup drm controller to 
>>>> drm we
>>>> need to start tracking which processes own which drm clients.
>>>>
>>>> Implement that by tracking the struct pid pointer of the owning 
>>>> process in
>>>> a new XArray, pointing to a structure containing a list of associated
>>>> struct drm_file pointers.
>>>>
>>>> Clients are added and removed under the filelist mutex and RCU list
>>>> operations are used below it to allow for lockless lookup.
>>>
>>> That won't work easily like this. The problem is that file_priv->pid 
>>> is usually not accurate these days:
>>>
>>>  From the debugfs clients file:
>>>
>>>        systemd-logind   773   0   y    y     0          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>               firefox  2945 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                chrome 35940 128   n    n  1000          0
>>>                chrome 35940   0   n    y  1000          1
>>>                chrome 35940   0   n    y  1000          2
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>                  Xorg  1639 128   n    n  1000          0
>>>
>>> This is with glxgears and a bunch other OpenGL applications running.
>>>
>>> The problem is that for most applications the X/Wayland server is now 
>>> opening the render node. The only exceptions in this case are apps 
>>> using DRI2 (VA-API?).
>>>
>>> I always wanted to fix this and actually track who is using the file 
>>> descriptor instead of who opened it, but never had the time to do this.
>>
>> There's a patch later in the series which allows client records to be 
>> migrated to a new PID, and then i915 patch to do that when fd is used 
>> for context create. That approach I think worked well enough in the 
>> past. So maybe it could be done in the DRM core at some suitable entry 
>> point.
> 
> Yeah, that makes some sense. I think you should wire that inside 
> drm_ioctl(), as far as I know more or less all uses of a file descriptor 
> would go through that function.
> 
> And maybe make that a stand alone patch, cause that can go upstream as a 
> bug fix independently if you ask me.

I've put it on my todo list to try and come up with something standalone 
for this problem. Will see if I manage to send it separately or perhaps 
will start the next cgroup controller RFC with those patches.

>>> I think you need to fix this problem first. And BTW: and unsigned 
>>> long doesn't work as PID either with containers.
>>
>> This I am not familiar with so would like to hear more if you could 
>> point me in the right direction at least.
> 
> Uff, I'm the wrong person to ask stuff like that. I just can say from 
> experience because I've ran into that trap as well.
> 
>>
>> My assumption was that struct pid *, which is what I store in unsigned 
>> long, would be unique in a system where there is a single kernel 
>> running, so as long as lifetimes are correct (released from tracking 
>> here when fd is closed, which is implicit on process exit) would work. 
>> You are suggesting that is not so?
> 
> I think you should have the pointer to struct pid directly here since 
> that is a reference counted structure IIRC. But don't ask me what the 
> semantics is how to get or put a reference.

Yeah I think I have all that. I track struct pid, with a reference, in 
drm client, and release it when file descriptor is closed (indirectly 
via the DRM close hook). All I need, I think, is for that mapping to 
answer me "which drm_file objects" are in use by this struct pid 
pointer. I don't see a problem with lifetimes or scope yet.

Regards,

Tvrtko
