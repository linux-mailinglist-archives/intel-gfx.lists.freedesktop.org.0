Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5086C67BA0
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Nov 2025 07:27:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5422A10E416;
	Tue, 18 Nov 2025 06:27:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XoZnOQzD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 247FE10E413;
 Tue, 18 Nov 2025 06:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763447274; x=1794983274;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=qjBNPO7akwtbKWj3lWzGjKv3g/58FuL7oZxZeQoOHGI=;
 b=XoZnOQzDoY8mfcL7xty96WNRraDZ8my/2nBr3zW0q3BFxofrxHKFd51c
 udNt+1SmsjddN2zqURa2U0C/NE8LN0qf9AUb8PQtXcnhDbKk7s8Fogqau
 ohhGF7b4nxKTxG+zhT88F/kNwFbzDwgluWnknzS3StNqUvPjQFZCIzq67
 PjwQsX8cDFNIif1rqqYsvb/u2xtLK1TkGWPhbKXTafMQ8s4+w/f8m1j1A
 CuMhjwyA3RR0cxszmBRaOYOqoKgnwdhgEjgtcYS7GIfbPh7h/E5Wnwq6W
 1CHlmTb0JtNMzy4VnAkx3TN2u1WOuK/afd8Bj3ToLqX+gp/jVO+kvlwIu g==;
X-CSE-ConnectionGUID: sdNzcDQkTnCtB8Vrg8gtsQ==
X-CSE-MsgGUID: znfhniktTLOmgHM9ha/BZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11616"; a="64460977"
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="64460977"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:27:54 -0800
X-CSE-ConnectionGUID: 5J5NUgveTGupXBGK3jEYeQ==
X-CSE-MsgGUID: n+vYmvMKSTqJ9vm45RIe4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,314,1754982000"; d="scan'208";a="190331718"
Received: from allen-sbox.sh.intel.com (HELO [10.239.159.30]) ([10.239.159.30])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2025 22:27:52 -0800
Message-ID: <5ec170fa-d5e1-473d-a7b8-8d1737efb241@linux.intel.com>
Date: Tue, 18 Nov 2025 14:23:38 +0800
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
>> 46 bits is not particularly big... Hmm, I wonder if we have some issue
>> with the sign-extend? iommupt does that properly and IIRC the old code
>> did not. Which of the page table formats is this using second stage or
>> first stage?
> Assume it's first stage for kernel IOVA, if available in hw

It's the first stage (x86_64 fmt) according to the PASID entry setup:

IOMMU dmar0: Root Table Address: 0x105a82000
B.D.F	Root_entry				Context_entry				PASID	PASID_table_entry
00:02.0	0x0000000000000000:0x0000000105a85001 
0x0000000000000000:0x0000000105a84405	0 
0x0000000105a86000:0x0000000000000002:0x0000000000000049

Thanks,
baolu
