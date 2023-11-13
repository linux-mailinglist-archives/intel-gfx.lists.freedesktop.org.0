Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94A217EA01F
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Nov 2023 16:36:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DFF0A10E3AF;
	Mon, 13 Nov 2023 15:36:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3DE210E3AF
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Nov 2023 15:36:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699889776; x=1731425776;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=L31YTElGce/AMJDjF8rUiQARaQOrthPaCOU8Rq1PltY=;
 b=kDqXErbKdYKVQtfJkg2RKiNfsRNqWXylFXC6Mk0uhvVS6pHH84LLumKy
 q+HPt4TOMK/HtsqN6d+XErSkciv6bLNNG6OSJXngWBLGy+qn2PLAtQ9Y2
 zbNvGnAt9rmpAAKLz8t2rIG8kZn9G4neil/1xCEnT2XHLhtuorWqJm1LX
 cfIR6YDLr5OSXk3R9A+0uRjVpLa6xbVN5bPEgWsangs6OJwcfRclAQKqH
 JBuW7M5YEoKUtxvqlhSB+OCg/79rBurKD6FflWYaEIk0HdfeDbBg4HO1I
 46nHkZddYFHySDofBaYSJm+ReLlT0xgi81r6MzHZkipDG/zPFDOVq/f7g A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10893"; a="380844650"
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; d="scan'208";a="380844650"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2023 07:36:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,299,1694761200"; 
   d="scan'208";a="5496273"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2023 07:36:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 07:36:16 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Mon, 13 Nov 2023 07:36:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Mon, 13 Nov 2023 07:36:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 13 Nov 2023 07:36:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kuPZqGYzFRROenbtVP+q8r0nKLYKb8Exc4qCOYZvJnkJ8nRo5U8Uw/eb23oMOleSBva3H5BaQ4NH37MgT9JZe0CAUi0u/Yvc+J/8FP49Hdovmx1S3sCaBbQJ8rxK8VmuGp7dx5zY4QZDoYXoDIZpHsT//gJSssZ+aQt28Yuqnqww5Wxz1jHDMfyMQnhWlwxR8AJbrFeBLRxWu+FA2UZVQsRql32uhy2Pre/0fo+ufbCKf0S0X1l+/92tYB7hUXVw0ShiWtQzUp59rmVJQsBsQbdXp23GTpw3DRX2jnk0CN8vT5mW3vGkygYrx4Bw4orjtpQJooazdguJdC0ovc3hEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5nYEpIu9iEcm7JqnWSodyZj4xj1L0piKHMbtB0jQ3mA=;
 b=E97UEff3tE3g/aIcycVXrrRwI/ta7Lmm8a0GSaBMaUPfMaDs+fY5RxWOla1zJ709ZIPLzCjiv4hiIzGwyXLcN+BStjwE+pyY0y31wCOGtpEm0jt9Yo5oebKbRlx8wDdCSFQZCSAlKaZY5H/uQ0u0WYCvjLdSu5gSoXOeRfUxhd+WLbusbo60OFSQJLEax9OihO41oT1lPMbg9SRp18X09R106QzjMfA5Y9OBWSNhuwo6T4z+uWSFHkfA6xMG1FyBUHDOa+fUzKqfvuoRBxF9PIhJcUbx/I7XCqqFWDRd5eSPratAPMTK3x4776MdXyXvFILJmWDKsoP0RSgezYyiWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by CH3PR11MB7772.namprd11.prod.outlook.com (2603:10b6:610:120::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6977.29; Mon, 13 Nov
 2023 15:36:12 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::588d:b37f:130c:9e86%7]) with mapi id 15.20.6977.029; Mon, 13 Nov 2023
 15:36:12 +0000
Message-ID: <afeda522-aa48-4284-a594-bde03f8c79c1@intel.com>
Date: Mon, 13 Nov 2023 07:36:10 -0800
User-Agent: Mozilla Thunderbird
To: John Harrison <john.c.harrison@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235436.2349963-1-daniele.ceraolospurio@intel.com>
 <7d82bd6e-ce31-4e1d-94c5-4373b65c0c37@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <7d82bd6e-ce31-4e1d-94c5-4373b65c0c37@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0074.namprd03.prod.outlook.com
 (2603:10b6:303:b6::19) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|CH3PR11MB7772:EE_
