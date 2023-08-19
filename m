Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE91781742
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Aug 2023 05:51:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CBA3C10E010;
	Sat, 19 Aug 2023 03:50:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 835F610E010
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Aug 2023 03:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692417055; x=1723953055;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=217ium2IgheAy00sDIS/b+7GadE97OgZgLthHJa1pGI=;
 b=J03NzMTyHJmJ6h2XMh0ol2Q5oZN6lVM5mjRe92GBcLcbbm5Oe8SicmK5
 KEOmjwXni9r1wEx3tnj3sb2Im23GYAq7GDWNKrq51RwdNDO4BCwM563+P
 riBiEhODUaddlEp2UymIoAM1G6NrlWDUKv9x0RWE6Imuclc/ddfqRMJoW
 ZzgK6IJyUTWq1mV9x78QpppnxvGVVkJ49ye8k38s7+2kgbNasTSuhUPZi
 7oDSjHuj43s5UFVZKeLb7DhTKRqPS8emdZfZkNg3DGpAw9fY8byUj2peU
 Pg1pIUCwf30OUUSNT4/E+PQMq1evqqHcknJ9uMWwpVR3tR+Mn1avPLk2q Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="377005907"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="377005907"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 20:50:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="805358962"
X-IronPort-AV: E=Sophos;i="6.01,185,1684825200"; d="scan'208";a="805358962"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 18 Aug 2023 20:50:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 20:50:54 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 20:50:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 20:50:53 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 20:50:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ozm8ALkh1Ypm+eYPZIYHitb/bOMa7pFBea+jcz/TOBtQLKKJGaxORP9uByXWDnyew0IGneB17gVaiwjfbNMtGm3XQI5gRyraFneNfnYec5N5ubRmBukikvgu/Kkxn3weLg7qOcz8qzcZxbsU7qjqivT4EqH9bS9Imyb7vGV6fUMuxfmqqsCzDAUMFvMDu7Pjq28u7gEjmtdH2k36lpuSikBtzwdZ1fCPzQooGFm4GA0f1m6ilL2asncf+MezWpKpKHz8KEvQsG0vzz5VXhmR+gaw0TV1R6TFz7XWYlfYy/joMH4X+zAPRqzJGKI43HsghIbjKXnmknlk6mPtiTOJ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D04/gvmYi58/XJbV3pSX559whz7vTw3GDGFLlfFf7Bc=;
 b=A2DvcE2jJf1EgC0v1+ypTDL3cq6Grg+q+AJNlsNkTUcT4k3nLOtV6xFXNq2Ofsb78HDSS5LzwxxqcDw1BhPphFL2qOXzUYrtmhfcjZX8bddGE19hQv8nxzUwXXd+t1YJLvGz98oAsRtS0sCJtVHBuGfAMcC3DF/XlLzcOZxnpF83ZCLicpWAlgiQX+VBQNPceMCfO+W9YECEvdzJvxGWuWFYjf0f0LslEG9yLSECLS3gY9M+AjNrz38W7ab0lR28k5iNbWYcAvyvdsY80qWRKRgGU8e+nZcWCK2xPh/XKLmJPl6MeB3XrqNfbjGxw93l4W/DATwcC7hEVOIgLcz20Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB5114.namprd11.prod.outlook.com (2603:10b6:806:114::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.20; Sat, 19 Aug
 2023 03:50:51 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::cc12:ab15:1d0:af79%5]) with mapi id 15.20.6699.020; Sat, 19 Aug 2023
 03:50:51 +0000
Date: Fri, 18 Aug 2023 20:50:47 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <u3gp2h6tgwyho6b2u5kammmpw7tgi7lv77dwpquqrnbxanhgvg@ldslri55x356>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-2-luciano.coelho@intel.com>
 <SN7PR11MB67503D9744E5F01AFB48DB86E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
 <dd9c0014d0a019a326da29705adf548da32f4e32.camel@intel.com>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dd9c0014d0a019a326da29705adf548da32f4e32.camel@intel.com>
