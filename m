Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 245C564D79D
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 09:17:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62EEA10E4EB;
	Thu, 15 Dec 2022 08:16:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A298F10E4EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 08:16:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671092204; x=1702628204;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=zYtkXdk9rfOj7gWGOCcF4rpLmwcmwAlrjKHJfW0plSw=;
 b=UjSbDmZ7t9KdL3pv8Hww4y1dvjw94lZUYTqoTPNJh63O037w7/TjMUZa
 1RLmByuIetUxZlyIKa189QE7ZTsBuQ9ZmdH7P/2BnIpx+ETPW4MZZ5kPX
 wB9BkBupuwX8d4xYgcyAAMbqc7977m/a+QY2y4nLTyEoOdPM9rv0DO17D
 eGacCwBvrgRd+Ym0R7y3bGQeOIh1zMeq+NvLRwSMy7PfzUtIDZgjVmCI9
 QgsXUJFpy+NLdlQ3Jb0gT+gC+3IqxajXE2G/CePq77soTVx0yKZVl49Go
 66jrpmamVuD7DEP6FQEDYHHgFr9zO9yJBDJ3jX7poQx/QAwlCKhb5Mutd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="319760391"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="319760391"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 00:16:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="894646116"
X-IronPort-AV: E=Sophos;i="5.96,246,1665471600"; d="scan'208";a="894646116"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 15 Dec 2022 00:16:42 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 00:16:42 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 00:16:42 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 00:16:41 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 00:16:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z1m1duJ73BzxshKvKfRtS3CA/s+nffylavCr6b9gXVMLbmbimifTkBGPKZzGoxG9kdou88bsAUgb7TmMvl5GptaPYlov3dC0xEmfo3AphatwqTP2Kg421QMQnJfM7WgmDbqFPte1MWRrh9Eq5+s58T7r4WRde8+uGreY0STS1LTmDmH6VbLc1dTj28eOnS/LiOIcwTb7iEH3NX7JQcVz5w2u2BKlymoRopyEh7Db8iTzo6U2ZPi9QZtkMCZk3lk997iAggYFuQEoliziA1PEXOGkucZPiYiVSOzouI2Dreolmk1S5raPhyJe0YHztWi/0dhFb3kZtGWr3PBp4xhgfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tzTy0KAjauVzON44VxRBsj911CczPeqMZARwYUnyLBo=;
 b=CIx7Q3IDpjXv9xwQjRbSY8RptJP3j02CLXsbePZ7VjDFdZphOgWugCjwj1695bLoMiNn9CFExDJT8QBeRjRbkYP7/xwWBeLYH8J2cvO9sEW567bEecp5UZtY9ZKjJI9gOFMKTehVJlAAruQ8rFkMoJIC4ZTnxrFpLPueO9PmYCL5YPM2mj7oH5PWsC/qquxOmzqU0Ocjde9bfRA+l9ko3HaQrmM8PuNqIwmIZvdiAYuxDUWGLxkqaeNQmtFiT23l6bSCfgLaL/XMAqJlSsuhJWKKsZlN73+Euqk7y91WuU4Fr31aetJS2URNhU1ToRC3nBysCTqpb5nJD4GfJ/bBMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5474.namprd11.prod.outlook.com (2603:10b6:610:d5::8)
 by DM4PR11MB5264.namprd11.prod.outlook.com (2603:10b6:5:38b::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.21; Thu, 15 Dec
 2022 08:16:39 +0000
Received: from CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64]) by CH0PR11MB5474.namprd11.prod.outlook.com
 ([fe80::ef2e:ffc8:a4c7:7d64%8]) with mapi id 15.20.5880.019; Thu, 15 Dec 2022
 08:16:39 +0000
Message-ID: <d87268d4-afff-9941-3209-884f17b505ca@intel.com>
Date: Thu, 15 Dec 2022 13:46:29 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.5.1
To: Matt Roper <matthew.d.roper@intel.com>
References: <97b42ba0ae91b1ed6feb6e5c090bff2445719bf7.1670311877.git.aravind.iddamsetty@intel.com>
 <f8cfaaab25f700b1826eedeba55d68334396e92a.1670311877.git.aravind.iddamsetty@intel.com>
 <Y4/U+F4pu5L9L3bP@mdroper-desk1.amr.corp.intel.com>
