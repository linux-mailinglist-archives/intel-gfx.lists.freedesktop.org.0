Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A156F000C
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Apr 2023 06:06:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE76010E0B9;
	Thu, 27 Apr 2023 04:06:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB9E10E0B9
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Apr 2023 04:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682568394; x=1714104394;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=IB7qHPEBQvFJlo76zhD2VBhLyM3FoGw8vVztRJ+6gi4=;
 b=OPBknsEx6cx5U8NpH7KerN+HlM/BR9tuX2udyWiL0L5OMZ6VZE/qrE5a
 5Ib8zp7LigoPKz+Ml1uRX6UUFy9RUJEZTjIRxTjHbKQST/jVeYZXXBwpv
 d7lCjFELpqegJz8hNC5Zt6DVX0+x3blBBRkXG5uzIVkEIIHK/ZcI0dqCy
 Oxs1e35PIec/a4bv68u8ueXPHJh0H+06lmMsHRj6EvZ+46IeEPn+f0DTc
 sQ+CiGfjVtKneso92X+ALOt01RjsvS8xcsenv0SHOLo5RFUVoOnrj97aX
 AsdJ7lkmXUAJvR7k7NiIF0S/WmxPix06t+B6l1TJ6eUORlmxKJqAIuHPs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="349267770"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; 
 d="scan'208,217";a="349267770"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Apr 2023 21:05:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10692"; a="838206906"
X-IronPort-AV: E=Sophos;i="5.99,230,1677571200"; 
 d="scan'208,217";a="838206906"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 26 Apr 2023 21:05:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 26 Apr 2023 21:05:57 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 26 Apr 2023 21:05:57 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 26 Apr 2023 21:05:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WAyi2I83EUnFBt/UV22n0M/jKTU0yj5CKe1bhUYAo5KO4l6OtSetd6hDucIrzTFbm4ctcN7nJFM14CjH5fylSQlPhO4jo+fdqSh1lAFcSy7lB337N//aADjyy3hjWHjBRSLM/AvuyDrQag+OXh14lxxBn/FcWAdv3JysDMBITCJm0pqe5Fhv8C5pWqfBGYbin6Y9+zbMOB1JifJBFFlIYHPh+bYTiTNXdB4+aS4nQoDBmzQht/NP/cUexG1MB5Jo12Dw8WrhNmezXvrjOJlqLGlWoGQff/Xk1hIhM7KCD3Y4QpciE5kzJdzk2lXNS95ZW730q+xDhM7GZkpc/D14nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKDlkqYP5QO0SE8F0J7TVy3xXs1XX7T87cwpJo+kTP4=;
 b=lJKgMkrsl4R+IeMwmYYAwKmnVQXL5EZ7Lvl0SyZgh542PDtj/t2SnsFtwabjZ9riYfUukGbIenfx5sOdRVQUnGLqdNJIYvOOb40ApBUv/QRJJ0r24CQFJbUODhvH7lxXt/sBiKdPbkw/+SDXjh6N52hirciq56kCHkyPMWdtaHsE4kYebK727i5ntv+OzX/1Jme+/XG7e3SUHjveSSFhRvf7abVyoixOkDtyzvx9Z3fyUKM263Gl4Ry3W5U7ylnu/QEXRUobFHQUYNxLCnrjlzTQJUTQmyrSDFNyCALZeYC8lVf/fmeIq/kGsUvvbZyA5axrOTqSPba0VaOrYEYYjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4274.namprd11.prod.outlook.com (2603:10b6:a03:1c1::23)
 by BL3PR11MB6313.namprd11.prod.outlook.com (2603:10b6:208:3b0::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.21; Thu, 27 Apr
 2023 04:05:53 +0000
Received: from BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::3721:5:721c:79ae]) by BY5PR11MB4274.namprd11.prod.outlook.com
 ([fe80::3721:5:721c:79ae%4]) with mapi id 15.20.6340.022; Thu, 27 Apr 2023
 04:05:53 +0000
Content-Type: multipart/alternative;
 boundary="------------H86moZ17Qz0q05F5cDhFNzGd"
