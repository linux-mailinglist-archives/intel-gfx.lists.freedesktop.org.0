Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 873EF5FB79C
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 17:44:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5EE110E380;
	Tue, 11 Oct 2022 15:44:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E5B6C10E380
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 15:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665503063; x=1697039063;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=kEbNp91ZW74hkbQOtP+bBDeFphKOSHOxG0vhCY7dYzU=;
 b=e+6qzdm3SmMMKh9sXNynYqJgqX6HCd62nTSU+x829+f0Jh6tWlJI7qym
 qDNwGD4BBwX6ItJ8/MvFQjRxZOy0X4qjYSFndFrA/Lz5ytqhhkUGY0Gqm
 GjNG0o2VEGy0Y2tT+uWY+8yt/Dn690XQJYS4a3ndbfO0YEJd99KcO7JvS
 pBCiIoo63qbIdyPU2IwL2wzHLe6FhLTwWJ/A9PFHwTQA4XPxv2wg3cGKo
 qX/r/YZKuuL6ZrXSWS1ls/RmmBrrV2UerlKTMC9fPMCf3JEfSEQpp4FXs
 vcr726YFITB7Ma0xawSG8Ord3ZqQfBTIDdu0K5NHQY5PWM+o2Cb8hMNEc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="331020746"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="331020746"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 08:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10497"; a="577480116"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="577480116"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 11 Oct 2022 08:44:22 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 08:44:21 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 08:44:21 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 08:44:21 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 08:44:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pm2HSEefA0Fj8KjCVLLFneANSSMcJcmG71o4jRhMv7qjVeEhAWQNFSwYEOrVxO+gZmH/H7EMjWXESg+FLd6muySQo2Uz4Uvt5fwaoYCBegkypM3KvZIXiUWpjAF4PpfEYSRjLz/L87N8ENkmvxoFDlBBbngLLdQd5OZNgWpDmSoGNzW65jFsUtnqSMC8eb7+8VdnB+Cj/Qgg/Q9WJ+OHd7THp6dxGPwYO2E8MQtAQ57DumN/weA5ewELmlN1UyG6Ug7h8iJV/8Q5kJyguFfqe/oVv8nOpEw1q4Za4BZfXZi1D7MIZ+3OJn4Sb63Yh6J2J35BinQyrh2RCQN/o3qLhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vyGzKdzPlYwf81vfTD/MlsQPV+bk69pazq0FyN2gz7U=;
 b=nt3XwsyZcycziaNfiSDXsKZ37wkdofZwjHN7N36U3lNR7Dl75JZhgp8AHlrx9UkUM9u1PL8NwO2fwZh6CojD7ohCWEQhB62epoPotesefvL5mqCURJljCq16F+SsUErv+BfintNWeANAXICfkx+diTT6DBvCrZ7GHrQEa7V5cfcSGPXWxoDWEmQXYQ4y5Vaw+IN69ul3H3544Ub08Y2s91vCzH8nDywA+XFlDpebyh7OQLIVZ9f3EFBx3bHmW74DFdpy1g9b5ZM3T7v/ZKNDcwuc+o0L0tzVi/LnQevK01T7EsYlNIH0Q4jIj8O5tby04MhiINFIB5lhr84tTLxBMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 IA1PR11MB6345.namprd11.prod.outlook.com (2603:10b6:208:38b::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.32; Tue, 11 Oct
 2022 15:44:18 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%4]) with mapi id 15.20.5709.019; Tue, 11 Oct 2022
 15:44:18 +0000
