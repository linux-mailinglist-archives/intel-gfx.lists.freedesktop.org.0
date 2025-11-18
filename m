Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0B6C67B70
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 07:23:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 912E610E412;
	Tue, 18 Nov 2025 06:23:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gvHWM6gw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCCD110E412;
 Tue, 18 Nov 2025 06:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763447020; x=1794983020;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=o0Os0yCWoDXKZYizKvM7nchHjT3IMt9PymQ9wsTSCAU=;
 b=gvHWM6gwKcpCLofRSeY36K5v2j8cK7V8kQxHY42yQ0Pu4IXXeYHkiER5
 Zpl3ZSzrBsyAs/TZt7XCl2itggTFwcHEtcH157R6rw3g+1WSLKWAWaOJf
 GcKtl/QS0Eki1dAs16BiG8AMCN/Vwk5Q5QnOSN5dzf55eHCAga/E/Vi+T
 jI8++r/XwvBSjhCSdp7JrhNtHj+Hv0KQRzlHqNAQshBpGNPOaznhzcosU
 jYcF7K9cHA2vRFaTdKSCCk0+hy26fp/KtX8mxbwuvz3/1BUi6s0TKUm9e
 rZ4yz4PSaJJXFtdjEBWzXKQQaF7acqZn53PYuloqk5vtXIUr3BiOsLE5o g==;
X-CSE-ConnectionGUID: 84DMKkB/RnOY5InF8/hrmQ==
X-CSE-MsgGUID: CSUoL7q5SpKULmebfAB/yw==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="76811708"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="76811708"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:23:39 -0800
X-CSE-ConnectionGUID: yS5W5kFpQVySZliJZaBRyw==
X-CSE-MsgGUID: WPRLsngoQ3Gsm6IB1j1V4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="214064899"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:23:37 -0800
Message-ID: <bf5de414-ef1a-42bb-8d20-c14d8d1dc037@linux.intel.com>
Date: Tue, 18 Nov 2025 14:19:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: REGRESSION on linux-next (next-20251106)
To: "Tian, Kevin" <kevin.tian@intel.com>, Jason Gunthorpe <jgg@nvidia.com>,
 "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Auld, Matthew" <matthew.auld@intel.com>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
References: <4f15cf3b-6fad-4cd8-87e5-6d86c0082673@intel.com>
 <20251118012944.GA60885@nvidia.com>
 <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <BN9PR11MB5276C5F6D952CFFEC7CBF0D68CD6A@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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

On 11/18/25 12:04, Tian, Kevin wrote:
>> I'm still interested to know if there is an iommu error that is
>> somehow not getting into the log?
> Just re-checked the code:
> 
> dmar_fault() -> dmar_fault_do_one() -> dmar_fault_dump_ptes():
> 
>          pr_info("Dump %s table entries for IOVA 0x%llx\n", iommu->name, addr);
> 
> before reaching that point, there are several early exits:
> 
> - advanced fault log, which I don't think will happen (Baolu?)

Advanced fault log is not used in the VT-d driver.

Thanks,
baolu
