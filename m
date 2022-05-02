Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBC0B516AD6
	for <lists+intel-gfx@lfdr.de>; Mon,  2 May 2022 08:22:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44B4B10F716;
	Mon,  2 May 2022 06:22:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06E8010F716
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 May 2022 06:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651472532; x=1683008532;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CXXYYim3o7CmW5A9FxSVnlB/S+6ZB8kigeVXknCCsZM=;
 b=Oki8KISWWXz2OTNn1dgDvtvFcKdxRX62AAmMHvT4OvZf9gatSSGcpRlZ
 4V1jWeOaxh2KSbwAtaUdzmJ+tAPRSuv/UEaq2/se/K2xClav4WrfCfb9v
 48KcIw6YOGLkxSmgd8Zy7siZBo0FfBwaiy6/Vhu6f6QHF4o9hSlKkZfM+
 ULEk6U4DHFYh+wcCCyML3gQrg0kNzra0u34eIDm6W0iXmjvQUWpPvDeeA
 Zi1uxY1kBDfV+4ZLlx25clS+qqU+hkQXTt2epE4h1U4BMsUZoeubSQIw6
 CPefBekCVmI6xVu4PUzfq8kizmNwVPe8f9A1OHr0MvMoRzPED+T0J15QJ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10334"; a="247687221"
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="247687221"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2022 23:22:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,190,1647327600"; d="scan'208";a="598483381"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 01 May 2022 23:22:10 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 1 May 2022 23:22:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 1 May 2022 23:22:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 1 May 2022 23:22:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ctJnIA3KGc2O1sM9GEiVK/G9qYKae8y7ms+r82yPBdrsMAdXtyvAyJoqD+V2jyZ3/HPuelkXXT2vyXZkCVkR9/AeHFSB6o9o49jdyWxL8QmMabMLDVurY96rExvHrzzOytpByysCEngSFSvapcZxY1lu5sQQLdEej/Vi70ne/u00sW1mjRZSX67aIhfqvIs4AYbBk1TJ7l+ZAzcpEu3KEJAzF4iXO9v07haFro3aRyqW9/th0fNVxvUFxY5NPqOATKhZ6MMFDngXO1tMzAX2g8Hk8TY6YnDZEpXN/zJsagidEtN6fVepv07pHK0wwKtbacKwTDPs8EDF0R3oB8VClQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D96t/M5C0CkHf0DXa6PZkHf7Q1VhpSKdZ1VLoFrbhB0=;
 b=cxL/SH8lanT+1mn9icNPpG69drryjosMi3Y3h7n0wEVxLVP6rr4ZYSbHdKfXPOPKONqXtKjI/Cyui2J84ARyhjSwGvSYk+/STLfmLkG7+4AZoqDz0VSr3OiC458Vm4EqD30UKw1HkGZP2H3mhdyRWGAMdVSSxJ4jWX8Wq3Sq3TKxAtDndqXTFeET1G4POCv2/3IVLwJRaHaKMtxRnJOC/ZWqS0ZXDrr7l/7RCF9/QKjfDRQuDLcYm/SOEpNjc4+gbFaxbv1CeeEYDiMbO87wPHZR4a7AoJROsimjgZCglWksVEE321POnzyJkSlvDC6npza3fqZCG9gWSOTC4L1wZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB3180.namprd11.prod.outlook.com (2603:10b6:5:9::13) by
 BL1PR11MB5286.namprd11.prod.outlook.com (2603:10b6:208:312::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5186.15; Mon, 2 May
 2022 06:22:08 +0000
Received: from DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871]) by DM6PR11MB3180.namprd11.prod.outlook.com
 ([fe80::b1fa:393c:9fb6:6871%5]) with mapi id 15.20.5186.028; Mon, 2 May 2022
 06:22:08 +0000
