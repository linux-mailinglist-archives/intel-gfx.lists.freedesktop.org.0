Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E52974E6F88
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 09:40:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21AA510EB02;
	Fri, 25 Mar 2022 08:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4224B10EAFE;
 Fri, 25 Mar 2022 08:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648197650; x=1679733650;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=R3prQRlNzpzG7rO38AY2nU+II7Pihp2XW5V+Eb7ghrE=;
 b=bIvWUcwaoo/DVGVcKZunHzvw4KqHKE4JtuBBafu4dZVW8iiDLcWOCg5w
 t9rHIG1N/qyXCmf1PB4uG8vFIZNVo/floe1BfdZ7Ofx6kw3qaKEX4iwEt
 +VxwxW4cC/EQRYDluZ5u8S9E5tL12vr2fN/lFR3swk9E7x67HSfhRCt3S
 ALgDsvu6pkvSiQiq+7v2royEOD0Nr/QpDP61AciTjMNSl9uE+ERzs/6Ow
 93ThkByupm/BUuPx/hbv3xc6GRLmATqYfEzgQaRnrkr9iheJLsEkJrF+9
 WcPcjX5tgXTO7C7a9+jPcG2XpK75NsmC/xov1VWNVzaQGY7bmGiX9mODo A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="257415324"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="257415324"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 01:40:49 -0700
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="545000549"
Received: from mhenry-mobl.ger.corp.intel.com (HELO [10.252.10.83])
 ([10.252.10.83])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 01:40:47 -0700
Message-ID: <af23ceff-4899-6bef-87e5-273419f030f8@intel.com>
Date: Fri, 25 Mar 2022 08:40:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-GB
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 Petri Latvala <petri.latvala@intel.com>
References: <20220324142621.347452-1-matthew.auld@intel.com>
 <20220324142621.347452-4-matthew.auld@intel.com>
 <8735j75jjk.wl-ashutosh.dixit@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <8735j75jjk.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [igt-dev] [PATCH i-g-t 3/4]
 tests/gem_lmem_swapping: limit lmem to 4G
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
Cc: igt-dev@lists.freedesktop.org,
 =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, CQ Tang <cq.tang@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 24/03/2022 17:47, Dixit, Ashutosh wrote:
> On Thu, 24 Mar 2022 07:26:20 -0700, Matthew Auld wrote:
>>
>> @@ -554,6 +560,7 @@ igt_main_args("", long_options, help_str, opt_handler, NULL)
>> 	igt_fixture {
>> 		free(regions);
>> 		close(i915);
>> +		igt_i915_driver_unload();
> 
> I thought we'd reload the module with default params here but when the next
> test runs the module gets loaded automatically so maybe this is ok?

Yeah, that at least matches my understanding. Adding Petri in case he 
has some comments here.
