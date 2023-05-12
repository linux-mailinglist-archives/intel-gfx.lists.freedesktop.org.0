Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EC962700FE1
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 22:44:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1284E10E03E;
	Fri, 12 May 2023 20:44:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95F4A10E03E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 20:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683924248; x=1715460248;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=0TG7G9OL0UQli26pvvmFaFWh0Y2y3/Ego+ETxeHN44c=;
 b=lUp8plaldB3fq4OVlCpzKa8aKIIDq9SpOTVs91yRbWsAZXuEIJIHYXES
 ooDAeAao/e5jSBtqoRF5CISb3KhZSL142/UsrBGohmnX1IUdglXn8R3pd
 hsOMVZpv9XMLaIhdh0TXBzqxAD7iEkvd1yC0bc63sme5d++FhzWFDbGJr
 vBU58HKlu2oJ3NO7eaXwpgcI8TQlsikrjXQzbxoT9VOQODJhcC5YJPKwd
 n4goJGBIVatSXtgc9bNZX1t301DK/ruGdXtPeB5AHNuLshLx2K2T3sCPy
 C/rlpB0zFTLPAVCW6GcR9xPGOdzKr0VrmAnikYH7wE0ePnF5F++bfINKr w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="416518720"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="416518720"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 13:43:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10708"; a="694374092"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694374092"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2023 13:43:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 13:43:31 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 13:43:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 13:43:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 13:43:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IpnMNRfQzJFJmHfIIeXh/3SB7pKWgCCwKv7IvbsP68qQpBDk9ZON1qkT0cXrl0JO6N3h6jTjwhJ7Rii+sPVdYyZ9kPBj3hXZh14KvFx0S0sMkrxlp8AqLkTxDIhmjO6K5zRT2q6sdkrGCdbfVP6U+U1IbA31NJxmR156V7K2jpHhweJJzgCcZy14RNogFoXGrszUFbUyHM8FscCJQgFU6pHUfemqzkHzPydfUEBM+Z1y4s2xwvMd4NCMkgTboFCbs1HCNhwB6cR9bY87saL5268QF34JU2bBoAzdWu5s/hYc8M8lzkRvYBxYBzoEXLDInljogKUYQ1v8pLHCP3gyog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AVvP86U1KjRRZJqYQh/hE7p6mBWqeETtJAIrHaP7vEo=;
 b=dPxviOggeI2JRWNw9zHXC1iR+1wkPzLE1NgMJzJqYl9F+WqEYTzbLXOewXIWTGp7yyT5z0h9hVsi/Guj0pWG3vXQlGjus+D3qSBUz3n5VsWjkbLxYuptwunNeQVAGyK5kX9R8Y1V+pdN/nlWfplIl5r0l4OOjqJJYOW8XJtDcFM08zOs4jCMtwfYYODFUmOxsNXmM/L3vqdqvAnu74O7jjHCGCZ8CsEzzfaDfhI0iKoY7cF+ukAivx4WqZY9OTZ5jU+gasqooNWuJItoOWhzMCPJ+qZ577DudTnYfKhzxQ82hy5+vad5CJiIwBk5wOkMfJqkkHe20zmq2qMbHVFcYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB5791.namprd11.prod.outlook.com (2603:10b6:a03:423::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.24; Fri, 12 May
 2023 20:43:28 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::28c6:f268:89bd:e45a%7]) with mapi id 15.20.6363.033; Fri, 12 May 2023
 20:43:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <c2899f5542ad1797c608f9d86b8989b84aa00a23.camel@intel.com>
References: <20230427150016.1566833-1-vinod.govindapillai@intel.com>
 <20230427150016.1566833-8-vinod.govindapillai@intel.com>
 <168262708244.338531.17809194296977573819@gjsousa-mobl2>
 <c2899f5542ad1797c608f9d86b8989b84aa00a23.camel@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Date: Fri, 12 May 2023 17:43:22 -0300
