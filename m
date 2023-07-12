Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB117503C1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 11:48:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BFE810E4BE;
	Wed, 12 Jul 2023 09:47:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1516010E4B7
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 09:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689155273; x=1720691273;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bOD6vfKhD6nzu0tOM/QnqCTqC1JFAEsjUWG+udtlRS4=;
 b=ikBu3e7tFBKuywPv/bOqr3PLEpzO7SqhgD4RgAj9tXWFgYFh2Jnuemsp
 pEC1qTWlUs/Q3aJbQ8b3gfFTXl3O9AnMghBzGPi0p06rccskgsUwTsNiY
 FGmTqIpdFOSdWma46MGvRiB+E2eWtDfTd4gj6nLOPYk8dZ8ZNy6vIXqg6
 gFUDOCmCtM0ravX4NiZOSP3FEH8iFBFx+Ay0rG5vjU0PyiHv7n88i+clB
 ie//oHB5+Fqz4D5c81Oet8GvM22NcJccYoZC2YixLi1Ba+T5PwfgEIdf2
 UIbhNATJeLxiXUYveZRReRBSQ+M8wrsLcbZay3Z6ghYiqYM0uVAhgFX9S Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="428585497"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="428585497"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 02:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="811510647"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="811510647"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 12 Jul 2023 02:47:51 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 02:47:51 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 12 Jul 2023 02:47:51 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 12 Jul 2023 02:47:51 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 12 Jul 2023 02:47:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTFrDzrraaCf7DcjIMY2AKY/IN5jedkorceyikSLxJv6x3RQiOlnPmJAiDCtB27VNLWK4a54YU5ZUAsDqu7blIq5//njQFV+cE0JwvIb1G6F9u+B+y0Hn4NsrqBDqbRNJrXoO5Ff9TInmr2bOmXfjhZn8XfnTSeS2Wh0FUJ/iu85EGIcYIFpEbnIkZTaKutMT0Y5gqcGMMlM4e4ytulS62ZG9RUytqu1w1HgL6rxUW32p0ZzJx8qmLTq/18Ie3zoRGTTlS9klLFZoVY440FJsSsZgxUpwIctHrIIwgefig3f9++wpFpJhz/l+8DvGKKw2wtcx47t26NnAQNMgynvCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qc4Yi0B126d3/A2uki85CBH9/NLI+QHK6wZ7iVnNpzA=;
 b=b4KXcl9WtxZRCRfPhcs8rh+LpxiqIIpP9KC/6chbxnPqejRvI7XpPqNs4VmSQoiEl5C7ix+YRGxfmwAHvXi4m/85GnPNNT/Twxu2PcHSf1y0IglUiAArERH0KUdyraMGIJA7mUbrroGS3L0SyhU+b8ISSbKcxoLD9k5Zs9jH149IGW8J6pN1sRXNR8lMeABXql3mSGac6gwHTvdXFRyfkGFroeZbsMQu4k4YVE5No85SOLhMNHxPU1xn+U+r6ZtxzMMPxFYoVMSLsUeA6fg3X0+/AjIlakjMvhmGDvRitw8VruuGiPgQcQisXGaSlkpHD5CXJ5Af0+5wBaJxrB44xg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5332.namprd11.prod.outlook.com (2603:10b6:610:bf::17)
 by CO1PR11MB4899.namprd11.prod.outlook.com (2603:10b6:303:6e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.20; Wed, 12 Jul
 2023 09:47:48 +0000
Received: from CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::4a21:547:c3d4:18e3]) by CH0PR11MB5332.namprd11.prod.outlook.com
 ([fe80::4a21:547:c3d4:18e3%6]) with mapi id 15.20.6588.022; Wed, 12 Jul 2023
 09:47:47 +0000
