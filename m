Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AAB501AC3
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Apr 2022 20:05:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C9A810E56D;
	Thu, 14 Apr 2022 18:05:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFFA310E56D
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Apr 2022 18:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649959515; x=1681495515;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jzix7lbSeIm12qKc2l0s7lLSla4g9qEvqhondpS3uKA=;
 b=HLg+qkydD0SlCYKcXVc2Wh358Ii/Bl9hI7tdDAdDEMjxhIKH8mvM7eLe
 fMzmDUUXxSqbnOEf1pCoSonP3+fV4brwvg43hcSfvG/21NjB9Hash0C+c
 nscdzrxlCiFXVTDSxnC7AQLUF4cVRGYpowmzKv2Kvhoa3p20SsfRfFwu8
 jq8/N01g3eJIAYOvednSlBhnQvEQs43vYYG0AVe+KQv9QO1QwJ9/tCkCc
 xsVP0GUKrTg7w6Bcs/7iHx0dqQ/oaq4JIp+DVzD8mvTub5ovOveADTH1t
 Yf9Bv7cloHNntnOmZVih7gkKBiXWxQEieiOjy+jgjgSpr1BRM5oXJubO0 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10317"; a="262751347"
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="262751347"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2022 11:05:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,260,1643702400"; d="scan'208";a="508503153"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 14 Apr 2022 11:05:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Apr 2022 11:05:15 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Apr 2022 11:05:15 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Apr 2022 11:05:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GvDEpWnljF3pw28PRUzNmuaHQjqLWgCe+NPOMxfzv7NLwyRU8STX/4ArSMn6+nNhOyAuBp8xkiMwboneyKX32n4d6fwRg/lIsHidNlQL4N94iBKWlYxlB65Awr+0WORrljM71//Djop5trgVtGHvtpFvlexVc/GZLatvofRzqecEw7BC2Ue/ANBzLOVlLyH+YPi70hWEoUSHUQvZR8Xk4YNAh5bOLpAXKSL73bidDFGY1jks00AMaFMx8TE8/+L3LoRh12v7q5MbU3FyD8VkinWSzOEFgODdrPpFaQICftHZH87Vs4jm+BPocI8+d2YsFu6KZgskCbTjVYhXgWnVKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i28IiulL/hwrwFTJ/LOZmtlQDw/tmtqtz4DVu1vU1Xs=;
 b=JwUzr9/lIKAFY3yMCOQ3pqdu3xIjqfEFrflru749mvnDzEBFjRprvl8TDd5jNSZNaWB0EgdXbtsGHMeDCtMccY3LPCW4x8Jv0EDcGGTS66qRIB5c5VDo5imKPB5lrjkAivQ5WZWBbgeq1D4zbjCBQhR1JcQmrEAP8lYhBn+uiI5y8JyP2XWapH0eRpcmu9khz23RFFumjiTvjNwuCJfjqn+KmUf5poOf+jDq0178e022h6wSz+Gw5d1ipcIohBaROILGtuHNGUIA5e1w6YDGc1egTXPyRY3/tr/jKVwAjnyDtUwhRu8lV3OrowdDbmiVpVDHHLlsUZ/OAv3saq2aUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM5PR11MB1706.namprd11.prod.outlook.com (2603:10b6:3:b::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5144.29; Thu, 14 Apr 2022 18:05:13 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.020; Thu, 14 Apr 2022
 18:05:13 +0000
Message-ID: <2c834128-08bd-04cc-96ca-2f37f24eccbe@intel.com>
Date: Thu, 14 Apr 2022 11:05:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220413225732.34943-1-ashutosh.dixit@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220413225732.34943-1-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0083.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::28) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 210b7b67-a3e3-4c4c-d6ca-08da1e415248
X-MS-TrafficTypeDiagnostic: DM5PR11MB1706:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <DM5PR11MB1706831E06E4D27EB666BD22F4EF9@DM5PR11MB1706.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r+vv2sczbpNx9FKAav6eXgN6W5uoYe5hmyNVrJ73JTIUBCDiGbiaqC9vftCOSI8mXixQk2WhhRSjCtBjkzU+pbMIZWxf1sXRC8j2Pl0nZZfpCfLV4GlP7G5f8IJBvA+CBNrslitDPW3LUZ8s5/Zg6YoAlhMS7pPBd97pk2ulW6Crv1mkdy9AHAoV2OlPvb+oFulUFhvobs4OwOb5tIprOXwe5h0yUABEZ+w9wnZQtD1XHHJ/wkwMjsDQZMK/aPBRZVadmWYLk0ygf3XvzXLBPo+9iu53c9Fj6NqbFb60mzwbN6cOKMw236+h7p7RE8VrZeeua1nTMTki1Lp2fa9Tq9sAFArmQHtMJEzkZ03gqaAl8YE0ackmXT3Z9BD6nRaX4KSCHlpPSqL9ftYdmzrkBeYzU4WN2oNyBx2ozxuVYYU8+1DMzTIyJTQkW18pPcr8NDAt/Xv333+hFd8lkFLuTxndmDhmr3xZHTxuQBaTQmPDuitpk9c2zejMGkyD87QAXo32VfRI7kmCAO9Vbudz0L273IUpDYcBrnIopIacJ+3mXlpDI51ivklfiHEA7i2ugwbhI786O1xdfpmAZ/LxOrrXG/FQgnwaAJraNMqEEludcrg7LsUNupUDmLjPwtzVPqobfPOG61RFjqbeWGIDHw7Dt9d79N2ZHcg1N20yfAwAUgdlRspx1qzrMqq0FQK8B0ccYdq/lHEYVHGQW7tZb8b0DFd6hmklFRCcm/SFrDXWzzzbXjz1AumGdYr8Ng3b
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2616005)(107886003)(83380400001)(5660300002)(38100700002)(8676002)(4326008)(31686004)(54906003)(36756003)(66556008)(316002)(66476007)(66946007)(82960400001)(6512007)(6486002)(31696002)(53546011)(508600001)(86362001)(6506007)(2906002)(966005)(186003)(26005)(8936002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHBBSHRLSGI0VHBuK0R2WHhEVWh4NHRDbXo5VVNzM3Q4c1llTEIyM0xkbDU3?=
 =?utf-8?B?SUNvZjY3NE1CNUh1OXBuZjQ5VWZEZEE2dDluNDZhUDdpdHJQTWlINUpYYlc5?=
 =?utf-8?B?NmJIWXpvSnFSRUlxOW1mYmt5ZENFZGgzUXRYcytGWTNBTFF4d0d2SDhacVdv?=
 =?utf-8?B?c3QzbHZFUUtGcFc0TjY2aUwxTVpKclhyc1BIa3RKclIwUjFZZnBJaHU4MDlo?=
 =?utf-8?B?YUF1SmNTazBzditLelF5bytyTnc4bHdSWG1kNzVGcWg1TEdUK3hkMDVXR3FE?=
 =?utf-8?B?YnJPVklETVk1WHBnNGdxSkNXbmdnWDVUVUF2SXlqbTE4a0o0T1NkcXoxZlFn?=
 =?utf-8?B?YzJvdW8yMkFGcW5KN0U4MHZLZjVRSkI3dnoydHpDSTVKbzFPcXlVVXZRN1ZK?=
 =?utf-8?B?VkJ0L1U1b2lmT29YcjBIUFd5bmhiQkhQcTArcXUyUTlOK2tUQ1oyNmFlMDdD?=
 =?utf-8?B?bnlGNG80TXEwY1ErWC9yKzRUMXVxVzdsMjhzdklGc0plNW10QUV1cy8rNFh0?=
 =?utf-8?B?K3ZGWTFQZ2tscFhMbW0rUWFTdEx1a0hqTUNVTlIyd3NhVStpRjlnSDNRYW5D?=
 =?utf-8?B?ZCtNcWJ4YUltRXNNK2xyblZQZXRNdEUwa0lxeHpFYWRpditrZUlHOVhlbHZq?=
 =?utf-8?B?WVAxcTR1azBPMGwzY2UrakVDeVZkblFGT1RkYmFJMHVQV1dhVjR5MzVSTXRt?=
 =?utf-8?B?QlUvZVFNY2traGo4aTNjbkNmZ0hnVnpCNnZDUHFHWEpsTW05NVl0MTJLdllq?=
 =?utf-8?B?a1RmVDFvaHlDVTl1Vk9sbmQwcDJObzUzZ3p0K2tsL1prQjhvaEZRY2V3Ni93?=
 =?utf-8?B?K3B1RlJaSGpHNldsNUhrSjFDbUh3Nk5nbGpQK3dZZHlTeS9MMWxibGUvT0Jr?=
 =?utf-8?B?Z2tCNGxjYXRleCtjL2Z3UmM2UXV2czg2Z0YwYzFMVUxML2pIL1VzbDhPWFlW?=
 =?utf-8?B?b2NyVVVSS1pLK1ZJUzdsQVVabEg3aUVlWjZOd05JRi9Wb1JLSUtBQitEZlFw?=
 =?utf-8?B?LzQ4cmpzSGMzWTc0Y1RsWEh1R1dhdjFJTWQ1NmtQQnQzdWZ2ZVB0OVpPaWdJ?=
 =?utf-8?B?a05JRjlRei9HaXFsZ1doYW8rRk00M0pHSEhvN0loYy9hNU5JUm4vL1RtWWdu?=
 =?utf-8?B?ZUJqb2owNnc5b3k0QndjRzZBdFVybFoycUNNeTB5TDlrQjA4SHJSbnhoUXd0?=
 =?utf-8?B?a2E0UGhQR0JBR0pPZ0Nrczg5ZTB1VWVCUUh3UHk1THp2S0JMTk1VUEp5NERr?=
 =?utf-8?B?US9wRlViVmd5dGgxOVUxcDhnSjdzR3NVOFVnZnVEckpPejBhWHRCZXAvSjhk?=
 =?utf-8?B?c3F3N2pnSXVFRU5RZHFRMll3WEVRSUcyK2tBcjY4YmJHRHNkMkFXTUk3WEpi?=
 =?utf-8?B?YkpPeWNRMzhsSDkyb1dUM0xaRzI1ZzA4a1JvUURWNitSTFRKaWMzNnNrcGsz?=
 =?utf-8?B?MktMSXNPWktaOTlPdllNL2p3VUNORkwzbEZnQjhJSlJBL1lLWVVqS05XT3dW?=
 =?utf-8?B?Y1pIcnBQT3cvOEFvZzZDalQ1RlBUWmt4S0M1WGVOMlhWU0N6OGtIR3FyOTM2?=
 =?utf-8?B?OU4yYmdINVNEb0RRL045cGJmWStJL0s2d2l6amNyWVkzMUpHVUtQV2VDWTIz?=
 =?utf-8?B?VmsvSlF6SmtyY3c5a1dCSThIWDI0MTdRRUVnL3hnNk44WllyNkZCWmNsa1JI?=
 =?utf-8?B?NzVrUjJVRkFHeUU2V2tzWWlYM0xZaVM1ZE51TnBTWHVjMDFFYzhWTVFvRG5U?=
 =?utf-8?B?UnUwSE5tTEpSa1Q5dG12Y0xQbmlJM3E5SzB0ellzaEFTQXp5bTQxdnpjeDB2?=
 =?utf-8?B?cEoxbmFnT2NaVXIwSTIrVUsxOFNrMTV4VjlJdXZaNmVmRDZ4MkxvdWhvaWZQ?=
 =?utf-8?B?TVNVT2pJVkJVM2pIRzc4ZXlWL1VEVXVWUEhWQ0xscTloeC9YdFY4U3dPRUxM?=
 =?utf-8?B?QUtPdnZTbkdDRnJ2MmZBTWNWRG9KNUNMelRBaThDdW9taEFKMCtqMjE5c3U0?=
 =?utf-8?B?OHo4bjdHNnlNenFlRXBzcGNicTNHZlVmVjBYSnpzS0pJbFVONUNhbEVwVlo4?=
 =?utf-8?B?eHBSUWEwNE9hYUNPOHphLzNGZndPNUNQRG5hc3B6L1hnTE9Bc3V2WU1qQ0l2?=
 =?utf-8?B?RDRTTjhiazdHT2lyUFlsU1ltSU8zd05KWUVoc1hpNlkwblV0Z1NkVGlaZzlV?=
 =?utf-8?B?SDdxU2RiaTFYWVdPbkEvUnFWQ0RMSUhOUU8zM3NIb3J2WCtHdVVZdm1McDNC?=
 =?utf-8?B?bkZBSkV6MjdLUHZlazRSbnhzWTVDUkRlY0RORjZsenJqcEZ3bU9ZZWlJYVFv?=
 =?utf-8?B?RCtEbVNIT1pqU3daUS9GSFBUais2cXRNQTRrNVlTWWNmSTBsbU54RE8vNDZL?=
 =?utf-8?Q?RJTEfLkQiyJXNcCJH3kA3unkR9T8iXwcbGYL8?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 210b7b67-a3e3-4c4c-d6ca-08da1e415248
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Apr 2022 18:05:13.0121 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3jpF875lTNhzTb+tiogsb2pn/voMECWm44xgdn+qxN8sI8V0mHrX22KPLdGcSKCf4w2aBk7lDSGLz+oE9J1eQSjc7+D0lq6r/0Hh6AZOmsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't show client busyness in
 fdinfo with GuC submission
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



On 4/13/2022 3:57 PM, Ashutosh Dixit wrote:
> Client busyness is not available when GuC submission is used. Don't show it
> in fdinfo till this is supported by GuC.

GuC does support this, but we don't yet have code in place in i915 to 
fetch the data, so this commit message needs a slightly rewording to 
make that clear.

>
> Bug: https://gitlab.freedesktop.org/drm/intel/-/issues/5564
> Fixes: 055634e4b62f ("drm/i915: Expose client engine utilisation via fdinfo")
> Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Cc: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drm_client.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
> index e539f6b23060..e7fae4a326ab 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.c
> +++ b/drivers/gpu/drm/i915/i915_drm_client.c
> @@ -145,7 +145,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
>   		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
>   	seq_printf(m, "drm-client-id:\t%u\n", client->id);
>   
> -	if (GRAPHICS_VER(i915) < 8)
> +	if (GRAPHICS_VER(i915) < 8 || intel_guc_submission_is_used(&i915->gt0.uc.guc))

 From outside the GuC code we usually call intel_uc_uses_guc_submission().
Also, this needs a comment to explain that this is temporary and will be 
removed once we implement the feature in the GuC submission back-end.

Daniele

>   		return;
>   
>   	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)

