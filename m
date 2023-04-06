Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ADA36D966A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Apr 2023 13:54:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB91D10EB83;
	Thu,  6 Apr 2023 11:54:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA13410EB83
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Apr 2023 11:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680782068; x=1712318068;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=5syYJJQtcLtBEa7GAZJKwXDo9YgS5g2Nk8Z+L8XDB14=;
 b=mOAbCcnzjTmHCvrhRrjPjquV4EdfJjoj16S3eOLvLQmLgK9nH5hRRWYN
 Gh5hmdvfEi5Mp8OO7OrVkrs641HerzbxsPy/isHs4xH/REns22Yplshr0
 MuoV6T6f6Ch4NpIvKqlKmOUuc/d3ZS3Mxlec9ly543wENf5G+Td8c2ws6
 l+aPSKZ85Q/UWQUA3ex4qpCA0qFEWpXLlJQICPrC3fKmNO8FbPWkAz9XM
 8GjUJ4bFGs3znEK6PXTaENqvzWmaeIA1so/+HKs9I/KuouEsbDE3aOtmb
 /30sE/LfzBCkqwVDlApjxx/ysAG9D4k6cmsB/Asv5VqSEXA5jkYhJJwgq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="405502417"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="405502417"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2023 04:54:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10671"; a="861379136"
X-IronPort-AV: E=Sophos;i="5.98,323,1673942400"; d="scan'208";a="861379136"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 06 Apr 2023 04:54:26 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 6 Apr 2023 04:54:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 6 Apr 2023 04:54:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 6 Apr 2023 04:54:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B48ah0MZruGqlIQbgp2G96K7l+sI7bcOioOBFARNAoVMAzEZHMpfkW7sKLLFbBz2ctZQXSBHS5JDEu1CYNXhtZW8+CJkZu1eEQqc0jX7JU0o7ECLSG4nbzsfbhmgUOi8S4J+JaES/SKCR/Xl6OvLYDxEVnXTp1u9CX3QINuPtIf3TTFj1Zh4POwl1oVC3L0d/HMbHi22NDWHEEkqiktu9JVRwF5+R+079kUbPsiyFjP9ESs98FU2aa2PtBM7CL51tpTL7mziNC8LicBz8LM1kiUCxypRqLnuUzEp3Uz2ZFqdQYVODUu1WJIpqu1PW5WnReGFnhYE1yGYBcffLAeItw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fnyTZt1ztNCHIAdi+DOFLmF0+TAkJ9ngh7aYcwy6dyk=;
 b=gCFY2I1DrQ+oMHksom4Gpkd47hI07u9pWYZrhHDj40o0k8SLSNJgZlEeHeQUtSRUBJBu9x5qiqpAlGxxuQRX0S7AAni0MEBwzO5dSZKyaEU+62A5bTFlslk2jIDM7oFOPlutx+zCSiUZaYR82wf3D4WjLA9wvIiDnCGIRwYPG/VBk5CvTFYCz3PVGWbiMliScedZLLeTssH49qhSD/PHRvpqkdR9sXNcymcFcZEzwmeaIkeXAQ9/yzaSTFYAcvMIsoVz0Gc8MYhHs4ICtB2S1F6JPklwDR0sPm7tcgskmvQpwSHSwIBaiI4SfcUfZgPAMk67qoqrQ56MQFq47wRK2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4968.namprd11.prod.outlook.com (2603:10b6:510:39::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6277.31; Thu, 6 Apr
 2023 11:54:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::d1b9:3221:bc0d:1a9b%8]) with mapi id 15.20.6254.035; Thu, 6 Apr 2023
 11:54:22 +0000
Message-ID: <74dd38e0-b871-ab17-f50b-2e52b44ac435@intel.com>
Date: Thu, 6 Apr 2023 17:24:14 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230329135002.3096-1-ville.syrjala@linux.intel.com>
 <20230329135002.3096-2-ville.syrjala@linux.intel.com>
 <eeceb998-0bc6-53c3-a6c8-54b5e660f961@intel.com> <ZC6okmAsug2LGYBO@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZC6okmAsug2LGYBO@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0240.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:eb::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4968:EE_
