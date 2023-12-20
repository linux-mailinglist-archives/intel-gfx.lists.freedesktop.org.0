Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A38FA81A660
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 18:31:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28DDF10E23C;
	Wed, 20 Dec 2023 17:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB1610E232
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 17:31:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703093510; x=1734629510;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DPKXhugAs7CQNrvCf3wKnQ+BLfJ14rlQr49MHLOTfOg=;
 b=naDR5QXUjoilzib9k4xEzs9W9GkfUmYhsSmkSi32iwaRwQszyXobljfT
 Q1amgHHjoZQpk4XQOG2NPEvVX8WAEI0GgObEgHpPNcPQ6jyrimAV94UF7
 hBeMGY6UchWs9NooHaTMWXsfIrtTPJHIweIYPAjbrAm9M3Yx/ineccmVn
 wgXIRYw2yyRj5qEUWbWUhXNmz/B4CuSggP+/sS8tNPrdz/rl43y1amLr5
 kIwdheDAHt5gf52D3YjRWSBMNBL7TgaEk8BMWBUMMMx28+XTOqszmtP0G
 Wxsyw2R9452l3noalwrg7a+1LMDuR63g9C74+cb0muW/Dev+zq4wFfEme w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10930"; a="3082655"
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; 
   d="scan'208";a="3082655"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 09:31:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,291,1695711600"; d="scan'208";a="18386075"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 09:31:43 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 09:31:42 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 09:31:42 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 09:31:42 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 09:31:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dt8FxLXu+2UZCrgs7gFjl+XqhqLX8PKtlMfK73AZ4VOjU6o59mKes+7EmXI1lxYKqaYrRLxvMt7fuATK1RlNGYlgGQC61xtYB+p/7Qh0l8jV3A0hs2hmiPB1Py/cX4qwG0QpaT+4B+yTxQdysjNa0uXh7oCN1CDgztuP1PI5nB41kDtZ+0N9p7ttb5e5SeYFP41YRbU5cGHwftdL0qVaDQuoO/OCaVgYWgjuCuJ2GcxalThk3MD4iBTtvb0yE51T8HNIQxg9r8pC0NNAV/67lUMuFMN7X2i9WE6ZwSucePxhqKDYGf9fJ7NWpJSYWa+WjcMSi3lsAtwRCvWQxCiQbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdCaTeoIGfkTUiFgb0N6N0T5JG2MU4F+leS27MQlgL0=;
 b=G1UyBlGSyhIclLHMDipj9vc/Kv0U3LtmOfgFnR/Zxs224kulAdSaOMHW4TfoXGEa9xaN0aVC78QadWjgzQkGHs160h5wqtWLa2/EnPzNjkGO0sD2Pz+s1ttGeHy3fULrrlQGhPi5fDS7bcsoRCor+5nY57EEjymfGrJFplrJ/09np8zM7y+dHKg8rA5Ia0SJFkQThYzZvjw4XjDPNxo0ZpsILB0xUQdsKVSg3tKdrcAd049hhF2REjYAYEz5t8laHn+wgqGtHRHB3bk27e9NAacgNBWWBM5O4hSAznCV2ufVBRWMBX3sp3bIUWIN6uhb1VWuCozChAaeCDyqRoTB0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2987.namprd11.prod.outlook.com (2603:10b6:5:65::14) by
 DM8PR11MB5638.namprd11.prod.outlook.com (2603:10b6:8:27::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7113.18; Wed, 20 Dec 2023 17:31:40 +0000
Received: from DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9]) by DM6PR11MB2987.namprd11.prod.outlook.com
 ([fe80::e73e:dcc0:c5bb:49b9%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 17:31:40 +0000
Date: Wed, 20 Dec 2023 09:31:38 -0800
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVy?= =?utf-8?Q?e?= for
 drm/i915/perf: Update handling of MMIO triggered reports
Message-ID: <ZYMk+mmQbqbU4YUN@unerlige-ril>
References: <20231219000543.1087706-1-umesh.nerlige.ramappa@intel.com>
 <170296183054.17583.16662435707791624495@emeril.freedesktop.org>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <170296183054.17583.16662435707791624495@emeril.freedesktop.org>
X-ClientProxiedBy: MW4PR03CA0273.namprd03.prod.outlook.com
 (2603:10b6:303:b5::8) To DM6PR11MB2987.namprd11.prod.outlook.com
 (2603:10b6:5:65::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2987:EE_|DM8PR11MB5638:EE_
X-MS-Office365-Filtering-Correlation-Id: 86fcb3c6-b729-4442-5ca3-08dc0181866f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: AdeP45TjjbJR58HBICOZwgRq9DwUlpkSN6pYWceauJzj1Bv8lgJT4CsxQXv1A839zVbQ3zANABWZ+vlaJzv9/xa2CWJoge8dBy3OnnhMjX92Bg9irlkzdT3UvCG/STIR7eYoGwhwwbzrs9F+NaHLATzhaTQ76yGVz/cToG6f1Y86+gCzdOc+FenYOwwKl/7Ah2UsZ+lHLSpKTQ8MPl6Eeax3JQ7kwuUVxXFWtGX0yqSZEojXvFqR6dB70iARpd/y/YsLCo9PjdItJEZXk1+3Q5SUt/ZQ6ZfljBbwJ97xGa9UJGM7gOetSYx1oAu++YPJ/Gg1iEUxq+5cDlvlYvg+nQY8ThOkgfsApe6gaSiRueVQhLpcWBTWKnrnHOkasYDzRpTRMDfTnz5HWDr2agFlJilD6Kk+UKlG0S5G3JFOGry3OtZWZ2EVh+QDeK/fTXkDCWuKHEsoj01gURrXVRLtYuP6VVe5xxz/4j3Pa6FGGZ+DH23SJABLQGbeci2Fu3WdYIitJxRgnYnhI/JOpVWuXJ0NbbRQvRZGHywhhepAjuS4Mwn+r1TajSqXFN+1/XM83PQWl5Q4owb7cYwOyHz3gDRQzcXIss83qovXoNp3pTBd8om+4y8QckrU7amj6SfK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(376002)(39860400002)(366004)(346002)(396003)(230922051799003)(230173577357003)(230273577357003)(64100799003)(186009)(1800799012)(451199024)(6512007)(966005)(41300700001)(26005)(478600001)(6506007)(6486002)(66946007)(6916009)(66556008)(83380400001)(33716001)(66476007)(9686003)(316002)(86362001)(82960400001)(8936002)(38100700002)(2906002)(15650500001)(5660300002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M0VXVEM3TG5RTFJtS051NFVPSllnK2U5c1YvVmFYR25YanVNUEk5RXZkTFR5?=
 =?utf-8?B?K3MwbVBOVVFGK2E2TkhOZnNucHNITG9GYmI3YWsxZVFUMk9sRnpzeWpvK3lN?=
 =?utf-8?B?eFRxZlBKcFZRbmZlM2NOUHJuZ3gzbU80ZDNkcnVFZUNsMjhUZU1lMEZmTWhq?=
 =?utf-8?B?QlhhajcwMHdRZW9HWStmN0dVeHF2UjY4Yk5iNmZKR3ZJQTlXcHhmSlpNei92?=
 =?utf-8?B?MGVsN1Q2WUFPak5GVTNmY2ZFaERSdzZ0cStPMlRuRCtzQXNSU2YvVHRLbXBR?=
 =?utf-8?B?TlFacWRVU2tkakdWaTFWcUVianhDMkd5aVkzQ21YRG95NFJlV2htdGl5UlJP?=
 =?utf-8?B?ci85VVNnL01qT2lPQlE1VXEvLzFkM09EVWtPWjNZYWpUQzdDSndoaHVVS2t1?=
 =?utf-8?B?eDZIYUN1dXhKTUxmM0s2ckxUdDhlY2p4aTR6Q0xOL1huRDN6VnVuSFRoYUF5?=
 =?utf-8?B?S2tsSjJKU3pzMERhNjVZQnJDNjR1aHowMWFQdjRDZlNCNGcvcCtZeXJ1d1ds?=
 =?utf-8?B?bTJnaWhwakpQQ3VvbzFROXREOHBnem00b1lKaDM1dkhMdW5TNlJWekZ6eVpj?=
 =?utf-8?B?RUVsZnN1S1hTZEZ1NVVVQVUyaE5MSjUvRUdjTVdNNVhXUE9ZdXE2SXgrdEJD?=
 =?utf-8?B?MHQyd0l2bjhFWml3STNhaElBY0ZqZWZOZW9VQlVYS0ZyMjFvbit0LyswUGZ0?=
 =?utf-8?B?VXljVU9FeEVwYkVxVjlpMmU5RGxJaWlnamJpdU5DYzhuRVk5WWJPVHNJTVU5?=
 =?utf-8?B?ZnlSZmZnZzlyVVFLRVpMU2V0d0tXREw4bkJGRFFvL0lPcXhJcENpSUM2VEIz?=
 =?utf-8?B?ODBzb0lUR085ZkI4SjlhbGhsbGl3R2Y4U1pVQVh6ZkQrbUJjekttM0h6OVE2?=
 =?utf-8?B?SzV2MngzbkJEUHo4amVsTUtreXlOVER4OVRqdG9NWEpLdmpkalRWaDl3d1dP?=
 =?utf-8?B?VjB0ZklZZ3JYRlJLWkJndVJYYzhORnlBSnFrakZNbzZQRWJGRWs4c2VVVkVz?=
 =?utf-8?B?K0VQNVZEeHpqZWRUL05YZlhzNUJwaGFVZDU3R1JXQkRwMnZHYVFXckZPZk14?=
 =?utf-8?B?alJlbnZ2Z2ZYUy9lUnFJSFlTN0d5THpscGp5SDlQelZkbmN6NENiWEZ4ZWhC?=
 =?utf-8?B?VmdKTVZxK0Iva0ZPWng1K1JTMTVXaDhhQWJBZXYwME14UGRHZkhVN0llc05q?=
 =?utf-8?B?cHl4dTB4dU9MajhOVDdxRDJHTllHWW8vWkJyejNnaThhTmc4LzdYR2d2a0Zo?=
 =?utf-8?B?OThZOXdVV2NScC80U3J5NnFXVWMreWM4TWd6Z2VNaWU3T2Y5enpYTXN5Zy9O?=
 =?utf-8?B?ZmdTTjNzUXpSdzRiTEg3R3c4aFRaY2NUVFRTSE1aOHA1TThadkZySE1mZm1J?=
 =?utf-8?B?V0d4TS9IWDBTLzJkbG9BYVJrRlF5QlJVT0RRUk9WS2lHR1NXdXdoYjh0dWtk?=
 =?utf-8?B?enZvRzNiTS9rOXVSZmU3aWdUa2xjZG93U3c0WXJrOCswVHhIMk9lTzB1cUo1?=
 =?utf-8?B?S3FpbzI2Z0Q3cjM3Y0ErUFd1ZnExRFV3b2xOMmhxNDNLZXZyVmpQVDNJNGtk?=
 =?utf-8?B?M0dOTkV5WDhIaW9GRjE0OWhxMkE3bHlvRkwvckZsRzF6Q1QyakFHQXVBNmtU?=
 =?utf-8?B?THovV3V2UUlpZ20rUDFaeE5BN01NT3JMOGlGQk10c0F3Nmk0ZWk2NUowck9D?=
 =?utf-8?B?UjRubkdkb1oza3J6azNtOVpLeGNlaEw1MUp6U2N5OEU5SHEyU0VwOVk5L2ZQ?=
 =?utf-8?B?blNRMWdwM1BIdElWRHNMOHl0bm1ubWVqRnZHSC9RMlVsK3B2dVZIUXVJMzg4?=
 =?utf-8?B?cjc3YXBLdjFrM1hHWEJtNyt2TlY4cENVZ0Q4TStBV2s2SEpPSFgxVzVpeHlw?=
 =?utf-8?B?VFZqd1kwNGV2cHVwanp0UmM2cTIxYUZBdEQyZG9HUjRRbHlIWDNrOEFLWXlh?=
 =?utf-8?B?K0lCQW9ETkJBZWRzcC9lMlFNUWZncVlzTlZyOEhIQXpnakplc2xKWUU2OVNl?=
 =?utf-8?B?OHhoT01HRlJhcElqSGZNQ3NnOHpDZnRmNFpKMmdCV2JobWhPOE9iTjhsZUdk?=
 =?utf-8?B?YUpXN0djZWVlbU0xVWovR3FISk53aXFka283Q2xEUGIyN1JmWWxEV1JtYzFH?=
 =?utf-8?B?a0k0NzhDSVNZL05GaWMyWk9vamVMbEtlY2RsbUliYkt2NUgyQ0oxbzZkcUd1?=
 =?utf-8?Q?z7bP08lS7nRY2DF3DDZFFsc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86fcb3c6-b729-4442-5ca3-08dc0181866f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2023 17:31:40.0321 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kNZlevFGfVWmfCEuyxShHGQFPzsQ0PHYh6qAXn+gP162T3xGSshos5l9+trZo2PylhlyWlbu/hFc//u5Whl3AANSH1YskEnSLZEhqf6I438=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5638
X-OriginatorOrg: intel.com
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

On Tue, Dec 19, 2023 at 04:57:10AM +0000, Patchwork wrote:
>   Patch Details
>
>Series:  drm/i915/perf: Update handling of MMIO triggered reports
>URL:     [1]https://patchwork.freedesktop.org/series/127946/
>State:   failure
>Details: [2]https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127946v1/index.html
>
>          CI Bug Log - changes from CI_DRM_14041 -> Patchwork_127946v1
>
>Summary
>
>   FAILURE
>
>   Serious unknown changes coming with Patchwork_127946v1 absolutely need to
>   be
>   verified manually.
>
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_127946v1, please notify your bug team
>   (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in
>   CI.
>
>   External URL:
>   https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_127946v1/index.html
>
>Participating hosts (36 -> 34)
>
>   Additional (1): bat-mtlp-8
>   Missing (3): fi-bsw-nick fi-snb-2520m fi-pnv-d510
>
>Possible new issues
>
>   Here are the unknown changes that may have been introduced in
>   Patchwork_127946v1:
>
>  IGT changes
>
>    Possible regressions
>
>     * igt@i915_selftest@live@hugepages:
>
>          * bat-jsl-3: [3]PASS -> [4]INCOMPLETE

This is unrelated since the OA specific change is not exercised in BAT 
tests.

Umesh

>
>Known issues
>