X-ClientProxiedBy: MW4P223CA0014.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::19) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB5114:EE_
X-MS-Office365-Filtering-Correlation-Id: 88a4f348-86cd-41bd-e528-08dba0677af1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PkgO4/6T85QiFjD809lFiZf8L5KGURRExlX6qSKSqqTUNxU9mEkNeWRC8SIz2aKV8yFeod5YfWbjZo2GlV5fNJWFfUIwD1wrZLbJc5w7ICu7PaayR+ajImSNK0kyM52+ADI9CNT/4uQVt3PYSLfkeUv+pvkl3m3cgKG5V/Jw824H1w25Mf8auzafl/BAZqPkNyn8vlVszhFC4C96Ky8PCppugOzlt0zzO+7OZjVs4AGhdZDUJmI+CTV34BOvNW8FqWTs7QouIpKD0+3EZJElF9lbVbr+UpTfe+em9E93FNLVBwaGCrJk2x7tJSPA6BiVv2uMBpWFBHDaMURNcfX2ZkN+ZZKARQdXwYjgtUC8mKBCvS+2GaU3CZ8/AiLMA2OLHZzkBK5CHxs5xHFAcmQrO1bZcYs31eSiOkMQtRHrbVDB+vCeb2q+t43a/bflaFCZesLj/74VN0Hg2t1RxYVbSFebQoviD6rMwLRAlvUAI/uXGY5gb9zfFYhb84ySgjvBgM/dy8kRz918SxeVBfYXcurG/TlY+Ovno9Vhcxdps81RevhPKaSLmjFKD9KhqsT5
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199024)(1800799009)(186009)(86362001)(5660300002)(41300700001)(6636002)(316002)(2906002)(66946007)(66556008)(54906003)(66476007)(8936002)(6862004)(4326008)(8676002)(478600001)(82960400001)(6666004)(6486002)(9686003)(38100700002)(6506007)(6512007)(26005)(33716001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHo4TGV2Zmp3aytva3NtcitiK0lqRVFXV2NESTUwV2l6UkJabUg2Mnl1ZzZu?=
 =?utf-8?B?OHZXZitXa2Jqb2xZNnhBRHlZamI0ajFFWElXNHhGSncydk1kOEYvRVp4WC96?=
 =?utf-8?B?QlcxM3JzWmdZMDZQa1kzdE1PanBwSVBBN282cmx5bG1IYVFpU204cUpFY3Vt?=
 =?utf-8?B?RU9WOSt1MENCK0JBbnJjczBKamttbG14aWczVWlCejlGUXc5S1VqSXU1dm1u?=
 =?utf-8?B?bTgxVGxidTFYRkl2aGZLcUpvdDkybVl0SUhORDhKZXJrS2JpbDZwdDRwbytF?=
 =?utf-8?B?MWZuSUdVTFRsMnd4ZGJFVnBJNHpPTXRpVTJsSlJYZzNKaHBBOS84Q3grVW43?=
 =?utf-8?B?NWVCSFJlcVU4TTRXMjh3RkFtRGV3ZThURFlzOSthTEVKN1pvNmlBQ01aT0do?=
 =?utf-8?B?ZXcrZzBVV3BNcGZ3NFJpWUt0Q2IrOXA5alQydWMvUkNieEF6ZTRGTmhDcWd3?=
 =?utf-8?B?SXFlNzJvRGM3UFRYemxvWGJqdnN6Y0RxNkgyYWRVbUNFMjI5dFQvU3hrUElC?=
 =?utf-8?B?NWZoemdmVW1SS0lyYzlEVC9yMWQxUFZzQ3FENU1SaHNVM2RKRVorMXpGVkNX?=
 =?utf-8?B?Kys1bVFhdGJMQkt2TjdrNnh3QXpDWHVzdDdnT1U5VVQ4emRRWG4rMWtCWmNs?=
 =?utf-8?B?VkxWdWFZY2FwbUR0YnpjZzBjOWF4aDNEMTRSQzQydzdNcnNobC9HQllQa0k2?=
 =?utf-8?B?TVljdGhuaitwSlhJb3pDdmxBQWdKd2N0NWFnUFV1UGtwR2dVMFBpbXVjZ284?=
 =?utf-8?B?bTRrNHRKTGxzVmhJNG1KMURHYVZTTjg5UW9rWm5pSjU2NytwRXpwc0ZOSG91?=
 =?utf-8?B?azZvTGo5U3M2L0FYcFUrUWt5TzlFdDRPbmtIeDFaLzdkTlhLR0lqMzFMTEgy?=
 =?utf-8?B?cEVmUEYwNXBxcXhuM2lhd3pKZGo2ZkRONGsrUnV1aHlFS09yVHB3VlB1RmJ3?=
 =?utf-8?B?VzNCblQxSlBTMnhvWkN3Sm9STDd1aldLNVV6T0xwV09ySzBtUG91ODBoZFYv?=
 =?utf-8?B?YlR5dWkrRDZlb1RzSW95ZXd0RVZmVTdHNTRuaGE3OXFvWHFVdEdaL05qODA3?=
 =?utf-8?B?Y2F3QWxmYTlBbm1wYmQvWmJlZldnTnlqRHlqaVhJek9RTVBnN0M2OTUyclpm?=
 =?utf-8?B?VjNIRmFqMWRYTElXQUF2SEV0VUpqd1RVaXozYjFxS1hrTWEzQ2VRdHgrMEVt?=
 =?utf-8?B?aVNDRFEwdjhqZy8zdWlwQjRJTE0rUEhrU0FWZUFHbGJSdGlpSklkSFp5QzZN?=
 =?utf-8?B?Z1lnOVdjRk9MOWJMZjJDeW9sY2pIQ2dIcWwvaVJGNERDMFRSQ2p2WkV5Wldu?=
 =?utf-8?B?RkdOM1F4SXJsU0xHbmdyZGpUd2RnUXVZYVhyb1IrOXRVQTJDWERNcVlITzRv?=
 =?utf-8?B?eGF6THEzNjBxbGhybFBud09mZWNZWVViTjc4a2dWTWczQVRkWUI3WTlLN3pj?=
 =?utf-8?B?T0JOa0dQQmIyRENsR1ZvRVd6WWdQRThGUUpScHUxT0U0MEJzbVB5ZzVBVE1v?=
 =?utf-8?B?am9Wb1RPL0w4QTZkQS93WEFXeWNaYXpjYktFbHJhdFRzVTJ0WVVSbk5TNW5Y?=
 =?utf-8?B?R1ZoTndHMTRBNTBqOFc3bFlXVnZyOTVkMDVBUGF0dGVyYjZXOHZiZlUvb1Q3?=
 =?utf-8?B?dGZtNFlxODl1TkZNS2M1emp1K0JmdGRTQnV2ekoxY2p2K3d4MEpobHVickw4?=
 =?utf-8?B?ZWNPUVdibzFLeElBWTUyUG5zSHJYUXowVUp1ZGNPOW9nNmpyVi9sc1ZERXQ4?=
 =?utf-8?B?dXFCYVFyUDNjT0RDZ3V5cEgyV0dJY0Q2RE5uV051MUdmT1FneG41d0VQSDRH?=
 =?utf-8?B?N0pqQlBFRUo1YVEySTYyMEFRMTBrNE4rOWhFZFFwd1dVTGU5SDRFSFhhVThx?=
 =?utf-8?B?WmYxM0xFSGpLajZXWkNCK3lVVVA4NE9NR0gxbTdFN2RCY09na1d1cEFrVks0?=
 =?utf-8?B?NHhLbXZtNmF4UGo0QWVyYVQ3WmMrVEhFS1NpS2QvdmlNdFp5Yk9vRks5SUlQ?=
 =?utf-8?B?OWVZb09sdGk5RmxKZUlHTFpvSSsxNC8rNFpBL2I0U241dTMvUEpicDBpZXBr?=
 =?utf-8?B?YmxYbE1MMkVJdmdSTTJXVitSelIxd0hlc0plNDhuTmZPcUd6TGtxY2R2blpC?=
 =?utf-8?B?OU5uYjlaWFc2dEE0U3oyRkljUzB3Y1pRSDJSWmw3N3doTjVLN05zYjkrcGtW?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 88a4f348-86cd-41bd-e528-08dba0677af1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2023 03:50:51.0193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N0VHR/QdezszvbG2ynAbP5OpQoEFZDO1d3hNGvdvNhFSRPWlV1Y0OeKPJd6ra9CP9hGq3M2AFuOk6Fsyfz6aQ3kyk2ikqCBuOJtx9/pxv3k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5114
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/4] drm/i915/tc: rename
 mtl_tc_port_get_pin_assignment_mask()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 16, 2023 at 09:08:44AM +0000, Coelho, Luciano wrote:
>On Wed, 2023-08-16 at 08:13 +0000, Kandpal, Suraj wrote:
>> > This function doesn't really return the pin assignment mask, but
>> > the max lane
>> > count derived from that.  So rename the function to
>> > mtl_tc_port_get_max_lane_count() to better reflect what it really
>> > does.
>> >
>> Maybe also add the version changes on commit messages here as cover
>> letter ends up getting discarded
>
>Ah, right.  I discussed this with someone else before and we agreed to
>disagree. 🙂 I don't really see the point in having the change history
>in the commit itself for the mainline.  The discussions should be
>openly available in the mailing list archives, so duplicating it in the
>commit logs, IMHO, is moot.
>
>A link in the commit log to lore, for instance, would add much more
>value IMHO.
>
>But anyway, since this guideline was already in place when I came, I
>will (almost grudgingly) comply. 😉

some people want them, some people want them removed. A lot of people in
drm like it while people outside will shout loudly if you add that.
Don't let this hold off getting the patch into a mergeable state. 


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

It may need a rebase though.

Lucas De Marchi

>
>>
>> With that fixed
>>
>> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>
>Thanks!
>
>--
>Cheers,
>Luca.
