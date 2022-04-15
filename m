Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A3AF502FC9
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Apr 2022 22:29:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C240710E479;
	Fri, 15 Apr 2022 20:29:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6D910E479
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 20:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650054591; x=1681590591;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=S8Megd+sy61xZBdv5xGQBdiiu0VAZifOXulybSUXenM=;
 b=BHzt2/FJUM7lKh0G03FZ6QP461cQaxwAjapIdPSw615pPPRxXW5vs5kH
 tXzRgN7FYKd3/vRd4kHwiGnhMMt/2KAQ0fvfg0bZ8N/W/q0fJMoMHr2rX
 1ZR+ahz31g7bNcQWuIwFTg02A2ac01VMySul401Fogfz23mtVQtUl8yyD
 QI+QwkYYdiFeog27qD1M79DKmoIHxq7ZfthnUAekKgg6OciBhn4ymgt1S
 WVg0znDiqFPwwo8q1p0D69VSd48oHoEXiEs2yZP3EwVPYvknqFFLVBtNI
 f1zyN+ftvAf6xTiwVq/nOyn9uudbcFMHmCwWVYo7oQrQiWAGXTalGOFDm Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="263400786"
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="263400786"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 13:29:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,263,1643702400"; d="scan'208";a="591745613"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 15 Apr 2022 13:29:50 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Apr 2022 13:29:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 15 Apr 2022 13:29:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 15 Apr 2022 13:29:49 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Fri, 15 Apr 2022 13:29:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OK1y4Co076sgwAR1oRGlP1Jnth1l6062mZSEPsdcLq06qqte6ygJo5u76fqGDbfj5yzExfljd9d8d48yq9gDp6CoKsfWm9PDiJCyy07KYAXKxHwr7UHtKjCSaYvnhx7dKhdZmq9MXegsSUT47Pf3kkug9UutKYK8Orqib6ZfGfdGxgRuRC1iJvM3h+YDVR5lTKyIDCZdbmiBu0CxUqfayUmEUWzuTq3+E9i4T3kuJzx5U2VaSrghWklNMSgYFGBMKgCWoABTPcIL9k5VfR8/9oQ0/DShMTLSx4q1EMEg0+u9waaNoIUi2baA3Kngy4qk7l5Eymw6jO9mVLpAQsuohA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RIUOxwIMep+PbjRjM3ZBoya65kXowvYVp292VXEdppU=;
 b=L4NRwYsIZbFmusx9pyxzqdTZQAVoTkiMIMNgS/kmuVTySZTP6FwXBioWfV+YBzoyi5a2y1MEJtaqKbd/eF9dcc5Uo28I0G3WwGwRDCvLppsYV8wjigx0gw2CQCjua6CRnEOe7ajTLAgAkLnndfF0p1C+UedhbBcVir7yvYknuDydgxFDgvilOZLUoLQi22vEdcrDsIoKOMMcNgAayq3lP6QbTb4Y2osGM+nsfsnDuEtgUrl2I8dkb4IXHO9kUHRKEgYgmfNaMoRi7PioCEKLvPv5uRMEcqcM1JFRxC4jiY75XfyaeMDPoOlUnbqW8/sm5DmxvryPd1VHsablG5nFJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CH0PR11MB5473.namprd11.prod.outlook.com (2603:10b6:610:d4::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5164.18; Fri, 15 Apr 2022 20:29:47 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::b561:17d8:3112:913f%9]) with mapi id 15.20.5164.020; Fri, 15 Apr 2022
 20:29:47 +0000
Message-ID: <c0b500f0-08fe-d68d-4322-93f2560cb91a@intel.com>
Date: Fri, 15 Apr 2022 13:29:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, Matt Roper <matthew.d.roper@intel.com>,
 <john.c.harrison@intel.com>, <vinay.belgaumkar@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
 <20220413192730.3608660-8-umesh.nerlige.ramappa@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220413192730.3608660-8-umesh.nerlige.ramappa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BY5PR17CA0006.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::19) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44ac1bda-1697-44b6-dfeb-08da1f1eaeec
