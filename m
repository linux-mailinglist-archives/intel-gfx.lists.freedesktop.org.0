Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CBD135FAE84
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 10:35:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDFE910E7DF;
	Tue, 11 Oct 2022 08:35:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBDB510E534
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 08:35:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665477347; x=1697013347;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=n+Rj0crdmYuGaVhxDulJOeXVv+pdBkglTwNs/mFcIk8=;
 b=YBrtNq6HuNHd590BMQ0SiVixbeovxdUqj1uFhcsZ0rt1nmoMb5GURlJK
 Dck2T9Yv0PjJMXDRLR9lYvafLNyfFM5HA1oDL6P6905mN06ZTKyKARz1n
 VN8EkW4Pdun10JuzWg+Ifd4yE6mMjfWzcITkBfLp1UqkBIpU36+PCNWCG
 WKZ0dq81LNYcXQO0TNJdgJOz476O8rIOjwNAUXAhrpKO0lIX+pNV5UGEz
 sj0AYhb/Io3opitLqIGEjL/krD/8hZTLL4Fm01m7tBUja/G6I64y05b5Z
 gmQcxeLxiuRnTs3FwhkeDn12xofDdLQRARPTWt07ZZArk0TCJcStqveQg Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="305499741"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="305499741"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:35:47 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="955253546"
X-IronPort-AV: E=Sophos;i="5.95,175,1661842800"; d="scan'208";a="955253546"
Received: from mhartiga-mobl.ger.corp.intel.com (HELO [10.213.228.219])
 ([10.213.228.219])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 01:35:46 -0700
Message-ID: <94c0d0c1-4d14-b175-52a6-44de04961eaa@linux.intel.com>
Date: Tue, 11 Oct 2022 09:35:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <cover.1665458639.git.ashutosh.dixit@intel.com>
 <da81208882ba7fb24a8051c5edfbf6a735127f88.1665458640.git.ashutosh.dixit@intel.com>
 <87pmey29es.wl-ashutosh.dixit@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <87pmey29es.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Warn if not in RC6 when GT
 is parked
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


On 11/10/2022 06:53, Dixit, Ashutosh wrote:
> On Mon, 10 Oct 2022 20:29:23 -0700, Ashutosh Dixit wrote:
>>
>> Some i915 modules implicitly assume that there is no user, kernel or
>> firmware activity after GT is parked. For example, PMU calculations are
>> incorrect if GT is not in RC6 when GT is parked (outside of the GT
>> wakeref). Therefore check and warn if GT is not in RC6 at the time of
>> parking the GT.
> 
> This patch has cause widespread dmesg_warn's in premerge CI so there is no
> intention of merging this. It just proves that these assumptions in PMU
> (for quantities such as frequency and RC6 residency) are incorrect and need
> to be addressed.

Yeah this probably does not make sense since I am not sure if driver 
actually controls when hardware goes into RC6.

Regards,

Tvrtko

> 
> Thanks.
> --
> Ashutosh
> 
> 
>> @@ -123,6 +125,10 @@ static int __gt_park(struct intel_wakeref *wf)
>> 		intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>> 	}
>>
>> +	ret = intel_rc6_in_rc6(&gt->rc6, &in_rc6);
>> +	if (!ret && !in_rc6)
>> +		drm_warn_once(&i915->drm, "Parking, but GT is not in RC6!\n");
>> +
>> 	return 0;
>>   }