Message-ID: <66bcde18-d60d-1194-6b83-f871def0a393@intel.com>
Date: Wed, 26 Apr 2023 21:05:51 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.10.0
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20230426003942.1924347-1-vinay.belgaumkar@intel.com>
 <168255800737.9053.17904526558692877629@emeril.freedesktop.org>
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <168255800737.9053.17904526558692877629@emeril.freedesktop.org>
X-ClientProxiedBy: SJ2PR07CA0008.namprd07.prod.outlook.com
 (2603:10b6:a03:505::8) To BY5PR11MB4274.namprd11.prod.outlook.com
 (2603:10b6:a03:1c1::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB4274:EE_|BL3PR11MB6313:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cddfaba-fa2b-4df5-fe8e-08db46d4b1d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NjyJGOrWZbZ5I5I8J2Ed/sq498pDGuxzrKooon0zuvCt3FWX6wElHjQbpLkKGz1NWu/OU2Au31WintVNws2yWe5Ix1i7PWyxMRNXIx5s0srxd3Uq7eiqByRi8pt173112dvpaYCTyO9w8Mpe0zZuP1jt2lRLcGMj4femit1qP14CmXJKxeLqD6DPse3PIhQbKuKHkrHTTjhOAdr9Zod0wo+7q3IhVxFsJpKPjmcZbe01uT65dcySw1PfOZW8QjM2Eg6IytxpYLbYUIO0WBeITdSI4zSqtMAIESX83hORDkBqptQYTvb2lVgHXk+JD/FAqDPCOkbcteIxiGL5piTrz6LgJVQWyA8gTCnhVwUN5IlpsDRHQWoF0Ag2mKNrKTBrvTSQ3QYohBYxUa66qN7H6FjwYou4n9E14oADfX3xfT640Si7/8ymeH2ALKNklhZMKq+0idjMsuP5+DCUGqDEhM0RXQqHHZvHaJG2jjHe3sx9KkR1Qj+fsqa4fMJSXQNH7n13tZ03wj0OpDWW9JEa8k9QMS8ln4vxbDPoFsXoKQ634WPDPiCRoHQmOZQfnSC3P3yCkZwV44YwgxP3MajcdpR8rVHx9iH317bxqz4WlBBsppOg2UcebT7Mj0YDwJrnjSxVzCXD7iYRj1jj2NoZUNrzCdbshvQGqWVOSO3dnyo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4274.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(136003)(366004)(376002)(451199021)(66476007)(5660300002)(8936002)(86362001)(38100700002)(82960400001)(316002)(66946007)(66556008)(6916009)(31696002)(41300700001)(21615005)(2906002)(166002)(6512007)(40265005)(186003)(26005)(53546011)(36756003)(33964004)(6486002)(966005)(83380400001)(6506007)(2616005)(31686004)(478600001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVdrdzdOei9aZXZsa3pCYjJYakhKMlhlaXVDR1RxMFlDeVZwbGVUSnpla1ZD?=
 =?utf-8?B?SDJhZUFPSzRldUJZRGRGSEZHazBRRjBvQW95aVlxcmdFVFQyNTd5Slh0cm9J?=
 =?utf-8?B?dHovY1BYa2tBOTVMZGNWbWEybEVvRkFoVEIxKy9WYkw2RTIzZytMb2I0SGVt?=
 =?utf-8?B?WFdHMC9IQVhzWjNLb3REY2JhdERKNFk5bVVsSzVPQ3dxSncyalJkRTBFNzNr?=
 =?utf-8?B?YXpZQVNVbmYxUzQ0Rys0VEVOcGlLY0doclE0OC9CNGVvc3RKN3dqQUd5dHUx?=
 =?utf-8?B?UzNTb1VRVzE0WHNhVVVSSFZhQ3BuaXhoOHpUTk5tMEt2QVRiaitjTWk5OG9v?=
 =?utf-8?B?dDgvVk9JQVdJa2VyOTl6Mmh3czNVNXE5b3lnNWM5NVBLeUVpOGdBT2EyUEQv?=
 =?utf-8?B?S3NoSklrbzAvTkdEOHBERFFqM3BYYUs0MHVLVGhTRjNhTnFwODR1Ukk2OHJT?=
 =?utf-8?B?cDZwTEhsek0zNk5BOFNINXg2KzlCSG9Rbm4xbzlBL2VhTXNSMGNQVDZadEIx?=
 =?utf-8?B?Z0wrTjhyT1RBRWJtUzRaUlVSdkJaSUJsc085SFQ0YXVqSnpqeUlOUTcvdnRI?=
 =?utf-8?B?MkhIMG5hN3hERjl0dmZCSDF0NDFmb1hFMFFPdGdPV2dONXVVV2p3NDJPNnRS?=
 =?utf-8?B?R2pDbzJZaTFHRytyTFRkL3JFMDgrTzd4WjZnOVNFeEwzN3U2NERqMlhIdU9I?=
 =?utf-8?B?VWl0ZGphYVVWVTAxaGFyMUdWYnR5YXhUSFhVTW50NUJLUFJRTElTbGxVbklU?=
 =?utf-8?B?bGFtbDFleUVvc3Z4eldOcnN3QXNDOGpjdXlPQlIxa0lCcHVTaXhqUFcyaTZN?=
 =?utf-8?B?Z0E2Y1RiOUhsOS9pQml0a1lVZnpXWTlrZjBZQlRia2F1OVZoQjJSenJQcjE4?=
 =?utf-8?B?Qk1maTBPRjJYd0xOZU01bFU3S0RxczZCUXZFRmZ1Ym9mQXNEMnlRVzkrQmlW?=
 =?utf-8?B?aGlLeklHSGFscGJpcE9WMTFvQklFdWs5TlhTTFdzOUFsSm9nUjNhb29xM1Vj?=
 =?utf-8?B?eUZOcUppTmZQTEtBMFk3RXhkYUg2VFRmU2lZamJ5azBaOGtxaUhXbjg2Y0dY?=
 =?utf-8?B?dGpocWhpbGFZTUNJbVJwSTNmRnVXSy9tTnRvVUpWamFvVTkwaE01N1RDMkg4?=
 =?utf-8?B?T1NCbkNDMEM5eGVZY0JXUFlmR3hZOU4zZFB5blJrbkpmdzhNdldUNFRGUjFS?=
 =?utf-8?B?Y1EvU2Q4NVFlYVhBMjhrQVNOV2lJWE1lMXdPclNsdWVvUWlZSy95NXJubVgv?=
 =?utf-8?B?SXVYbnFRbWkvYzBqZnMxUTJ1RmptaVRDOGNjTStRc2dJL2RoU1hXVXk4T0RZ?=
 =?utf-8?B?bnZPMWRvZUdjMUM5bzVIZk1zWmxkOUdvKzFQNmhINHZRaXZsamdEeWpnL2pl?=
 =?utf-8?B?c0czYURVSGFjZW9IMEprcjlSYlN3ZzVUT3Juc0tpTlROUFZYaWpqUFYreXRm?=
 =?utf-8?B?Qyt2TFNwVFI5WkJHS2VYcDlPSTVlaC9QbmpBdnkvbjlFZkExR1dkb0gzUWhD?=
 =?utf-8?B?UVNwRGNOMHI5eUdtWTM3Kzdjd1BDemlPend1NmlCK3BFWWtJTEtNTFlrTmk3?=
 =?utf-8?B?RTRyMUFNWXRjNURnTmhZOWg2b2huV2lBSUYwOERZYkpVRWdSVDFmelJnajlF?=
 =?utf-8?B?UEpQK1lnTktYcUlxRXhVRWdJb25GcStka3NKaDliRUZralBicVBIaUtneWp1?=
 =?utf-8?B?SFprWG15UmE5TjBhS2Z5dmNwRjI1UG81ZTRhZ0pUaCt4YjJrUW9kcE5kN1dE?=
 =?utf-8?B?bUdVUUhhY2VHWEVzMktaOGc0UHpqZWd6dDFoaVBOQkxlTUtPdVlhcjFSUUMz?=
 =?utf-8?B?OTUzQzV3WWtIVnlqWlRCa0J2dm5LUjdYMGxhRVFMNkQ3TkNBaUlrb2g2MGNz?=
 =?utf-8?B?bTdPb3dxd3hqNHY1UVIxejdtY0U4OXl1NlJ4M1JrKzIzYVlVWHVUZjE3QVoz?=
 =?utf-8?B?NGo0SXZmV1ZtaURSRWVMbmZSWTJpakREWUVmd05CYjFwYmZYczJCbU1HOHdH?=
 =?utf-8?B?dnBiMDk0clgyczNMOGdLQittSGJwMm5mMFdFQ01JcjlxUENHWWM1VVUreDNB?=
 =?utf-8?B?b29uczZpOG4za1RRUzhLeVN3NitNQTFGSWxjOEZMMStJYUErakE1ZkZCMGUw?=
 =?utf-8?B?YTJldWwwbHVMeWE3UGlqYUU2cWVIdjZuVld2dmFGMDBSVWhEbjdSamJYeTB5?=
 =?utf-8?B?dHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cddfaba-fa2b-4df5-fe8e-08db46d4b1d9
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4274.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Apr 2023 04:05:53.5611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3w5JRB56luma1dTlHvqsYQWuUFPUnWPPvTDopeSYGlpMX0495Rl7yB9f7qA5mDNSHcr4QuTpc6VZAb1nrLYxl7c9XQWmM5KxSYkm7UND2cQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6313
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/2=5D_drm/i915/guc/slpc=3A_Provide_s?=
 =?utf-8?q?ysfs_for_efficient_freq_=28rev2=29?=
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

--------------H86moZ17Qz0q05F5cDhFNzGd
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit


On 4/26/2023 6:13 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	series starting with [v6,1/2] drm/i915/guc/slpc: Provide 
> sysfs for efficient freq (rev2)
> *URL:* 	https://patchwork.freedesktop.org/series/116957/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html
>
>
>   CI Bug Log - changes from CI_DRM_13066 -> Patchwork_116957v2
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_116957v2 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_116957v2, please notify your bug team to allow 
> them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html
>
>
>     Participating hosts (40 -> 38)
>
> Missing (2): bat-rpls-2 fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_116957v2:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_suspend@basic-s3@smem:
>       o bat-rpls-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html>
>
Failure has nothing to do with this patch series.
>
>  *
>
>
>         Suppressed
>
> The following results come from untrusted machines, tests, or statuses.
> They do not affect the overall result.
>
>   * igt@i915_selftest@live@gt_heartbeat:
>       o {bat-kbl-2}: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-kbl-2/igt@i915_selftest@live@gt_heartbeat.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-kbl-2/igt@i915_selftest@live@gt_heartbeat.html>
>
This as well.

Thanks,

Vinay.

>  *
>
>
>     Known issues
>
> Here are the changes found in Patchwork_116957v2 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>
>       o bat-dg2-11: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html>
>         (i915#1845
>         <https://gitlab.freedesktop.org/drm/intel/issues/1845> /
>         i915#5354 <https://gitlab.freedesktop.org/drm/intel/issues/5354>)
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:
>
>       o bat-dg2-8: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html>
>         (i915#7932 <https://gitlab.freedesktop.org/drm/intel/issues/7932>)
>
>
>         Possible fixes
>
>   * igt@i915_selftest@live@slpc:
>       o bat-adln-1: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-adln-1/igt@i915_selftest@live@slpc.html>
>         (i915#6997
>         <https://gitlab.freedesktop.org/drm/intel/issues/6997>) ->
>         PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-adln-1/igt@i915_selftest@live@slpc.html>
>
>
>         Warnings
>
>   * igt@i915_suspend@basic-s3-without-i915:
>       o fi-tgl-1115g4: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#7443
>         <https://gitlab.freedesktop.org/drm/intel/issues/7443> /
>         i915#8102
>         <https://gitlab.freedesktop.org/drm/intel/issues/8102>) ->
>         INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html>
>         (i915#8102 <https://gitlab.freedesktop.org/drm/intel/issues/8102>)
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_13066 -> Patchwork_116957v2
>
> CI-20190529: 20190529
> CI_DRM_13066: bdd3e1a1625175c5a56bb850b986d478ea9fbf60 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_7272: b2786c0c504bb4fa9f2dc6082fe9332223198b24 @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_116957v2: bdd3e1a1625175c5a56bb850b986d478ea9fbf60 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
>
>       Linux commits
>
> 37444baa0ad8 drm/i915/selftest: Update the SLPC selftest
> cc3e89a3db27 drm/i915/guc/slpc: Provide sysfs for efficient freq
>
--------------H86moZ17Qz0q05F5cDhFNzGd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 4/26/2023 6:13 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:168255800737.9053.17904526558692877629@emeril.freedesktop.org">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>series starting with [v6,1/2] drm/i915/guc/slpc: Provide
              sysfs for efficient freq (rev2)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/116957/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/116957/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_13066 -&gt;
        Patchwork_116957v2</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_116957v2
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_116957v2, please notify your bug team to
        allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/index.html</a></p>
      <h2>Participating hosts (40 -&gt; 38)</h2>
      <p>Missing (2): bat-rpls-2 fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_116957v2:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_suspend@basic-s3@smem:
          <ul>
            <li>bat-rpls-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-rpls-1/igt@gem_exec_suspend@basic-s3@smem.html" moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Failure has nothing to do with this patch series. <br>
    <blockquote type="cite" cite="mid:168255800737.9053.17904526558692877629@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h4>Suppressed</h4>
      <p>The following results come from untrusted machines, tests, or
        statuses.<br>
        They do not affect the overall result.</p>
      <ul>
        <li>igt@i915_selftest@live@gt_heartbeat:
          <ul>
            <li>{bat-kbl-2}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-kbl-2/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-kbl-2/igt@i915_selftest@live@gt_heartbeat.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    <p>This as well.</p>
    <p>Thanks,</p>
    <p>Vinay.<br>
    </p>
    <blockquote type="cite" cite="mid:168255800737.9053.17904526558692877629@emeril.freedesktop.org">
      <ul>
        <li>
          <ul>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_116957v2 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
          <ul>
            <li>bat-dg2-11: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/1845" moz-do-not-send="true">i915#1845</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/5354" moz-do-not-send="true">i915#5354</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1:</p>
          <ul>
            <li>bat-dg2-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-dg2-8/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-d-dp-1.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7932" moz-do-not-send="true">i915#7932</a>)</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>igt@i915_selftest@live@slpc:
          <ul>
            <li>bat-adln-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/bat-adln-1/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/6997" moz-do-not-send="true">i915#6997</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/bat-adln-1/igt@i915_selftest@live@slpc.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@i915_suspend@basic-s3-without-i915:
          <ul>
            <li>fi-tgl-1115g4: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_13066/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/7443" moz-do-not-send="true">i915#7443</a> / <a href="https://gitlab.freedesktop.org/drm/intel/issues/8102" moz-do-not-send="true">i915#8102</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_116957v2/fi-tgl-1115g4/igt@i915_suspend@basic-s3-without-i915.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/intel/issues/8102" moz-do-not-send="true">i915#8102</a>)</li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_13066 -&gt; Patchwork_116957v2</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_13066: bdd3e1a1625175c5a56bb850b986d478ea9fbf60 @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_7272: b2786c0c504bb4fa9f2dc6082fe9332223198b24 @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_116957v2: bdd3e1a1625175c5a56bb850b986d478ea9fbf60 @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
      <h3>Linux commits</h3>
      <p>37444baa0ad8 drm/i915/selftest: Update the SLPC selftest<br>
        cc3e89a3db27 drm/i915/guc/slpc: Provide sysfs for efficient freq</p>
    </blockquote>
  </body>
</html>

--------------H86moZ17Qz0q05F5cDhFNzGd--