X-MS-TrafficTypeDiagnostic: CH0PR11MB5473:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <CH0PR11MB54737BBC346ACDC839B3E025F4EE9@CH0PR11MB5473.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ytVwB4wemHdTjxQEFi9pt6IUoQFWMYrvvZ12z0GW6Od6Lgg00TigAdGEvwGNw3suHugjT9xlxRyExF0hGOyQ2IvWBL6VLK8AWqFjF7TN0T/D2qoX7i9atdC2wU9O6MNvcVcEaWD+aNkoyEZPLn3rlyOMKTsP8PQgVYrIDXitvj4s6qCOXMqUOF0ozQ7KTV0+7xQsx1AECZENgYwXQ0jCytRWMSF1WX5HtJo1/Dd+Fet30RPZB+M4hPGzr8ttScmEnUhBvYSC34IPoKa0T7Th7XYJ8cEYRRzqKiJauOkRg50CT4NTt6CTGSnWuMZ+KTKlt7mxbnwEQz46JvBZTpBHXgx4tCZQBYoLVM/K1KrLTsl9bSLrdvAYk4Nv23ifKIN3LdWYwAa69+XtvSqJxfgz7WtfVLqfB05rOKst6ZzbRyX2fkfp4cJX9HHDTAKLwU5YeLEBMRJZ0YCXfH4TxXG0Gf2CgC5wEKbOHsIzaix3AwR839cM0MnrWi/iKF0e2+eUprIYI7tRMKw29poTwxDjEFcR37qctLqHK+Y+0MPPZ5otRI6AsK2j+VYOXjBWNrQ5BUmH3veSuySupwpgYrJZq6JGr2MW568xxrGuRPe+sN16vaadKvy/ZlgrNiePTPH/F8ECiW00uffEvz+5EmwSn+/R5hxOU3sddcTimbifahJeiwHydiQCCS9VHKYAbNVnk1MrE6oN/EgmlHxfugGWH68HVk2TvflrR+Z3OawfFuAcBMWrh+LhLD5dTlyMjNOv
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(186003)(6636002)(83380400001)(508600001)(316002)(66476007)(5660300002)(66946007)(30864003)(2906002)(66556008)(8936002)(31686004)(36756003)(6486002)(8676002)(86362001)(31696002)(26005)(2616005)(110136005)(38100700002)(82960400001)(6512007)(53546011)(6506007)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L2U3aVVBeFI0V1prOTRjOC9XQ1o2RUJyVDlac3NtYlRzR3JBdmlxb3BROURu?=
 =?utf-8?B?L1FFblhqMWF2WnJ5cjRJVlpxS0JNa3lYK3N2eWRTUE90MnhNQVN6U2kwYzBR?=
 =?utf-8?B?SDNuQXBxZjU0QTFsRmdXTDU3MXB0c1hXRFVYOUltUHVsekFmNm1CQnpIRzVa?=
 =?utf-8?B?SUxRWmMyU2R6MGRKQ2wzMWFuQkZmWG9mMzVYMEM0RlFSRThBamI4UDBxcjFV?=
 =?utf-8?B?OFdFQ0ZKT0cxOHNDdFJHV0lBbjR3T0JPclMxN0dSQ1Q1cmRuQXlRRUVLdkJF?=
 =?utf-8?B?ZmNTZm9vMEVPbDJhSzJkQnVrZ1pqRWg3dy90L0dZL1lhSWo5TDdUM2pSWE1i?=
 =?utf-8?B?QnpZNGovVlNBKzhSSHZPbjlONVdDbTJ5aGV1QlNtS3dCVzA1TFR1SDU5dFVw?=
 =?utf-8?B?Vng0cDlaWGxoT2I4blA0SlNvSnp1UlZNNzNXM2hiWlRPb3JnRGl2aSs3anBL?=
 =?utf-8?B?K2tJVjg0TjZteUpUK2hKbmdrN1pCRFJvb3hCaDhJeXNOa2FVdXYrMHQ0ZFMv?=
 =?utf-8?B?TkM1L2JGK3FoeTc1S0NYTUdDVXlQeXA4SS9tN2t0OHFMRDVRYzlaS0NXM3Nl?=
 =?utf-8?B?QTVmOVNVQ005SUJOMGN1dmxTY2lMenBiUzhtQUUzMlVaMisvczJ1UFh5R3J2?=
 =?utf-8?B?d3F1bmgvelM4cTBCM04renN3Mjc5WTc2L09uN1NGZnZQMktIeHh4VUtBSlRr?=
 =?utf-8?B?OXVrZ08ySzNMMTV6VUlkeEk2L1BwcDBBaFRVeVFROHE1dFYrZ2VYY1d0OTlw?=
 =?utf-8?B?RWlSc2J6NVpISUVJdGNSMnM1bm0vcXdFZG0yVzNKMzZYaDYwZm5qaXJyL1NG?=
 =?utf-8?B?cXdYSlAwWXg0ZlJWa2dwaFdPZE14cVJXWEE3a0tvVHhpQit4LzM1WWk2ME1x?=
 =?utf-8?B?T2JUMG5xNjdUS0orN2ZrR3pmZnNuRHdzNkdQd3EyRCtsd0l2bjBWL3hWdGE5?=
 =?utf-8?B?TXoyb1hJamRwV0xxellyRDhFR0U4ZTBxRUpiTUNBZVBkMVd4cVMxUzBsazdE?=
 =?utf-8?B?NEhOMDB6MjJQWTdMM1JHVDlRV0xYaW5vVXJEbmFjRjlYWWkvUHE1dFR4ZUZK?=
 =?utf-8?B?UUhUTTZ5em5KUTNYdzAybkhWTUN1a1lEbGU5V3BlNTJZbGNYSWlNenJMMGFM?=
 =?utf-8?B?VlVZV2JyUXpVOSs4YUxqZ093QnA2VGVJSzlmTmhQbVM4MXVqVnpxcmoycThH?=
 =?utf-8?B?T055S3dCRURuY3Fxc0krQ05oNy9wTGM1TGR0V3NqUG1Ud1c0NXlGWm5vaVdZ?=
 =?utf-8?B?d2xBUWg4TjFDZ2FlR0htdEhKYVN2Zk1oeSs1N1I5SVRpcURzSlA0NVMxd1VW?=
 =?utf-8?B?YkR4N0tsdHFjWFJYWlVlNE9BR2xpOXZqRGZzSVVDRGxsSmRDcUZ3WmZtLytE?=
 =?utf-8?B?TUdKZXcvNVN4N1A5RGVzS3BQekh0SDNtalVrNWZOT01NeFFrWkRFQmFSc1dJ?=
 =?utf-8?B?cWJ0d01Zallpa1NJR0Q2SXlmYzd2a2lxck1JRFYvYmt5VlFuK001VkxUN1Q3?=
 =?utf-8?B?MG9EQVJPdnl6bk1TQ1lDSTlYVE1YamVuM2VOOXZmUklxOXRCVVR0bW1mVmQ1?=
 =?utf-8?B?aUZnMmkvS2FuTXhlWHBLTkpJcXBYRjhxTytIeFRIUGs3Z2pYakRlZ3Jwc29L?=
 =?utf-8?B?aTcvc3ZBSlpIRTViWWNtUDl1V1VBaWQ4Y1JBMmZmcEMzNnZrcm5jaS90WC9w?=
 =?utf-8?B?WTZ5MnNnNjZPYWRwVlVXTzFiWFBFa0hWWnN6bWhFSEc4Y2ZxMktnWVF4b0FI?=
 =?utf-8?B?ZnNNV0xGaDRrVWd2c2JBdmpTRFFST3lnVVV3SUQxVDFoRXllQnVGQ01iWXJy?=
 =?utf-8?B?N1R3TTRJZk1OMU92QWtjU3NZdzFrNTlVTC9LamVvUW5SSC81WWlsSDV3eTJs?=
 =?utf-8?B?OTJydUZZclUrWUxWZW1wRDJJM1RrUW8rdFRzUkE4V0JPL2QwWjVBZlhYdGZp?=
 =?utf-8?B?VzMvWDJ4SEJFbW5Lam1rYTZpZlE4NEVhV2NQSXltRkNIblVOcjgyK3lWSHFL?=
 =?utf-8?B?dy9rWFJIWjdBeW9ZMEI4Q1hqYUlHZWpJSzRYbzNIVFFwdXZBOE91aGpVc2ph?=
 =?utf-8?B?ZW1jMkgvTVhYYUVUMVZIdVB5eERVL2x0NkRvanBkRTlaOHovOURGTWc5RzRT?=
 =?utf-8?B?eUNvcWZham9kdEV3Qmg1U1hVc1FDempNMEdQRE9xeVczTjg2b2U0REppMlEw?=
 =?utf-8?B?aVFsa3RSTUN4akFRQnBXZlBqUjVmQ1FhT1BQbXo5My84eTIrY3ZHa2x0ME9D?=
 =?utf-8?B?dFlUM3pRVkRZV1hsbDhZN01RK2NBSWRaT2VtWTZyWkpIOU5FcUx5TlZ1RUZh?=
 =?utf-8?B?VWo1K3VQaUNHWlJOeUpaVllMWjJ2REw2RnVkc2w4U2xmU2lHV3I1QlRqZWxT?=
 =?utf-8?Q?+oRmQToWJLaWyD3wiOI6OQEV2nk1FgIUmmOmt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 44ac1bda-1697-44b6-dfeb-08da1f1eaeec
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2022 20:29:47.5116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XRvNRPlGWPQvrTBRv9V87YJcEgk/b+CgriM7O4SSrUL1pRKzLgQ3fgYc59Rlcpf3yPE/q12vjv37jB68d1H3rp/WLGDqiizylk9wYGR2Eo8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5473
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/guc: Enable GuC based
 workarounds for DG2
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



