Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B32367EE2F
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 20:34:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8CCE810E1A2;
	Fri, 27 Jan 2023 19:34:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E620710E1A2
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 19:34:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674848051; x=1706384051;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WCR3bz3cTWe8ZdHNc3X5aiydapf3IzExTUOVorwb/0U=;
 b=C2LL1zML2HhbYWgGxZuJ3LC+zj1Qcm1yElx/XbCilAQodyYStaxL6yk/
 B+j1IHvpDTkHB1etqVBrCSMgmsDfQmew026gnvqnFWTkgOIO50PUCmu2y
 /ppZD5Hq28kqVU1bSOQ1elzX5Wsi/hgS1i82Tb9EKhuyFVYpaqCFZ5kGj
 9zFZ0N2P1/EYfWVxlMDzOdfAhu4dbJZNTS17GRQUfv/5NCw4Qpf5WffZm
 Zn6kkx6C9p5W8pLqo6eWKFf4TF66feKt19R/+52jUbKFm6Dt54cLrBTak
 OIjcz4BXrOGIMhF5jQjzP32tGBidSvTaDYoL1grUci1AaEQpemUAd6TXR Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="329298355"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="329298355"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 11:33:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10603"; a="771687909"
X-IronPort-AV: E=Sophos;i="5.97,252,1669104000"; d="scan'208";a="771687909"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2023 11:33:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 11:33:57 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 11:33:56 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 11:33:56 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 11:33:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cys1418RbdoxtmMbuJZqCYprKV1GQ60e2g0gxO9NPqN1MTvhuG6u2im6/piSCcYXG1OWVI4uYo0y5IYFXYROqZBLF1NGawxqhPrGNretX/nPjEWOLGPctkrqL0E1lzfYp+UnThw9+4OGkexx4aey/ZMsFPUwOcXj2TIo7qhNi94U9kN66V6MAZ9ZN+Db5LmIm3lxY9PTvvZ2f7C0klYkJv90LkluwYKn/fKm7F+SyCGRBOqJzQBhbakbXIIbaPcQNzqCoZaGGPYRK+nfbQW8EQahlFyq6EnI0HUWbQNbExzWdfPvA3ak1l16deBQ4edZEXlkBshey6mkV0/HY1/oyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W40eI7jQAx5MNB8+x6O3mLVqBOMhlBKA4LsG+Qebkx8=;
 b=YGnjSNO0/5oDDwcLR7RR29dUXegCeaZSsrC3phZydmljlbBk/3ok5yxjIhR+GeALKeDP6wUcc3ivDFKPhfpWHXaHYejQaolNeNTKiQ0OkH4JJ6tnUFrdG63fMwe5MOZh/SbYeABQzkQkQccrmiU/NL89KRnZFZCQnzA6GEyeJu2AarPU2QOOZmEB5SDBaADojTEkpKWsP2KtukrgyrMjMwYqH9l7Neygn5j6UYsO7kRIjgYwRZ2x77TQomTvJ89mRP/4dwp3KAegjFNKdQzmou7ewZVF6a76PLFUhfq8/PsTOHjEQiFkOaHvSGDUwwf7lsCSI3yijqxn3yeRDvriDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CY8PR11MB7800.namprd11.prod.outlook.com (2603:10b6:930:72::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.21; Fri, 27 Jan
 2023 19:33:54 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::593:877e:dd33:5b7a%6]) with mapi id 15.20.6043.023; Fri, 27 Jan 2023
 19:33:54 +0000
Date: Fri, 27 Jan 2023 11:33:51 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Luca Coelho <luca@coelho.fi>
Message-ID: <20230127193351.nkw6csaifvgjcrt3@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
 <87bkml5wv4.fsf@intel.com>
 <e0fb44004a740f0bb676cde16d8cc3a247ac106b.camel@coelho.fi>
 <f90662ade27cf750704896eda0663502fd05c4c0.camel@coelho.fi>
 <87357x5lir.fsf@intel.com>
 <7e60172d-2f8c-07a5-9901-c4b1b3379c7b@linux.intel.com>
 <87o7qk3uxp.fsf@intel.com>
 <00ecdb6e66b13d92c7013f8486cb598a4ecc27f0.camel@coelho.fi>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <00ecdb6e66b13d92c7013f8486cb598a4ecc27f0.camel@coelho.fi>
