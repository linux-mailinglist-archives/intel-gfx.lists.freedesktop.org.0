Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FC3A5EF467
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Sep 2022 13:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB2D10EA35;
	Thu, 29 Sep 2022 11:36:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C3BE10E5E1
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Sep 2022 11:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664451397; x=1695987397;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=2+KOmYD8C9/m5adhqV35BuALcyr7WOVHeTOaKu1ibrk=;
 b=ivuN7Fnbo5H9/uy3mVclGVjL2Nqn2kC8wMGDN1PJdrLiWoZO+4iRcBJ7
 uPS0kJwjz+Wx+184dvD2N3LkPrvDPGjadgQiVTKkW4n/ezppaZ7c/n27u
 VYEJwCmmKgZxLHsGKnAj+mKx2k6mkhXkzWJZh58X75TsoH+x0Hr6wKTFL
 vGh55bRK/TVEwYSwOCiLVyH+pSmZETj23x0H+S6z3Qe1X+Rt+SGEmXlbu
 Q7YIrGOtT91AGDa7Kd2dz+PStX9S4WgWQvUKh3QS8ncVirhvw+3sUxvMI
 SmbKIGLRK86rS2Dk9nvqi1TKJ2ThrZsFe0pMbH9TfFyGLuk3yn6AaXqid A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="289031832"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="289031832"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:36:36 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10484"; a="711350168"
X-IronPort-AV: E=Sophos;i="5.93,355,1654585200"; d="scan'208";a="711350168"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.6.136])
 ([10.252.6.136])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2022 04:36:35 -0700
Message-ID: <7c78f50e-f9f5-16d1-6787-5dc9dd78e2d2@linux.intel.com>
Date: Thu, 29 Sep 2022 13:36:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220923073515.23093-1-nirmoy.das@intel.com>
 <YzWCQEzSjodmMkMV@ashyti-mobl2.lan>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <YzWCQEzSjodmMkMV@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix a potential UAF at device
 unload
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


On 9/29/2022 1:32 PM, Andi Shyti wrote:
> Hi Nirmoy,
>
> On Fri, Sep 23, 2022 at 09:35:14AM +0200, Nirmoy Das wrote:
>> i915_gem_drain_freed_objects() might not be enough to
>> free all the objects and RCU delayed work might get
>> scheduled after the i915 device struct gets freed.
>>
>> Call i915_gem_drain_workqueue() to catch all RCU delayed work.
>>
>> Suggested-by: Chris Wilson <chris.p.wilson@intel.com>
>> Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> pushed to drm-intel-gt-next


Thanks, Andi!

>
> Thanks,
> Andi