On 4/13/2022 12:27 PM, Umesh Nerlige Ramappa wrote:
> From: John Harrison <John.C.Harrison@Intel.com>
>
> There are some workarounds for DG2 that are implemented in the GuC
> firmware. However, the KMD is required to enable these by setting the
> appropriate flag as GuC does not know what platform it is running on.
>    Wa_16011759253
>    Wa_14012630569
>    Wa_14013746162
>
> v2: Add a couple more workarounds and drop the FIXME prefix as the
> HSDs seem to be updated now. (JohnH)
> v3: Add remaining parts of Wa_22011802037 (Umesh)
> v4: (Daniele)
> - Fix R-b versioning
> - Add engine->reset.prepare hook for Wa_22011802037
> - Apply Wa_22011802037 to graphics version 11 and onwards
> - Fix comments on stepping validity for WAs
> v5: (Daniele)
> - Enable the Wa_22011802037 for 12+ platforms only for now
> - Use GEM_WARN_ON to warn if ring is not idle
> v6: (CI)
> - Since reset_prepare(gt) is being called from VF, move the WA to GuC's
>    engine reset_prepare vfunc and ensure that the vfunc is nop for VF.
> v7: (Daniele, Rodrigo)
> - Stop submission before stopping ring
> - ORing not needed for pending forcewake
> - Fix Wa_22011802037 to apply to gen12 only
> v8:
> - Make sure CS is resumed after reset
> - Fix uninitialized MSG_IDLE access
> v9: (Daniele)
> - Drop cs resume as not needed in GT reset path
> - Use same loop for reset.prepare and status_page.sanitize
> v10: Add TODO for timeout on intel_engine_stop_cs (Umesh)

