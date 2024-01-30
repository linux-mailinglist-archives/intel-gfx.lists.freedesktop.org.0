Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C8841C06
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 07:39:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97F3E112DF3;
	Tue, 30 Jan 2024 06:39:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32700112DF3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jan 2024 06:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706596751; x=1738132751;
 h=message-id:date:mime-version:cc:subject:to:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ql8JyOqXu4hDbI4cy8/jf9zI9M1di9RVCr3fSSdMWeE=;
 b=NwhTjqAc0GCVieCAS1FSnqaajcJl42FRE1QBhcZkeCLMu3EpSV2TJ0Ud
 OSrRZBuCAMPBwkgoNNaADsZKkGzBLV0C7r01F82J/G/++M7tdUkNRQNvi
 MD/RnK6dFrx4GvtLwm3TgfgX8ML46ljedoRK+JRJNPA55G3S1fkeOEV63
 QTpq1y8h67rYgJ5jRjv2OLDdD7R/WKKrwcLCu9la4WtrbvM9hdpizYSRV
 Ez/SCQ5FxJ9Vk7XQYWnDJNDx2lDWKhUy7DtiMoIskFWAXx1I8goQkTH9l
 VCLrDuuRkJ7L9ZcMt/Az2vwL+dBoduAmGTpQ6+0YNRa2q41tQy7PZZnBm A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="24662702"
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="24662702"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 22:39:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,707,1701158400"; d="scan'208";a="36394744"
Received: from unknown (HELO [10.249.174.186]) ([10.249.174.186])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 22:39:08 -0800
Message-ID: <757c6b52-628c-4d73-8e66-43a06e1cd982@linux.intel.com>
Date: Tue, 30 Jan 2024 14:39:04 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/1] iommu/vt-d: Remove INTEL_IOMMU_BROKEN_GFX_WA
To: "Tian, Kevin" <kevin.tian@intel.com>, Joerg Roedel <joro@8bytes.org>,
 Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Jason Gunthorpe <jgg@ziepe.ca>
References: <20240130060823.57990-1-baolu.lu@linux.intel.com>
 <BN9PR11MB5276DD160FDBEC47F9441F008C7D2@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Language: en-US
From: Baolu Lu <baolu.lu@linux.intel.com>
In-Reply-To: <BN9PR11MB5276DD160FDBEC47F9441F008C7D2@BN9PR11MB5276.namprd11.prod.outlook.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>, baolu.lu@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 2024/1/30 14:24, Tian, Kevin wrote:
>> From: Lu Baolu <baolu.lu@linux.intel.com>
>> Sent: Tuesday, January 30, 2024 2:08 PM
>>
>> Commit 62edf5dc4a524 ("intel-iommu: Restore DMAR_BROKEN_GFX_WA
>> option for
>> broken graphics drivers") was introduced 24 years ago as a temporary
>> workaround for graphics drivers that used physical addresses for DMA and
>> avoided DMA APIs. This workaround was disabled by default.
>>
>> As 24 years have passed, it is expected that graphics driver developers
>> have migrated their drivers to use kernel DMA APIs. Therefore, this
>> workaround is no longer required and could been removed.
>>
>> The Intel iommu driver also provides a "igfx_off" option to turn off
>> the DAM translation for the graphic dedicated IOMMU. Hence, there is
>> really no good reason to keep this config option.
>>
> 
> s/DAM/DMA/

Fixed. :-)

Best regards,
baolu
