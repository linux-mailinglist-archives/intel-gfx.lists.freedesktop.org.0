Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD855F4473
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 15:40:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B535210E613;
	Tue,  4 Oct 2022 13:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74E5A89C05
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 13:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664890845; x=1696426845;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=51r3A6sDcJ/BYz1Sd7F9VowmGuD0NoTOhZG+HVto704=;
 b=QFLfRMoY/CTdBR2eAfn5d21t+UDa5/Vsd9RtIR4NMZZ4XUNsYxdkjJ+I
 9moQ+BDNk84Sq8m8Eqxz91LOhloY9xoH9z3H+r8nEhJ7TcHy3L6VXs9jd
 PrA1l7bRjhGPi7AR8dcnfWdHAaN1lMF+ddI0kO7vylXwcnQtjDRXPUK8Z
 cO/udsRH8WEhWsuMZ1IzFAq31MCyoTeJNADCTnnevUWsxgmxcuHGdwoa9
 j2y+q5JXEsHPEMaYvFKqxlRRQz2mrsUWTW+wnaWRrqNmEnTUMj+er6I+P
 rsK92pHJNzZpYDRhktfNjA8WSucfCzsnMtC2f+L6sp2Gv2zTSez2HQ8jv w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="304453856"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="304453856"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 06:40:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="869004983"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="869004983"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 04 Oct 2022 06:40:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 06:40:44 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 4 Oct 2022 06:40:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 4 Oct 2022 06:40:43 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 4 Oct 2022 06:40:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D5AAxem+74PhfUKH8nDgabPs5IjDgUXxZzf+NiFfzgXmlVOHBKcsBfjru/lfNIq9G7rp17Z/ukrx+3ZAIGhMEk7Gx76X3alY7q/IfRnrBXhd5Pukzhp165hs2zZoIl2/t4ZZ6ST93+loU/wINYC1fmV5JXmZYiG2jfE8i8aNGKyXIcxsHdQf4PKx4hJwZNAscPEaLPnin765+FjKeZqmfJY2TRJwAzLtS8AX2Q/QIvyiyYBg2qEgY04FJEVRbf8cp2neVlhIvkMy5wJb8Fhtd5D45wSbHZPBm3WF0LJY+3JAJ8QMjDLDL1lTt3pMSUWqXcijKMnzzjbuE9fY/EDOPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=koi9+Eyy3EaXWyCB3AKUY3KfV75AmvlQwNRjgzV7anE=;
 b=Y8xlflulPD0VNUCIfHPGT1Gtb/YJrrPnw4mkudo7jjcDixcv1ofhId1L47CcG3krIBf2MHm/0+RGlwABdUSb0UySMIlbhIaAfm+seS9TCqvmR2ZfePdjILGhjHFdHAYrgbioY0izY8wNRKnR1wk0gx1Vw8j5XuFz04ogg/uzdFkDkl5nplVaH+rtsgMeXITThFJy04wSzmie2CDzeq+E4Z7Sac3ojvDyk486JpUTJoU/SeziX4wPbZp4Y9574Rb0Spo/8YQVu3DFxduv8cSVZoRTm+2ZtP1XNYT5COD5OpfVZjxmGn0jtBxLPJa+ZGtU5TGpLTQK6rEP6cjn7Vh4aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 CH0PR11MB5345.namprd11.prod.outlook.com (2603:10b6:610:b8::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5676.24; Tue, 4 Oct 2022 13:40:40 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5676.031; Tue, 4 Oct 2022
 13:40:40 +0000
Date: Tue, 4 Oct 2022 19:10:31 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Yzw3z6k8ZUi3YVqp@bala-ubuntu>
References: <20221004125344.228294-1-balasubramani.vivekanandan@intel.com>
 <877d1fu4ff.fsf@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877d1fu4ff.fsf@intel.com>
X-ClientProxiedBy: PN3PR01CA0181.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::14) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|CH0PR11MB5345:EE_
X-MS-Office365-Filtering-Correlation-Id: d12a578f-62b5-45e1-eb11-08daa60e06da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fIlwqo/xW/DafTppwE+4eYr5f1KwIkM0DXAW5qlLPiCxB29KRjcgRM1Toza9Bc838losBSVC9Miz4JbmYZIm7HPOJ09yTpI7JNZAf5FIXMXBIvppxq+Hx8oLk1179Dq93qXfXLcgeO+WLy1GyVS2DDrVvDx9bnndo7uDouYMfzz4nSml8q7yN+gLsYtvfDmmOrRz9JzCvlJobye09D0OuWa9JB4lTRqR5zDl1eRrVLBTufj4SYWGxisPWq4v1tJZ1YY4XTYqAzI/GIlK6oMwu0IQ52bu9jNNBu7EQdciwmJsQ7/OQKTsAEbhiDphu5S1oo0a8wwcx7IYpceY9Y6IobarGd213QKwEMku4uPMi+HRS8NvGcmQVZZlGCHlx7JZRSJqptTcnM/nWHhOrzjeM3qP9b7bLhmLbjyIETzoWGZUF+BmYlq1CNX/hdvdIwRYrFpXEOR66TjtcA5xuZNq46r3eZkYgezwasfXpeIpEsF1GyXvGGQCesT1gYiV+0YgKL6p5gPdEE049hbtJo8qEFY4l6pNjGKnIXbWTHQupT/IL8sV2N7EM9jfFNc3zLnVclYU6EhqaVu8QWO8c8BIyCbRgtBqgvfXtWcH74Nw40Kxu30XUUvXADisI2c2eZrd54bkG0PP/KYNzC20vwb4opTjzPZBd4oLMLg7gAV2TIpj8oTa38i8Jr6HUJABORr4SPXmflmuA92LyBfVKgfoww==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(136003)(366004)(376002)(39860400002)(346002)(396003)(451199015)(186003)(2906002)(6506007)(316002)(6666004)(33716001)(6486002)(478600001)(41300700001)(66946007)(8676002)(66476007)(66556008)(4326008)(44832011)(53546011)(6512007)(9686003)(86362001)(8936002)(26005)(5660300002)(82960400001)(66574015)(38100700002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bXdsczVFUDhqclBVV1pLV0pMaCtYRUxBUnlmNG5MZ0EwOWUyY0dXV1phUkJE?=
 =?utf-8?B?OW5EVjRMT29ySnMyZTYwTFhFY0ozb1NVbkd2UVV6OFZ5bGRxK1ovb2oxSVJ2?=
 =?utf-8?B?Z2puNUYzZ0F0bHdYNGIybHVadnJHSUh1bzgxcWN2L2tmejlnYmk4ZWd1WUpR?=
 =?utf-8?B?Y3B2Sk56R1pRelZFQ0RHaXZHREw4MW14VEZ2d1JwbDM1MGgzOVVvRG1ZVTl0?=
 =?utf-8?B?WG0wTHJQVE1GQnNuVFNoWHNWMWRwRTYrN1NuaW9YYkZ4OURsL0h1ZU9qMVFq?=
 =?utf-8?B?L0dZeXE4a1RjdXJqdG5lMEU5b243R0ZqZ3h4QnZ3VFBiMXZCbFMzS29KSTMw?=
 =?utf-8?B?dTRSZCtDMk1XSlBvNTgwZ3ZoRXN3R2dWRCtsdUxUVXRxYXVTMDFNZUd2UGRO?=
 =?utf-8?B?K25zZGZBQ0ltVDBHR0VuWS9LVmNVSk5hTkZBVC94WWxKcW9jNzF1OGJkYlFr?=
 =?utf-8?B?Um81LzQ5VHE4Vkl1WmpsWVBwSE1LMS8yM1BkK2pQcjgvd2hPYW5YUUtDWElq?=
 =?utf-8?B?cWtBZEZGZzh6SytGN2xTVWlKY1RZd3VJdFd4NjdFYk5JQmtMNjRBUEg4eVVa?=
 =?utf-8?B?eGJFdmFUOGRoRHVlcENLNjd4SnEwN1N1eUtWajJ2WUppczZocExsRnZSTHhY?=
 =?utf-8?B?c1VVVldMYUlKZmRjMmUrL3A4a0Z0cng1REV2eUw5WVJmOUNXTXhYMlY2VUxF?=
 =?utf-8?B?ZjFBWEx2S2kwS3VQOVlrMk0yc3BZU0dzRWJiQkN0bUdmUGFyVDBGazk2emIr?=
 =?utf-8?B?cW5rUHdzcENPRXJXakNrWkhrUm4zZ2RBTkxITGZiTFhLdHczdEI2ek9jWVJB?=
 =?utf-8?B?ZFVxS0pXK29zNTlmbno4Um14ZXRFbW5oKzhNQ21tTnYxODNOc3FwU0ovZW9w?=
 =?utf-8?B?WUpBOVpCNytSYVpwUitjLzlvWlRLSDBzeEtUVFJSRnVZRVpNSzQrSDJGWWpY?=
 =?utf-8?B?ZG9MS3FKSHM1ZTRXaHB3c0d4ZE1LSmViMFlvNUJxOFNMSHVuN1BMMnBYYzBy?=
 =?utf-8?B?dTRGUG95c1VhL0tNUjZ1Q0ZOejVkNi9uVDlyL3NjTVpUUHU2Nko3R1NqcG9a?=
 =?utf-8?B?dVl5Z0FMV2hLQm5mMzZWdEU5N3BWMkxYZTN1NFlaTWlOQWJ1T25nOHE0b0Zm?=
 =?utf-8?B?VDJiQ3krUDVoWEtpZmRCKytWbGgxUUhrdkl5a2s5eGZVTzB1WW0yZC9URlJn?=
 =?utf-8?B?M00rUWVReVlMV2hYUzFSdXFZSXpGcEpGT3l4Sm1tRDdTTDkrdEZUN0RxR1I4?=
 =?utf-8?B?M2RGcUNRd3g3VlJFTkd1TUt4dlpST2hqdVpMcndxTmdTejRjdWptOVVHbVRy?=
 =?utf-8?B?Ukg1TTNnQit6MGFCc0ZGUEpvTjAyekIwalFNMGQ3MDY0M0ZTV21WR2d6d1dP?=
 =?utf-8?B?Wm41dGN3VWoxbW5rSWRvc2lpZ3RDczdkMUFLK05RcmZkaWNZK1lGY0NOdHFp?=
 =?utf-8?B?Y2lwZ3RLRUJaSXNNNDFHTlNqZHlyMjlUeG1jNGRvT1ZraUtLQmovQU5SZmh4?=
 =?utf-8?B?UEpvOWN5T3lXelZPYkI0d29waituOVRpSWpmd1R6WDR1Kzg0bzQvVUk4VXBq?=
 =?utf-8?B?MGZJek5ydyt4Zk9iSy92empnenhERnZOWGdZK2c4MC9ZUlgwOUd0Yk5RNGE3?=
 =?utf-8?B?WHdBZGQxV2RsSnlRNThXRFRWK2ZqY0dsSVRWRTNKVDJMWjNkbWFPeDlFYTV4?=
 =?utf-8?B?TTZ4elNsRjRoMk50Zm5yVks1b2doWVpWS3MxQW1JaGJ0M2pHTE5FcFJkNjB0?=
 =?utf-8?B?OXNDWXU5UG5NNzFlK2ZZeWxrbmE4Y244Y1NQb1pUUDZXdTNqMVYwdjcvaFhF?=
 =?utf-8?B?anhEc1RqZkZSOTBXSDhhWE91RkZUdzhjTjBwWXkyM2tBYUVUdmt6UXBzdHdC?=
 =?utf-8?B?UGRKTGxmWTNZU1ZVclhMU0o4VnJwWlJMNTJGVXUwWWNjLzQzVUtVMkJXL3pG?=
 =?utf-8?B?ZE4xS01nOUJnazhpc2F5REJ2RE13L2VrMnZmZVg5REdhQ3c5Qk5jUDlUYVFo?=
 =?utf-8?B?OE9DZHFtSXRmamhOL0ZuSmZDYjB4aHBlbjFOSXhrOFhmd09sVFlBZWNTVEhR?=
 =?utf-8?B?a2VwbEtFWUYrRTJJN3IwKzI0V3dnWnZNeDRQMUt1VmsvUWR1TEgwZG5yMVFO?=
 =?utf-8?B?R2JxMGk3NDVPbXhsMVZRK2FydllRbEw3bWw3WmdHSFJXTGR0cjUzSmE5TjYr?=
 =?utf-8?Q?4ohT1zekRueR3XpczgG5y4s=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d12a578f-62b5-45e1-eb11-08daa60e06da
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2022 13:40:40.2672 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Bqc0aZmwA0UbwpEupVfl2o4bVQR0JkJyCpXXaK26z46W8mPm2Gm9AaDHV9UWTkbHmVBxBKR/IlilhBd3ov3oyKOPEjw3xhHx5hUEqFzfxDREmFEkajMzKR+IaHQmvXtn
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5345
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 0/7] drm/i915/display: Don't use port
 enum as register offset
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