X-MS-Office365-Filtering-Correlation-Id: dcb6d40b-5333-4d71-12c3-08dbe45e4433
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: d5Sgh1phRZpRsh2nOkOfXLwdUSlNh4I/mffztxJe7bmc4Nd3VoFOaTRWS13AUudVZX6tqAzsVujMeYk36jxKZlAM+EhJ0y7pg0MR9icKfRlCCkNI5lnG6LWLpmx0UArautarB80dHSJ3aSXFPAMRmTmb8sR8L6KtVEz6kRXMmYg+hjhOAIGzszcodR40xTI8kku6xJSj5y42pbwJtolhpkZedeOYm2Wzq/AApTpgLSf9w8gijmmgC9uwKgxSfrig9MBD9ZVRUtvoJWwWAGtFfOkvFvVZrovflLzBfxHllu94ch7NJ27klieo8+Jpk8SsDRxGD1gYi1Yzu9IaXRiMQ9eu2s8GZNXVPca2RbEX7y5WRCPNOJTSVu0qpRlx6htiLVD6zl2UG5XJ7E0nm3ZJSV6gY9vEI6+bKN+G0sM9YBOD/rwaTAUcLROjitdiiEStniOYmSHQymMidqB/+UfJJyTFTgzf5Ef1ueP8wWXOa8H7nSfXhi/FRKeD2+1GLj+t9xAhHqerlMPmVC+qBZkIzvbLP0iKgaosxM7JGa12h30rKjWrEzd/ZgYjn3SchbPpLuhnBC30pUkYcqJJnxcm6uL/qmgdDDt6nx8hDgy2rhyneIMS1KM1f7sn2B/NlaSbARohoqQmayTA3AHpcW3oyNZKmSTR7CmcqL5ALxE3x4S2JiOnGhr5wH6g8dLM1vck
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(366004)(39860400002)(230922051799003)(230173577357003)(230273577357003)(186009)(1800799009)(451199024)(64100799003)(31686004)(41300700001)(8936002)(26005)(2906002)(6506007)(53546011)(6512007)(8676002)(83380400001)(38100700002)(478600001)(66946007)(66556008)(66476007)(82960400001)(2616005)(5660300002)(86362001)(36756003)(6486002)(316002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXpteWtsRjZ5MVgxQ01HRll1WmFTSXJJcXVEdjBmMUl0RS91bm9wemVJNG5h?=
 =?utf-8?B?a3J0NmNOZTVudTBIMEZmRGZ2RVgzWTNrZTExNWhCV3ZGeGlybENmNW90MGFD?=
 =?utf-8?B?OUZNWVJtZ1AxUVBaUmFuZmRWU0dPSDNPbitMMnc1aVRRVVNBTUtkSEY0VTMz?=
 =?utf-8?B?L3BFN1ZqcnNjTFBDK0dOS2JmSTRocnJvaS9EdHVjT010RHVtK2VESWEwVUpS?=
 =?utf-8?B?M3pqK2dKVll6N3NteE9wZDZZVnp6R1IvbTlVWC8zcjJmd1FBS1pmTThJbUNq?=
 =?utf-8?B?Ukc3UUxibUVHVHZBbnU2LzJ2Zy80NGNwTnhiTVJ6NXkzVXRvcHpsemJuelpS?=
 =?utf-8?B?ZUEwbHhjQzdNbTEvVUE1djVyUmh3ZnR3UnF5SUszWFN2SC8zdVUwclZsOFhK?=
 =?utf-8?B?STkvZjlIREF5S0JSN1pTTzEydFRPTlRZelByZi81Yzc5bjROSTNoSlBPTWdt?=
 =?utf-8?B?emJHSDFCRU00RGlONkJmOENhZGEzSVNsNDNUcGF6emhiRzRBVTRNbEpDdkd0?=
 =?utf-8?B?NFFrc0U0RXpZOXVSTDI1d0FScjdiRVJsSWIvUE53aVFmWitkQ3U0Y2IyNEsr?=
 =?utf-8?B?aDVQNFFRTkZvNEVCUk5QckVDTWFoeGhqSGtlRjNJWE9NQy9uQWZYeVFHeWdF?=
 =?utf-8?B?VkkxOHV3VzlRcUxUNkF5Tk9MQmF3M3FKd0VGOU5QUkM1dmdqaFYzYUlETTBO?=
 =?utf-8?B?aE9kQWJtK1o1NnFNUUdvVzBDcXgxYlM0RjRicldSb0dQQ25uUE9hUXRUV2RZ?=
 =?utf-8?B?YytjdEVPRjgzYXZuKzg2bXVKbjhVRGttc25jRXJhODRkcGptblphSk5uNWo0?=
 =?utf-8?B?dmF0NTFYdDFOenNXQnByeE9WMTdCa0d1OGUzMEFFOTVBbS9qc09ZenUrNTdz?=
 =?utf-8?B?eU5TdytNeit0dHd2cTZ5ekN2UEY4dVE3ZUZwMWZ2MGJJbHVGdDJnU0xpWnV1?=
 =?utf-8?B?bWRMYURINW9oZ2Ruc0NwNlE1Q1B6WGlQcnhnTG5jQXNab0FBUmlleUIxeEVo?=
 =?utf-8?B?TE1Uc1lGU1VjZllnVUFvYVFsM3U1RXlkVzd6dzkxaWprYVYvRWJQRTdQYVVJ?=
 =?utf-8?B?d3NJQ2o3SUNiNUtkbm0xc3g5QXFMV21wK2FQdVdmeUtlN1JPL2JSNFBKRVYx?=
 =?utf-8?B?cXRwNWZmYVhwMTdHNk5RdkFPNlNFWFp5RFRYdytEa21Fb21nbjVWVWI2U2Fx?=
 =?utf-8?B?MmhzWkp0dmVqcUhDWk0zTmI3endTVlNFS0FoUDFBWGplYWNEUGI5QldqTHcy?=
 =?utf-8?B?M09EZFlwRnpEcUd2RFlUM21VYjRqRXVvbDZ0cy9hRlorSU9GVmxxeG02RzJ3?=
 =?utf-8?B?YjJDa0FiSzhJejJVbFhoZGtPSkQ2aDkyV0d4TW1KY2pRR3ZpYjFrVXN1djg1?=
 =?utf-8?B?b3BIdHgrbUtVOVJ2ZHRCMUUwZmVBL25yY1h3cTZyZXdxTENoMXJ0V2xRYWd5?=
 =?utf-8?B?WWJUMjVXVnNoNWpLRmYxS0NjRlVXVGkrVExtc3Q0b0xja3dEYjcvc2xoVDN5?=
 =?utf-8?B?WENOSzBBanVWUkhnRFVueU5yMHdxSUJKZ3pWUFJIUis2YU9JQ0tUREk5YkY5?=
 =?utf-8?B?WTBzTHFhTk9EbnRYWjhZVWprWFNDSjBzdmR0ZTMyOWV1UTdPQlJydDlxbnBi?=
 =?utf-8?B?SU5GdEdKMXVVT0k4MzlBTmtwa3A3L3VSWmFjUVJGbnJrL3JCcndDVjFKbWlC?=
 =?utf-8?B?K3lyTlNaaWpUMFhpVHE4dDBGaXdGQTNPQ3FuMzlMTTFtUHVMUW01ODNOU01w?=
 =?utf-8?B?aXZsMlh6ZEpDY2tDTTdyNnRZTFhZN2ZURVhPSERTVE96eTBHU3Q1clhQb2tR?=
 =?utf-8?B?UjFvYjZFM3B2S2FYREFGUXlLMXhxR3dyci9Lb0dkS0ozRFhNZUl5QjRyRUV5?=
 =?utf-8?B?STNXRlVZUlRqNzJ0T0VRa1hqUnhJQWpveVd3TGc1YUMwSTNpU0dOblNSMjRN?=
 =?utf-8?B?aTgzdUU3cTNHNnZjWEd5Qjg4NUFqd2FMQndtM3kweUtOTElyRnk5d3RuWHEz?=
 =?utf-8?B?RVhDMFljb25JUXJONnZxOENVcWZ2WnpGK0l6K1kweVM5YTAwZEpvZ2M2Rko1?=
 =?utf-8?B?VDBZQnhoMU1adjhCRkhjaVV5R0NXVkRMNG5ib0wvcnk5ZUxUcDVqWFVKNXhy?=
 =?utf-8?B?Zlg3VG8zWkVBbC91NDhFTUFDc3dONFAxOXU5WllpWGN5OUNIc0hmUnBCZHlB?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb6d40b-5333-4d71-12c3-08dbe45e4433
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2023 15:36:12.6735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: suRQOBVYfeubmh/K2CsBSnk/24SEhmizre4HtTLp3ctQHJJ04e7TcFjxgSrbycZ5eGf8nioipAZcHaWADCNzH8HjXFnsGDPdmGOMQF7oMnU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7772
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Stop printing about
 unsupported HuC on MTL
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



On 11/9/2023 6:06 PM, John Harrison wrote:
> On 11/9/2023 15:54, Daniele Ceraolo Spurio wrote:
>> On MTL, the HuC is only supported on the media GT, so our validation
>> check on the module parameter detects an inconsistency on the root GT
>> (the modparams asks to enable HuC, but the support is not there) and
>> prints the following info message:
>>
>> [drm] GT0: Incompatible option enable_guc=3 - HuC is not supported!
>>
>> This can be confusing to the user and make them think that something is
>> wrong when it isn't, so we need to silence it.
>> Given that any platform that supports HuC also supports GuC, if a user
>> tries to enable HuC on a platform that really doesn't support it they'll
>> already see a message about GuC not being supported, so instead of just
>> silencing the HuC message on newer platforms we can just get rid of it
>> entirely.
> Not following this argument. Someone might attempt to enable HuC only 
> and do so on a older platform that supports neither HuC nor GuC. There 
> would be no GuC warning because GuC was not requested. But now there 
> would also be no HuC warning either.
>

Enabling HuC also enabled GuC loading, because the latter is needed to 
auth the former. The message about GuC not being supported is printed 
for all values of enable_guc that are not zero.

Daniele

> John.
>
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: John Harrison <john.c.harrison@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 5 -----
>>   1 file changed, 5 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 27f6561dd731..3872d309ed31 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -106,11 +106,6 @@ static void __confirm_options(struct intel_uc *uc)
>>           gt_info(gt,  "Incompatible option enable_guc=%d - %s\n",
>>               i915->params.enable_guc, "GuC is not supported!");
>>   -    if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
>> -        !intel_uc_supports_huc(uc))
>> -        gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>> -            i915->params.enable_guc, "HuC is not supported!");
>> -
>>       if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
>>           !intel_uc_supports_guc_submission(uc))
>>           gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
>

