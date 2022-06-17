Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AE6F54F280
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jun 2022 10:07:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A990A10ED91;
	Fri, 17 Jun 2022 08:06:55 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B7E1410ED91
 for <Intel-gfx@lists.freedesktop.org>; Fri, 17 Jun 2022 08:06:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655453214; x=1686989214;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=MuMQNyRCfXKT7Th9H5mO6dwNhi58Rgv/NhDozT9x/PY=;
 b=FikjJVxcQ20CZC7+g0hivDRrzJi61SKuNSSQ+hrLk/uE5eekl2jf1SA+
 5cRKkSHRfc/xTmPxLg247+pzwH5sxFHQyA0HhYl17UQpGQYWLps+c5wvt
 DQUGct43vrPc1vNjAynzot9Kcu4MaaTaw6Ok2Zji8Bkt0UuQzDxHnXbwP
 eryBRkPclLLs0Ff7/grvyzAlMZy3mNgt6HJCjm6EjQEHLYdnoFmUmoq/S
 G0fFmPV3OBq6/YLb1kOnQRxsexTo0vx3rB510ogxZkafj/mM9rlk3vLgK
 gb+GhjURvUN31FzTwtZuYh81MkbU9HiUEzJDNo6HB82c8M0X6PKYwXxpY Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="268138999"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="268138999"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 01:06:53 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="831943022"
Received: from makierna-mobl1.ger.corp.intel.com (HELO [10.213.236.232])
 ([10.213.236.232])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2022 01:06:52 -0700
Message-ID: <fbe6a20c-d796-7262-cdae-663aa2c4f8fd@linux.intel.com>
Date: Fri, 17 Jun 2022 09:06:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
References: <20220616140056.559074-1-tvrtko.ursulin@linux.intel.com>
 <20220616141943.GM48807@orsosgc001.jf.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220616141943.GM48807@orsosgc001.jf.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fdinfo: Don't show engine classes
 not present
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 16/06/2022 15:19, Umesh Nerlige Ramappa wrote:
> On Thu, Jun 16, 2022 at 03:00:56PM +0100, Tvrtko Ursulin wrote:
>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>
>> Stop displaying engine classes with no engines - it is not a huge problem
>> if they are shown, since the values will correctly be all zeroes, but it
>> does count as misleading.
>>
>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via 
>> fdinfo")
>> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
>> ---
>> drivers/gpu/drm/i915/i915_drm_client.c | 5 +++--
>> 1 file changed, 3 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c 
>> b/drivers/gpu/drm/i915/i915_drm_client.c
>> index 18d38cb59923..b09d1d386574 100644
>> --- a/drivers/gpu/drm/i915/i915_drm_client.c
>> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
>> @@ -116,8 +116,9 @@ show_client_class(struct seq_file *m,
>>         total += busy_add(ctx, class);
>>     rcu_read_unlock();
>>
>> -    seq_printf(m, "drm-engine-%s:\t%llu ns\n",
>> -           uabi_class_names[class], total);
>> +    if (capacity)
>> +        seq_printf(m, "drm-engine-%s:\t%llu ns\n",
>> +               uabi_class_names[class], total);
> 
> Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>

Thanks, pushed!

Regards,

Tvrtko