X-MS-Office365-Filtering-Correlation-Id: ad2c113e-7cd6-4323-04bb-08db3695a991
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yk2CGvY4agyzAZNiyLxDyBnrD7U4Df1S7gmaojTwSYD2QDc6Ql6vFxZHIyWmGZh47jvT21urmvPB745HmZNUMoRRzTv0sbxH+cdxFmXfMd5CA8uFCJDlm1b9xhraEhPSWwhcs4w4Nma9Tovt5ZmTOUegTQ394Kk5dvbzmwdBBR5SsySDqboxixnQIUcSFx6j19QEM7tpgqukbJDCA3BuaUxBMv0hhfRiN5hk5YWLHgJtN3N97z8LBnN3E1l1Ez80fd6MNprAOv04eeK0FgpjQlnS6iEGPlrQ+5A7g6fejpT6ltrtprptDNd2ySRofRs6oxre4AC4bOzJ8T5juOXzZKGB0MzI82zzTK4nUXPIEscDJRFuQCDwJjAMyJqWfOJLo7T2NYwMZvItmQUunch8232M8UKQ8FXqSJ6sXt+vygg0OGQgtiojMg795VP1rVcqsOFCPAwVqkg3dsi9zOfs/KyjGNmVrKt3Rn0TUM1L0hMLrCOnYaaqixijcFji5fpdj5xeOcJha+m+aaJr3XyADpLf1EeqTb/TxVDKHLyfCN2ilENTeRZ8MKcxlwcqz9ZejQjj3+KObKsIrOfjwwntTeEdTWeUC8yob2l315AlK/ypJQf20WOjpdMDi2wq2HCgfmLxGtePunUCjon/N2mTEg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(366004)(136003)(451199021)(2616005)(83380400001)(6486002)(478600001)(6512007)(6506007)(26005)(6666004)(186003)(55236004)(53546011)(316002)(82960400001)(5660300002)(2906002)(36756003)(38100700002)(4326008)(66476007)(66556008)(66946007)(8676002)(6916009)(41300700001)(8936002)(86362001)(31696002)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c2FYcVFROTBVQkI3RFgwc3U0VDBreTE4OFYrQkRwOUZqUkl6VkcrcTdEMm5R?=
 =?utf-8?B?RHRVSU8rTk5yV0pENFpEUUhiZFplbzlmaW85cWRWUTNtVVk1QllLVnlRdXMw?=
 =?utf-8?B?MFVhY1RUaTRjQjVjL3NmZEUvOGFxT0JCZUFTbm5XdkR5aWdvUFBjYVZQQ3VF?=
 =?utf-8?B?SWd0d2VQZjRFUXV4WTJtWTJHNjEweDFUMjdOMW1MQm1nR2kxSDh0cktMWU5S?=
 =?utf-8?B?STRyZjNFb2ZsNU1KNjhIOWVqdzc5VUlVWjZlQkdCTXRlNUxLNEJzTWlSL3ho?=
 =?utf-8?B?TjJwMWdEWHlvaEYrbnBDYWNnSXppV2dwT240UThKdWdIMklaQTBqelFxcFQx?=
 =?utf-8?B?OEU5aEtCcVEyOWc1UXpGUy9jUkJwRmtCSHFCaHVIMDUxbjNVMytmTEt3Z0dU?=
 =?utf-8?B?L3l2bmhUZ1VFWmYzeUFaOFVwZFBRR0dXQ1E1MmhXWEllVU5lVkRETmZlRDlO?=
 =?utf-8?B?bWpBdnEwNjFwc1dSZkYxRkZPRkZ4UzhlWDZIQXpjWm5sdDlHZklIYmN1SnJC?=
 =?utf-8?B?ZTNBRmx5cm5JbDRHaExLZjFYcU5MQVRTcm9RU2hGRGlHTDRMODRNWXNzaHZ2?=
 =?utf-8?B?Qk00ZncxRURmbEFOSitoWkFUN1paY2xNZ3lYeXN2V0VsWnN3K0txYXpFZVVq?=
 =?utf-8?B?eHlOcnp2MGhjOUU4Z1V1VFl3K2RBQkpzZk1JRGEvRzNDNHE0MThyRW5mV0xR?=
 =?utf-8?B?ekJkTDdoWUtiQkFIb3Y0VVVnOUttdkRFak1ZTTFmb2lZU1RBd3FndkZRVnhM?=
 =?utf-8?B?LzJWN25mVXdxc3d1RGNmZ2laZ1VkOWw3SWFQdU1yemwrVzBUTkcxdGZKbWd2?=
 =?utf-8?B?L1BERHY5WDcxczFXemUweGhKU25vcTJDRVE3NlV6Z2FlKy9ZZmswM2V6RDNz?=
 =?utf-8?B?OVkwZENSNSsyNGtFc2ZGS1Vrd3pyeU5SQWF5YVJGM3FseUMvTVh6NTVhSEVZ?=
 =?utf-8?B?U0txVTBOSlNkNXdTNGk5ZmFQV1JobThFSGkvNGsyNDFNK1NVdDJuUlA4MDNo?=
 =?utf-8?B?azRJQWhKVElTN2NCZVUwUDMwMWRaajNjdjZ4U2pHODUyQnVGd1VYMTFzVzFw?=
 =?utf-8?B?MG1HWG1zd0JqQVZnVDdwUXpDNmVmVGl0MkQ4bkQrT1hSaVU0c3VtTEZHUFpm?=
 =?utf-8?B?d09Tb0MwdTZJTENKSGNZUndaYlZRY0JqbEhLem1lcGZpNjVLUVRKNk94SGNj?=
 =?utf-8?B?VzE2a25RR2lyekNKLysxOGlDTVdmaW12YStCaTRnVFpqNU1PVW1pUnRZa2hO?=
 =?utf-8?B?YTN3MzIxT0tIbGdPd3R1RWFoWXhXL1g3M01QeFJvVCtLeWhEeklHVXJtNHFU?=
 =?utf-8?B?L3pHTnNhTTFJVEFSblRtSi9RaWtob2gyU1ptbmxyQ2FBMTZNZk5nYVBVdXlE?=
 =?utf-8?B?RHJzYkJyQUhET3dnTjVGOUxhZDZJRUJCa2hOUVljZU1sRkx0aVhwRXNjU0NS?=
 =?utf-8?B?anBwODQwa29heVlXdEUzSTM5MFhHOWw2NnJ5SjVkd2ZjV2JOcXR3QlpCZUd6?=
 =?utf-8?B?TmdvTUJYQW4zU2lybkxFUGxucTBjZTVycE9Tck81cUgxUVQrRnNZOXV6cTJn?=
 =?utf-8?B?WVFMY0FTUGF4Mkh6MGo4RThqYVRMMnlYWHpRUGN3VkRLVTNFM25UZ1pUc1hk?=
 =?utf-8?B?eWxlSVJXZ1ZEZ0NPZXZqL0hoS2RVNUtEcW1EVi9wRUwxMWxqSXJNZFE2T2cz?=
 =?utf-8?B?VklweGJ3UCszN1RqMmxEbXMvRGZBbWJpWWpDNWYvamVoSlR0dUtLMWc1WXQ0?=
 =?utf-8?B?QldSYzNBaEFpMWpNL0IyajFhQmd4NUNOc3RxdU1maThtd3U4MjdUdUk1d1Z2?=
 =?utf-8?B?eGlNZURqUkNzaVMrdVlkWWhmcThaVVQyWEFjakl3SzJlV2xTcFlEQzZUVDBR?=
 =?utf-8?B?a0ZNdld1MXo0a2RNUVFtb3VlMHR6bnpnUXJtTzJPbjZseGpSMW8rU2pwcUhF?=
 =?utf-8?B?NVVGaWgxM2hMK3ZhZFd1aGJXemlCYStrSEVOWlF5S0UyT2svdlRuWnM5WDJJ?=
 =?utf-8?B?eFZXaDdYNnltcmVmTDlJSWQxMFhQNE1TNkFSSUlSbDJIOE5XSFlBUnU0UEJB?=
 =?utf-8?B?MU93K1BRMzR0VUVtQXNUd05oUXhCZk91RE9XSjhIVlpLRGRCcUM5QUJJZDV3?=
 =?utf-8?B?VzVnVjg0QXVnYWRSK2k2Nkt1ZGxjWkRjdHljdlAyRklCUTlORU1qcUN6Rmh5?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ad2c113e-7cd6-4323-04bb-08db3695a991
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Apr 2023 11:54:22.7274 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NZCAtDxdlJ7xDMr1jP0rSnp8CHYuLfpkGjWRNpIKYHTUR8Y4xeh8aYSmSEF2rQgxnyuv/Kly6PQExayyMX19aKHNZDmVeKKNGWjs2IkqXSg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/12] drm/i915: Fix limited range csc matrix
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 4/6/2023 4:40 PM, Ville Syrjälä wrote:
> On Thu, Apr 06, 2023 at 04:26:48PM +0530, Nautiyal, Ankit K wrote:
>> Hi Ville,
>>
>> HDMI1.4b indeed says max value for 16bpc as 60160 (0xeb00)
>> And black level of 4096.
>>
>> Got me thinking that we might need to consider bpc for getting the
>> Coeffs and the offsets.
>> IIUC for CSC Full range to Limited range:
>> out = in * gain  + offset
>>
>> Gain :
>> So for 8 bpc, as you have mentioned
>> multiplier or gain will be: (235-16) / 255 = 0.8588 ~0.86
>> offset will be 16, as range is from 16-235
>>
>> 16 bpc
>> Multiplier: (60160-4096)/65535 = 0.8555 ~0.86
>> Offset for 16bit: should be 4096
>>
>> So it seems Multiplier of 0.86 should be alright for different bpc, but
>> offset would vary.
> It's all still in the pipe's internal precision. So any 16 vs. 4096
> distinction doesn't exist.