Message-ID: <de81945c-870b-25ff-7c72-04244949e8ac@intel.com>
Date: Mon, 2 May 2022 08:22:02 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.8.1
Content-Language: en-US
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
References: <cover.1649871650.git.ashutosh.dixit@intel.com>
 <cover.1650430271.git.ashutosh.dixit@intel.com>
 <9ed5af1177ad08c7c2d9c5d9b32ab0154dbd950f.1650430271.git.ashutosh.dixit@intel.com>
 <1339a2be-5fd0-cf65-d361-06c60d938ce5@intel.com>
 <87levzag3a.wl-ashutosh.dixit@intel.com>
 <d16ba36a-cc23-6bdd-803a-f2bb35dac75d@intel.com>
 <YmXQ5+u7pL/Je6p5@intel.intel> <87ee1i5k58.wl-ashutosh.dixit@intel.com>
 <ce0f7b16-b06b-4eb2-9c47-e7d4092a6c4f@intel.com>
 <871qxg5xda.wl-ashutosh.dixit@intel.com>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <871qxg5xda.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: LO4P265CA0037.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:2ac::11) To DM6PR11MB3180.namprd11.prod.outlook.com
 (2603:10b6:5:9::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3dc08f92-0424-4211-3963-08da2c04157a
X-MS-TrafficTypeDiagnostic: BL1PR11MB5286:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BL1PR11MB5286C2F8F679AFDDF63A4352EBC19@BL1PR11MB5286.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 49CrSvFar3dOabh6Vp0AZMgtDFBGRdoUeTV9CJi40dX1c6XqfElkTSPB67ngLKzhnOZycFsnk1EWgTkj7OEWrmm4uwLhsuYOG4T+ARoAzUm+DbxTU7cddzilP1WP/19RireAuXe+2zwXwPrwteg2vZIVi5MdZ2TaR2nFl0wuAC+hLkAnUVypOFgWGhCxuzvUFL4hosfugXL+SR+FJHJdAgPCx5DXwznQEygqe4ynwjTGb+0JpDfmdHWQFexZXWSWlcc5rpCJXNMpagsRK+artwpKtAEH8Vlt/pr4aNczc6FbYp19GmaHfDP6SV37P6gSOFlnfHOKWF1yCS0yVKvf6wPFcX20Qk8gEg9Rj+ZZeHK9e+wjzkgH5kRlNxMeCue2MwZjJwcWaZq/pu03fd8cdHGZG+836MbnnUH6r4CjWzjlHrQY2a/7oz8w8JOVOfIjDGkxJCm3pGcLe/vdu2ypvVNVMdo2Jlj6867FjqzQBqSmPDIqwkrf7CmFQBxeIS8LlAo+pqZ2sudkaw9coXpTRyMj0x1SUySOnt202lYvHjSecUpemB+Y7mOoZLCHIXZq1m4slhYHtzpGQgB5dTSAcju8dvUTWeDwGbcNL3CGCH0m0pZnyb23wwiXW3op/yfVApFDSf3rD9/4+C4gdgTAwG1tjTIXJU9a3DlVJUZRz7PYkW2zW9qiPeNLl3P5FngOFp4YbBpprtn19zdNOrTqKrV9JLHWQ4YbIJcKOKRr4KdCXqrd7RLVwUKsfxMllSS/MgItY/Elsee6fuu0GZkm0IH+Lo+tuwFWQ/n8aBtOd4pz7VLLTW/VEY4YK3P90+aWNODUYmiunRaX9t7KE4KU7O4Edt/WqGd/07KbAVypq8Q=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(38100700002)(44832011)(31686004)(8676002)(6862004)(4326008)(5660300002)(8936002)(31696002)(66476007)(66556008)(66946007)(53546011)(508600001)(2616005)(86362001)(26005)(6666004)(6512007)(36916002)(6506007)(2906002)(186003)(37006003)(36756003)(6636002)(82960400001)(316002)(6486002)(966005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWl0U3VEaFh4RFdoOXJ2MlZZWThYZmVvRis1MEtmd1lIai84aWwweWVENHNw?=
 =?utf-8?B?YkZVNmUwTHN2R0t1N1ovUER4d2VGL0phb1gvNEhrcTl6VXBIOTl4WjFHUnRU?=
 =?utf-8?B?aUtQaDJCaS94Mnp3NVVhK3JTQk4rWGE3VWU1RUViMXpSczhGOCt5NjJPckI0?=
 =?utf-8?B?dUs0V1pwU0IzbjFqZ2prOVdjSW1VMEpRVUt6MlI4V3dGazdFWlg4NlAwYldW?=
 =?utf-8?B?Zjl1TmVvRWVQVkg1VFVjVUZWWHM0Wjg0aW1Rd1A2bEZlOTMvS01MNmRWSUw1?=
 =?utf-8?B?WU8rV2JJNDZXQVJ3SGxESFV4eGs4eWNMTG5YQU9PaXI0c1JNditmUVdycVl4?=
 =?utf-8?B?eVFDcndicU9adTMwbjJQQjI4VUEzc3dKak9RSTRxV3ZuYWo1blU2ZnhheW40?=
 =?utf-8?B?c2NWbWM2elN6UzVoVG1hTmxDLzJ0aUVUOXM2dlo1K2c4UFNuUnk5Q0F6MjRj?=
 =?utf-8?B?aU5LRVFiZWxxM2RQOTgyZm90dkV2bFB3aHZGSTlDWEE2TVI4aXhBSGVMNUha?=
 =?utf-8?B?MlV2OStkamtnWjJkaHlJVnhoeWdsalVGajJXSm1SUXI0L0NGaXJjdHNlT0lx?=
 =?utf-8?B?dEdiTnA4UnBoaFM1blhyK2ZBOU4xakpoOVlreVo5VHpJWHdwNzE0TmErNGZY?=
 =?utf-8?B?ZmFsMUN3cGRqVElMWllLSDBLbVZLWEFUS20wWHpVOFhRVFZZSjMzOXI2bUVP?=
 =?utf-8?B?RUZoRTlpYnhpVDJlTlY3dDhiUlY2MFZNYjNQSmU3VndScU43Szk1OHpFcmxy?=
 =?utf-8?B?VjIyL1hBZDFLcHp2d2gxRGpJbGVWTm1XN0JVSjdTZUZkLzViZHdIdjlDZmlj?=
 =?utf-8?B?VGtjRGVsNHhzS1cyQ1JMTzQ5cjRRUVlZbUcwQlRYSmNtdHJxc0V2NGUzNEVw?=
 =?utf-8?B?T0w5Y3RLdzc1YlU0YnVZV3c1SCt3RzRRN3Bwb0pQWG02ZlpGUjJjY3hkbysx?=
 =?utf-8?B?YXdFQm1PWWdOL055KzNIcmJIbEYrUDFrZURvd0hYbHNpaTZzWjlpYnN1Mk80?=
 =?utf-8?B?anFBZUlDWVd3d3FwVlA1d3JZaTJtNnRFcFU4Rk10NDZLTnlJM3R1R3IzWTJH?=
 =?utf-8?B?TFlsVkt1SEsyaGxDVjhYa0xjTHkvVkcyQ3VkQlRscy9EdUVJSldyUThvVzA5?=
 =?utf-8?B?bGI4UjJVeVZaeTh0M3Z3ajlaczhHNzQrQm5GZ2VzcHpKMThKSEJHQmJLMS9x?=
 =?utf-8?B?RUlTSVI5UGhBc2ZnTTM4QVMyR0c4aFh3ZFF2WXArQit6Rm9KZDIwbi9pVlFQ?=
 =?utf-8?B?L21LYjBDMVlQWkl6cXVvNHNhRnpGd2pzanN0MUhhUy91N25TYnNIS3ovNFJT?=
 =?utf-8?B?SG9YZDZkMUxCbXQ2bzlSeFZCRDBXaFBYU0xpbXVTOW9CTFdseVQ0Y0hsNG9Q?=
 =?utf-8?B?Q3BmektoRko1dnFFY0lUWmNDaWZKK0FTWGFsWE1NOXZOb0FrelRZMUVUL0t3?=
 =?utf-8?B?QnhiMWxDR2VoeDlLaGhrNFRqTk5McklQUEJDRjBEN09MSDFlWFRDUVV1L0tL?=
 =?utf-8?B?WUVzWm4rN2UrRGJEcjl6RkNtU3pBQlg4dnN4ZXpiVDZkUkNuYXloQ1Njbk9S?=
 =?utf-8?B?aVJiS3BVNWh2TlNYRmFlNVhQeFJCZThURUNZUmJJckhrUDBkbG82TThFOHRK?=
 =?utf-8?B?UzFuMGk4eVBJRFB1ZTl4SWtkN2VYQTE1Z0xsT2ZBcWVFcG83MnBNY3RHR3ls?=
 =?utf-8?B?bXlXTmo4cGtNbElTM0NlVHUvTTdBcUs5bEpDd1hoUURCazVMNjg3T0lLS1My?=
 =?utf-8?B?Y0RIeGV1dHZYN3lZRHdjVUtLZit2cGlBSHBYVWE3ekU1NlJtNituRkFTblkx?=
 =?utf-8?B?ZEZvbWFjVXc1b3dGSEIyNUJhdURtaWZuVDhSUXZDSjJOWUkxZGV3Mkw0emZi?=
 =?utf-8?B?LzdlSGRVUnM5cCtPbUErcVVOQm5sQkNFMG1oRFVpVUdrQ1Z4RVZUbk1ESjZZ?=
 =?utf-8?B?Wi9jeWVibkZTcFhGSFk2elhMazdWamF6KzVXQkdHZGxpVjRyMEVXYTM3bmF1?=
 =?utf-8?B?bDQzZkxXTDd2ZnkzenVXVFhmcWFERG9wenBIazlGSkJqdmwzQWtTNjVWd2dU?=
 =?utf-8?B?M3ZtcExtTFFuNEliQ3NIc3pkY2VkZHFZZS93T0RjV25xWm5QNk4rUFhpY0hv?=
 =?utf-8?B?NktTdmFBTUllQ2t0NVhEZmYxOG8yQ2NxY0M4MTQ4VDhHNzE3aGxSUGtqMWJC?=
 =?utf-8?B?VmhxYXd2eENGWGtRbjhDdzFPV2QyNnJsRkluSnp6Q1dVaG01R20xdEpLZEpu?=
 =?utf-8?B?L0FGUE1NQ1YxbG9wcjFDQ1hQWDNzWW0rTllSckxYd1l0L2JQWnYrbExhUnZt?=
 =?utf-8?B?YVovWitKcEQ5ajFCa2R2ekdiQmZtb1J3L2ZHdXQzbkdNWXdtYlVUd29TVExT?=
 =?utf-8?Q?Q1Jb60/nZRiKuwng=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dc08f92-0424-4211-3963-08da2c04157a
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2022 06:22:08.0513 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oatqnGY0Vt4C1t1hq9cADYYbvzBntCXUU/qD9XhuMUH+JngVNTwzKPAR+dalIj4bd8kseRuXjM7jbuZpSb30gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5286
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 7/9] drm/i915/gt: Fix memory leaks in per-gt
 sysfs
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



On 29.04.2022 06:25, Dixit, Ashutosh wrote:
> On Thu, 28 Apr 2022 07:36:14 -0700, Andrzej Hajda wrote:
>> On 27.04.2022 22:46, Dixit, Ashutosh wrote:
>>> On Sun, 24 Apr 2022 15:36:23 -0700, Andi Shyti wrote:
>>>> Hi Andrzej and Ashutosh,
>>>>
>>>>>>>> b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>>>> index 937b2e1a305e..4c72b4f983a6 100644
>>>>>>>> --- a/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>>>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_types.h
>>>>>>>> @@ -222,6 +222,9 @@ struct intel_gt {
>>>>>>>> 	} mocs;
>>>>>>>> 		struct intel_pxp pxp;
>>>>>>>> +
>>>>>>>> +	/* gt/gtN sysfs */
>>>>>>>> +	struct kobject sysfs_gtn;
>>>>>>> If you put kobject as a part of intel_gt what assures you that lifetime of
>>>>>>> kobject is shorter than intel_gt? Ie its refcounter is 0 on removal of
>>>>>>> intel_gt?
>>>>>> Because we are explicitly doing a kobject_put() in
>>>>>> intel_gt_sysfs_unregister(). Which is exactly what we are *not* doing in
>>>>>> the previous code.
>>>>>>
>>>>>> Let me explain a bit about the previous code (but feel free to skip since
>>>>>> the patch should speak for itself):
>>>>>> * Previously we kzalloc a 'struct kobj_gt'
>>>>>> * But we don't save a pointer to the 'struct kobj_gt' so we don't have the
>>>>>>      pointer to the kobject to be able to do a kobject_put() on it later
>>>>>> * Therefore we need to store the pointer in 'struct intel_gt'
>>>>>> * But if we have to put the pointer in 'struct intel_gt' we might as well
>>>>>>      put the kobject as part of 'struct intel_gt' and that also removes the
>>>>>>      need to have a 'struct kobj_gt' (kobj_to_gt() can just use container_of()
>>>>>>      to get gt from kobj).
>>>>>> * So I think this patch simpler/cleaner than the original code if you take
>>>>>>      the requirement for kobject_put() into account.
>>>> This is my oversight. This was something I completely forgot to
>>>> fix but it was my intention to do and actually I had some fixes
>>>> ongoing. But because this patch took too long to get in I
>>>> completely forgot about it (Sujaritha was actually the first who
>>>> pointed this out).
>>>>
>>>> Thanks, Ashutosh for taking this.
>>>>
>>>>> I fully agree that previous code is incorrect but I am not convinced current
>>>>> code is correct.
>>>>> If some objects are kref-counted it means usually they can have multiple
>>>>> concurrent users and kobject_put does not work as traditional
>>>>> destructor/cleanup/unregister.
>>>>> So in this particular case after calling kobject_init_and_add sysfs core can
>>>>> get multiple references on the object. Later, during driver unregistration
>>>>> kobject_put is called, but if the object is still in use by sysfs core, the
>>>>> object will not be destroyed/released. If the driver unregistration
>>>>> continues memory will be freed, leaving sysfs-core (or other users) with
>>>>> dangling pointers. Unless there is some additional synchronization mechanism
>>>>> I am not aware of.
>>>> Thanks Andrzej for summarizing this and what you said is actually
>>>> what happens. I had a similar solution developed and I had wrong
>>>> pointer reference happening.
>>> Hi Andrzej/Andi,
>>>
>>> I did do some research into kobject's and such before writing this patch
>>> and based on that I believe the patch is correct. Presenting some evidence
>>> below.
>>>
>>> The patch is verified by:
>>>
>>> a. Putting a printk in the release() method when it exists (it does for
>>>      sysfs_gtn kobject)
>>> b. Enabling dynamic prints for lib/kobject.c
>>>
>>> For example, with the following:
>>>
>>> # echo 'file kobject.c +p' > /sys/kernel/debug/dynamic_debug/control
>>> # echo -n "0000:03:00.0" > /sys/bus/pci/drivers/i915/unbind
>>>
>>> We see this in dmesg (see kobject_cleanup() called from kobject_put()):
>>>
>>> [ 1034.930007] kobject: '.defaults' (ffff88817130a640): kobject_cleanup, parent ffff8882262b5778
>>> [ 1034.930020] kobject: '.defaults' (ffff88817130a640): auto cleanup kobject_del
>>> [ 1034.930336] kobject: '.defaults' (ffff88817130a640): calling ktype release
>>> [ 1034.930340] kobject: (ffff88817130a640): dynamic_kobj_release
>>> [ 1034.930354] kobject: '.defaults': free name
>>> [ 1034.930366] kobject: 'gt0' (ffff8882262b5778): kobject_cleanup, parent ffff88817130a240
>>> [ 1034.930371] kobject: 'gt0' (ffff8882262b5778): auto cleanup kobject_del
>>> [ 1034.931930] kobject: 'gt0' (ffff8882262b5778): calling ktype release
>>> [ 1034.931936] kobject: 'gt0': free name
>>> [ 1034.958004] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): fill_kobj_path: path = '/devices/i915_0000_03_00.0'
>>> [ 1034.958155] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): kobject_cleanup, parent 0000000000000000
>>> [ 1034.958162] kobject: 'i915_0000_03_00.0' (ffff88810e1f8800): calling ktype release
>>> [ 1034.958188] kobject: 'i915_0000_03_00.0': free name
>>> [ 1034.958729] kobject: 'gt' (ffff88817130a240): kobject_cleanup, parent ffff8881160c5000
>>> [ 1034.958736] kobject: 'gt' (ffff88817130a240): auto cleanup kobject_del
>>> [ 1034.958762] kobject: 'gt' (ffff88817130a240): calling ktype release
>>> [ 1034.958767] kobject: (ffff88817130a240): dynamic_kobj_release
>>> [ 1034.958778] kobject: 'gt': free name
>>>
>>> We have the following directory structure (one of the patches is creating
>>> /sys/class/drm/card0/gt/gt0/.defaults):
>>>
>>>         /sys/class/drm/card0/gt
>>>                              |-gt0
>>>                                 |-.defaults
>>>
>>> And we see from dmesg .defaults, gt0 and gt kobjects being cleaned up in
>>> that order.
>>>
>>> Looking at lib/kobject.c there are several interesting things:
>>>
>>> * Three subsystems are involved: kobject, sysfs and kernfs.
>>>
>>> * A child kobject takes a reference on the parent, so we must do a
>>>     kobject_put() on the child before doing kobject_put() on the parent
>>>     (creating a child kobject creates a corresponding sub-directory in sysfs).
>>>
>>> * Adding files to a sysfs directory does not take a reference on the
>>>     kobject, only on the parent kernfs_node.
>>>
>>> * Since we do call sysfs_create_group() (for RC6) ordinarily we will need
>>>     to call sysfs_remove_group() but this does not seem to be needed because
>>>     we are not creating a directory for the group (by providing a name for
>>>     the group). So sysfs_create_group() is equivalent to sysfs_create_files().
>>>     So it seems we don't need sysfs_remove_group().
>>>
>>> * Similarly it appears files created by sysfs_create_files() do not need to
>>>     be removed by sysfs_remove_files() because __kobject_del() and
>>>     sysfs_remove_dir() called from kobject_cleanup() do that for us (the
>>>     comment in kobject_cleanup() says "remove from sysfs if the caller did
>>>     not do it").
>>>
>>> Based on the above it is clear that no one except a child kobject takes a
>>> reference on the parent kobject and as long as we kobject_put() them in the
>>> correct order (as we seem to be doing based on dmesg trace above) we should
>>> be ok.
>>>
>>> Also what is followed in this patch is a fairly standard coding
>>> pattern. Further, in case of any errors we generally see failure to unload
>>> the module etc. and none of these things are being observed, module reload
>>> works fine.
>>>
>>> I hope these points are helpful in completing review of the patch.
>> See [1], it is quite old, so maybe it is not valid anymore, but I see no
>> code proving sth has changed.
> Hi Andrzej,
>
> A lot has changed since that article from 2003 (for 2.5 kernel). For
> instance there is kernfs (as I mention above):
>
> 	https://lwn.net/Articles/571590/
>
> A process having a sysfs file open today in my view will result in the
> following:
> * It will take a reference on kernfs_node (not on kobject as was the case
>    in kernel 2.5 in [1])
> * An open file will prevent the module from being unloaded (not the kernel
>    crashing as in 2.5 in [1])

Thats nice, but kernfs_node->priv still points to kobject so their 
lifetimes are bounded.


>
> So this is what I would expect with today's kernel. I am not seeing
> anything we've done here which violates anything in [1] or [2].
>> Also current doc says also [2] similar things, especially:
>> "Once you registered your kobject via kobject_add(), you must never use
>> kfree() to free it directly"
> Correct, we are using kobject_put(), not kfree'ing the kobject.

That I wouldn't agree. kobject_put is called, then the object in which kobject is embedded is kfree'd somewhere later on driver removal, without awareness of this kobject.
According to your analysis it should have 0 refs, but this is analysis of the current code, even if it is true now it could change in the future.
And IMO it is against docs[2]:
- "One important point cannot be overstated: every kobject must have a
release() method, and the kobject must persist (in a consistent state)
until that method is called. If these constraints are not met, the code is
flawed." - empty release method means clearly it is against the docs.
-"The end result is that a structure protected by a kobject cannot be freed
before its reference count goes to zero. The reference count is not under
the direct control of the code which created the kobject.".

So either docs and part of kobject code were not updated to reflect changes you are assuming, either your assumption is incorrect.
Looking at other users of kobject it seems they follow docs, their release method either frees memory directly either kref_put on containing struct, it was just quick scan so I could overlooked sth.


Regards
Andrzej


>
> Thanks.
> --
> Ashutosh
>
>> [1]: https://lwn.net/Articles/36850/
>> [2]: https://elixir.bootlin.com/linux/v5.18-rc4/source/Documentation/core-api/kobject.rst#L246

