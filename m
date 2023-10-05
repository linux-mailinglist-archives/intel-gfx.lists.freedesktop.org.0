Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A8F7BA28A
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 17:40:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD2B610E170;
	Thu,  5 Oct 2023 15:40:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 660DF10E170
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 15:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696520446; x=1728056446;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=xXYXOkW/Y7gXaXBTuq81og8mex6Yc8fcjwOOBO+oEpU=;
 b=PJzE/krM1GpZQ0Ner1F4LbCf9Oeyh8RoySmDMBwWNJvUguuFmDJ1k46B
 +5htRSGABGUNeDGs9nmFYo5H9HEeSOfcwbwwHaInbOBLqawWgu+M+3m0p
 WYjKoV+HOV24JDsrRSDxsZrax3rwaFPAVOaTSLlcByWXOOdLrAbluHa4z
 PLvYcFbvXjsdZbejwsi12D9bawiPhmatVNHVb4a0bsHK7j2Sh1bmy+rW3
 2gZIVMpHSC4sHuErvjNxqopcdY2A/seD1u4tkqXXFp9709Qn0JO21ODD0
 4AmHwO58grZjRUXANtJK3bYXO8DnFYAq9xGLhlqvC97bVy5c8dZEEFuVD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="414498075"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="414498075"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 08:40:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="751801594"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="751801594"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 08:40:45 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 08:40:44 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 08:40:44 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 08:40:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SabKVdrBmOYX+VQLmUquNVnbVWk30349LMbSF1UDDugr7i9lSlxUhdYhCMkz0OHQTOp4mlbrQ6g1fDV9TFhK0Wsz3tU2tWWumSAO/sG4WU7Y6H73db2Wjm0RF4hrrSG8gfLI6Zw67o0IxsU3eY1LIdfwAplItlOFJApxww3ATOIf5qxwOz0+GS7etXQrGBJITdf/y0kdFabxvnTSVHB1yJKXJccBzlyefg4pTAtIxshFwuyHqPulFJ/uytXn+a2WDSBjfU8Sw3xvl7oKmM4eRxhz3Yh+1OSUctWimiY+1mhQXvR2ZEq+r47+h+/i4nDOGLUkIyWkA5z2Iu7qjfwRjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AzMUPvmKSFpPbNx0cmgwU+vrmxrFThAxUCwzi0xSjW0=;
 b=E57LsxCfgOs4Ue1wIvd91lGfgBC/j/InzOM8Btwco7AGc5v6kG8JIOqtjl9B7kUeuFNd6anQsgitvNxci5C5v0177+2zQxjmrw59zgOiDN5RMYWDii9L9jWplUScaJl1XtP3u+y200hpqknLH/uqMAI66GiaexfiRkmMxSlMFgS0nNscD3AeZgVIQ0xb8OhHZiy6sH/VVVkta7dyH1sIGelkmTrcD2H1lfhOI1mwbgTDHFuXek4nt2AsMmcr2bSPvG4ylcPJoEyDnAG2MFZjAI6AH0RdYaR3c6RoCNeS5Z+kMhG/U96AAAlYbfr+E4ltabPmcGwImnQqkYcWxhKgog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB8381.namprd11.prod.outlook.com (2603:10b6:610:17b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 15:40:42 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 15:40:42 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <ZR7Snm5Fnt9hOFEl@intel.com>
References: <20231004102504.497023-1-mika.kahola@intel.com>
 <ZR1g2e+gfdeJHad9@intel.com>
 <MW4PR11MB7054CF26F52F649E6D147CF0EFCAA@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZR7Snm5Fnt9hOFEl@intel.com>
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Date: Thu, 5 Oct 2023 12:40:35 -0300
Message-ID: <169652043551.1601.10514040093231401136@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0050.namprd03.prod.outlook.com
 (2603:10b6:303:8e::25) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB8381:EE_
X-MS-Office365-Filtering-Correlation-Id: 671e3b8c-dc9e-4934-b900-08dbc5b96e8a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: erXo/WGX7oJCg6m2QavdI4GbbGZuOo5SEJcHri5c7i6Oi/ls5WbixiKSfpKgYsNmlMxi45esNXstEIOjxmTYu0WvuSoIeouTdfM88K/ujEU823xwvozX6lTKLy3RBk1R7AF2sAqXlsxBszbJcTzusGwuY6FJTKTZwy6ylc+WEGD+NelBwaHqcdaEYx02u9z7KDUyOpA8Q7wvl+pndISLimX8WkQanRsOX7YhTXb+umnB42a82by3eOyxCKuDbRBQ5DUSRbLtxYo9W5wczSBT1gKbShy+vMWiEGbk8ikr6gH5nUoa4vxz13iSFpnuS8H3zflXSrYEPPABovoBEYVIfc5GdPl5uIcdnzX4DtiG5EX/kGtohHItSd48VSAZHNFwDqMNwIZSlQgSK4mIhc34Y/y0TUsVhtBVHZvgOMSxqWgnck86MisQ6p0Hxmj8kvArVqN96HHzOo0538XxqWqtlnwPW6SZDoJ50jBc/KGQQdJhuGRURLUZvVVqCvJydQos4XBNO8CQlhwQOoHLhtgAtghk0NR58whmIKaI2mr9V56v3V6eoQq2ME3M1bs9iGweHrmaYEoqwjgPxoXgOJ2X3gCvj++NHo992NMgKzquGOA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(346002)(376002)(366004)(396003)(39860400002)(230922051799003)(451199024)(1800799009)(64100799003)(186009)(26005)(6512007)(9686003)(2906002)(15650500001)(82960400001)(86362001)(33716001)(38100700002)(66556008)(66476007)(66946007)(110136005)(83380400001)(5660300002)(478600001)(44832011)(41300700001)(316002)(6636002)(6486002)(8676002)(8936002)(4326008)(53546011)(6506007)(6666004)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TTNwR2QxcTl2SEpGV1N0RFAzeWtHVlJ0a0h1ZUpFYVVoVXFteUNvcm84S0xR?=
 =?utf-8?B?d3JJUkIxaTAzU2I3Z2VqaTg0VnJUQldPSVJGTTNuVG1qWGVyelI3cU1uaVg2?=
 =?utf-8?B?V204Rm9RUG5IMHdVSzl1enRXT2hSWlh6RWU4aVdsalRCU051dnZhVS9zREtz?=
 =?utf-8?B?OGVnOEFaek4yajFnclZRVmZjKzZlc1VobG1jV2hpd0FPQmhodEtMZlp0cVJK?=
 =?utf-8?B?L3pobUNmS2xnSG9acUhuc2RkNnZ4Sk9ES2VZYnZjU1hYRG9RMnVXRWhLMEJh?=
 =?utf-8?B?a1IyUlRJdGJHRGkrOVFPUVhsK1dlTThBR0dWUzQ3YXBxSkF3bzBGTGk0d28v?=
 =?utf-8?B?QXRhZWJqMm1BYi95TVF3K1ZPNXQyU05ZZlJCQlRScUxKSjZLNFNtQWM5RlNv?=
 =?utf-8?B?VlY0bjhOcTVrcFloL0diVFhqMUx6cjV6cUN4ekIra1RBTUF3QjRscEk1RzRj?=
 =?utf-8?B?REk4SExEK0VvL2swZWxZZmhaWFJFUmpMK1FiWkdUL1RleUpqTkNrZytnMmdB?=
 =?utf-8?B?SFlqZDRmYk9lUEdwM2hWVVJIa3NGRjI3ZEJHK3ozUS9VcDhmVVpvRXE1b2ZM?=
 =?utf-8?B?emRWaStBZTN2c1BlTy9oWmRoNnVnbFhnNjFnbTFqUno2TGg0R2Foc0JDanBH?=
 =?utf-8?B?Y0Z0c2hNNVNvQXdCenlGdUdVNm1yeENiMlNLRzRPZmpYend4d3NRQzVIQWc3?=
 =?utf-8?B?dW8wUTFuOUl0aWZQNm9CUk0xa20reGpXck1VelZQMU9ZTmVhYmhaT3F1bk5S?=
 =?utf-8?B?alJXZURQTkhjYTJxd3RlWnZBdEtzUFNhYnVTL3FtOUxBV1dIRnoxaGc1SDRv?=
 =?utf-8?B?WkVJZ05kSXVnamFYMThvQ1R1clkxTjlna01GZTFzRVEvU0E2aWlxTzIydWJR?=
 =?utf-8?B?RnRQQ3F1T3RlSlAyYUhNZnUzZGo5RVdjYkVuTnBmRGJpeU40UXFSeTVBR3dU?=
 =?utf-8?B?TkxtS004VlgwUzBaNkttSmdZU3lqQXlrWVoxeGwrSUJZc1IyNFk4MktNS0hk?=
 =?utf-8?B?RXRBUnlVWUg5KzFZWjQ4b01PcXNEODRYQllGalgxczBLaFA1SnZlWlJlWU9w?=
 =?utf-8?B?YkdsT1IxWmRZampzSVFWRGs1eldBeG05TjhQN1Q1aExKSnZwa2VWNVZuckNN?=
 =?utf-8?B?bjdzbjZDM3FIVnhpVTM3NmM0SHZiUjRFdzRFQ3N5MUR3SFdOU1FHa091OWw3?=
 =?utf-8?B?cjVqVmlmeXF0dlZ2aVJEWU1vRzh5OWVyZlA0b0FrM20rZ1RaaWdKTWtWWlJj?=
 =?utf-8?B?aWllYjdNRitwTkg0TVJWU2Rub0x6KzNTdW4yc0VWOG1TZnM2SENTLzU1c3dV?=
 =?utf-8?B?NW5tQXhSUVZDb28wTWVwdlNaeEQxQklXQmx4UFgzUGhDU2p6MnZMcEtucFNY?=
 =?utf-8?B?L2QwMkx4NXVrS29GeFdYTjNBVVh1Nlc3T1BxMS82ZUsvQ2tKek9td0RZRmgr?=
 =?utf-8?B?QmY1dVNKQXVDR21uYkJJQkFsMzN0NGtiVStQWU5NRDBjRTkreEtjc0VCdDNy?=
 =?utf-8?B?clhqYnYxS1VJTWJJN1d0clQrQWwwYnVpRURYMTNmZVJXd2VvOW41ZE45cERy?=
 =?utf-8?B?NWxuSHBJRGc4bkovSzRMdWlHdDU4SXZLZHdBM1lSNGJMVG1uL0NLUjBtOXJ5?=
 =?utf-8?B?VG4yN1lBNlZidHJTRG00cDRMT3RpV2tzR1MyeVRIaFd6YXdjRDVIUVBEbllw?=
 =?utf-8?B?ZW5pSnI2dGxNLzhlTU9sa09TK2UzZkVHTWVLaVlQNlU3MmY2YzBWSlo3VHll?=
 =?utf-8?B?YWNMd21GMmVaQmZRV0RaMjBOQkZ5M0ZSQ2k1cHpvVVZzSEYvNEg4MGthQzU3?=
 =?utf-8?B?T0hvWkNFOFp1amdaZ3J6NHIwSkg2eEt3OFBNV1ZVVUtCNTg1S1IxUzk4MUdN?=
 =?utf-8?B?TWhEMU16d1l1QUFaR0EwM0s5bjcrSEJKQUVVMithaTZieU4wWFY2c0FCZTdW?=
 =?utf-8?B?SzNuZExYY21VekZnckFrUDBPTWlJakMxN1FGYUVSYlhCVGlEQTlTRGZjdHNh?=
 =?utf-8?B?ZnVDdnd1UVRwU3hWeEhRbVdKRkRFOXg4R0RUcy9TbWM4d3V3bFRjeFV6Z0h6?=
 =?utf-8?B?VXBLaTdZLzNHVFZJN3pnZmtEQTUxKzZ4L29sWHVidmZ4WXZlY0kzK2lKbjRh?=
 =?utf-8?B?NVJMd3J1WWd6L2JTM3ZOWlFKMnNra1gxc3UxQjBJVlgvUGNOSzVJR0UxV2hL?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 671e3b8c-dc9e-4934-b900-08dbc5b96e8a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 15:40:42.0083 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: arroCXwhohei3mkg6W77o6WBwsglCIESOohOmvOIQDbADhus6zt5JweU7dlr6hqvCY+IddV73ToIxIBK6P7z5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8381
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus after
 each read/write operation
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

Quoting Rodrigo Vivi (2023-10-05 12:13:34-03:00)
>On Thu, Oct 05, 2023 at 03:05:31AM -0400, Kahola, Mika wrote:
>> > -----Original Message-----
>> > From: Vivi, Rodrigo <rodrigo.vivi@intel.com>
>> > Sent: Wednesday, October 4, 2023 3:56 PM
>> > To: Kahola, Mika <mika.kahola@intel.com>
>> > Cc: intel-gfx@lists.freedesktop.org
>> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Reset message bus a=
fter each read/write operation
>> >=20
>> > On Wed, Oct 04, 2023 at 01:25:04PM +0300, Mika Kahola wrote:
>> > > Every know and then we receive the following error when running for
>> > > example IGT test kms_flip.
>> > >
>> > > [drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
>> > > [drm] *ERROR* PHY G Write 0d81 failed after 3 retries.
>> > >
>> > > Since the error is sporadic in nature, the patch proposes to reset t=
he
>> > > message bus after every successful or unsuccessful read or write
>> > > operation. However, testing revealed that this alone is not sufficie=
nt
>> > > method an additiona delay is also introduces anything from 200us to
>> > > 300us. This delay is experimental value and has no specification to
>> > > back it up.
>> >=20
>> > have you tried the delays without the bus_reset?
>> Yes, we have bumped up the delay, first from 0x100 to 0x200 and then as =
per=20
>> BSpec change 0xa000 and I have tried 0xf000. Increasing the timeout redu=
ces
>> the frequency of this error but doesn't solve this issue.
>
>what is exactly this BSPec's 0xa000? where can I see it? So maybe you can
>update the message above removing the 'no specification to back it up'.

(Resending this because I got a delivery failure notification)

I think we are confusing "delay" with the "timeout parameter" of the msgbus=
.

The PHY has a register to control the timeout parameter of msgbus transacti=
ons
(BSpec 65156). It's default value is 0x100. With commit e028d7a4235d
("drm/i915/cx0: Check and increase msgbus timeout threshold"), we had integ=
rated
a workaround that bumped the timeout value to 0x200 in case timeouts were
observed. Later on, there was a BSpec update with the formal timeout value =
to be
programmed to 0xa000, which was incorporated with commit e35628968032
("drm/i915/cx0: Add step for programming msgbus timer").

I *believe* what Rodrigo has asked was about the usleep_range() calls added=
 with
this patch, if we tried to only keep the usleed_range() without the bus res=
et.

--
Gustavo Sousa

>
>Oh, and my english is bad, but it looks to me that 'empirical' might
>sound better than 'experimental' for this case, since you really did
>a lot of experiments before coming to this final conclusion.
>
>>=20
>> > have you talked to hw architects about this?
>> Yes, HW guys requested traces which I provided but based on these the se=
quence we use in i915
>> is correct.
>>=20
>> >=20
>> > I wonder if we should add the delay inside the bus_reset itself?
>> > although the bit 15 clear check should be enough by itself and it does=
n't look like it is a hw/fw reset involved to justify the extra
>> > delay.
>> That should be enough. To me, it looks like when reading/writing to the =
bus maybe too fast, the hw cannot handle that and we need
>> to reset and let things settle down before trying again.
>>=20
>> >=20
>> > well, at least some /* FIXME: */ or /* XXX: */ comments is desired alo=
ng with the messages if we are going with this hack without
>> > understanding why...
>> True, I will add these the the patch.
>>=20
>> Thanks for review!
>>=20
>> -Mika-
>> >=20
>> > >
>> > > Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>> > > ---
>> > >  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 6 ++++++
>> > >  1 file changed, 6 insertions(+)
>> > >
>> > > diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > index abd607b564f1..a71b8a29d6b0 100644
>> > > --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> > > @@ -220,9 +220,12 @@ static u8 __intel_cx0_read(struct drm_i915_priv=
ate *i915, enum port port,
>> > >          /* 3 tries is assumed to be enough to read successfully */
>> > >          for (i =3D 0; i < 3; i++) {
>> > >                  status =3D __intel_cx0_read_once(i915, port, lane, =
addr);
>> > > +                intel_cx0_bus_reset(i915, port, lane);
>> > >
>> > >                  if (status >=3D 0)
>> > >                          return status;
>> > > +
>> > > +                usleep_range(200, 300);
>> > >          }
>> > >
>> > >          drm_err_once(&i915->drm, "PHY %c Read %04x failed after %d
>> > > retries.\n", @@ -299,9 +302,12 @@ static void __intel_cx0_write(stru=
ct drm_i915_private *i915, enum port port,
>> > >          /* 3 tries is assumed to be enough to write successfully */
>> > >          for (i =3D 0; i < 3; i++) {
>> > >                  status =3D __intel_cx0_write_once(i915, port, lane,=
 addr, data,
>> > > committed);
>> > > +                intel_cx0_bus_reset(i915, port, lane);
>> > >
>> > >                  if (status =3D=3D 0)
>> > >                          return;
>> > > +
>> > > +                usleep_range(200, 300);
>> > >          }
>> > >
>> > >          drm_err_once(&i915->drm,
>> > > --
>> > > 2.34.1
>> > >