Hmm alright.


>> Also CSC Postoff programming for the offset doesn’t seem very clear to me.
>> For CSC BT709 RGB Full range->YCbCr Limited Range, we use offset of {16,
>> 128, 128} for Y, Cb, Cr, and we write 0x800, 0x100, 0x100 for these values.
> Y is the middle channel. We write 0x800,0x100,0x800

Ah ok.. so offset of 16 is indeed 0x100, and not 0x800. (facepalm) I 
misread and created unnecessary confusion.

Thanks for your patience to clear the confusion.


Changes to coeff and offset seem to be correct now.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
>> But below for Limited range Post offset 16,  we seem to be shifting by
>> (12 - 8) i.e 4. Am I missing something?
>>
>>
>> Regards,
>>
>> Ankit
>>
>> On 3/29/2023 7:19 PM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Our current limited range matrix is a bit off. I think it
>>> was originally calculated with rounding, as if we wanted
>>> the normal pixel replication type of behaviour.
>>> That is, since the 8bpc max value is 0xeb we assumed the
>>> 16bpc max value should be 0xebeb, but what the HDMI spec
>>> actually says it should be is 0xeb00.
>>>
>>> So to get what we want we make the formula
>>>    out = in * (235-16) << (12-8) / in_max + 16 << (12-8),
>>> with 12 being precision of the csc, 8 being the precision
>>> of the constants we used.
>>>
>>> The hardware takes its coefficients as floating point
>>> values, but the (235−16)/255 = ~.86, so exponent 0
>>> is what we want anyway, so it works out perfectly without
>>> having to hardcode it in hex or start playing with floats.
>>>
>>> In terms of raw numbers we are feeding the hardware the
>>> post offset changes from 0x101 to 0x100, and the coefficient
>>> changes from 0xdc0 to 0xdb0 (~.860->~.855). So this should
>>> make everything come out just a tad darker.
>>>
>>> I already used better constants in lut_limited_range() earlier
>>> so the output of the two paths should be closer now.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_color.c | 5 ++---
>>>    1 file changed, 2 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
>>> index 36aac88143ac..3c3e2f5a5cde 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_color.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_color.c
>>> @@ -116,10 +116,9 @@ struct intel_color_funcs {
>>>    #define ILK_CSC_COEFF_FP(coeff, fbits)	\
>>>    	(clamp_val(((coeff) >> (32 - (fbits) - 3)) + 4, 0, 0xfff) & 0xff8)
>>>    
>>> -#define ILK_CSC_COEFF_LIMITED_RANGE 0x0dc0
>>>    #define ILK_CSC_COEFF_1_0 0x7800
>>> -
>>> -#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 * (1 << 12) / 255)
>>> +#define ILK_CSC_COEFF_LIMITED_RANGE ((235 - 16) << (12 - 8)) /* exponent 0 */
>>> +#define ILK_CSC_POSTOFF_LIMITED_RANGE (16 << (12 - 8))
>>>    
>>>    /* Nop pre/post offsets */
>>>    static const u16 ilk_csc_off_zero[3] = {};
