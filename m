Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC0E15512FF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 10:39:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53AA410E2DE;
	Mon, 20 Jun 2022 08:38:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E039110E2D4
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 08:38:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655714336; x=1687250336;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=OlQ68Sqdwz34YF/FlhfAV22lX1tg/G7WWZN+n7ZQ3VU=;
 b=R1txOHhuKqPqGz36g8jcW5ojZ+1YsP4n3jCLIy6Men3kg7BrLpPVuxeb
 48BiMWEy2CxNK+pZsLp9Bz4gL3b1CTBhQC57GgfCW1226bg8i3FUU8CwX
 YZpnGkB19qNetr9nSZ60GqaepoJ8GBcQ/ESnT7u1IQx0ENDvPRx4WPvdb
 qODdszver+pd1LxI9Xpsck7rnw0VzhmgJIOE2COBleuVGz/jUyNRp7v3t
 RHMpE9FZhv4V8anFpvyZfPY80/3hGZ0GSbXeA7Yh5aN47DsXbeNhWXuU9
 n10G0b8E7L8sureCS7Uvk2ccutsEo+0AzhNx7Jf+lbMY6G6fz3sHr1Ytk Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10380"; a="343832037"
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="343832037"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:56 -0700
X-IronPort-AV: E=Sophos;i="5.92,306,1650956400"; d="scan'208";a="643012553"
Received: from malikhan-mobl1.amr.corp.intel.com (HELO [10.212.127.6])
 ([10.212.127.6])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 01:38:55 -0700
Message-ID: <82e0a95b-717a-e502-35bf-2d2994831321@linux.intel.com>
Date: Mon, 20 Jun 2022 09:38:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
References: <20220611172711.2154962-1-alan.previn.teres.alexis@intel.com>
 <20220611172711.2154962-2-alan.previn.teres.alexis@intel.com>
 <20220614011024.GE48807@orsosgc001.jf.intel.com>
 <84534cf0-94f0-13e0-5fb3-332bee124a24@linux.intel.com>
 <20220615185953.bsbyr27jcchccvge@ldmartin-desk2>
 <1a19781d-5d78-aa15-9578-44106433cbf9@linux.intel.com>
 <f1c2cd183ba15ca11607e7e4c21c6f436b4315be.camel@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <f1c2cd183ba15ca11607e7e4c21c6f436b4315be.camel@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Don't update engine
 busyness stats too frequently
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/06/2022 22:43, Teres Alexis, Alan Previn wrote:
> 
>>>> Not updating the driver state in park will not negatively impact
>>>> accuracy in some scenarios? That needs to balanced against the
>>>> questions whether or not there are real world scenarios impacted by
>>>> the update cost or it is just for IGT.
>>>
> If i understand it correctly (how its calculated), no. not capturing on every park/unpark
> does not mean less accuracy. Umesh mentioned to verify that with igt@perf-pmu@accuracy
> tests

Okay you moved it from guc_update_engine_gt_clks to 
intel_guc_busyness_park to work around the loss of accuracy. I almost 
missed it since patch itself has not changelog. Works for me if Umesh 
approves it is correct.

Regards,

Tvrtko