Message-ID: <168392420201.81732.9069461811590290429@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: BYAPR07CA0103.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::44) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB5791:EE_
X-MS-Office365-Filtering-Correlation-Id: c20ecea4-9e4a-4a3e-9d28-08db532989c2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jvF28/Q5gDxCFzSBO3o8cAs3MKnO+o05Lk5O/FBQ0edeocR7YLZi+0vevjI2YeZc6YFh2vigAVVvOD+ffuoVdTjZ3d5EYQwNsqXqyHfJr1soBfpDegDC6KzvYWfn94bxL91tAltCkiIuH/jLamMG1Qi1z+VHv3rAJyOkC8GCjamfDfN5aIJgobV+LTRV6ZFDzbITOlSd1laE6bxR5u0CXfP2bPaTGIJw3ghEtxHLsxyC+JRrgxm3yGdyaCK6nDLgQLzT2CYOkRgPG/E0qeAC9Uuu0gBDSZfhqC1kYOXgT6hAMUgHI0SAglSfdIhCrIveK/+GlQMpOJQ0vBLSvYNYECc/GF1omfsJ2AkhL9C4X0x2SShmubUsUgTJ1+nlASI3JtQTNljB9zUbfHOGgralZChzbb3cu57ppXCGsniHWIsPfqume+eJeML/ydfBpm89FgzY1apcFc9ZB65R3erbLUbNTuddBuLSybRaAid3p/DgseuwAPqR8/AQNmIFJ21eEpEeQkKXUyHqkfPq56oY5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(346002)(136003)(366004)(396003)(376002)(39860400002)(451199021)(82960400001)(38100700002)(33716001)(86362001)(5660300002)(44832011)(30864003)(8676002)(966005)(8936002)(6512007)(107886003)(6506007)(9686003)(26005)(2906002)(66476007)(66946007)(66556008)(54906003)(478600001)(6666004)(4326008)(41300700001)(186003)(316002)(6486002)(83380400001)(579004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTg5RXFDemlEN0U4YnkrcS9pUWdXMGQxT04yM2RzUk9va0VRdENGaEV3SXpn?=
 =?utf-8?B?UVVXcHBsZGJoVHgrYU9PTE83WWxaQjA2ZjhZbVphbmZRK2JNMkJvbWZwNEh3?=
 =?utf-8?B?YWdGeE5zTnU0UUVhZ3ZxVFRnN0Erd2JhQ3pOMDRsTk4wWkxJb0g3M21aVEtm?=
 =?utf-8?B?NXl5ZTEyRVk1WHV1OVYxTUdIcWt5UXBkR0FSV1JSUWlIZHU0WUlBbzlHUlRF?=
 =?utf-8?B?UllublBhU2FlblJPcWxiTHIxT1ZFYVM2SHlNVVVWTjdpNjluaUhCZ2RHWVlt?=
 =?utf-8?B?YzU5NVQ0OXh5N0N2RWlDMGJTQVhJOEFac0dCb0VDNjBKMU9PeHpNT0RsdkJ1?=
 =?utf-8?B?SGNVK0YwRzEwTHkvUUNTSG5WYU5VSnlQNW9DNmVlMHNrV3h1UTQvRjF2dkoz?=
 =?utf-8?B?NkVrQjNCWndzd3BqSmNLcm53cVhXcFpDRGFUbWpXWmx5UjF6a0c3ZUUrbkFk?=
 =?utf-8?B?RTRRWTRScnVZN3cxNEhxU2RWaWhGVkJZcXhYN29YY0NrdEhhOVAyZzRvZjJL?=
 =?utf-8?B?cnhJbm5TQmV3UUdTM1REM3BlOFBNVDdOMGowa0pRS0JtZDVOYUFjd205ZjVm?=
 =?utf-8?B?OFNiZFloNUtnYjM5b1BDdFFKSHp0b0pvcllLMlVjc1dydkVTNDh1V3AwMVJk?=
 =?utf-8?B?bWlJdlllbEpMem56R1o0c2ptOUZRM29aTW9kRUQwNldiaHpGR3lsQW9FWkVT?=
 =?utf-8?B?eVJXYWViQlNmemJuckRVa3ZWQ0hjNXR4VzhuZ244NzNYanVNTWR0eGw5Vlls?=
 =?utf-8?B?aitVYzA2Qm1NU0dWcThsZVZTZUdBUnVxd0xLb1c4UkpNZElXL3JWcXVxVEp2?=
 =?utf-8?B?L1RSU21jcmtqYUwzMlpZQklzMlRaQ0c2TVczbHpyZ1lVUi81NlJUcGpSYldN?=
 =?utf-8?B?L3NxZUdxeUtiQlBKZXNFd1Q5NGRJWWhOMUhCbWhtK0tnS0F5cFRsUWRoN3N6?=
 =?utf-8?B?NnNXWmlQVnVZaVYxdUFORjJaUHhva1ppQUduQS90SkZwc1V4NERyTTdjTHg4?=
 =?utf-8?B?dEUzZGZDbzhIaFMybWxkb0lSbTJlNDN6U2tTcjAwK1R0c0pkc1V4TEVtRG4v?=
 =?utf-8?B?M1E2U0tyeENBeDFRa0w3T2JaQlVlc09nanVSdVlyTmNIVVZzRDdRSEY3ZUhU?=
 =?utf-8?B?QU5kSnlHanVIdjM2L3lWWmR3aWVwdERxbkJ1S2FGU0FyTklCL1IxOFFXZXpZ?=
 =?utf-8?B?R3pCcXFOWmtkc2o0ZkNvNnhBajdneFBJc2pKRnNveWVldjVJcGw4SXFYaXhw?=
 =?utf-8?B?Tm4vOTcxNjNNWC9lVkhNYUxhc1FVdDU3ZFpxdFJlUmZWQUdoR2ZoT1dFYVpK?=
 =?utf-8?B?Y1I5Z0Iyc0JrVjQ2Z2xRbHVGbHl2TVovZ00yQjhZZnMwbkIyK0MyMG9xVG5x?=
 =?utf-8?B?Z2hkYVp4YUtmbTVHc0ZIdTh6R0gwNmVsMUVyUEs5T2RCTVpSWVNMNEp6VnJC?=
 =?utf-8?B?TktORnJGUzIyQjF1YlprRFk3anRtUysxK2dtaW9vZW9Ed1NZdHBTOFdnYU9z?=
 =?utf-8?B?L2kzencvbm91YjFnczJWWDFkUG9LeE1zMmYrL0JXc0lydXgrQTNhWFVCNDZQ?=
 =?utf-8?B?UVhPQ21lMXRxR2pPNG5LV1NvVjFnaXV1SjBOdm42YUdCMUV3azYzWE9oeFlJ?=
 =?utf-8?B?cXM3N1cycWg1RUVNLzNreHBEM1NWaE9VdEdsTmpxTDd3TjdzSjhaU3J6bHFG?=
 =?utf-8?B?ekRRcnErME1xa3lIa1VPcDlCTm41bXFVcjNvcGcxTkRXSlNvd3hnZC94ZTVj?=
 =?utf-8?B?ZW84bDd5L0Q1N2hYTVE0Z1J4Z1RtMEpOcU5idm1OUWlnWVI3aXRUSTZQRDY0?=
 =?utf-8?B?UEhFMnpSaWYzakIxYXNKYnhIb3Q2QzFDWXBnSUNMWElWY0lMWVJHVnRHN0th?=
 =?utf-8?B?L1pUaGI2VDZTbnE2blZsNDltcStha3FDNk0yUkRiQnk2bXBDcmNXOWhDM3BR?=
 =?utf-8?B?MG5TS1BaZlc4UFZLTTErbnFKTkUwbUpPRTBrWS9reTRGby9PTFNNOGRMZ3gv?=
 =?utf-8?B?OFRJV0w5MWpUNlVxWVpMZkpTVVBFK0U3dUF3TDJIeGp0cjNURnA5cnQweVZm?=
 =?utf-8?B?eDBwcnNLM0dsV1l1VGkwS1AxOVlhMnkwT1pHWCtnZ3pPRDFpRkhWakt0Tm95?=
 =?utf-8?B?c0x6NmN4VlM0Q2lNVlhJditLcTdxN25mb0lya1EvdWdOSVk0Um43Y2NJbW1o?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c20ecea4-9e4a-4a3e-9d28-08db532989c2
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 May 2023 20:43:27.9257 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WwH/lvNYzyZC6HuFrBXhyzdd9bbrg3Fy7iWm2gsYH25lRVMDFPJsRvviVEQ9HsQ1bqKnmyNnRkD6/aIzPFA8xw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5791
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 7/8] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Govindapillai, Vinod (2023-05-11 20:24:55)
>Hello
>
>Thanks for the comments. Pls see some inline replies..
>
>On Thu, 2023-04-27 at 17:24 -0300, Gustavo Sousa wrote:
>> Quoting Vinod Govindapillai (2023-04-27 12:00:15)
>> > From: Mika Kahola <mika.kahola@intel.com>
>> >=20
>> > Display14 introduces a new way to instruct the PUnit with
>> > power and bandwidth requirements of DE. Add the functionality
>> > to program the registers and handle waits using interrupts.
>> > The current wait time for timeouts is programmed for 10 msecs to
>> > factor in the worst case scenarios. Changes made to use REG_BIT
>> > for a register that we touched(GEN8_DE_MISC_IER _MMIO).
>> >=20
>> > Wa_14016740474 is added which applies to Xe_LPD+ display
>> >=20
>> > v2: checkpatch warning fixes, simplify program pmdemand part
>> >=20
>> > v3: update to dbufs and pipes values to pmdemand register(stan)
>> > =C2=A0=C2=A0 Removed the macro usage in update_pmdemand_values()
>> >=20
>> > Bspec: 66451, 64636, 64602, 64603
>> > Cc: Matt Atwood <matthew.s.atwood@intel.com>
>> > Cc: Matt Roper <matthew.d.roper@intel.com>
>> > Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>> > Cc: Gustavo Sousa <gustavo.sousa@intel.com>
>> > Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
>> > Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>> > ---
>> > drivers/gpu/drm/i915/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0 3 +=
-
>> > drivers/gpu/drm/i915/display/intel_display.c=C2=A0 |=C2=A0=C2=A0 7 +
>> > .../gpu/drm/i915/display/intel_display_core.h |=C2=A0=C2=A0 6 +
>> > .../drm/i915/display/intel_display_driver.c=C2=A0=C2=A0 |=C2=A0=C2=A0 =
7 +
>> > .../drm/i915/display/intel_display_power.c=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0 8 +
>> > drivers/gpu/drm/i915/display/intel_pmdemand.c | 455 ++++++++++++++++++
>> > drivers/gpu/drm/i915/display/intel_pmdemand.h |=C2=A0 24 +
>> > drivers/gpu/drm/i915/i915_irq.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 21 +-
>> > drivers/gpu/drm/i915/i915_reg.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 36 +-
>> > 9 files changed, 562 insertions(+), 5 deletions(-)
>> > create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.c
>> > create mode 100644 drivers/gpu/drm/i915/display/intel_pmdemand.h
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Make=
file
>> > index 9af76e376ca9..eb899fa86e51 100644
>> > --- a/drivers/gpu/drm/i915/Makefile
>> > +++ b/drivers/gpu/drm/i915/Makefile
>> > @@ -281,7 +281,8 @@ i915-y +=3D \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display/i9xx_wm.o \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display/skl_scaler.o \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display/skl_universal_plane.o \
>> > -=C2=A0 display/skl_watermark.o
>> > +=C2=A0 display/skl_watermark.o \
>> > +=C2=A0 display/intel_pmdemand.o
>> > i915-$(CONFIG_ACPI) +=3D \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display/intel_acpi.o \
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 display/intel_opregion.o
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>> > b/drivers/gpu/drm/i915/display/intel_display.c
>> > index bf391a6cd8d6..f98e235fadc6 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> > @@ -99,6 +99,7 @@
>> > #include "intel_pcode.h"
>> > #include "intel_pipe_crc.h"
>> > #include "intel_plane_initial.h"
>> > +#include "intel_pmdemand.h"
>> > #include "intel_pps.h"
>> > #include "intel_psr.h"
>> > #include "intel_sdvo.h"
>> > @@ -6306,6 +6307,10 @@ int intel_atomic_check(struct drm_device *dev,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> >=20
>> > +=C2=A0 ret =3D intel_pmdemand_atomic_check(state);
>> > +=C2=A0 if (ret)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto fail;
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ret =3D intel_atomic_check_crtcs(=
state);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 goto fail;
>> > @@ -6960,6 +6965,7 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_sagv_pre_plane_update(state=
);
>> > +=C2=A0 intel_pmdemand_pre_plane_update(state);
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Complete the events for pipes =
that have now been disabled */
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for_each_new_intel_crtc_in_state(=
state, crtc, new_crtc_state, i) {
>> > @@ -7070,6 +7076,7 @@ static void intel_atomic_commit_tail(struct inte=
l_atomic_state *state)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 intel_verify_planes(state);
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_sagv_post_plane_update(stat=
e);
>> > +=C2=A0 intel_pmdemand_post_plane_update(state);
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_atomic_helper_commit_hw_done(=
&state->base);
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > index 9f66d734edf6..9471a052aa57 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>> > @@ -345,6 +345,12 @@ struct intel_display {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 struct intel_global_obj obj;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 } dbuf;
>> >=20
>> > +=C2=A0 struct {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 wait_queue_hea=
d_t waitqueue;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct mutex l=
ock;
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_g=
lobal_obj obj;
>> > +=C2=A0 } pmdemand;
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 /*
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 * dkl.phy_lock protects against concurrent access of =
the
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > index 60ce10fc7205..79853d8c3240 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> > @@ -47,6 +47,7 @@
>> > #include "intel_opregion.h"
>> > #include "intel_overlay.h"
>> > #include "intel_plane_initial.h"
>> > +#include "intel_pmdemand.h"
>> > #include "intel_pps.h"
>> > #include "intel_quirks.h"
>> > #include "intel_vga.h"
>> > @@ -211,6 +212,8 @@ int intel_display_driver_probe_noirq(struct drm_i9=
15_private *i915)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret < 0)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 goto cleanup_vga;
>> >=20
>> > +=C2=A0 intel_pmdemand_init(i915);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_power_domains_init_hw(i915,=
 false);
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!HAS_DISPLAY(i915))
>> > @@ -240,6 +243,10 @@ int intel_display_driver_probe_noirq(struct drm_i=
915_private *i915)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (ret)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 goto cleanup_vga_client_pw_domain_dmc;
>> >=20
>> > +=C2=A0 ret =3D intel_pmdemand_state_init(i915);
>> > +=C2=A0 if (ret)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto cleanup_v=
ga_client_pw_domain_dmc;
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 init_llist_head(&i915->display.at=
omic_helper.free_list);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 INIT_WORK(&i915->display.atomic_h=
elper.free_work,
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_helper_free_state_worker);
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
>> > b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > index 5150069f3f82..f5c5a486efbc 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> > @@ -20,6 +20,7 @@
>> > #include "intel_mchbar_regs.h"
>> > #include "intel_pch_refclk.h"
>> > #include "intel_pcode.h"
>> > +#include "intel_pmdemand.h"
>> > #include "intel_pps_regs.h"
>> > #include "intel_snps_phy.h"
>> > #include "skl_watermark.h"
>> > @@ -1085,6 +1086,10 @@ static void gen9_dbuf_enable(struct drm_i915_pr=
ivate *dev_priv)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_priv->display.dbuf.enabled_sl=
ices =3D
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 intel_enabled_dbuf_slices_mask(dev_priv);
>> >=20
>> > +=C2=A0 if (DISPLAY_VER(dev_priv) >=3D 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_program_=
dbuf_pmdemand(dev_priv, BIT(DBUF_S1) |
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 dev_priv->display.dbuf.enabled_slices);
>> > +
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * Just power up at least 1 =
slice, we will
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * figure out later which sl=
ices we have and what we need.
>> > @@ -1096,6 +1101,9 @@ static void gen9_dbuf_enable(struct drm_i915_pri=
vate *dev_priv)
>> > static void gen9_dbuf_disable(struct drm_i915_private *dev_priv)
>> > {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gen9_dbuf_slices_update(dev_priv,=
 0);
>> > +
>> > +=C2=A0 if (DISPLAY_VER(dev_priv) >=3D 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_program_=
dbuf_pmdemand(dev_priv, 0);
>> > }
>> >=20
>> > static void gen12_dbuf_slices_config(struct drm_i915_private *dev_priv=
)
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> > b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> > new file mode 100644
>> > index 000000000000..df6429e7059d
>> > --- /dev/null
>> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> > @@ -0,0 +1,455 @@
>> > +// SPDX-License-Identifier: MIT
>> > +/*
>> > + * Copyright =C2=A9 2024 Intel Corporation
>> > + */
>> > +
>> > +#include <linux/bitops.h>
>> > +
>> > +#include "i915_drv.h"
>> > +#include "i915_reg.h"
>> > +#include "intel_bw.h"
>> > +#include "intel_cdclk.h"
>> > +#include "intel_cx0_phy.h"
>> > +#include "intel_de.h"
>> > +#include "intel_display.h"
>> > +#include "intel_display_trace.h"
>> > +#include "intel_pmdemand.h"
>> > +#include "skl_watermark.h"
>> > +
>> > +struct intel_pmdemand_state {
>> > +=C2=A0 struct intel_global_state base;
>> > +
>> > +=C2=A0 u16 qclk_gv_bw;
>> > +=C2=A0 u8 voltage_index;
>> > +=C2=A0 u8 qclk_gv_index;
>> > +=C2=A0 u8 active_pipes;
>> > +=C2=A0 u8 dbufs;
>> > +=C2=A0 u8 active_phys_plls_mask;
>>=20
>> Is u8 enough for the mask? The enum phy shows 9 possible PHY_* members.
>> Also, I think having BUILD_BUG_ON() somewhere in this file to make sure
>> we have enough bits would be nice.
>Thanks. updated.
>>=20
>> > +=C2=A0 u16 cdclk_freq_mhz;
>> > +=C2=A0 u16 ddiclk_freq_mhz;
>> > +=C2=A0 u8 scalers;
>> > +};
>> > +
>> > +#define to_intel_pmdemand_state(x) container_of((x), struct intel_pmd=
emand_state, base)
>> > +
>> > +static struct intel_global_state *
>> > +intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>> > +{
>> > +=C2=A0 struct intel_pmdemand_state *pmdmnd_state;
>> > +
>> > +=C2=A0 pmdmnd_state =3D kmemdup(obj->state, sizeof(*pmdmnd_state), GF=
P_KERNEL);
>> > +=C2=A0 if (!pmdmnd_state)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return NULL;
>> > +
>> > +=C2=A0 return &pmdmnd_state->base;
>> > +}
>> > +
>> > +static void intel_pmdemand_destroy_state(struct intel_global_obj *obj=
,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct intel_g=
lobal_state *state)
>> > +{
>> > +=C2=A0 kfree(state);
>> > +}
>> > +
>> > +static const struct intel_global_state_funcs intel_pmdemand_funcs =3D=
 {
>> > +=C2=A0 .atomic_duplicate_state =3D intel_pmdemand_duplicate_state,
>> > +=C2=A0 .atomic_destroy_state =3D intel_pmdemand_destroy_state,
>> > +};
>> > +
>> > +static struct intel_pmdemand_state *
>> > +intel_atomic_get_pmdemand_state(struct intel_atomic_state *state)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 struct intel_global_state *pmdemand_state;
>> > +
>> > +=C2=A0 pmdemand_state =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_g=
et_global_obj_state(state,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &i915->display.pmdemand.obj);
>> > +=C2=A0 if (IS_ERR(pmdemand_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ERR_CAS=
T(pmdemand_state);
>> > +
>> > +=C2=A0 return to_intel_pmdemand_state(pmdemand_state);
>> > +}
>> > +
>> > +static struct intel_pmdemand_state *
>> > +intel_atomic_get_old_pmdemand_state(struct intel_atomic_state *state)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 struct intel_global_state *pmdemand_state;
>> > +
>> > +=C2=A0 pmdemand_state =3D intel_atomic_get_old_global_obj_state(state=
, &i915->display.pmdemand.obj);
>>=20
>> Wouldn't it be safer if we returned early here when pmdemand_state is
>> NULL?
>>=20
>> I think to_intel_pmdemand_state(NULL) pmdemand_state just happens to
>> work (i.e. still returns NULL) because the "base" member is at the
>> beginning of the struct. However, we shouldn't rely on that IMO.
>
>Well. It is a valid point. But the base pointer is the first member for ex=
aclty the reason you
>pointed out. So  to prevent someone from accidentally move that "base" fro=
m that position, I added a
>BUILD_BUG_ON() check. There are few other state objects which lack such a =
check. I will address that
>as a separate patch.

Hm... Not sure I am totally convinced here. If we are enforcing (with
BUILD_BUG_ON()) the base to be the first member, then what is the point in =
using
container_of() instead of just a simple cast?

I believe one of the points of using container_of() is that it alows we *no=
t* to
enforce a strict layout of the containing struct for things to work.

Now, if for some (yet unkown) reason we need to move the "base" member in t=
he
future, it would be difficult to find all places where the pointer could be=
 NULL
but we relied one the assumption that "base" would always be at offset 0.

>
>>=20
>> > +
>> > +=C2=A0 return to_intel_pmdemand_state(pmdemand_state);
>> > +}
>> > +
>> > +static struct intel_pmdemand_state *
>> > +intel_atomic_get_new_pmdemand_state(struct intel_atomic_state *state)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 struct intel_global_state *pmdemand_state;
>> > +
>> > +=C2=A0 pmdemand_state =3D intel_atomic_get_new_global_obj_state(state=
, &i915->display.pmdemand.obj);
>>=20
>> Just as with intel_atomic_get_old_pmdemand_state(), shouldn't we return
>> early if pmdemand_state is NULL here?
>>=20
>> > +
>> > +=C2=A0 return to_intel_pmdemand_state(pmdemand_state);
>> > +}
>> > +
>> > +int intel_pmdemand_state_init(struct drm_i915_private *i915)
>> > +{
>> > +=C2=A0 struct intel_pmdemand_state *pmdemand_state;
>> > +
>> > +=C2=A0 pmdemand_state =3D kzalloc(sizeof(*pmdemand_state), GFP_KERNEL=
);
>> > +=C2=A0 if (!pmdemand_state)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return -ENOMEM=
;
>> > +
>> > +=C2=A0 intel_atomic_global_obj_init(i915, &i915->display.pmdemand.obj=
,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &pmdemand_state->base,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &intel_pmdemand_funcs);
>> > +
>> > +
>> > +=C2=A0 if (IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Wa_14016740=
474 */
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_de_rmw(i=
915, XELPD_CHICKEN_DCPR_3, 0, DMD_RSP_TIMEOUT_DISABLE);
>> > +
>> > +=C2=A0 return 0;
>> > +}
>> > +
>> > +void intel_pmdemand_init(struct drm_i915_private *i915)
>> > +{
>> > +=C2=A0 mutex_init(&i915->display.pmdemand.lock);
>> > +=C2=A0 init_waitqueue_head(&i915->display.pmdemand.waitqueue);
>> > +}
>>=20
>> The functions intel_pmdemand_state_init() and intel_pmdemand_init() are
>> both called from the same place. Furthermore,
>> intel_pmdemand_state_init() isn't only initializing the state, as the
>> Wa_14016740474 workaround is programmed there. Could we have only the
>> function intel_pmdemand_init() and incorporate what
>> intel_pmdemand_state_init() does in it?
>
>I tried that earlier and wasn't possible. Because the intel_power_domains_=
init_hw() will call the
>pmdemand debuf config. And I can't recall the other issue. But I will conf=
irm this again and update
>as I am not able to try this locally.

Well, regarding intel_power_domains_init_hw(), wouldn't the solution be to =
call
the single init function for PM Demand before that one is called? Am I miss=
ing
something?

>>=20
>> > +
>> > +static bool pmdemand_needs_update(struct intel_atomic_state *state)
>> > +{
>> > +=C2=A0 bool changed =3D false;
>> > +=C2=A0 struct intel_crtc *crtc;
>> > +=C2=A0 int i;
>> > +=C2=A0 const struct intel_bw_state *new_bw_state, *old_bw_state;
>> > +=C2=A0 const struct intel_cdclk_state *new_cdclk_state;
>> > +=C2=A0 const struct intel_crtc_state *new_crtc_state, *old_crtc_state=
;
>> > +=C2=A0 const struct intel_dbuf_state *new_dbuf_state, *old_dbuf_state=
;
>> > +
>> > +=C2=A0 for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_stat=
e,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 new_crtc_state, i) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_bw_state =
=3D intel_atomic_get_new_bw_state(state);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_bw_state =
=3D intel_atomic_get_old_bw_state(state);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_dbuf_state=
 =3D intel_atomic_get_new_dbuf_state(state);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 old_dbuf_state=
 =3D intel_atomic_get_old_dbuf_state(state);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_cdclk_stat=
e =3D intel_atomic_get_new_cdclk_state(state);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if ((new_bw_st=
ate && new_bw_state->qgv_point_peakbw !=3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 old_bw_state->qgv_point_peakbw) ||
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (new_dbuf_state && new_dbuf_state->active_pipes !=3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 old_dbuf_state->active_pipes) || new_cdclk_state)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 changed =3D true;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * break =
needs to be removed, if some crtc_state dependent
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * parame=
ters are added here
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 break;
>> > +=C2=A0 }
>> > +
>> > +=C2=A0 return changed;
>> > +}
>> > +
>> > +int intel_pmdemand_atomic_check(struct intel_atomic_state *state)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 int port_clock =3D 0;
>> > +=C2=A0 struct intel_crtc *crtc;
>> > +=C2=A0 struct intel_encoder *encoder;
>> > +=C2=A0 const struct intel_bw_state *new_bw_state;
>> > +=C2=A0 const struct intel_cdclk_state *new_cdclk_state;
>> > +=C2=A0 const struct intel_crtc_state *new_crtc_state, *old_crtc_state=
;
>> > +=C2=A0 const struct intel_dbuf_state *new_dbuf_state;
>> > +=C2=A0 struct intel_pmdemand_state *new_pmdemand_state;
>> > +=C2=A0 enum phy phy;
>> > +=C2=A0 int i, ret;
>> > +
>> > +=C2=A0 if (DISPLAY_VER(i915) < 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> > +
>> > +=C2=A0 if (!pmdemand_needs_update(state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>> > +
>> > +=C2=A0 new_pmdemand_state =3D intel_atomic_get_pmdemand_state(state);
>> > +=C2=A0 if (IS_ERR(new_pmdemand_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR=
(new_pmdemand_state);
>> > +
>> > +=C2=A0 ret =3D intel_atomic_lock_global_state(&new_pmdemand_state->ba=
se);
>> > +=C2=A0 if (ret)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;
>> > +
>> > +=C2=A0 /* Punit figures out the voltage index based on bandwidth*/
>> > +=C2=A0 new_bw_state =3D intel_atomic_get_bw_state(state);
>> > +=C2=A0 if (IS_ERR(new_bw_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR=
(new_bw_state);
>> > +
>> > +=C2=A0 /* firmware will calculate the qclck_gc_index, requirement is =
set to 0 */
>> > +=C2=A0 new_pmdemand_state->qclk_gv_index =3D 0;
>> > +=C2=A0 new_pmdemand_state->qclk_gv_bw =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 min_t(u16, new=
_bw_state->qgv_point_peakbw, 0xffff);
>> > +
>> > +=C2=A0 new_dbuf_state =3D intel_atomic_get_dbuf_state(state);
>> > +=C2=A0 if (IS_ERR(new_dbuf_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR=
(new_dbuf_state);
>> > +
>> > +=C2=A0 i =3D hweight8(new_dbuf_state->active_pipes);
>> > +=C2=A0 new_pmdemand_state->active_pipes =3D min(i, 3);
>> > +
>> > +=C2=A0 new_cdclk_state =3D intel_atomic_get_cdclk_state(state);
>> > +=C2=A0 if (IS_ERR(new_cdclk_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return PTR_ERR=
(new_cdclk_state);
>> > +
>> > +=C2=A0 new_pmdemand_state->voltage_index =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_cdclk_stat=
e->logical.voltage_level;
>> > +=C2=A0 /* KHz to MHz */
>> > +=C2=A0 new_pmdemand_state->cdclk_freq_mhz =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 DIV_ROUND_UP(n=
ew_cdclk_state->logical.cdclk, 1000);
>> > +
>> > +=C2=A0 new_pmdemand_state->active_phys_plls_mask =3D 0;
>> > +
>> > +=C2=A0 for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_stat=
e,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 new_crtc_state, i) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!new_crtc_=
state->hw.active)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 encoder =3D in=
tel_get_crtc_new_encoder(state, new_crtc_state);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (!encoder)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 continue;
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 phy =3D intel_=
port_to_phy(i915, encoder->port);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (intel_is_c=
10phy(i915, phy))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 new_pmdemand_state->active_phys_plls_mask=
 |=3D BIT(phy);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 port_clock =3D=
 max(port_clock, new_crtc_state->port_clock);
>> > +=C2=A0 }
>>=20
>> As previously noted in https://patchwork.freedesktop.org/patch/530495=C2=
=A0,
>> I'm under the impression that this loop would not let us account for al
>> active crtcs, only those currently being touched by this atomic
>> transaction. Am I wrong to assume that
>> for_each_oldnew_intel_crtc_in_state() would only iterate over crtcs
>> touched by the atomic update?
>
>I checked the intel_bw_check_data_rate() which should be doing something s=
imilar to find out about
>the datarate from eachi pipe and figure out the total data rate. So I thou=
ght this should be
>sufficient.=20

I took a quick look at intel_bw_check_data_rate()'s implementation and I th=
ink
it works there because struct intel_bw_state has arrays containing values f=
or
each pipe, meaning that those not included in the atomic update would alrea=
dy
contain the current values from previous transactions.

For the number of active phy PLLs, I believe we can handle it similarly to =
how
it is done by intel_calc_active_pipes().

Now, for the maximum port_clock, maybe we could use the array approach like=
 done
with intel_bw_check_data_rate(). So we can always have all port_clock value=
s
here.

>
>>=20
>> > +
>> > +=C2=A0 /* To MHz */
>> > +=C2=A0 new_pmdemand_state->ddiclk_freq_mhz =3D DIV_ROUND_UP(port_cloc=
k, 1000);
>> > +
>> > +=C2=A0 /*
>> > +=C2=A0=C2=A0 * Setting scalers to max as it can not be calculated dur=
ing flips and
>> > +=C2=A0=C2=A0 * fastsets without taking global states locks.
>> > +=C2=A0=C2=A0 */
>> > +=C2=A0 new_pmdemand_state->scalers =3D 7;
>> > +
>> > +=C2=A0 ret =3D intel_atomic_serialize_global_state(&new_pmdemand_stat=
e->base);
>> > +=C2=A0 if (ret)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return ret;
>> > +
>> > +=C2=A0 return 0;
>> > +}
>> > +
>> > +static bool intel_pmdemand_check_prev_transaction(struct drm_i915_pri=
vate *i915)
>> > +{
>> > +=C2=A0 return !((intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST=
(1)) &
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 XE=
LPDP_PMDEMAND_REQ_ENABLE) ||
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (intel_de_read=
(i915, GEN12_DCPR_STATUS_1) &
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 XELPDP_P=
MDEMAND_INFLIGHT_STATUS));
>> > +}
>> > +
>> > +static bool intel_pmdemand_req_complete(struct drm_i915_private *i915=
)
>> > +{
>> > +=C2=A0 return !(intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1)) &
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 XELPDP_P=
MDEMAND_REQ_ENABLE);
>> > +}
>> > +
>> > +static int intel_pmdemand_wait(struct drm_i915_private *i915)
>> > +{
>> > +=C2=A0 DEFINE_WAIT(wait);
>> > +=C2=A0 int ret;
>> > +=C2=A0 const unsigned int timeout_ms =3D 10;
>> > +
>> > +=C2=A0 ret =3D wait_event_timeout(i915->display.pmdemand.waitqueue,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 intel_pmdemand_req_complete(i915),
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 msecs_to_jiffies_timeout(timeout_ms));
>> > +=C2=A0 if (ret =3D=3D 0)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_err(&i915-=
>drm,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "timed out waiting for Punit PM Demand Re=
sponse\n");
>> > +
>> > +=C2=A0 return ret;
>> > +}
>> > +
>> > +/* Required to be programmed during Display Init Sequences. */
>> > +void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 u8 dbuf_slices)
>> > +{
>> > +=C2=A0 u32 dbufs =3D min_t(u32, hweight8(dbuf_slices), 3);
>> > +
>> > +=C2=A0 mutex_lock(&i915->display.pmdemand.lock);
>> > +=C2=A0 if (drm_WARN_ON(&i915->drm,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 !intel_pmdemand_check_prev_transaction(i9=
15)))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto unlock;
>> > +
>> > +=C2=A0 intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 XELPDP_PMDEMAND_DBUFS_MASK, XELPDP_PMDEMAND_DBUFS(dbufs));
>> > +=C2=A0 intel_de_rmw(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 XELPDP_PMDEMAND_REQ_ENABLE);
>> > +
>> > +=C2=A0 intel_pmdemand_wait(i915);
>> > +
>> > +unlock:
>> > +=C2=A0 mutex_unlock(&i915->display.pmdemand.lock);
>> > +}
>> > +
>> > +static void update_pmdemand_values(const struct intel_pmdemand_state =
*new,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *old,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 u32 *reg1, u32 *reg2)
>> > +{
>> > +=C2=A0 u32 plls, tmp;
>> > +
>> > +=C2=A0 /*
>> > +=C2=A0=C2=A0 * The pmdemand parameter updates happens in two steps. P=
re plane and
>> > +=C2=A0=C2=A0 * post plane updates. During the pre plane, as DE might =
still be
>> > +=C2=A0=C2=A0 * handling with some old operations, to avoid unwanted p=
erformance
>> > +=C2=A0=C2=A0 * issues, program the pmdemand parameters with higher of=
 old and new
>> > +=C2=A0=C2=A0 * values. And then after once settled, use the new param=
eter values
>> > +=C2=A0=C2=A0 * as part of the post plane update.
>> > +=C2=A0=C2=A0 */
>> > +
>> > +=C2=A0 /* Set 1*/
>> > +=C2=A0 *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_BW_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->qclk_gv_bw, new->qclk_gv_bw) : new->qcl=
k_gv_bw;
>> > +=C2=A0 *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_BW(tmp);
>> > +
>> > +=C2=A0 *reg1 &=3D ~XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->voltage_index, new->voltage_index) :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 new->voltage_index;
>> > +=C2=A0 *reg1 |=3D XELPDP_PMDEMAND_VOLTAGE_INDEX(tmp);
>> > +
>> > +=C2=A0 *reg1 &=3D ~XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->qclk_gv_index, new->qclk_gv_index) :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 new->qclk_gv_index;
>> > +=C2=A0 *reg1 |=3D XELPDP_PMDEMAND_QCLK_GV_INDEX(tmp);
>> > +
>> > +=C2=A0 *reg1 &=3D ~XELPDP_PMDEMAND_PIPES_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->active_pipes, new->active_pipes) :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 new->active_pipes;
>> > +=C2=A0 *reg1 |=3D XELPDP_PMDEMAND_PIPES(tmp);
>> > +
>> > +=C2=A0 *reg1 &=3D ~XELPDP_PMDEMAND_PHYS_MASK;
>> > +=C2=A0 plls =3D hweight32(new->active_phys_plls_mask);
>> > +=C2=A0 if (old)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 plls =3D max(p=
lls, hweight32(old->active_phys_plls_mask));
>> > +=C2=A0 *reg1 |=3D XELPDP_PMDEMAND_PHYS(plls);
>>=20
>> If plls > 7, we would be potentially programming this wrong (e.g. for
>> plls=3D8, we would setting the field to 0).
>
>Thanks for pointing that out. Fixed.
>
>>=20
>> > +
>> > +=C2=A0 /* Set 2*/
>> > +=C2=A0 *reg2 &=3D ~XELPDP_PMDEMAND_CDCLK_FREQ_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->cdclk_freq_mhz, new->cdclk_freq_mhz) :
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 new->cdclk_freq_mhz;
>> > +=C2=A0 *reg2 |=3D XELPDP_PMDEMAND_CDCLK_FREQ(tmp);
>> > +
>> > +=C2=A0 *reg2 &=3D ~XELPDP_PMDEMAND_DDICLK_FREQ_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->ddiclk_freq_mhz, new->ddiclk_freq_mhz) =
:
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 new->ddiclk_freq_mhz;
>> > +=C2=A0 *reg2 |=3D XELPDP_PMDEMAND_DDICLK_FREQ(tmp);
>> > +
>> > +=C2=A0 /* Hard code scalers to 7*/
>>=20
>> I think this comment can be dropped: the hardcoding happens in
>> intel_pmdemand_atomic_check().
>
>Done
>>=20
>> > +=C2=A0 *reg2 &=3D ~XELPDP_PMDEMAND_SCALERS_MASK;
>> > +=C2=A0 tmp =3D old ? max(old->scalers, new->scalers) : new->scalers;
>> > +=C2=A0 *reg2 |=3D XELPDP_PMDEMAND_SCALERS(tmp);
>> > +
>> > +=C2=A0 /*
>> > +=C2=A0=C2=A0 * Active_PLLs starts with 1 because of CDCLK PLL.
>> > +=C2=A0=C2=A0 * TODO: Missing to account genlock filter when it gets u=
sed.
>> > +=C2=A0=C2=A0 */
>> > +=C2=A0 *reg2 &=3D ~XELPDP_PMDEMAND_PLLS_MASK;
>>=20
>> I think we are missing the ternary operator here to select the maximum
>> value for the pre-plane case.
>As pet the above comments, it is just the plls from step earlier + 1