Message-ID: <70f42994-5eb9-f41e-6502-364ee4795efe@intel.com>
Date: Wed, 12 Jul 2023 15:17:38 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20230705051502.2568245-1-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20230705051502.2568245-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0081.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9a::20) To CH0PR11MB5332.namprd11.prod.outlook.com
 (2603:10b6:610:bf::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5332:EE_|CO1PR11MB4899:EE_
X-MS-Office365-Filtering-Correlation-Id: 86962596-0ae8-4876-2cc8-08db82bd0c52
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dJjDwO2xRC/SZBnyjReeXsqQ4wIeqTOCgTfyZZLYvk0NAGHfHGIHCkNLfTqdcPof8tUG9cMPAk7l+3fWxI4xg7HqoAu9C/CRi6lyhN26DcSis4Cy4zKj9T8SDcheXKw01IDGp8igxaGhhKJ80G7yQ0ZHwNS2iSb+EAkBpyLCUmYPNyk/wrjWlJvhUidVQcL1xHpX4zOIDgeqfMRX9+UsRW7phPufImCyVLNJ+BCZ8ekyKXUIMwP8P0G36+O6q7hVxjggSVQZMLijmZpH//i+UoIsJYkQEhtFJpI2v6+SqqQiHcDFocYiuoiljHjJJoAY1XvIMfq32OYODYZP1rKq0l0OWs9/lH29VEVl3d6QiA94Y8n6UgWDX3BPywDC7arnCvPGQ0IH24g9nA+2+SC5wf43wBRe9YZ7531jBRSWoLBcNUqTzxcpeQfNG7jx8uiGSOiTUeDz28r/2vFdVYBEGQeDEKY0yXfh4t9rJ341P+amEj2I1fTfgEazDZNev1LKyxReJPnbtP39UYzwcqszkZ0g/TXNR7qMuYy/u1vqjuKk29Hu7RYXwjAb8E8SmU/xyzfEXvMP6sLw7U8X/Jn/VwpPc4Rbg13+1qqN9+yK481gKAZxoMXnVSwhLKSQvb5Z34/saUR5ndJthq9d8acoUw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5332.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(396003)(366004)(346002)(39860400002)(451199021)(86362001)(478600001)(82960400001)(38100700002)(31696002)(6512007)(6666004)(6486002)(83380400001)(5660300002)(2616005)(8676002)(36756003)(8936002)(66946007)(66556008)(66476007)(316002)(31686004)(186003)(26005)(4744005)(2906002)(55236004)(53546011)(6506007)(41300700001)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z3AzaWZpdWxNTW9BV1I3QThOWmRLcWxTOC84SDQzTVg0cmgrL3Y1b1JNbjUr?=
 =?utf-8?B?YjBOd0lNZDNjSFNIRi9DaDA5Mm5EMXhVZEplQnR1TUt4akI4TmZXcnREYnVM?=
 =?utf-8?B?b004TmtMelU5VEFzL3FqdkJOeDNqU0lhWlBhaW1XdURUQnRpdXoya0lDMThD?=
 =?utf-8?B?TnNzbkFvMXRZSG82SjVFZmdSaVczMzAvaEIyR3Iza3djdmxWL0plSDgyTFVv?=
 =?utf-8?B?L0JhdUI0a3ZTd2ZibmVqTUJLOW84L2xGUVlvSVBRQ2VJVVFxTllMZkwva3pT?=
 =?utf-8?B?TnBHL0U1K09rQ2FqQ0FiSzhkU2FNbUdCVEVsSXR5QVY3NUs5L3ZQaE43aUJQ?=
 =?utf-8?B?Qk5Sb2lSNDhDV3Z3YW5rZDVUenF3d2dhU2pFL0NGMzh1K2lSSXYxSlNIQ01L?=
 =?utf-8?B?ZlBkTnVwMUcvcXBSelBWQjJUQXBUa2ROYmFVQ252ZHZsRW4wUFM2UzlmcFJt?=
 =?utf-8?B?TDJzVWVaSVRnVXl0c3pnSVZNc2xMbEY3RDVMYlVIV0FtV3A1U3JybUY1T3Bh?=
 =?utf-8?B?elVETklyNHRFaENTcWpwMnEwZEZoZGJkbEZtdzB4TnVhbHdSRmpUV1oxK1VD?=
 =?utf-8?B?Q2ZLaHZ4bDZYT2lEZjlNSjEyS2poNDBxOU5xM0pPTytUQ2ZXZTBEdGdabGNS?=
 =?utf-8?B?elRFdzhGRWpwaHNNVWI0cTdOMGhDUjVXS2t0bFNYbnNvUEVDUWs1dXlsbkl0?=
 =?utf-8?B?b1RZQ1RJaVVtdUo2elVBUmh6Q2l3RXdsZHVKVmhVdnM5NS9uT1NmTlRGTWs4?=
 =?utf-8?B?UzlWenJGSkQwTW5JVHkyYWRMYTBYRVZkSDBDT0l6SUxHZ0l4dzFtbDgxVlpk?=
 =?utf-8?B?Z1NId1NOaEsvY1JqalF0SmVPRDlnNVhMMFlWaE55VG1Mc2VDdmNwN0JURldR?=
 =?utf-8?B?cG5yT0JBZVgzdEcxamNycVFNS0paUUttWE1vSkRXeUx2TlJvN04vRDRuMWJT?=
 =?utf-8?B?S0pRcHp3WmVyYmtjeG9zaldDZmkzZnFqdFJXZ2VtTWYzUi84cXRKbG0yZVBU?=
 =?utf-8?B?RHQyOXpyNzNvU3J2NWhyeklSMkdKN1BRVTJCMTBCZi9kZzFwM25kS2gwU2Nm?=
 =?utf-8?B?ZHV4ZWI0YWpjYWI3SHdoc0lBd1hFbDk2TzNTU0p4eXAvN0JhV3ZWWnRMZ1l1?=
 =?utf-8?B?eDZkYTcxNHZnNGoyWVBoMDUvajM3ZUYwTjlMQVF2aGRzOVZaYiswSzI5Rk1r?=
 =?utf-8?B?cEhqS0lXdnc1MndiU0NNckpnUDA3V3cwNjhzWXhtKzhkOERud3ROdE4zWjhK?=
 =?utf-8?B?c1JIR3RLcS9NdFJFOEwwczArOHlFWTROYzQvU0Z4SzZQWnRNcnRwbTQzVzgz?=
 =?utf-8?B?cW1qTW5GUDVwZ1dRTmpJWjdKcVU3aU5POEVzNnVDc1ZjRVZLbWE1MW5EL0Vo?=
 =?utf-8?B?dy9JdnF0eHBIU0NlWGtob1ZkK3E2Mi9KUWRQUzBuVkNaWlJPSDI0M1FuKzRn?=
 =?utf-8?B?Z2xhZnlJbjV4TTZSa245RFJOVlU5YitRQWE4WWJjZHNGUXMrSGJFLzlpUkdo?=
 =?utf-8?B?UjI2VS9zTzFKN29NNU92SzIrZ1pWdzYwNFRSdTkvSGRlMWNZUmd6eUcxQ0o3?=
 =?utf-8?B?bFAwb0NIY0Q3eHpsUzNSNUk3L3JEVzVHV0ZwamtrZE1IWGcxOGdhZTRzNHA3?=
 =?utf-8?B?MjVOV05nN1ZoelZCc0M1aTBJSXpqbnQzS0pXaUI4RmF0VHB0dzJEeVZIOGJn?=
 =?utf-8?B?dXdMcE9tdWFIeXJyUHYydTljYmVOZGltQUZBbXNnZXFpQjV2REUvalh0UzlX?=
 =?utf-8?B?dkRsYW9UMnhBZ1dOVVhLbng5SXg4NGlsLzdvUzFyYVB1MzJqZ3FlR1Rpdi9z?=
 =?utf-8?B?bnRPVVlraGdoZ2VWS2VjOTdabXYwMm9EQWhBRVFwNGFEU21KOTZZVXAxYWQ5?=
 =?utf-8?B?NVV1OVBlRkQ3YVM4YmIyTWZxU2VMNy9pc3FDMStoYTdRejFEVUJrZDFLcitE?=
 =?utf-8?B?cGt5MlF6VlM1MXAwelllcU1CLzFobDlvQ1FXKzNhVU1ueTk3SWF1T3hON3By?=
 =?utf-8?B?UzBDTWRJczBORnBWSG5Sa1pwVXpVK0ttSDlkMlBFQ0V0UWpmMVR0S3RtYzht?=
 =?utf-8?B?UFpFd3hycmh1eExua3pNSXJQRk4xZk5TWjQzWkhveWRGWlZzbGU0NWNYd2xS?=
 =?utf-8?B?U25Da3JXSkVXaXQzZW9vN2xndDNhV2NKT3N1S0p2dkY0dmpXRndLeUx0NXR4?=
 =?utf-8?B?alE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86962596-0ae8-4876-2cc8-08db82bd0c52
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5332.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2023 09:47:47.4162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IGpoWoCmkH94Y4eH64Wlv/YSJrKGcqE1qgMJ7TSV7G6/1mnWDneZRtXoToWXzEC5C7KzwaAqgKQ6NDSp5ej4jQ1LHU9GgQOvhaai1Xl6qbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4899
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 0/3] Add rc_range_params for YUV420
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


On 7/5/2023 10:44 AM, Suraj Kandpal wrote:
> Calculations for YUV420 were missing from calculate_rc_param,
> add them be in line with DSC 1.2a specs.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
> Suraj Kandpal (3):
>    drm/i915/dsc: Move rc param calculation for native_420
>    drm/i915/drm: Fix comment for YCbCr20 qp table declaration
>    drm/i915/dsc: Add rc_range_parameter calculation for YCbCr420
>
>   .../gpu/drm/i915/display/intel_qp_tables.c    |  10 +-
>   drivers/gpu/drm/i915/display/intel_vdsc.c     | 190 ++++++++++++------
>   2 files changed, 138 insertions(+), 62 deletions(-)

Thanks for the patches, pushed to drm-intel-next.

Regards,

Ankit