On 04.10.2022 16:03, Jani Nikula wrote:
> On Tue, 04 Oct 2022, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> > Prior to display version 12, platforms had DDI ports A,B,C,D,E,F                  
> > represented by enums PORT_A,PORT_B...PORT_F. The DDI register offsets of          
> > the ports were in the same order as the ports. So the port enums                   
> > were directly used as index to calculate the register offset of the               
> > ports.                                                                            
> > Starting in display version 12, TypeC ports were introduced in the                
> > platforms. These were defined as new enums PORT_TC1,PORT_TC2... The               
> > later generation platforms had DDI register offests of TypeC and                  
> > non-TypeC ports interleaved and the existing port enums didn't match the          
> > order of the DDI register offests. So the enums could no more be used as          
> > index to calculate the register offest.                                           
> > This led to the creation of new platform specific enums for the ports             
> > like PORT_D_XELPD, PORT_E_XELPD to match the index of the ports in those          
> > platforms and additional code to handle the special enums.                        
> >                                                                                   
> > So we want to make the port enums not tied to DDI register offset and             
> > use the index from somewhere else to calculate the register offsets.              
> > The index of the DDI ports in the platform is now defined as part of              
> > device info.
> >
> > Series includes few patches at the end which does some cleanup and
> > fixing made possible because of unique enums for the ports.
> >
> > v2: ddi_index defined for platforms starting from Gen75. Many platforms
> > from Gen75 has ddi support.
> > v3: Updated DDI_CLK_SEL macro to use new index for DDI register offset
> > caculation.
> > v4: After removing d13_port_domains array, d12_port_domains is used for
> > all platforms with DISPLAY_VER 12 and above. So the port_end member had
> > to fixed to extend it for ports D and E.
> >
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Why do you keep sending several new versions within days when there's
> been no replies to the previous ones?
> 
> BR,
> Jani.