Internal changelog should be scrubbed as some of it doesn't make sense 
on this ML

>
> Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
> CC: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  9 +-
>   drivers/gpu/drm/i915/gt/intel_gt_regs.h       | 18 ++++
>   drivers/gpu/drm/i915/gt/intel_reset.c         |  5 +-
>   drivers/gpu/drm/i915/gt/uc/intel_guc.c        | 18 ++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h   |  5 +-
>   .../gpu/drm/i915/gt/uc/intel_guc_submission.c | 85 ++++++++++++++++++-
>   6 files changed, 132 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index eeead40485fb..f553e2173bda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -182,15 +182,16 @@ static void gt_sanitize(struct intel_gt *gt, bool force)
>   	if (intel_gt_is_wedged(gt))
>   		intel_gt_unset_wedged(gt);
>   
> -	for_each_engine(engine, gt, id)
> +	/* For GuC mode, ensure submission is disabled before stopping ring */
> +	intel_uc_reset_prepare(&gt->uc);
> +
> +	for_each_engine(engine, gt, id) {
>   		if (engine->reset.prepare)
>   			engine->reset.prepare(engine);
>   
> -	intel_uc_reset_prepare(&gt->uc);
> -
> -	for_each_engine(engine, gt, id)
>   		if (engine->sanitize)
>   			engine->sanitize(engine);
> +	}
>   
>   	if (reset_engines(gt) || force) {
>   		for_each_engine(engine, gt, id)
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index 0a5c2648aaf0..12d892851684 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -841,6 +841,24 @@
>   #define   CTC_SHIFT_PARAMETER_SHIFT		1
>   #define   CTC_SHIFT_PARAMETER_MASK		(0x3 << CTC_SHIFT_PARAMETER_SHIFT)
>   
> +/* GPM MSG_IDLE */
> +#define MSG_IDLE_CS		_MMIO(0x8000)
> +#define MSG_IDLE_VCS0		_MMIO(0x8004)
> +#define MSG_IDLE_VCS1		_MMIO(0x8008)
> +#define MSG_IDLE_BCS		_MMIO(0x800C)
> +#define MSG_IDLE_VECS0		_MMIO(0x8010)
> +#define MSG_IDLE_VCS2		_MMIO(0x80C0)
> +#define MSG_IDLE_VCS3		_MMIO(0x80C4)
> +#define MSG_IDLE_VCS4		_MMIO(0x80C8)
> +#define MSG_IDLE_VCS5		_MMIO(0x80CC)
> +#define MSG_IDLE_VCS6		_MMIO(0x80D0)
> +#define MSG_IDLE_VCS7		_MMIO(0x80D4)
> +#define MSG_IDLE_VECS1		_MMIO(0x80D8)
> +#define MSG_IDLE_VECS2		_MMIO(0x80DC)
> +#define MSG_IDLE_VECS3		_MMIO(0x80E0)
> +#define  MSG_IDLE_FW_MASK	REG_GENMASK(13, 9)
> +#define  MSG_IDLE_FW_SHIFT	9
> +
>   #define FORCEWAKE_MEDIA_GEN9			_MMIO(0xa270)
>   #define FORCEWAKE_RENDER_GEN9			_MMIO(0xa278)
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index f52015e79fdf..5422a3b84bd4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -772,14 +772,15 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
>   	intel_engine_mask_t awake = 0;
>   	enum intel_engine_id id;
>   
> +	/* For GuC mode, ensure submission is disabled before stopping ring */
> +	intel_uc_reset_prepare(&gt->uc);
> +
>   	for_each_engine(engine, gt, id) {
>   		if (intel_engine_pm_get_if_awake(engine))
>   			awake |= engine->mask;
>   		reset_prepare_engine(engine);
>   	}
>   
> -	intel_uc_reset_prepare(&gt->uc);
> -
>   	return awake;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> index cda7e4bb8bac..fd04c4cd9d44 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> @@ -292,6 +292,24 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
>   	    GRAPHICS_VER_FULL(gt->i915) < IP_VER(12, 50))
>   		flags |= GUC_WA_POLLCS;
>   
> +	/* Wa_16011759253:dg2_g10:a0 */
> +	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_B0))
> +		flags |= GUC_WA_GAM_CREDITS;
> +
> +	/*
> +	 * Wa_14012197797:dg2_g10:a0,dg2_g11:a0
> +	 * Wa_22011391025:dg2_g10,dg2_g11,dg2_g12
> +	 *
> +	 * The same WA bit is used for both and 22011391025 is applicable to
> +	 * all DG2.
> +	 */
> +	if (IS_DG2(gt->i915))
> +		flags |= GUC_WA_DUAL_QUEUE;
> +
> +	/* Wa_22011802037: graphics version 12 */
> +	if (GRAPHICS_VER(gt->i915) == 12)
> +		flags |= GUC_WA_PRE_PARSER;