Content-Language: en-US
From: "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>
In-Reply-To: <Y4/U+F4pu5L9L3bP@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0191.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::18) To CH0PR11MB5474.namprd11.prod.outlook.com
 (2603:10b6:610:d5::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH0PR11MB5474:EE_|DM4PR11MB5264:EE_
X-MS-Office365-Filtering-Correlation-Id: a8746226-d7d6-40f7-dcdb-08dade74b031
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PpWBkF+W/lc0n5ZnRtJqwPh2AyMn3Hwupu7MYNju6CkEIblkdnzY5U0pIbG9/4Z93zbhz86TjXIXV46AIDoOwpAN4F+WLBCxdJzh7RDgozIO02yV55QT45tpgT8E8THFhP1Y2By5V5PxuvSKThr/KyzNzI7mqHKaofMHBxf0vZd10F/GNx+Dk5sb9chePm+AP95O6uyKQ2A/Zaoq7CzDdm7UOygXs9CQkh8bZWyE+bbO8WmZ7eIHhpDJch8nU8mAsIeJL0+/5JeCPJwpI2TDHwDHfnkJRTOTCIZYAW/2dWPQW2CBOg573mvGLdcpOjbujaxnzNqSZSljJ67NH71n0ypS71QH+NBXKPkOGZa6gZYHmqEF+xaP+BO/Y0plNLx4pCfyCGZbwO0LkL7XyE3Kk8B6eqIHrvVDWaEehff8favTOt0Xo7H8ZNbDxzm5EXFHlUWpFlHs/Hp+j3yMga6w+GLkAPw+f3L9wy7z62KPCtu50SsmuzEJT8RELlu0CdcMB5eodZXpRa8cArU9nn1h9JqIOnygUMv8DZMr618XibDDUK0PCuAGjS26fOz/HOxF/pn8h5uwWSfSd7LtCSbWr4IRnqvKMiptn+sCk05nvSBAwor/36oB5hZNCR9HRlcrd0ejeGUT7mpuSm9004ISP+XMtOBzOAcDEJZMbf1OCyBfGp0hxEZt06V5bu5JPUUuIZAVxmgweqNRvHLbrA2/8d2g/XVup/RiATDiK2CLWWc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5474.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(136003)(39860400002)(451199015)(6512007)(38100700002)(82960400001)(54906003)(26005)(53546011)(478600001)(6486002)(36756003)(6506007)(41300700001)(8676002)(86362001)(66946007)(66476007)(66556008)(4326008)(5660300002)(31696002)(83380400001)(6862004)(8936002)(37006003)(316002)(6636002)(2906002)(186003)(2616005)(31686004)(6666004)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXVKQUpqcGFmdkRBQVNWV3hKTFBPbkIvMWhtdVNYZ0NMaWE3UDFpR1FLckk0?=
 =?utf-8?B?Q0dkUjZ5eGoxaVFXdWVla2FDVEFKVTAzRlpwYmxhTmh3UUVLdEhHeHRZdE5z?=
 =?utf-8?B?NExjZ05iWEtmQnFFUzdhSktaT1VQZTVSNXB4cjV6aFRIcENOdWoxd1RNazRz?=
 =?utf-8?B?dU5nNHNncm1DTGRGcmJqa01oYlRiWHJIWUpSbDhnNmU1M3NvZGNJVjBPbkVH?=
 =?utf-8?B?UmNrOXBHV3NDSC91ckRRMDdGWnhTeTVZNklCcExOSXZHRHQxOTk3ckpDWVRa?=
 =?utf-8?B?VjA0Q1poZDZ4c1JtWXRWejFRWW90K281WkhFZXcva0liTU9wK2YzODhLelln?=
 =?utf-8?B?S1VYc2NzUjRSNGNiZU9IUDdzVUhFQUVOdGZDNFFtRUNmL3VTYk5YNGlzUXBG?=
 =?utf-8?B?dkx1aStZWjkxeTAyK1JXeWhUakdNUlpyQ0tvT05vQnEwVGRnVWc0emR0NEs5?=
 =?utf-8?B?aXBvZUhrT0Y2ME11VysrVTdHRm85V0lHbVRMNXVYTlVGNXJDSEpTNWo5ZTVU?=
 =?utf-8?B?MDZaMEMvTlp4Q2I5VENMd29wbXZxUU11K3gxZmF3OUhKUk1WZjlwYzJDWFJz?=
 =?utf-8?B?TGlFVkJZMks3dGFzRlA0WGhQQnVuNzR0NXV6STlBb1JBa0dNWTBUUWVoZjJz?=
 =?utf-8?B?MFhGMkRrdEZOTE0wWGMwN25hWm4zaU5WRWlsdmhkNnpjNlVkZnZhWTJEMHB3?=
 =?utf-8?B?T1dZWnAxZTF1QnBDWGUxNTVXQTNSUzBDaFFxZG9oU2MwL01jVXp3SUhIU25p?=
 =?utf-8?B?K0QxSGVwS04razBRcFUyYWN1dGFjUzgyZVZ2WFJ6TFJtNFlJSE92MWR3M3pz?=
 =?utf-8?B?LzBlLzIvSDdkMTdUTnBPVUx4SHROREpVc2NGMUgwOE1vT2ZDeVlENEd2NDl0?=
 =?utf-8?B?TmNzZ3JLTjNhZnJ4R0QxaFdQd0EyVEpTYTE1clpyMzNXUFBxYVVuajIzYld3?=
 =?utf-8?B?WGdqZGh0YXZNUVpUUzZ0cGRGTThRZ2FvUEgyWWJGUUtXNmdocGxkdVR2SU5O?=
 =?utf-8?B?bi9ZeUtaS3hOYjhBMWtPNGRpbWptdnZvRHdxSVBCd3hKaWlJZHBINFFOS1gx?=
 =?utf-8?B?SnY3K1A4bWRnMnpyZTRvU1VqQU1WcFhBazdOOWVTY3VEODdWZHF1UHFzWGVX?=
 =?utf-8?B?WjhacFQ3RVJ4Rzg2OU5lVy9ZSGJkNXRjYzFObUo5Y3M0dlBkekNOWmRZSTkv?=
 =?utf-8?B?TmYrMzM4VVpxYzN0dnY3aUJxaVR3MUJCN2JHclgrdmFxT3pCc0RMZHVyc1Zt?=
 =?utf-8?B?NXBhcitiRjZxUkR6MG12S0thZVIyc2VNTnJ0NWwxVmRUQnpJY3lzdkh5eVEr?=
 =?utf-8?B?a3lPdHVOTDJNQ0lMQzRqY2Y3ZEhhRXo4YU9pUVcyd2EyMEE4Z2FPd21SVTFt?=
 =?utf-8?B?Vm5XbG5uUUI1T2dDeHMyTlQrMGd2amZjVlpPMWJWSFdqelRYQjY5dlRjVUxJ?=
 =?utf-8?B?bVNRN1paaEtXZjVHRUFMM0F6MVFhWkV4TTBBM0xEUG00NFNQSVlUYytQaDFK?=
 =?utf-8?B?RW95VHBpSkh6V2tjeGdwMEFRclZYakZWRCtFUWljMXdBQzdYb1ArYkZSaGlX?=
 =?utf-8?B?bGlqM3hnQ1dkTW9RdEpGVHVxMFNRWk9LeFJVVURHZUxIZEhrMWdBRzd6eHQ3?=
 =?utf-8?B?cTZiWmtsVm8zQ01nVEZib0xoZkN1TXE4Zk0yYlpGeThjS1BGZy9oWFJTUnVi?=
 =?utf-8?B?OVhWelJkNkY5ck5DNGNIa3ZZanJUOUtXbE9KTlAzNGg4MnV2R0I2aVlqZkxr?=
 =?utf-8?B?WGdlTDMwVk1OZjM1bnZjRDd6a2ZpOWE2VFRleHc5SUwzN0huWXRBa0txYjl4?=
 =?utf-8?B?SGZERVZZWmx0WU9mYzJwS3B4VGR5dDRiSSsySEV6UFRlR1hKR1VjUWNQNVpC?=
 =?utf-8?B?ZnFMSThDdUVwdXk2U3pCSjJvY1pTaUhjTHViYkR4akRJcHFEK1U1Wk5VMzho?=
 =?utf-8?B?QWZBK2FYbW9EaGplRUU3TWVhUG5rTDJIcUVBL3ZaSGZWOE55b0NzcnZ6TzJD?=
 =?utf-8?B?M2N1UHRyaC91OWZxeFJUSzF4cFhNa25tTDgzZkh2Ny90YXZhUnRTWXY2L2N2?=
 =?utf-8?B?RytSMXlWbFhTT1NodmV2VlRpVUsxMU9aNS9uQS9sWHFvbDI4SEROTStBMkRH?=
 =?utf-8?B?eTlETzhTanZaS0FKNUNtd2hkbzRUcEY3LzFHRk5TL1NZMlp1YmRNeUlTY1JJ?=
 =?utf-8?Q?4/nEJHSiB+R08qV1QxTvons=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8746226-d7d6-40f7-dcdb-08dade74b031
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5474.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Dec 2022 08:16:39.5123 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 37uMbS7WRiwPWln89murJbp4sJP7lo34wifny8OJIwd0GWNJNKZzIJY9j7LUVZCrA9fJWTCg5E3xag6bzSTDyPFOeIVAK1OkC2CC5iZwxLQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5264
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915/mtl/UAPI: Disable
 GET/SET_CACHING IOCTL for MTL+
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
Cc: Pallavi Mishra <pallavi.mishra@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 07-12-2022 05:19, Matt Roper wrote:
> On Tue, Dec 06, 2022 at 01:57:39PM +0530, Aravind Iddamsetty wrote:
>> From: Pallavi Mishra <pallavi.mishra@intel.com>
>>
>> It's a noop on all new platforms starting from MTL.
> 
> To me, saying "it's a noop" implies that the ioctl will succeed and
> silently do nothing, which isn't the case in this patch.  We're
> explicitly rejecting attempts by userspace to use these ioctls.
> 
>> Refer: (e7737b67ab46) drm/i915/uapi: reject caching ioctls for discrete
> 
> While killing set_caching/get_caching is the way we want to go, I think
> we need a lot more explanation of how cache behavior in general is
> supposed to work now.  I believe the plan is that userspace will supply
> the specific PAT index that corresponds to the behavior they want via a
> vm_bind extension?  I'm not familiar with the details of how that will
> work...does that mean that the caching behavior will also be tied to the
> specific mapping of an object in the GTT rather than being tied to the
> object itself?  I.e., you can map the same object twice with two
> different caching behaviors?
Like i mentioned in other email part of this series. The current plan
atleast is to set the caching for an object during creation time
depending on the platform so for MTL it would be UNCACHED. The PAT index
setting via VM_BIND is yet not planned.

Thanks,
Aravind.
> 
> Is there a uapi RFC document available yet that describes the high-level
> view of how all this stuff fits together now?  If so, a reference to
> that would be good to include.
> 
> 
> Matt
> 
>>
>> v2:
>> 1. block get caching ioctl
>> 2. return ENODEV similar to DGFX
>> 3. update the doc in i915_drm.h
>>
>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>
>> Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
>> Signed-off-by: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_domain.c | 4 ++--
>>  include/uapi/drm/i915_drm.h                | 3 +++
>>  2 files changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_domain.c b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> index d44a152ce680..cf817ee0aa01 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_domain.c
>> @@ -291,7 +291,7 @@ int i915_gem_get_caching_ioctl(struct drm_device *dev, void *data,
>>  	struct drm_i915_gem_object *obj;
>>  	int err = 0;
>>  
>> -	if (IS_DGFX(to_i915(dev)))
>> +	if (IS_DGFX(to_i915(dev)) || GRAPHICS_VER_FULL(to_i915(dev)) >= IP_VER(12, 70))
>>  		return -ENODEV;
>>  
>>  	rcu_read_lock();
>> @@ -329,7 +329,7 @@ int i915_gem_set_caching_ioctl(struct drm_device *dev, void *data,
>>  	enum i915_cache_level level;
>>  	int ret = 0;
>>  
>> -	if (IS_DGFX(i915))
>> +	if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
>>  		return -ENODEV;
>>  
>>  	switch (args->caching) {
>> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
>> index 8df261c5ab9b..3467fd879427 100644
>> --- a/include/uapi/drm/i915_drm.h
>> +++ b/include/uapi/drm/i915_drm.h
>> @@ -1626,6 +1626,9 @@ struct drm_i915_gem_busy {
>>   *     - Everything else is always allocated and mapped as write-back, with the
>>   *       guarantee that everything is also coherent with the GPU.
>>   *
>> + * Starting from MTL even on integrated platforms set/get caching is no longer
>> + * supported and object will be mapped as write-combined only.
>> + *
>>   * Note that this is likely to change in the future again, where we might need
>>   * more flexibility on future devices, so making this all explicit as part of a
>>   * new &drm_i915_gem_create_ext extension is probable.
>> -- 
>> 2.25.1
>>
> 