X-ClientProxiedBy: MW4P220CA0025.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CY8PR11MB7800:EE_
X-MS-Office365-Filtering-Correlation-Id: 13c5b030-6dd5-4dd4-4cfa-08db009d6ce1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HxwE9GdcyVIJZ/Bhi+6zup6vLHluiQFPKLayoKRkclG+TM70gmhBCndANgqQrQlW6txhJhBCDwCxNYxNhsFEuI4b8SxKhbSq1U6OW/lGPDH8uxp1nwBMSxPyTwmHVXKF+EoiaIbzqtlOtGtFzT8lu3/qxd67AYqoKGcf8vPWqjwA7pRPR3H2CQcHMJua0/JqwJu5/S/tBWtdGOPd1lPSSF0DNabv8xEWTWKaQF4z1NwyS3YCZCVzNFsjulxSazxeeBa4K2Xj125SsvWlTkGQCsCXvR3h1Uhgl5yphw9LFOtMkN7pKE5uLDRstdocX5KDRaO7FQo8OYYo1yw5yvjweBLu7aSHXOzVzQdin7SPTnes4ziEZHqVvTfF/i33WsLAlddSS61gCg9LLAMFIobgJKp63RWpuHhRuvcSefDbhEbHhw0XQkrKxPcoqQpQzQFYMNh45GNMcV84ymYueYK3dXz5OKTxBTE8BunfjtA2P5omRKHTH8nRl1FYtjE2MX8bXv0ztECwVVbc1eAq/0gpZk7nniFEP+jFWPTaPnuQL7ur5vdvjHcEKL7OFByptsV3yJdGEos/5vdXs83dQoc7LawStyhYodqk662mGCCy6M95TESaWsQnx4zz0Af4hpsbUCh7FOWsTUGKCLDHlZy1S/3DKYGnz8vMje3dXhmnNls=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(366004)(396003)(346002)(39860400002)(451199018)(66574015)(8936002)(41300700001)(38100700002)(82960400001)(2906002)(5660300002)(966005)(1076003)(53546011)(86362001)(83380400001)(6486002)(6506007)(9686003)(186003)(26005)(478600001)(6512007)(6666004)(66946007)(66556008)(4326008)(6916009)(8676002)(316002)(66476007)(54906003)(66899018)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VjkxRmZTWkVDWk9YV2kyK0I0VUUrR0tJTk1qMm9VU3lyNE9IYWpBWFBjOE0z?=
 =?utf-8?B?WWdvMmlEZ0pvZGFhdGNrRzhTMWsvODZHakdweGZNQkVmSkYrME5aeENhQ3F5?=
 =?utf-8?B?NnpYOStocXlSZkJQdi9EdE5OcXdFVStDS2J1cHJqVHpLTGNld251N0dXM01E?=
 =?utf-8?B?amFJSHVUMzQ4MnJqNGc1QlowanFHcHpGbGsxSldqMzBFWHJ3RGpjbHVVM3BL?=
 =?utf-8?B?aTExcmNhS0RCYkN3cUdMY0VZaVE0T2dyZlV5cmxVQytzODF3ZVI5Q0RINUd4?=
 =?utf-8?B?c1MxcGIzUUVWbVRPT2RpZVFSZXlSdlg1YkpYbGFpWU1nb3RHdnZrMW1hVDFE?=
 =?utf-8?B?OHU3Q0RiUC9LdWZtK0FVcThaS1p4VVRvYnB5cE9hcCtYbFhGVk0vNkkxaGZE?=
 =?utf-8?B?eHBwNGsrTDMreTFPUTloL2RWTHU5WGdpV2dtZnZDSG1MKzE2VEw3S1dtbmRl?=
 =?utf-8?B?ekpETjVseFVOaVJSSVZYY0RRcDZ3OUhaUk01dExoNDZYWTM3ZFArTkJiOVp3?=
 =?utf-8?B?V1B4c1VRSWlYalliTDEzalY0TUh1aXFIUUxPUXBoTmlhdXVvWi8yVW51Q1A3?=
 =?utf-8?B?UlRTUVVITHJzcWIvQUNNaVdOWWErLytBS0huYVdEajZTZ2p1amVWTEE5b3BS?=
 =?utf-8?B?Um9WNGdIRTdROU82ejJ1TkJtcmFZS210dkxScU4rdkQwWWdsVXZtTjkzWjdN?=
 =?utf-8?B?cmpSMXJ4R3oyNkt4Mno0dXlrSFZPaURERW5WcnVraTk4SVpWM3dHMDlRY3Nx?=
 =?utf-8?B?NCtSVEVSMjJMZlVuNHIvNGd3c3EyZ2FLcThDM3NrTnVaZHlOQUIvcC9nWjY1?=
 =?utf-8?B?RHpmc0RnVWxLenNwcm1md0tRTkErTlk0U093Q2licHpENVdrT2wrMkFUbGRi?=
 =?utf-8?B?T0tKSzVLVUdUSVZDSVNJNjd1SGtXWkxISmRXc0xBOWl0c3pQYndoL1VvUTJG?=
 =?utf-8?B?ZWpYeHBmYXhUdm0wVFVLOXVlYVJGeFVJVUhwd2psU01menhKeFZON0s5UllI?=
 =?utf-8?B?Y1R0ZVJuR0U2djEvRDVNRkR6ZmczeTRGNmRYQ21zaFpLaE9yc200a1BlNmdx?=
 =?utf-8?B?ZUU0Z2d0MEJpQm1vQ3hyTCs5MnVIZjJPRTg4d29kMjlHVXlmQ0xEL3dnTHZF?=
 =?utf-8?B?bHVrQ0poN1hDZXlXRHdmTUlXQ1l3c3F6MGxYUzROSko2S2VPeFRJN0VXeEFJ?=
 =?utf-8?B?bWNMT0FvWmdJWXBIZTloTlEvSmpEY3lzZ1NoNDh4bk5Nb2thYk0xMTJuZXQ2?=
 =?utf-8?B?S2xNRFIrT2wwVy9VM1VHWmxvV3ZwNloyRlRXR0UyZjlNSkk1K1o2TklFeThB?=
 =?utf-8?B?SnVNSG45WDVCbGd0eG1vNi9mRTZ3NHZDeFBjTjl4Q0NnMDVBalFiZHJPcVVJ?=
 =?utf-8?B?eGdwMVRpRVdXRnc1YkswbWNTQjdGR1kvU1NYTTR0dTFpVnFYcklXVDFRZUpS?=
 =?utf-8?B?bWJ2VlZsV01uanRndU9kanJkMWNDQ0UzNng1VTFITE9Ta25ZR3VibWlWRE1E?=
 =?utf-8?B?R2hmUy9vME9hcGkzbTBFMjQ4TWNKUTFjVitmazhaMHozTWhwbFd1ejNmMy8r?=
 =?utf-8?B?bm5yQjNhbmZYY2dIb2wyM3dud3NtakwzUnhZaDZOT0NtMG90Z3NMd1RRdmhV?=
 =?utf-8?B?NFE0bStaSTZaRkJBWVlhVU9VLy9pRG5vZWJhV0Q4RXF3d3ZEWEtXZHpIOWdT?=
 =?utf-8?B?R1NFYnRHbGMzMXhFOUgyd0hwSS9wSzlDK1RHb08zWEFXY2VHNmZ2MjdjUDFX?=
 =?utf-8?B?c0dYTEJEMmZjendyTXBjV1FwbVJmeDhmMWpOZEh6TkVqSngrVGxIcUpmNWpa?=
 =?utf-8?B?eTB2VEFYYkplVjlEWTVSTDdta25BUDJ1ckFMU1N0bDBQamQzd2kwK2VvKzFs?=
 =?utf-8?B?UTFHMWRWZzV1eVdBQWhhQkl1NWdjcGZkbUJVaFJjTzRpY1ZFdGVNTVRERlZK?=
 =?utf-8?B?YWdUVkl1WHYwTThxRUt4TlM3bFc1Uk0xMmxVQTVYZWRQRjRxaUxRaWgwSTBm?=
 =?utf-8?B?TjlCWEcxZTFwb1JhOHQ0ZkEyOHc1cWVMQWRzVXZHeVJmR0UzZkt4eE1maWla?=
 =?utf-8?B?VnR3OVpnekRxVTA4dWxGV1QwSGN0eldhY29NUHFjM0NzSFBVZ1IrWFEzUDY5?=
 =?utf-8?B?cklTRkhKeHZNTHgwNEF6eTdISUdwS1N5ZmI5VnRhbDZXKzlNbXcyWGFJU1h6?=
 =?utf-8?B?eGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 13c5b030-6dd5-4dd4-4cfa-08db009d6ce1
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2023 19:33:54.3220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wMx6UJlPFMa/ESpvF/CsRhcGS8WqKU9Y0ktiZIEGIcYI7v/WQyp0bbxjnbMyWQmT2KogTyiT0dhfysyXSHuh8ocX6sNapoyQ4YbGhipet+A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7800
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 27, 2023 at 07:12:29PM +0200, Luca Coelho wrote:
>On Fri, 2023-01-27 at 16:37 +0200, Jani Nikula wrote:
>> On Fri, 27 Jan 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> > On 26/01/2023 16:05, Jani Nikula wrote:
>> > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> > > > On Thu, 2023-01-26 at 14:11 +0200, Luca Coelho wrote:
>> > > > > On Thu, 2023-01-26 at 14:00 +0200, Jani Nikula wrote:
>> > > > > > On Thu, 26 Jan 2023, Luca Coelho <luca@coelho.fi> wrote:
>> > > > > > > On Wed, 2023-01-25 at 12:44 +0200, Jouni Högander wrote:
>> > > > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > > index 7d4a15a283a0..63b79c611932 100644
>> > > > > > > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> > > > > > > > > @@ -1559,7 +1559,26 @@ void intel_psr2_disable_plane_sel_fetch(struct intel_plane *plane,
>> > > > > > > > >   	intel_de_write_fw(dev_priv, PLANE_SEL_FETCH_CTL(pipe, plane->id), 0);
>> > > > > > > > >   }
>> > > > > > > > >
>> > > > > > > > > -void intel_psr2_program_plane_sel_fetch(struct intel_plane *plane,
>> > > > > > > > > +void intel_psr2_program_plane_sel_fetch_arm(struct intel_plane *plane,
>> > > > > > > > > +					const struct intel_crtc_state *crtc_state,
>> > > > > > > > > +					const struct intel_plane_state *plane_state,
>> > > > > > > > > +					int color_plane)
>> > > > > > > > > +{
>> > > > > > > > > +	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>> > > > > > >
>> > > > > > > Should you use i915 instead of dev_priv? I've heard and read elsewhere
>> > > > > > > that this is generally a desired change.  Much easier to use always the
>> > > > > > > same local name for this kind of thing.  Though this file is already
>> > > > > > > interspersed with both versions...
>> > > > > >
>> > > > > > Basically the only reason to use dev_priv for new code is to deal with
>> > > > > > some register macros that still have implicit dev_priv in
>> > > > > > them. Otherwise, i915 should be used, and when convenient, dev_priv
>> > > > > > should be converted to i915 while touching the code anyway (in a
>> > > > > > separate patch, but while you're there).
>> > > > >
>> > > > > Thanks for the clarification! In this case we're not using any of the
>> > > > > macros, AFAICT, so I guess it's better to go with i915 already? And I
>> > > > > think it should even be in this same patch, since it's a new function
>> > > > > anyway.
>> > > > >
>> > > > >
>> > > > > > The implicit dev_priv dependencies in the register macros are a bit
>> > > > > > annoying to fix, and it's been going slow. In retrospect maybe the right
>> > > > > > thing would have been to just sed the parameter to all of them
>> > > > > > everywhere and be done with it for good. Not too late now, I guess, and
>> > > > > > I'd take the patches in a heartbeat if someone were to step up and do
>> > > > > > it.
>> > > > >
>> > > > > I see that there is a boatload of register macros using it... I won't
>> > > > > promise, but I think it would be a good exercise for a n00b like me to
>> > > > > make this patch, though I already foresee another boatload of conflicts
>> > > > > with the internal trees and everything...
>> > > >
>> > > > There were actually 10 boatloads of places to change:
>> > > >
>> > > >   187 files changed, 12104 insertions(+), 12104 deletions(-)
>> > > >
>> > > > ...but it _does_ compile. 😄
>> > > >
>> > > > Do you think this is fine? Lots of shuffle, but if you think it's okay,
>> > > > I can send the patch out now.
>> > >
>> > > Heh, I said I'd take patchES, not everything together! ;)
>> > >
>> > > Rodrigo, Tvrtko, Joonas, thoughts?
>> >
>> > IMO if the elimination of implicit dev_priv is not included then I am
>> > not sure the churn is worth the effort.
>> >
>> > I think one trap is that it is easy to assume solving those conflicts is
>> > easy because there is a script, somewhere, whatever, but one needs to be
>> > careful with assuming a random person hitting a merge conflict will
>> > realize there is a script, know where to find it, and know how to use it
>> > against a state where conflict markers are sitting in their local tree.
>> > That's a lot of assumed knowledge which my experience tells me is not
>> > universally there.
>> >
>> > Having said all that, I looked at the occurrence histogram for the
>> > proposed churn and gut feel says conflicts wouldn't even be that bad
>> > since they seem heavily localized in a handful of files plus the display
>> > subdir.
>> >
>> > Plus it is upstream.. so we are allowed not to care too much about
>> > backporting woes. I would still hope implicit dev_priv, albeit
>> > orthogonal, would be coming somewhat together with the rename. For that
>> > warm fuzzy feeling that the churn was really really worth it.
>>
>> I was mostly talking about the implicit dev_priv removal. It's somewhat
>> easy, because you can always assume dev_priv is around when the macros
>> in question are used.
>>
>> The above is a dependency to any renames. I don't think the renames are
>> as important as removing the implicit dev_priv, and the renames are
>> easier to handle piecemeal, say a file at a time or something.
>
>I'm trying to write a semantic patch to convert this stuff.  But
>coccinelle is problematic when it comes to macros, so it turned out not
>to be as trivial as I though.

I think that the definition in the header is easier to do manually and
let coccinelle change only the users. I started this and it seems to be
going the right direction:

2 prerequisite commits:
https://git.kernel.org/pub/scm/linux/kernel/git/demarchi/linux.git/log/?h=tip-drm-intel-dev-priv

$ cat /tmp/a.cocci
virtual patch

@@
expression e;
@@
- DPLL(e)
+ DPLL(dev_priv, e)

@@
expression e;
@@
- DPLL_MD(e)
+ DPLL_MD(dev_priv, e)

@@
expression e1, e2;
@@
- PALETTE(e1, e2)
+ PALETTE(dev_priv, e1, e2)

... simply continuing with the same pattern for the other macros
I *think* would produce a good result. I slightly tested it with
`make coccicheck MODE=patch COCCI=/tmp/a.cocci  M=./drivers/gpu/drm/i915`

Then if we change the macro in i915_reg.h we could remove all the
implicit deps. Wether we should pass dev_priv or mmio_base I think will
vary from macro to macro.  The rename s/dev_priv/i915/ being the cherry
on top.

Lucas De Marchi

>
>Now that I've been looking at the code more, so I see the issue with
>the implicit dev_priv in some of the macros.  But I think that is
>really trivial to solve.  It shouldn't be an issue to add a parameter
>to those macros.  It will probably need some manual work, but I'm on it
>and hopefully will be able to send some patches as RFC.
>
>--
>Cheers,
>Luca.
