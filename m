Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 382A4615602
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 00:17:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8530E10E039;
	Tue,  1 Nov 2022 23:17:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 743C810E039
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 23:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667344648; x=1698880648;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=dhvKtH/sr/YUe22Ijg8EUh58AwbSjkE1BPhZv6Qs3h0=;
 b=RmxaFzLoPFt6QVAfj54wwpd6je9tXbRLsAYE8brxsVuLlB88oCjZXdvz
 SUIfp2GJSgislvNItYDSdQQKLYHubbC3Yem7sYuIc72eLKuOLRGdGAF9N
 l4cio8cElXB+bi9c2Cxx1s4h8zbv+Yscx4lMVCCSc3ZwT7KGI/obkkSGx
 uzLYWw8Ki553cJ0lkeLiThXvXBnL8Lyw442ZhL5OhbUz8iuP7+LLhZnrU
 gVhq29n9dNRpavMNopiQMK1+nXsWsxCghc28QK3nFGKLWuGygYK0OvFOy
 GWydXq3r9+zHiAch7xSJ+UGw3/oDhaiTvW3ZtQCbNRXIdkFmkbTnKLUZJ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="309262198"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="309262198"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 16:17:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="585178144"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="585178144"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 01 Nov 2022 16:17:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 16:17:27 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 16:17:26 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 16:17:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 16:17:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LzXquhEtIH3maLaeXR8ejwyRZGYqjLeFcbPHrWnXXtyQgGFMIdj/dGNViXrDLFFxtM331nz35uftgZGdHZN51TWhTtClobJ/hkuD/flMbSXGAHtOcRmP3lwGdSYuUokhyxmM9euH5Bnd/VXKRLCm2PET1n45jzJT53X+FIMFJXkBNbWp5hL+HcfIK0Vnfeadzk/ReDH3jAkQd6ZpxHVw7S4WI5sxwXhzV9GVzCRSI/S+aPj0sRJBbJw1RGvX8TjQkRaMwK3VDszfdkVnGxKBiBQwUEMLm4XZX83PfMvYvU1Kv2sCa5kh4RhmtrEIJQYGv2m0iZB4K3Kngrohm7qBdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=db8huA4tP8A8g7ka7D5tU6tzjy9RI7nqXsAQ0fuh9VY=;
 b=TlFD6Wrgzb8fxRf/2+Z+vtiSBK9/tysrpOjbchiyQRkYZYiaBXb9F0b0x2TGuf8RTd9p2PJ1GFMws+ZF4CAF4ih+xEbPqArIQpQGYP871tZARH0yx6C4fJjcc4VLcvq/wQsMC6KzYEGO8QLg2qhBpADedXBFynmgMxSSMZh5xc6sjOcdUv2XMiNMIVSSmSKRbTyP//lvV0oxAxWjp0BW8aPV1TwV8R9VarrHqqvCASNOdUjgQ/5y/BCXBYsWzaINWCpsfn+NjcaRsr7P711/+i/6rgVV4ZMFD1nhhwt5Q961PSW9ZQyx58chFYJ+56GofAQ7Lb4QVDopg9NKiptiLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 BL1PR11MB6028.namprd11.prod.outlook.com (2603:10b6:208:393::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Tue, 1 Nov
 2022 23:17:24 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::bff2:8e4f:a657:6095%5]) with mapi id 15.20.5769.019; Tue, 1 Nov 2022
 23:17:24 +0000
