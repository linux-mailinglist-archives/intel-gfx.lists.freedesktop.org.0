Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8A467FBAD6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 14:03:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2DE10E50E;
	Tue, 28 Nov 2023 13:03:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E07CE10E50D;
 Tue, 28 Nov 2023 13:03:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701176597; x=1732712597;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=midxsr58CJMynt/rWAtXeOEPw0fxKfRU09ocjNn1cBA=;
 b=OW1EKTLBrKixDtF0BWevJx9M8ZClFyAyeM9DH35FlAFh81evFILRt+7y
 ZDAGx2vkbhmrVVtplAyrDRu+98CTYgUC0dyQgR9Sa/mPBwFfq2jiVdkaS
 nETrlzZ8YReqmT7Cuh2jQAtZMiymhm1DldTD8N8Zu5s3x1E67fBkIgPNb
 V9LUDigYcEbHYdePWKlM4jsiH0OrgaU1Nd4EC5kEYttjsJD4hc6gJpf93
 0B5h+Ks5ORA822acjfbCa9RnX87b56VqVeodGmcCSIoXpZho2yZfs39Zp
 dTSQ14Z4+5RB6+Iw9WEJ+wCWCeAXPr6g2OAeWGrL2PXN1SOLhxpvV5cY0 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="396823578"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="396823578"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 05:03:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10907"; a="1100092423"
X-IronPort-AV: E=Sophos;i="6.04,233,1695711600"; d="scan'208";a="1100092423"
Received: from mravivx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.42.57])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 05:03:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vignesh Raman <vignesh.raman@collabora.com>, Manivannan Sadhasivam
 <manivannan.sadhasivam@linaro.org>
In-Reply-To: <06719894-7acd-9bfb-bdf7-4aa9eba21f2f@collabora.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231128042026.130442-1-vignesh.raman@collabora.com>
 <20231128051456.GA3088@thinkpad>
 <50a9f061-e1d3-6aca-b528-56dbb6c729d9@collabora.com>
 <20231128065104.GK3088@thinkpad>
 <06719894-7acd-9bfb-bdf7-4aa9eba21f2f@collabora.com>
Date: Tue, 28 Nov 2023 15:03:03 +0200
Message-ID: <87edga6neg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] PCI: qcom: Fix compile error
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
Cc: daniels@collabora.com, intel-gfx@lists.freedesktop.org,
 helen.koike@collabora.com, dri-devel@lists.freedesktop.org,
 david.e.box@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 28 Nov 2023, Vignesh Raman <vignesh.raman@collabora.com> wrote:
> On 28/11/23 12:21, Manivannan Sadhasivam wrote:
>> On Tue, Nov 28, 2023 at 11:44:26AM +0530, Vignesh Raman wrote:
>>> Hi Mani,
>>>
>>> On 28/11/23 10:44, Manivannan Sadhasivam wrote:
>>>> On Tue, Nov 28, 2023 at 09:50:26AM +0530, Vignesh Raman wrote:
>>>>> Commit a2458d8f618a ("PCI/ASPM: pci_enable_link_state: Add argument
>>>>> to acquire bus lock") has added an argument to acquire bus lock
>>>>> in pci_enable_link_state, but qcom_pcie_enable_aspm calls it
>>>>> without this argument, resulting in below build error.
>>>>>
>>>>
>>>> Where do you see this error? That patch is not even merged. Looks like you are
>>>> sending the patch against some downstream tree.
>>>
>>> I got this error with drm-tip - git://anongit.freedesktop.org/drm-tip
>>>
>>> This commit is merged in drm-intel/topic/core-for-CI -
>>> https://cgit.freedesktop.org/drm-intel/log/?h=topic/core-for-CI
>>>
>> 
>> Okay. Since this patch is just for CI, please do not CC linux-pci as it causes
>> confusion.
>
> Sure, thank you.
>
> Jani, is this fix required for topic/core-for-CI ?

Done. Please double check drm-tip works for you now.

BR,
Jani.


>
> Regards,
> Vignesh

-- 
Jani Nikula, Intel