This is being applied to all Gen12 and not just DG2, so hiding it in a 
patch that specifically says that the WAs are for DG2 could lead to it 
being missed for backports and similar. IMO it should be split to its 
own patch. Also, the database says this also applies to gen11.
BTW, this WA needs an execlists submission implementation because all 
gen11 and early gen12 platforms are still defaulting to that. Not a 
blocker to merging the GuC implementation, but please make sure it is 
tracked.

Daniele

> +
>   	return flags;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> index c154b5efccde..fe5751f67b19 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
> @@ -98,7 +98,10 @@
>   #define   GUC_LOG_BUF_ADDR_SHIFT	12
>   
>   #define GUC_CTL_WA			1
> -#define   GUC_WA_POLLCS                 BIT(18)
> +#define   GUC_WA_GAM_CREDITS		BIT(10)
> +#define   GUC_WA_DUAL_QUEUE		BIT(11)
> +#define   GUC_WA_PRE_PARSER		BIT(14)
> +#define   GUC_WA_POLLCS			BIT(18)
>   
>   #define GUC_CTL_FEATURE			2
>   #define   GUC_CTL_ENABLE_SLPC		BIT(2)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 2bd680064942..38ba9f783312 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -1540,6 +1540,89 @@ static void guc_reset_state(struct intel_context *ce, u32 head, bool scrub)
>   	lrc_update_regs(ce, engine, head);
>   }
>   
> +static u32 __cs_pending_mi_force_wakes(struct intel_engine_cs *engine)
> +{
> +	static const i915_reg_t _reg[I915_NUM_ENGINES] = {
> +		[RCS0] = MSG_IDLE_CS,
> +		[BCS0] = MSG_IDLE_BCS,
> +		[VCS0] = MSG_IDLE_VCS0,
> +		[VCS1] = MSG_IDLE_VCS1,
> +		[VCS2] = MSG_IDLE_VCS2,
> +		[VCS3] = MSG_IDLE_VCS3,
> +		[VCS4] = MSG_IDLE_VCS4,
> +		[VCS5] = MSG_IDLE_VCS5,
> +		[VCS6] = MSG_IDLE_VCS6,
> +		[VCS7] = MSG_IDLE_VCS7,
> +		[VECS0] = MSG_IDLE_VECS0,
> +		[VECS1] = MSG_IDLE_VECS1,
> +		[VECS2] = MSG_IDLE_VECS2,
> +		[VECS3] = MSG_IDLE_VECS3,
> +		[CCS0] = MSG_IDLE_CS,
> +		[CCS1] = MSG_IDLE_CS,
> +		[CCS2] = MSG_IDLE_CS,
> +		[CCS3] = MSG_IDLE_CS,
> +	};
> +	u32 val;
> +
> +	if (!_reg[engine->id].reg)
> +		return 0;
> +
> +	val = intel_uncore_read(engine->uncore, _reg[engine->id]);
> +
> +	/* bits[29:25] & bits[13:9] >> shift */
> +	return (val & (val >> 16) & MSG_IDLE_FW_MASK) >> MSG_IDLE_FW_SHIFT;
> +}
> +
> +static void __gpm_wait_for_fw_complete(struct intel_gt *gt, u32 fw_mask)
> +{
> +	int ret;
> +
> +	/* Ensure GPM receives fw up/down after CS is stopped */
> +	udelay(1);
> +
> +	/* Wait for forcewake request to complete in GPM */
> +	ret =  __intel_wait_for_register_fw(gt->uncore,
> +					    GEN9_PWRGT_DOMAIN_STATUS,
> +					    fw_mask, fw_mask, 5000, 0, NULL);
> +
> +	/* Ensure CS receives fw ack from GPM */
> +	udelay(1);
> +
> +	if (ret)
> +		GT_TRACE(gt, "Failed to complete pending forcewake %d\n", ret);
> +}
> +
> +/*
> + * Wa_22011802037:gen12: In addition to stopping the cs, we need to wait for any
> + * pending MI_FORCE_WAKEUP requests that the CS has initiated to complete. The
> + * pending status is indicated by bits[13:9] (masked by bits[ 29:25]) in the
> + * MSG_IDLE register. There's one MSG_IDLE register per reset domain. Since we
> + * are concerned only with the gt reset here, we use a logical OR of pending
> + * forcewakeups from all reset domains and then wait for them to complete by
> + * querying PWRGT_DOMAIN_STATUS.
> + */
> +static void guc_engine_reset_prepare(struct intel_engine_cs *engine)
> +{
> +	u32 fw_pending;
> +
> +	if (GRAPHICS_VER(engine->i915) != 12)
> +		return;
> +
> +	/*
> +	 * Wa_22011802037
> +	 * TODO: Occassionally trying to stop the cs times out, but does not
> +	 * adversely affect functionality. The timeout is set as a config
> +	 * parameter that defaults to 100ms. Assuming that this timeout is
> +	 * sufficient for any pending MI_FORCEWAKEs to complete, ignore the
> +	 * timeout returned here until it is root caused.
> +	 */
> +	intel_engine_stop_cs(engine);
> +
> +	fw_pending = __cs_pending_mi_force_wakes(engine);
> +	if (fw_pending)
> +		__gpm_wait_for_fw_complete(engine->gt, fw_pending);
> +}
> +
>   static void guc_reset_nop(struct intel_engine_cs *engine)
>   {
>   }
> @@ -3795,7 +3878,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   
>   	engine->sched_engine->schedule = i915_schedule;
>   
> -	engine->reset.prepare = guc_reset_nop;
> +	engine->reset.prepare = guc_engine_reset_prepare;
>   	engine->reset.rewind = guc_rewind_nop;
>   	engine->reset.cancel = guc_reset_nop;
>   	engine->reset.finish = guc_reset_nop;