Message-ID: <e5fd8ac2-3b78-a34c-2ff3-eb38ffafb60d@intel.com>
Date: Tue, 1 Nov 2022 16:17:22 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Content-Language: en-US
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221024184031.613550-1-alan.previn.teres.alexis@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221024184031.613550-1-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BY5PR17CA0019.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::32) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|BL1PR11MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cffb5d1-ac48-46ad-e8c1-08dabc5f3c3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IMyy6h7EZv1DL0imxZG8i8VPvllDnkhDAsLnHFLZYGJ1EsTpKpARqm9rOGKQL9bvZApd53MOBI+lWUgdZFfgAJUCSr8mHZ/SZ+gxzoyUO8EECQr/Ztj29FPS+GgLcymrMvv724V/lgsQHXu1AyHw1Yk0VhGwpNFjUmAdLYsUzIfgy8jwpAdUUn0aOunEpKQI/WyUnvyY1Qhvxih5IZUbs+oM8TIxepOcEWIE1apwcFqS0Zm4MvcSiAHC7BMy3HOdS9BMGA3nwnywPG9BTNzhJXGywYKQY8RZ0nsX7FdAoaYQPA59MPaqoLah28tKqAvSAR/wNiDNzabWjyLreMdqTHz/EmOqkXre/5pe183qG5fooczwLy5I2235bePR09BdN8VLfqzg/Lch0sN3efcjRvm14A5kcj4MVIeI9FDbwUqZyDTHZA2N6q98L8n8ysoZkchIgSwNJwiiC7nhTgX3pkvVQ52u3sqyn5V+d+e4jtHcHF3fRLhxFkv3HMCBs+sW36V0tNFXcHZHpi/lEzU/uCOapq4Lu82j7HgfyficCnk2Hzn1MwbSkHAWyRAwDIOn9S+dWm5psk/k0lyywBKX1sMutiX+TmIIp7WPxSesydio2ghh6+Kp1/0BiMambqETqSlOQZeBWotD+bcM5luigeuPGCZzSoav7cqbizrLwmzTE0VxTHsUL9aWbPszWfaYACYN+7ygGlrM30LTshANFj4mhtfsWeO3Xn8twwl59UPHrEnTJCWU/IRqbEQeMHqy8nHxCbIULj0NgZQNZoKCVUlnk3dVMoLuh/uJQKAl4pk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(366004)(396003)(39860400002)(136003)(451199015)(66476007)(66946007)(38100700002)(31686004)(66556008)(8936002)(316002)(8676002)(82960400001)(41300700001)(86362001)(5660300002)(83380400001)(30864003)(186003)(2906002)(31696002)(6506007)(478600001)(26005)(6512007)(2616005)(53546011)(36756003)(6486002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0xveE1SbDRjUlJGMmoveDF2bVJOY2tuVUN1cURNN3h0dVJpMFZ0YUhHUDFK?=
 =?utf-8?B?MHBIR2xqL0hVcDVwMUVVOTFqTHpkL1F1UVJxY1FLS3ptVUhPOU5CejJldDdY?=
 =?utf-8?B?RW5VYzZXbDd4RkhvRmhvNjI4cWh4UE5oNFppVkgwTUovWHh3UUR5eUxrN2dM?=
 =?utf-8?B?dVhpK0lpWVBVYmdrYUZ2ZmNQTGRjVXFSTksxWjM0Mno4WWwvWmFEQWJGYlRD?=
 =?utf-8?B?MXVrek5SSGlaN3dqc09IQnpUcGpYMUQwWjNNOHc3eXZDNHk1eHlFRUFxcjBD?=
 =?utf-8?B?YzJkeWh0NHYxU3BINTlZNElsdWU0LzNBQXR2dkc5cDdkbUZxaW1QUHNva2tj?=
 =?utf-8?B?Q1JRa2RWenNrMmp4L05tdGpRaEk5WXhtamtlNnBNeXlrN003dEdlV0hQb3Ew?=
 =?utf-8?B?cWhvaVhNc0NPWnR6ZkVTRFhhRWMzNWUrMzVtTi92NTJGTGpWWnF1alp5d2h4?=
 =?utf-8?B?aFZRWXlaSDQwT0xiYVJqUG5qbTU5MDBRT2RPZjVjSzI5bjRVRU56andzVDZ3?=
 =?utf-8?B?Y2lONGNlUXZmQ205bi9BdG1BWnhuRkNUR2xDbVJsaU1iK3J4WHVBQWcySGJj?=
 =?utf-8?B?ZkxWQVZFcE1QeVA0a0NIQjNUWjQ3SWdXcDRmRitLaUUvRXhpQjVOQlJMVUhv?=
 =?utf-8?B?Q1lnakJYeVdwRkJ4V3pHaVZnVE1aTnkzMk5ORGErblVOOUp4dVdyUXl6cUJE?=
 =?utf-8?B?TXIwVnVvWG5DcElldUNKOEFtZlVLZi9XSG1teUIzV3RZM3ZSYkRNdXduT256?=
 =?utf-8?B?WFZwUDkrNEVOeGlrUzZvS0FETXRlb202Uk02em4zMnN6cEtJekw1NkVYUUtV?=
 =?utf-8?B?NTVpekpaMVZ6VkJJSU1tMk1kcGRmNGlCSjB2aGNPdE43ZVNtdVdDdUxUNE5k?=
 =?utf-8?B?OEhzTUNPUUpZdWtFM0x3Z2grQkJmWkNueVVEVHBtOTNIMnpBMUdKWXZ4V3VJ?=
 =?utf-8?B?WWlEMXNnUHI3a3ZqbGNqelRJcUhGcjVMbGE0M3NtRDB1TmtUb2VQTjB6L0c1?=
 =?utf-8?B?eVBFR0RUcmFPc2dkUStJNklwS090R0RKeW84bWZaYVBCOVgwVURMREUxbGpr?=
 =?utf-8?B?T1RVNDVqY3VWNEV2TzdKUHFtTkZDKzZ6MlhmaHBXdXp2YUxlUC8vK3Uya3VD?=
 =?utf-8?B?bXJSaERqdDhVZStVVEVmNkxlL3NQMHN5THFXRWo3NnBEdUQ3M0pjRWx4TDUz?=
 =?utf-8?B?dENDMEdFSlJRenM0YkthOXQvWWgrVVJReGRaZTk5eERGOE1neE9VenNiME9x?=
 =?utf-8?B?UzFMU2VPRGpVZTJlWGtWdDlsKzZDelBXRkgwS1U3eGw0SitrRUxVRTR4dXpi?=
 =?utf-8?B?WkZ3QWd2MFpyemJUd1JpZjNDS3l2V1A2by9aZ0dFQWM0MDJ2STVBdXRiaWdr?=
 =?utf-8?B?LzFWNjFRemJ4K1JTWmd6Q0tUMU03OUd4cGRhUlRqT0F5S1M0MW4rOU5vTXVt?=
 =?utf-8?B?VlNjemUrQXNjeG1UTTBQa2ZlQTVxREZyNlpYbmQ3MDBHRmJyeDZsbkZaaitw?=
 =?utf-8?B?RUNNYTlLS25UQ1ZQK1lWZzk1aEw5Tkt5aHFsSVREREtjdGE3bHp4ZDJGWHh3?=
 =?utf-8?B?djdYQVFoK24vOWNKWCt3Nkl1dDJNd3JXMkFXSG81WXJNeGI5dHR0VkFKSWJF?=
 =?utf-8?B?VEgvZ2lMeGlJNTRiRWJ0VS9abTZRWDBncjRaNUNNaGtjQUdTdGRPc3U4WTkw?=
 =?utf-8?B?K1g5WStTa3M3Nlc1ZkI5UFR1UUFBbzJQWlRFeGp6bDR0bXhDWHYwZ2RvNWtI?=
 =?utf-8?B?ZWwrVTdkWWRYU01oUjVRZERZbHB1b0JVZndjazRleFNVR3hFM1dqNjhZVk5Q?=
 =?utf-8?B?WVhCS1NqWDFIOXpWN1l2Mm1USUNWVmpsY0lhNEFEVXp4THAyOWoxYlRqWTl6?=
 =?utf-8?B?N1hFM1NUODFTSG9VUFZsV2hxdjlReVpPRG85aTQ1MXZ0bXFVck5SVFlYeDgx?=
 =?utf-8?B?c0FMczZ6NlhiSEN1eG9PaXVRVWNteVBzRTgxRHNRU25UcjZMeEUraDZZeUpw?=
 =?utf-8?B?cnZwZ2gzV3hzRkUzTkFqUlZCVkpBaWNhc2VLb3hiK3U4UXVYbVlOV3hLWXR3?=
 =?utf-8?B?bzNDODJKZmxiMUl3NjhFVjlJWVNRcFpJVEVMUm14NmU2TGJQbVBISG5vQ014?=
 =?utf-8?B?YkRaT3FLVmU2QmVJWnhFaDlkeFF3b3A1eHVyNVpITjl6OERzdUthUGFIYWlw?=
 =?utf-8?B?NHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cffb5d1-ac48-46ad-e8c1-08dabc5f3c3f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2022 23:17:24.6488 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wlJj2EoBzMM4YOREnn1/qucG0oS08ZOzBrC7omtCtCB/x/I6s/3d1HdhCPRvN4K08dDCFsECZBHLiPJfV69RTGsM7gj8WXtVPsIO/uzBKb0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6028
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915/pxp: Separate PXP FW interface
 structures for both v42 and 43
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



On 10/24/2022 11:40 AM, Alan Previn wrote:
> Previously, we only used PXP FW interface version-42 structures for
> PXP arbitration session on ADL/TGL products and version-43 for HuC
> authentication on DG2. That worked fine despite not differentiating such
> versioning of the PXP firmware interaction structures. This was okay
> back then because the only commands used via version 42 was not
> used via version 43 and vice versa.
>
> With MTL, we'll need both these versions side by side for the same
> commands (PXP-session) with the older platform feature support. That
> said, let's create separate files to define the structures and definitions
> for both version-42 and 43 of PXP FW interfaces.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   .../drm/i915/pxp/intel_pxp_cmd_interface_42.h | 39 +++++++++++++
>   .../drm/i915/pxp/intel_pxp_cmd_interface_43.h | 45 +++++++++++++++
>   .../i915/pxp/intel_pxp_cmd_interface_cmn.h    | 27 +++++++++
>   drivers/gpu/drm/i915/pxp/intel_pxp_huc.c      | 20 +++----
>   drivers/gpu/drm/i915/pxp/intel_pxp_tee.c      | 12 ++--
>   .../drm/i915/pxp/intel_pxp_tee_interface.h    | 57 -------------------
>   6 files changed, 127 insertions(+), 73 deletions(-)
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
>   create mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
>   delete mode 100644 drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> new file mode 100644
> index 000000000000..501012d3084d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_42.h
> @@ -0,0 +1,39 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2020, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_42_H__
> +#define __INTEL_PXP_FW_INTERFACE_42_H__
> +
> +#include <linux/types.h>
> +#include "intel_pxp_cmd_interface_cmn.h"
> +
> +/* PXP API Version 42 Core Definitions */
> +#define PXP42_APIVER 0x00040002

Is it worth having a unified macro for this instead of 2 separate 
defines for 42 and 43? e.g

#define PXP_APIVER(x, y) (x << 16 | y)

And then use PXP_APIVER(4, 2) or PXP_APIVER(4, 3). Just a suggestion, 
not a blocker.

> +
> +/* PXP-Cmd-Op definitions */
> +#define PXP42_CMDID_INIT_SESSION 0x1e

This might be better off closer to the matching structure. Not a blocker.

> +
> +/* PXP-In/Out-Cmd-Header */
> +struct pxp42_cmd_header {
> +	struct pxpcmn_cmd_header header;
> +	u32 status;
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +} __packed;

The PXP specs indicate that the header is common between v42 and v43, 
with one field being considered a union, so we can just define it as 
fully shared in the common file. Something like:

struct pxp_cmd_header {
         u32 api_version;
         u32 command_id;
         union {
                 u32 status;        /* out */
                 u32 stream id;  /* in */
         }
         u32 buffer_len;
}



> +
> +/* PXP-Input-Packet: Create-Arb-Session */
> +#define PXP42_INIT_SESSION_PROTECTION_ARB 0x2

I was a bit confused by the comment above the define, took me a moment 
to understand that the define is not of the command ID matching the 
packed, but one of the possible values of one of the fields. Maybe move 
it inside the structure and below the matching variable like we usually do?

> +struct pxp42_create_arb_in {
> +	struct pxp42_cmd_header header;
> +	u32 protection_mode;
> +	u32 session_id;
> +} __packed;
> +
> +/* PXP-Output-Packet: Create-Arb-Session */
> +struct pxp42_create_arb_out {
> +	struct pxp42_cmd_header header;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_42_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
> new file mode 100644
> index 000000000000..d7d93876bbef
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_43.h
> @@ -0,0 +1,45 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_43_H__
> +#define __INTEL_PXP_FW_INTERFACE_43_H__
> +
> +#include <linux/types.h>
> +#include "intel_pxp_cmd_interface_cmn.h"
> +
> +/* PXP API Version 43 Core Definitions */
> +#define PXP43_APIVER 0x00040003
> +#define PXP43_MAX_HECI_IN_SIZE (32 * 1024)
> +#define PXP43_MAX_HECI_OUT_SIZE (32 * 1024)

Those MAX_HECI defines are unused

Daniele

> +
> +/* PXP-Cmd-Op definitions */
> +#define PXP43_CMDID_START_HUC_AUTH 0x0000003A
> +
> +/* PXP-In/Out-Cmd-Header */
> +struct pxp43_cmd_header {
> +	struct pxpcmn_cmd_header header;
> +	u32 in_out_data;
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +} __packed;

This is unused (but anyway superseded by previous comment about the 
unified header)

> +
> +/* PXP-Input-Packet: HUC-Authentication */
> +struct pxp43_start_huc_auth_in {
> +	struct pxpcmn_cmd_header header;
> +	u32 status;
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +	__le64                  huc_base_address;
> +} __packed;
> +
> +/* PXP-Output-Packet: HUC-Authentication */
> +struct pxp43_start_huc_auth_out {
> +	struct pxpcmn_cmd_header header;
> +	u32 status;
> +	/* Length of the message (excluding the header) */
> +	u32 buffer_len;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_43_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> new file mode 100644
> index 000000000000..5c301ddc55e2
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_cmd_interface_cmn.h
> @@ -0,0 +1,27 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright(c) 2022, Intel Corporation. All rights reserved.
> + */
> +
> +#ifndef __INTEL_PXP_FW_INTERFACE_CMN_H__
> +#define __INTEL_PXP_FW_INTERFACE_CMN_H__
> +
> +#include <linux/types.h>
> +
> +/*
> + * there are a lot of status codes for PXP, but we only define the cross-API
> + * common ones that we actually can handle in the kernel driver. Other failure
> + * codes should be printed to error msg for debug.
> + */
> +enum pxp_status {
> +	PXP_STATUS_SUCCESS = 0x0,
> +	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
> +};
> +
> +/* Common PXP FW message header */
> +struct pxpcmn_cmd_header {
> +	u32 api_version;
> +	u32 command_id;
> +} __packed;
> +
> +#endif /* __INTEL_PXP_FW_INTERFACE_CMN_H__ */
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> index 7ec36d94e758..ea8389d54963 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_huc.c
> @@ -13,14 +13,14 @@
>   #include "intel_pxp_huc.h"
>   #include "intel_pxp_tee.h"
>   #include "intel_pxp_types.h"
> -#include "intel_pxp_tee_interface.h"
> +#include "intel_pxp_cmd_interface_43.h"
>   
>   int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   {
>   	struct intel_gt *gt = pxp_to_gt(pxp);
>   	struct intel_huc *huc = &gt->uc.huc;
> -	struct pxp_tee_start_huc_auth_in huc_in = {0};
> -	struct pxp_tee_start_huc_auth_out huc_out = {0};
> +	struct pxp43_start_huc_auth_in huc_in = {0};
> +	struct pxp43_start_huc_auth_out huc_out = {0};
>   	dma_addr_t huc_phys_addr;
>   	u8 client_id = 0;
>   	u8 fence_id = 0;
> @@ -32,10 +32,10 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   	huc_phys_addr = i915_gem_object_get_dma_address(huc->fw.obj, 0);
>   
>   	/* write the PXP message into the lmem (the sg list) */
> -	huc_in.header.api_version = PXP_TEE_43_APIVER;
> -	huc_in.header.command_id  = PXP_TEE_43_START_HUC_AUTH;
> -	huc_in.header.status      = 0;
> -	huc_in.header.buffer_len  = sizeof(huc_in.huc_base_address);
> +	huc_in.header.api_version = PXP43_APIVER;
> +	huc_in.header.command_id  = PXP43_CMDID_START_HUC_AUTH;
> +	huc_in.status             = 0;
> +	huc_in.buffer_len         = sizeof(huc_in.huc_base_address);
>   	huc_in.huc_base_address   = huc_phys_addr;
>   
>   	err = intel_pxp_tee_stream_message(pxp, client_id, fence_id,
> @@ -57,11 +57,11 @@ int intel_pxp_huc_load_and_auth(struct intel_pxp *pxp)
>   	 * returned with HuC not loaded we'll still catch it when we check the
>   	 * authentication bit later.
>   	 */
> -	if (huc_out.header.status != PXP_STATUS_SUCCESS &&
> -	    huc_out.header.status != PXP_STATUS_OP_NOT_PERMITTED) {
> +	if (huc_out.status != PXP_STATUS_SUCCESS &&
> +	    huc_out.status != PXP_STATUS_OP_NOT_PERMITTED) {
>   		drm_err(&gt->i915->drm,
>   			"HuC load failed with GSC error = 0x%x\n",
> -			huc_out.header.status);
> +			huc_out.status);
>   		return -EPROTO;
>   	}
>   
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> index 052fd2f9a583..7226becc0a82 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_tee.c
> @@ -14,7 +14,7 @@
>   #include "intel_pxp.h"
>   #include "intel_pxp_session.h"
>   #include "intel_pxp_tee.h"
> -#include "intel_pxp_tee_interface.h"
> +#include "intel_pxp_cmd_interface_42.h"
>   #include "intel_pxp_huc.h"
>   
>   static inline struct intel_pxp *i915_dev_to_pxp(struct device *i915_kdev)
> @@ -286,14 +286,14 @@ int intel_pxp_tee_cmd_create_arb_session(struct intel_pxp *pxp,
>   					 int arb_session_id)
>   {
>   	struct drm_i915_private *i915 = pxp_to_gt(pxp)->i915;
> -	struct pxp_tee_create_arb_in msg_in = {0};
> -	struct pxp_tee_create_arb_out msg_out = {0};
> +	struct pxp42_create_arb_in msg_in = {0};
> +	struct pxp42_create_arb_out msg_out = {0};
>   	int ret;
>   
> -	msg_in.header.api_version = PXP_TEE_APIVER;
> -	msg_in.header.command_id = PXP_TEE_ARB_CMDID;
> +	msg_in.header.header.api_version = PXP42_APIVER;
> +	msg_in.header.header.command_id = PXP42_CMDID_INIT_SESSION;
>   	msg_in.header.buffer_len = sizeof(msg_in) - sizeof(msg_in.header);
> -	msg_in.protection_mode = PXP_TEE_ARB_PROTECTION_MODE;
> +	msg_in.protection_mode = PXP42_INIT_SESSION_PROTECTION_ARB;
>   	msg_in.session_id = arb_session_id;
>   
>   	ret = intel_pxp_tee_io_message(pxp,
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h b/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> deleted file mode 100644
> index 7edc1760f142..000000000000
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp_tee_interface.h
> +++ /dev/null
> @@ -1,57 +0,0 @@
> -/* SPDX-License-Identifier: MIT */
> -/*
> - * Copyright(c) 2020-2022, Intel Corporation. All rights reserved.
> - */
> -
> -#ifndef __INTEL_PXP_TEE_INTERFACE_H__
> -#define __INTEL_PXP_TEE_INTERFACE_H__
> -
> -#include <linux/types.h>
> -
> -#define PXP_TEE_APIVER 0x40002
> -#define PXP_TEE_43_APIVER 0x00040003
> -#define PXP_TEE_ARB_CMDID 0x1e
> -#define PXP_TEE_ARB_PROTECTION_MODE 0x2
> -#define PXP_TEE_43_START_HUC_AUTH   0x0000003A
> -
> -/*
> - * there are a lot of status codes for PXP, but we only define the ones we
> - * actually can handle in the driver. other failure codes will be printed to
> - * error msg for debug.
> - */
> -enum pxp_status {
> -	PXP_STATUS_SUCCESS = 0x0,
> -	PXP_STATUS_OP_NOT_PERMITTED = 0x4013
> -};
> -
> -/* PXP TEE message header */
> -struct pxp_tee_cmd_header {
> -	u32 api_version;
> -	u32 command_id;
> -	u32 status;
> -	/* Length of the message (excluding the header) */
> -	u32 buffer_len;
> -} __packed;
> -
> -/* PXP TEE message input to create a arbitrary session */
> -struct pxp_tee_create_arb_in {
> -	struct pxp_tee_cmd_header header;
> -	u32 protection_mode;
> -	u32 session_id;
> -} __packed;
> -
> -/* PXP TEE message output to create a arbitrary session */
> -struct pxp_tee_create_arb_out {
> -	struct pxp_tee_cmd_header header;
> -} __packed;
> -
> -struct pxp_tee_start_huc_auth_in {
> -	struct pxp_tee_cmd_header header;
> -	__le64                    huc_base_address;
> -};
> -
> -struct pxp_tee_start_huc_auth_out {
> -	struct pxp_tee_cmd_header header;
> -};
> -
> -#endif /* __INTEL_PXP_TEE_INTERFACE_H__ */
>
> base-commit: 92b40b6e1d54d68a766c1545b9ace3e2eccad94a

