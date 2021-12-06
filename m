Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF0D46AC31
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Dec 2021 23:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2CF36E91D;
	Mon,  6 Dec 2021 22:34:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70476E91D
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Dec 2021 22:34:23 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10190"; a="300806047"
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="300806047"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2021 14:34:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,292,1631602800"; d="scan'208";a="579543789"
Received: from irvmail001.ir.intel.com ([10.43.11.63])
 by fmsmga004.fm.intel.com with ESMTP; 06 Dec 2021 14:34:21 -0800
Received: from [10.249.129.239] (mwajdecz-MOBL.ger.corp.intel.com
 [10.249.129.239])
 by irvmail001.ir.intel.com (8.14.3/8.13.6/MailSET/Hub) with ESMTP id
 1B6MYJtu003645; Mon, 6 Dec 2021 22:34:20 GMT
Message-ID: <f34393ce-cc0d-6c02-dbea-bf63498d1072@intel.com>
Date: Mon, 6 Dec 2021 23:34:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.1
Content-Language: en-US
To: John Harrison <john.c.harrison@intel.com>, intel-gfx@lists.freedesktop.org
References: <20211203183339.3276250-1-John.C.Harrison@Intel.com>
 <163857043316.5407.10739772615643638072@emeril.freedesktop.org>
 <128ead1a-546f-80cd-b442-e43a40684b6c@intel.com>
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <128ead1a-546f-80cd-b442-e43a40684b6c@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIFVw?=
 =?utf-8?q?date_to_GuC_version_69=2E0=2E0?=
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



On 06.12.2021 20:29, John Harrison wrote:
> Michal, do you know what this is complaining about?

broken links definitions, fix below

Michal

diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
index d09d6a5bb63b..6aa3cf7172f7 100644
--- a/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
+++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h
@@ -40,23 +40,23 @@
  *      Refers to 64 bit Global Gfx address of H2G `CT Buffer`_.
  *      Should be above WOPCM address but below APIC base address for
native mode.
  *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR : 0x0903
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_DESCRIPTOR_ADDR` : 0x0903
  *      Refers to 64 bit Global Gfx address of H2G `CTB Descriptor`_.
  *      Should be above WOPCM address but below APIC base address for
native mode.
  *
- * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE : 0x0904
+ * _`GUC_KLV_SELF_CFG_H2G_CTB_SIZE` : 0x0904
  *      Refers to size of H2G `CT Buffer`_ in bytes.
  *      Should be a multiple of 4K.
  *
- * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR : 0x0905
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_ADDR` : 0x0905
  *      Refers to 64 bit Global Gfx address of G2H `CT Buffer`_.
  *      Should be above WOPCM address but below APIC base address for
native mode.
  *
- * _GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR : 0x0906
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_DESCRIPTOR_ADDR` : 0x0906
  *      Refers to 64 bit Global Gfx address of G2H `CTB Descriptor`_.
  *      Should be above WOPCM address but below APIC base address for
native mode.
  *
- * _GUC_KLV_SELF_CFG_G2H_CTB_SIZE : 0x0907
+ * _`GUC_KLV_SELF_CFG_G2H_CTB_SIZE` : 0x0907
  *      Refers to size of G2H `CT Buffer`_ in bytes.
  *      Should be a multiple of 4K.
  */

> 
> John.
> 
> On 12/3/2021 14:27, Patchwork wrote:
>> == Series Details ==
>>
>> Series: Update to GuC version 69.0.0
>> URL   : https://patchwork.freedesktop.org/series/97564/
>> State : warning
>>
>> == Summary ==
>>
>> $ make htmldocs 2>&1 > /dev/null | grep i915
>> /home/cidrm/kernel/Documentation/gpu/i915:542:
>> ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:44: WARNING: Inline
>> target start-string without end-string.
>> /home/cidrm/kernel/Documentation/gpu/i915:542:
>> ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:48: WARNING: Inline
>> target start-string without end-string.
>> /home/cidrm/kernel/Documentation/gpu/i915:542:
>> ./drivers/gpu/drm/i915/gt/uc/abi/guc_klvs_abi.h:52: WARNING: Inline
>> target start-string without end-string.
>>
>>
> 