Apologies for the frequent revisions. These are to fix the CI failures.
I created v4 to fix few reported CI failures. When I further analyzed
the CI report, some failures which were suppressed saying results are
from untrusted machines, tests, or statuses were actually regressions.
So I had to create new revisions though BAT and IGT CI results were
successful.

I have fixed all the CI failures with the recent revision.

Regards,
Bala

> 
> 
> >
> > Balasubramani Vivekanandan (7):
> >   drm/i915/display: Pass struct drm_i915_private to DDI_BUF_CTL macro
> >   drm/i915/display: Pass struct drm_i915_private to DDI_CLK_SEL macro
> >   drm/i915/display: Define the DDI port indices inside device info
> >   drm/i915/display: Free port enums from tied to register offset
> >   drm/i915/display: Remove PORT_D_XELPD/PORT_E_XELPD platform specific
> >     defintions
> >   drm/i915/display: Fix port_identifier function
> >   drm/i915/display: cleanup unused DDI port enums
> >
> >  drivers/gpu/drm/i915/display/icl_dsi.c        | 12 +--
> >  drivers/gpu/drm/i915/display/intel_bios.c     |  7 +-
> >  drivers/gpu/drm/i915/display/intel_ddi.c      | 80 ++++++++-----------
> >  drivers/gpu/drm/i915/display/intel_display.c  | 12 +--
> >  drivers/gpu/drm/i915/display/intel_display.h  | 29 ++++---
> >  .../drm/i915/display/intel_display_power.c    | 44 +---------
> >  drivers/gpu/drm/i915/display/intel_fdi.c      | 14 ++--
> >  drivers/gpu/drm/i915/display/intel_tc.c       |  6 +-
> >  drivers/gpu/drm/i915/gvt/display.c            | 30 +++----
> >  drivers/gpu/drm/i915/gvt/handlers.c           | 17 ++--
> >  drivers/gpu/drm/i915/i915_pci.c               | 46 ++++++++++-
> >  drivers/gpu/drm/i915/i915_reg.h               |  7 +-
> >  drivers/gpu/drm/i915/intel_device_info.h      |  1 +
> >  drivers/gpu/drm/i915/intel_gvt_mmio_table.c   | 10 +--
> >  include/drm/i915_component.h                  |  2 +-
> >  15 files changed, 153 insertions(+), 164 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