Ah, got it. Thanks.

>
>>=20
>> > +=C2=A0 *reg2 |=3D XELPDP_PMDEMAND_PLLS(plls + 1);
>> > +}
>> > +
>> > +static void intel_program_pmdemand(struct drm_i915_private *i915,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *new,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 const struct intel_pmdemand_state *old)
>> > +{
>> > +=C2=A0 bool changed =3D false;
>> > +=C2=A0 u32 reg1, mod_reg1;
>> > +=C2=A0 u32 reg2, mod_reg2;
>> > +
>> > +=C2=A0 mutex_lock(&i915->display.pmdemand.lock);
>> > +=C2=A0 if (drm_WARN_ON(&i915->drm,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 !intel_pmdemand_check_prev_transaction(i9=
15)))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto unlock;
>>=20
>> According to the spec, we should wait and timeout after 10ms here.
>>=20
>> > +
>> > +=C2=A0 reg1 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(=
0));
>> > +=C2=A0 mod_reg1 =3D reg1;
>> > +
>> > +=C2=A0 reg2 =3D intel_de_read(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(=
1));
>> > +=C2=A0 mod_reg2 =3D reg2;
>> > +
>> > +=C2=A0 update_pmdemand_values(new, old, &mod_reg1, &mod_reg2);
>> > +
>> > +=C2=A0 if (reg1 !=3D mod_reg1) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_de_write=
(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(0),
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 mod_reg1);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 changed =3D tr=
ue;
>> > +=C2=A0 }
>> > +
>> > +=C2=A0 if (reg2 !=3D mod_reg2) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_de_write=
(i915, XELPDP_INITIATE_PMDEMAND_REQUEST(1),
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 mod_reg2);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 changed =3D tr=
ue;
>> > +=C2=A0 }
>> > +
>> > +=C2=A0 /* Initiate pm demand request only if register values are chan=
ged */
>> > +=C2=A0 if (changed) {
>>=20
>> Nitpick: we could have
>>=20
>> =C2=A0=C2=A0=C2=A0 if (!changed)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 goto =
unlock;
>>=20
>> and dedent the block below.
>
>Done.
>>=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_dbg_kms(&i=
915->drm,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "initate pmdemand=
 request values: (0x%x 0x%x)\n",
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 mod_reg1, mod_reg=
2);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_de_rmw(i=
915, XELPDP_INITIATE_PMDEMAND_REQUEST(1), 0,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 XELPDP_PMDE=
MAND_REQ_ENABLE);
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_pmdemand=
_wait(i915);
>> > +=C2=A0 }
>> > +
>> > +unlock:
>> > +=C2=A0 mutex_unlock(&i915->display.pmdemand.lock);
>> > +}
>> > +
>> > +static bool
>> > +intel_pmdemand_state_changed(const struct intel_pmdemand_state *new,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const struc=
t intel_pmdemand_state *old)
>> > +{
>> > +=C2=A0 return memcmp(&new->qclk_gv_bw, &old->qclk_gv_bw,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 sizeof(*new) - offsetof(typeof(*new), qclk_gv_bw)) !=
=3D 0;
>> > +}
>> > +
>> > +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state=
)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 const struct intel_pmdemand_state *new_pmdmnd_state =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_g=
et_new_pmdemand_state(state);
>> > +=C2=A0 const struct intel_pmdemand_state *old_pmdmnd_state =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_g=
et_old_pmdemand_state(state);
>> > +
>> > +=C2=A0 if (DISPLAY_VER(i915) < 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > +
>> > +=C2=A0 if (!new_pmdmnd_state ||
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 !intel_pmdemand_state_changed(new_pmdm=
nd_state, old_pmdmnd_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > +
>> > +=C2=A0 intel_program_pmdemand(i915, new_pmdmnd_state, old_pmdmnd_stat=
e);
>> > +}
>> > +
>> > +void intel_pmdemand_post_plane_update(struct intel_atomic_state *stat=
e)
>> > +{
>> > +=C2=A0 struct drm_i915_private *i915 =3D to_i915(state->base.dev);
>> > +=C2=A0 const struct intel_pmdemand_state *new_pmdmnd_state =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_g=
et_new_pmdemand_state(state);
>> > +=C2=A0 const struct intel_pmdemand_state *old_pmdmnd_state =3D
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_atomic_g=
et_old_pmdemand_state(state);
>> > +
>> > +=C2=A0 if (DISPLAY_VER(i915) < 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > +
>> > +=C2=A0 if (!new_pmdmnd_state ||
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 !intel_pmdemand_state_changed(new_pmdm=
nd_state, old_pmdmnd_state))
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return;
>> > +
>> > +=C2=A0 intel_program_pmdemand(i915, new_pmdmnd_state, NULL);
>> > +}
>> > diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> > b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> > new file mode 100644
>> > index 000000000000..0114f4e0225a
>> > --- /dev/null
>> > +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.h
>> > @@ -0,0 +1,24 @@
>> > +/* SPDX-License-Identifier: MIT */
>> > +/*
>> > + * Copyright =C2=A9 2023 Intel Corporation
>> > + */
>> > +
>> > +#ifndef __INTEL_PMDEMAND_H__
>> > +#define __INTEL_PMDEMAND_H__
>> > +
>> > +#include <linux/types.h>
>> > +
>> > +struct drm_i915_private;
>> > +struct intel_atomic_state;
>> > +struct intel_crtc_state;
>> > +struct intel_plane_state;
>> > +
>> > +void intel_pmdemand_init(struct drm_i915_private *i915);
>> > +int intel_pmdemand_state_init(struct drm_i915_private *i915);
>> > +void intel_program_dbuf_pmdemand(struct drm_i915_private *i915,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 u8 dbuf_slices);
>> > +void intel_pmdemand_pre_plane_update(struct intel_atomic_state *state=
);
>> > +void intel_pmdemand_post_plane_update(struct intel_atomic_state *stat=
e);
>> > +int intel_pmdemand_atomic_check(struct intel_atomic_state *state);
>> > +
>> > +#endif /* __INTEL_PMDEMAND_H__ */
>> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i9=
15_irq.c
>> > index 2b94b8ca8ec9..907fa3aee179 100644
>> > --- a/drivers/gpu/drm/i915/i915_irq.c
>> > +++ b/drivers/gpu/drm/i915/i915_irq.c
>> > @@ -41,6 +41,7 @@
>> > #include "display/intel_fifo_underrun.h"
>> > #include "display/intel_hotplug.h"
>> > #include "display/intel_lpe_audio.h"
>> > +#include "display/intel_pmdemand.h"
>> > #include "display/intel_psr.h"
>> > #include "display/intel_psr_regs.h"
>> >=20
>> > @@ -1986,12 +1987,25 @@ static u32 gen8_de_pipe_fault_mask(struct drm_=
i915_private *dev_priv)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 return GEN8_DE_PIPE_IRQ_FAULT_ERRORS;
>> > }
>> >=20
>> > +static void intel_pmdemand_irq_handler(struct drm_i915_private *dev_p=
riv)
>> > +{
>> > +=C2=A0 wake_up_all(&dev_priv->display.pmdemand.waitqueue);
>> > +}
>> > +
>> > static void
>> > gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>> > {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 bool found =3D false;
>> >=20
>> > -=C2=A0 if (iir & GEN8_DE_MISC_GSE) {
>> > +=C2=A0 if (DISPLAY_VER(dev_priv) >=3D 14 &&
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 (iir & (XELPDP_PMDEMAND_RSP | XELPDP_P=
MDEMAND_RSPTOUT_ERR))) {
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (iir & XELP=
DP_PMDEMAND_RSPTOUT_ERR)
>>=20
>> I think we should have the (iir & (XELPDP_PMDEMAND_RSP |
>> XELPDP_PMDEMAND_RSPTOUT_ERR)) part as nested if statement here.
>> Otherwise, when the interrupt did not happen, we could endup checking
>> for the GEN8_DE_MISC_GSE even when DISPLAY_VER(dev_priv) >=3D 14.
>>=20
>> Even though we know that iir & GEN8_DE_MISC_GSE would be false in this
>> situation (because both XELPDP_PMDEMAND_RSPTOUT_ERR and GEN8_DE_MISC_GSE
>> map to the same bit), I think having that one checked only for previous
>> display engines would sound more correct semantically speaking.
>
>Thanks. updated.
>
>>=20
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 drm_dbg(&dev_priv->drm,
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 "Error waiting for Punit PM Demand Response\n");
>> > +
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 intel_pmdemand=
_irq_handler(dev_priv);
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 found =3D true=
;
>> > +=C2=A0 } else if (iir & GEN8_DE_MISC_GSE) {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 intel_opregion_asle_intr(dev_priv);
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 found =3D true;
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>> > @@ -3742,7 +3756,10 @@ static void gen8_de_irq_postinstall(struct drm_=
i915_private *dev_priv)
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (IS_GEMINILAKE(dev_priv) || IS=
_BROXTON(dev_priv))
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 de_port_masked |=3D BXT_DE_PORT_GMBUS;
>> >=20
>> > -=C2=A0 if (DISPLAY_VER(dev_priv) >=3D 11) {
>> > +=C2=A0 if (DISPLAY_VER(dev_priv) >=3D 14)
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 de_misc_masked=
 |=3D XELPDP_PMDEMAND_RSPTOUT_ERR |
>> > +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 XELPDP_PMDEMAND_RSP;
>> > +=C2=A0 else if (DISPLAY_VER(dev_priv) >=3D 11) {
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 enum port port;
>> >=20
>> > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if (intel_bios_is_dsi_present(dev_priv, &port))
>> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i9=
15_reg.h
>> > index dde6e91055bd..60c007aea1ce 100644
>> > --- a/drivers/gpu/drm/i915/i915_reg.h
>> > +++ b/drivers/gpu/drm/i915/i915_reg.h
>> > @@ -4426,8 +4426,10 @@
>> > #define GEN8_DE_MISC_IMR _MMIO(0x44464)
>> > #define GEN8_DE_MISC_IIR _MMIO(0x44468)
>> > #define GEN8_DE_MISC_IER _MMIO(0x4446c)
>> > -#define=C2=A0 GEN8_DE_MISC_GSE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 (1 << 27)
>> > -#define=C2=A0 GEN8_DE_EDP_PSR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 (1 << 19)
>> > +#define=C2=A0 XELPDP_PMDEMAND_RSPTOUT_ERR=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 REG_BIT(27)
>> > +#define=C2=A0 GEN8_DE_MISC_GSE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 REG_BIT(27)
>> > +#define=C2=A0 GEN8_DE_EDP_PSR=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 REG_BIT(19)
>> > +#define=C2=A0 XELPDP_PMDEMAND_RSP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(3)
>> >=20
>> > #define GEN8_PCU_ISR _MMIO(0x444e0)
>> > #define GEN8_PCU_IMR _MMIO(0x444e4)
>> > @@ -4512,6 +4514,33 @@
>> > #define=C2=A0 XELPDP_DP_ALT_HPD_LONG_DETECT=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 REG_BIT(1)
>> > #define=C2=A0 XELPDP_DP_ALT_HPD_SHORT_DETECT=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(=
0)
>> >=20
>> > +#define XELPDP_INITIATE_PMDEMAND_REQUEST(dword)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _MMIO(0x45230 + 4 * (dword))
>> > +#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_BW_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(31, 16)
>> > +#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_BW(x)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_BW_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK=
(14, 12)
>> > +#define=C2=A0 XELPDP_PMDEMAND_VOLTAGE_INDEX(x)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_VOLTAGE_INDEX_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK=
(11, 8)
>> > +#define=C2=A0 XELPDP_PMDEMAND_QCLK_GV_INDEX(x)=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_QCLK_GV_INDEX_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PIPES_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(7, 6)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PIPES(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_FIEL=
D_PREP(XELPDP_PMDEMAND_PIPES_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_DBUFS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(5, 4)
>> > +#define=C2=A0 XELPDP_PMDEMAND_DBUFS(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_FIEL=
D_PREP(XELPDP_PMDEMAND_DBUFS_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PHYS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(2, 0)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PHYS(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RE=
G_FIELD_PREP(XELPDP_PMDEMAND_PHYS_MASK, x)
>> > +
>> > +#define=C2=A0 XELPDP_PMDEMAND_REQ_ENABLE=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(31)
>> > +#define=C2=A0 XELPDP_PMDEMAND_CDCLK_FREQ_MASK=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(30, 20)
>> > +#define=C2=A0 XELPDP_PMDEMAND_CDCLK_FREQ(x)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_CDCLK_FREQ_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_DDICLK_FREQ_MASK=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(18, 8)
>> > +#define=C2=A0 XELPDP_PMDEMAND_DDICLK_FREQ(x)=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_DDICLK_FREQ_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_SCALERS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 REG_GENMASK(6, 4)
>> > +#define=C2=A0 XELPDP_PMDEMAND_SCALERS(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
>> > REG_FIELD_PREP(XELPDP_PMDEMAND_SCALERS_MASK, x)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PLLS_MASK=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_GENMASK(2, 0)
>> > +#define=C2=A0 XELPDP_PMDEMAND_PLLS(x)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 RE=
G_FIELD_PREP(XELPDP_PMDEMAND_PLLS_MASK, x)
>> > +
>> > +#define GEN12_DCPR_STATUS_1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 _MMIO(0x464=
40)
>> > +#define=C2=A0 XELPDP_PMDEMAND_INFLIGHT_STATUS=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(26)
>> > +
>> > #define ILK_DISPLAY_CHICKEN2=C2=A0=C2=A0 _MMIO(0x42004)
>> > /* Required on all Ironlake and Sandybridge according to the B-Spec. *=
/
>> > #define=C2=A0=C2=A0 ILK_ELPIN_409_SELECT REG_BIT(25)
>> > @@ -4671,6 +4700,9 @@
>> > #define=C2=A0=C2=A0 DCPR_SEND_RESP_IMM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 REG_BIT(25)
>> > #define=C2=A0=C2=A0 DCPR_CLEAR_MEMSTAT_DIS=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(24)
>> >=20
>> > +#define XELPD_CHICKEN_DCPR_3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 _MMIO(0x46438)
>> > +#define=C2=A0=C2=A0 DMD_RSP_TIMEOUT_DISABLE=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 REG_BIT(19)
>> > +
>> > #define SKL_DFSM=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 _MMIO(0x51000)
>> > #define=C2=A0=C2=A0 SKL_DFSM_DISPLAY_PM_DISABLE=C2=A0 (1 << 27)
>> > #define=C2=A0=C2=A0 SKL_DFSM_DISPLAY_HDCP_DISABLE=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 (1 << 25)
>> > --=20
>> > 2.34.1
>> >=20
>