Message-ID: <1b461ffa-a005-90c3-9377-6f1ada053bbe@intel.com>
Date: Tue, 11 Oct 2022 08:44:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.1
Content-Language: en-US
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
To: <linux-firmware@kernel.org>
References: <20221003204107.1105725-1-daniele.ceraolospurio@intel.com>
In-Reply-To: <20221003204107.1105725-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR06CA0009.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::22) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|IA1PR11MB6345:EE_
X-MS-Office365-Filtering-Correlation-Id: fdfba9a0-2a85-45ac-d76d-08daab9f74ef
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tnmtrwAWrpQfdjcajJWpyCiL4ut7+NeMUOJTwsATh+xDbz3sLj1S+cVcpOCTwkH+rsMl/gUOE9tj/bDITFZC18PkCS/XqLKnSMyWkUy1Uclrlmxcr6O0X+lYVrN06nvl05agtzI7go8L6xyoFXDjN+/zFNwKCxbhpq7fU747Z2l7Gfd07ZNYO4LYdFsCv/h+J3uM4gOxn/sF1u2ibxQC22ZstvzmFVXTQ1Bf79Pp7CP0M1wyf3vxXT4y5QXHB16rp0UUiSm6nYO43y4hxhQmoRT3Jah58XzJPZOk7MBIeGCGa/6YIqjE9ZW3fHW1a6Sy5dLKvhYGle/iBGGkP7YyjLjZLg9mW00wnJbB6l5fBO/qOIDOdii2S1YN2IT/IFBw9RhGx7Ao2iCb//mPVJeTl9IFdNR+pkcad79VdDaZeCvqETunB3HoqGElbA8eTqDvjgNiiemntzu4/pYT4Vwh//E5vwa1aj4LueO9kiEwO/IOaJ/ZdG8N21MRWIF8QfhvZ9T7g4vGfIFDSbZfvYNtColf0RVJ16wPE3fTCfyAGbCiWXha3MMQw8alx+1PX30IUGZnqeIylPCUNIdkoF2F7XqKAZg6zqv07T0ANnHYc1JWAaNdEvnpYof0sPmhQQgdIF573Mseou03NPHEXkMZa0fC2ElR5ybZOFVB0Px7gl2VZ8h7MvoOylqO+cwI7FgchJw7qr3bPfYi0yelUhZtDmgURFE0zoy4H//lMD4dbniZMGEUROWNn6niA1J75rxTCWmaPIFVkhogkc7F3RtQzoRZGSzQTFcoEVm4+re8qmc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(346002)(366004)(39860400002)(396003)(451199015)(186003)(26005)(2616005)(83380400001)(4326008)(2906002)(53546011)(66556008)(66476007)(41300700001)(36756003)(8936002)(6512007)(6666004)(4744005)(8676002)(66946007)(31696002)(5660300002)(6506007)(6486002)(316002)(86362001)(6916009)(38100700002)(82960400001)(478600001)(31686004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bmk3USt0eXQrWHdKWmxyTmJpbFg2dUJpcnB4ZGtvWjE1Ykdpd3NiclpUSm55?=
 =?utf-8?B?RXNRM3FCRi9LL1ZmV2twK1VjYjNGMjQ1Y09zMmxOaW1XOUVya0xsbVdXN25v?=
 =?utf-8?B?OUt0T0JvWERLK0JzWU40QThiWXFpYWRSalRjWnZRTklJMmNqYUdoVCtLUk5Z?=
 =?utf-8?B?MFhvSEdTc3FWUkQwZkVtR3VPdkpKMi83bTdQald1Z2hPSmdkQy9rOFUrbHA3?=
 =?utf-8?B?dnpzcTByOUxSN3hKUDVHdy8vejJjazB2WjluV3FrcDEva21pSzFNaGEvaGFi?=
 =?utf-8?B?b1ZzczllVktYN0Jhdk9qTzI1Rzg2WDdUQkY4L0NkZk42UnJtencwNWtwM21h?=
 =?utf-8?B?SURHN2ZzL0tzMFg5MGtxSmNnT01NdFQ4aVVsQ05ieXJFdVlDNjhxTHZrWnNL?=
 =?utf-8?B?UW9RSWtZelhYem1yejlhS3BxWU5BZE1LdVR4TGZyUmRpc2tUVk0zUWJMaG53?=
 =?utf-8?B?MTF3OWNVK05Nam9UN1h1ekdUQUZ0Q2MrOFJtTUhuenphQW9SemRhOGMwM0Mr?=
 =?utf-8?B?Sk9OVjdKSDJubzM0dUNwbFJrUXF1N1JRZXFNU2YxQTVIYklSMTY1NzR1OG4r?=
 =?utf-8?B?MlI0Y3RNV1BXTmJxaFlSN1h6K09OUXlEWDNLZDdNc0VyRFFtL3IzVGtnK2Ns?=
 =?utf-8?B?QkF2M3BsZGZFTUZVUDlmVmU5L05VT2hSZHNUei9TUjVqZlJlbUlwTHE0ZjQx?=
 =?utf-8?B?eGR3Y2UvY21LalBraVJlUVUxNXcyaUsxSkVBSlhJajVZenRCMlBCbDBLVWxK?=
 =?utf-8?B?UEJDdzZDNndyTlpoWEJNSm5CelpaTDZWRzNIZ3FvZU5ZZ09TOWd6Ym40ajdL?=
 =?utf-8?B?LzZqNE1nRU5MUU5RS1N0L0NkY0UyK1laT0pMVjhPOGlnM044Smw4eEJLdHRr?=
 =?utf-8?B?dnYxOHRHRzJEYkpUQzlqY1djV2Q0M2w3c29PVWFPNDF5dXBDbldPeWdFV25I?=
 =?utf-8?B?SlFsT1dwNnZoSmxGaDRrR29LVlBLeG9mWVcxYnpsUWhoOGNZYkhwejc3Wnc1?=
 =?utf-8?B?QzJDK2YvZG1uYVpiSUxpM3g0ekFyWDkzTDBFU2xBWExWOWpxamZvWEFWQ1lK?=
 =?utf-8?B?V1A1dDk2VXF6d2JrYUZSSnpBVElGMkNVeDFGMzFVU1czY1JKSGFPSVhLMHla?=
 =?utf-8?B?MWdmaEt0dGhEMkVvZUtuRHQ1NjJ1eURVT2kxRFB0cVRyMmE2alR0ZmNJcWh6?=
 =?utf-8?B?U0lPYS9OZDJKeUFxaS9TSEpOWGpZSDc0RjRWZ01zRlhxWElHMVNOZVNEUkhH?=
 =?utf-8?B?c1N1KzI4c3l4QVo3TkhrSDFHVlJPL1E3VVgzOTJQc25mRFZCRVU5UDY2bmxr?=
 =?utf-8?B?U09najVsc05Jb1E5UHVSY2ltQ1l5OHJuYmErNUFObUNlYmJSdkM4d3B0cTZ2?=
 =?utf-8?B?ZEs5WmU3NG1jWC85NzFMRUl6UFJBQzdGWmJOeWdNV0pOTTdHY1NjOWJjUm1J?=
 =?utf-8?B?OGg2ZUlWUitPb3Y5SGxPTVlsNnptVmxEcU83UmFiVkxEZWhYM3dQTjhSeWdh?=
 =?utf-8?B?VGYyTHQ1YmRDYTFiaTJwT2I5aVE5a3lPK0tOK0ZmUVd6UFg5Tjk3WGtnT0Rh?=
 =?utf-8?B?elJKeEhZWUJkZUFoVFo4MWNjZUdhVG5qeGxsTVp0MHQ2MW8zM2ozVk15STFU?=
 =?utf-8?B?OUJaTko3aUNWTlA1cjQvRnJKZGQ3cEhyVzJ0Q0ZrUHppK2t6VkJMUUJzb0lN?=
 =?utf-8?B?YkYvTjVqMEJYSnVQakF2WDlUT09mMjc1VzViSi9BeXhJQkdkQVFRUW0rNkRQ?=
 =?utf-8?B?NSsxV1ZzcVU0aGlnc2lCeHdhM1RUZEQ2Wmw4bmtHVUpjbVFFWVI5SC9mZWh0?=
 =?utf-8?B?S01hM3FDQUpSOUdlZjZBS3kwN0Exbmd3bkV6Wng2RzY1bnBkTXdENUsrRkw0?=
 =?utf-8?B?WlNUMWdaSnhIMWdmaFRtVUt3dzU0TG9yL081em1sZmRuY2ZBdEpGZUx3dktQ?=
 =?utf-8?B?c25pcVhFMzJaUlYvOFNmZEdlZHp6ZWhoZEVXbGxZOSs2RUovcm1BaHdsaHhF?=
 =?utf-8?B?RUx2RjUram9kYnVnekMxc3lPNVkxUWswbWlyLzBaNGMvWCsrL05BYVBvZ0dS?=
 =?utf-8?B?M0hKMVdXSjRwMHh0aXV2Ri9KNnY5V2xKZUNCNUY2RUVhTDZyMkZZTHRTbUM2?=
 =?utf-8?B?Vm9zUFRKSHJxMzZReHYxK0Z1S2VEa3NPTXZmb01jUmJnSXZpenJ4SloyeGVM?=
 =?utf-8?Q?v+wMOIuBGrC/+xxGQRCAUnY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fdfba9a0-2a85-45ac-d76d-08daab9f74ef
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2022 15:44:17.9510 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ri4iQsY5UyPMJ3inuQBGfTLMdWHLrY3dzgINO5mHjswdnwc5E/seWib6sSFHU2RwALoH/YLNkfpVrLhYgjp6tlD2bClRGWUX1nfqKqaYFdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6345
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] PR for DG2 HuC v7.10.6
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
Cc: jwboyer@kernel.org, intel-gfx@lists.freedesktop.org, kyle@kernel.org,
 ben@decadent.org.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

please disregard this pull request. The HuC team found a perf regression 
in 7.10.6, so they want us to use 7.10.3 instead. New PR with 7.10.3 
coming soon.

Daniele

On 10/3/2022 1:41 PM, Daniele Ceraolo Spurio wrote:
> The following changes since commit fdf1a65258522edf18a0a1768fbafa61ed07e598:
>
>    linux-firmware: Update AMD cpu microcode (2022-09-30 17:33:35 -0400)
>
> are available in the Git repository at:
>
>    git://anongit.freedesktop.org/drm/drm-firmware dg2_huc_7.10.6_pr
>
> for you to fetch changes up to b3110904e23e0032f6b6c72af84547066a5c4f26:
>
>    i915: add HuC 7.10.6 for DG2 (2022-10-03 13:32:30 -0700)
>
> ----------------------------------------------------------------
> Daniele Ceraolo Spurio (1):
>        i915: add HuC 7.10.6 for DG2
>
>   WHENCE               |   3 +++
>   i915/dg2_huc_gsc.bin | Bin 0 -> 626688 bytes
>   2 files changed, 3 insertions(+)
>   create mode 100755 i915/dg2_huc_gsc.bin

