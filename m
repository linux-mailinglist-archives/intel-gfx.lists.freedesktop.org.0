Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 646CC7BDE87
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Oct 2023 15:20:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 238CD10E0DD;
	Mon,  9 Oct 2023 13:20:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E4AD10E02B
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696519985; x=1728055985;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=eR1idJfjSw+6y6i6Z4zL01QRPku2SwNjFD6oAGYXlAU=;
 b=MFTFDoXffWe2wqTKbQFOX0w37ebJZbNZoPjHHvUzUdQHmR/HcutMTrBz
 aEWZvxZwRoEYUChSUYu39DbEn3/08CocKFAcHkYdn/QxxZ96SRRRHYHrS
 bJNq5QMYJUH1nqcXeRlrVj1qmqQNt3LsDt90aMClqGmcYDuwzj52W5wsX
 llh1tzxBUfx1MtZ4kcO1azL2wo1tQWlsSheOQ/pZtiFTZjbDklJaKNPD6
 VKyWPGGmralFSbRwwjl021LtIa6mkrQOuXqc1z77Y8dt20/gxPcOsJUQ2
 nM+A26teL0H5FghuNI9A6ZwybEjh5KxgtdjubJANKStRD/PNSUq9uCHwY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="5096150"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="5096150"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 08:32:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="781287906"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="781287906"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Oct 2023 08:32:55 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 5 Oct 2023 08:32:55 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 5 Oct 2023 08:32:55 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 5 Oct 2023 08:32:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NzCNxo6TSiguA9DX+0nKjVROsQ130oMQIX0UTiqu7mnjM3NZKhOjdu//pEsMWHqF7cnbrpOqMfPy3UOOohMMP8/alXI2OmlXONwVulpB0ol6UNjxTWhjf+kI9pGAX2jJZsvGkV/UqQduStw9roZt7DyNLnkS6qCS38NVOWHBw93jbMYzyA5QsuXAExmruTgTZpdWUSIduoLXgdPh5RrJGAb7wwvOI+4OEoA6uUhg0yVlsizCVT3kYncJj9qAQ4yxvWF/pWsSwWICN/jrFxFikTvKQMVX5mf3ZW4FBCLBQ1xMLodiEpSUfMZEq9ahHnh2EEjhPI2vYxkMhsH2Ok5ilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=O0RBBYeC/PqtDlfSLpbb6xnMud8x67+L2eMTLqs5hqs=;
 b=ngbsBdKURUpqs2D/Ss4FQfe4/u95TWWYLz5dL7OW2JzAfQI6CxaHbggN9oMZGdwz2jdTvnAvN3fruwMzllg+FFCwFarPjPth0ssk7SNpz+mSbr2XxfCq4f6mCohuEH3PzfzWnwN8hTUtiErSGuzjVLhYI/CcgrhSqxGtOfquJ74mPZFOKhgU6K/FU68vWduneHN8mS2FUtlr064gj5jozrYgzTL/uL8j/wD3WK58Wl7lX5Hf6IyDGUO0PCsRjLrhuskCcK+RvijWtUIJOL7U0Dkk53CIBvyg6CR5z12IW+yD+ZIo6vlIlI/VUcYkuhQCtjvKAgzTFwUjXf6gk0PHGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CH3PR11MB8364.namprd11.prod.outlook.com (2603:10b6:610:174::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.37; Thu, 5 Oct
 2023 15:32:41 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d89f:e7e6:dbb3:3ddf%6]) with mapi id 15.20.6838.033; Thu, 5 Oct 2023
 15:32:40 +0000
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
Date: Thu, 5 Oct 2023 12:32:32 -0300
Message-ID: <169651995213.1601.17589719186650175414@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0157.namprd04.prod.outlook.com
 (2603:10b6:303:85::12) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CH3PR11MB8364:EE_
X-MS-Office365-Filtering-Correlation-Id: 24cd399d-6e28-4e21-aca5-08dbc5b84f33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0iYqkxI0aBktJn4bV7TWhyxq/L46Qki1R7fKxax1dOLLOAVHsiiae3Pd1GxZJKblgvJeSTyM8QbbcQAMCngIb5pj4y7+SZZhd/okAznOWzk6MeYAHjttOvQdq1D2TdtE4Q6pWNvmimXnf2ZHYOwBAEO6nfMtJSGEBgdSSphMC+q3kLWiqoeywTpBXtZEknsb5UbYRuMvy7EP0EO1RR/Z8WHbsxOv/0n168YEnL9+UZZVrBN+hQ4/UbXEAE11MJ3QbYGtd3kghlchUdnKjOL0FZqZLEJoaAjTfv6sKgwaypZthNVLm4IvDMXJJv7xtUj7oqhKHtEHKU3kdcIObsujNpEegA0NiPszmUKk8wxFUnepuEqtvIAzx6MzyUaIUz8p69GK11tj1tM8w6fnU3axRvjmwsB0EhZWs5Btu8TnrMtMuJ6X1JozVyp6vmt8eleAFB/ChBK8sOpv7GG3Zbzy3mhyiK9NutGRFYC8tGY8D/BVezIks0SDI7q+x2arXopKFe+VusImr2StTmPYIVca+5D2o9ooOZY83b3Lleu63W0nXv/JWVNfB7VqQB7EG7cjWHTxs/GAlKsrYsHM1Cp/NqAm23R6g086n7QzVqEBfCc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(136003)(366004)(346002)(39860400002)(376002)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(66556008)(66946007)(6636002)(316002)(66476007)(41300700001)(6512007)(9686003)(53546011)(26005)(6666004)(6506007)(478600001)(6486002)(38100700002)(82960400001)(86362001)(83380400001)(33716001)(110136005)(44832011)(15650500001)(2906002)(8936002)(8676002)(4326008)(5660300002)(21314003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHJUM3duQnNDekxGU1BubTlwN2VJRmN2ZVBmSkUzNE5KK3dxSE5IVy91dlh0?=
 =?utf-8?B?dURwWVBWbHM4ckxhRGFHbjNuMTB0eVQxMG1McjZmcUpTZjdpQzFua3czYVdq?=
 =?utf-8?B?eEdKVUQ5QmJMWnB4ZWhNUkMrUnFxYk5ZamF3azFaM1d5MFJ1K0dWRmlJcnZL?=
 =?utf-8?B?Mmdsc1RrZ05aQVNSK25qV0JMRmxxOERScmRRRmcwZ0lpaVVPUWJwZDUvMGtU?=
 =?utf-8?B?d1c3VWZyVFdyU1VxYmdSelRwSllrWDRSZ1Zzc2ZoNDNIVXFtS1E2eUhWS3pk?=
 =?utf-8?B?blhTZW1xbkNCSzRTTEMyS0oyc3hJTWtYa2pGZHhhTFZRN0UyNmZRang0UE1l?=
 =?utf-8?B?WVV2Ny93U0NXdVNvbWN5SWx1NlVlWnhlVjI2ZE1Ed05QQ2hwcHJLaGZ1QWpX?=
 =?utf-8?B?M3NWbWJVYUdzemx3VS8rdFRaN1l4cGhhT0pKTGZqNGhLY2lSTWVBRVh3dzkw?=
 =?utf-8?B?OGpESldhenpxcWlBOUxSVXE5NzlsQllodEJLUGdJa3I3U3lyS01odGlibVYz?=
 =?utf-8?B?ZWplSVpGaDlvQ21wL2g1aGVkNWhjSFpiSFJXV2pCRnhHT0hvcHdOLzhKRkVS?=
 =?utf-8?B?bmVGNzQ0Q3Q0Z2hFV2U0SGxWT2ZkOHpQMTZnMlZzZThlcWNhUy9zZGg1MEE5?=
 =?utf-8?B?OGZZdWd6a3A4azg0cUdydURSRWo1UXhVUVJiSDVjaDNRZUNhNHBnTFpBSzdh?=
 =?utf-8?B?azVrYi80QUZzMmVjTzk1aEd5bG5peVh3MHdvL2h3bDBoUTZLQzAwQS8ya1gy?=
 =?utf-8?B?R1FFSnJYZ0tqRjFkS1ZFT0o2YnB1bWRtU2JYNXV6cnlVUGN2ZjBVZXArVlVY?=
 =?utf-8?B?SlZ5WjVzMHlqeXBUTmk0c290b0xHeHVNaTBFajVKUU56blViRkxUWjFlMEdB?=
 =?utf-8?B?QUFDT3cyc3ZtMWVJNUtVaUdxVE5wQm4wUE9iYmErWnY0djVzQWUxWm9uUGp2?=
 =?utf-8?B?cnhMQURWeWxuejVxZ0xibFpOdVhVZjFsbnZaZjBmVDNCZ0ZmUy80WDhYNUlH?=
 =?utf-8?B?dGNSNlBKcXpVcDFYKzMwdHo5dDJkU0ZhV1pwSDBadkhjaEFVcDJ5RkZrUzli?=
 =?utf-8?B?QktqNGFOdFVjdW5RbWtyeU9BTVIwc2ZmdlRXRElTcm80S3E5T1VEZk5YdUFQ?=
 =?utf-8?B?RjA1SHdOZlpIczUySE1nL2RMQUtzN3pEdlVaMVFROU16SG8xZ2h0MTlkQXdW?=
 =?utf-8?B?Tlc2RmYwL1dqV1ZEbmZMRTVMeGY3ZTZDS1haSmxsbXc5MTJzOUNPdE1XRUlY?=
 =?utf-8?B?b3FBVFB2K1ZTTXlTUlBCTEF1WWRwWFF6anpKOGloNTlSY2t6YU81RXlhV0Ro?=
 =?utf-8?B?WEpRUktBZkViRjNmMWhGaHFQMFNGK2pnRjRwa3B6THNpcHpoSnFtMWVTT0lU?=
 =?utf-8?B?UHA3SnZYcUVxYksvRzBWc3BOclBXcitrWDRMekVYRDU5a3VybTJyTS9RL3dy?=
 =?utf-8?B?eTRyanBMY1ZhRTNJSzhyejVwdjhNZlZqc3NYZEpLZ1MwTWxRUEh0dm95Tk50?=
 =?utf-8?B?c1VGVkRNTVZISnNnQTFQY1JMWHljR2I4UWtyRmFkdGFpaktFNVZQK3pKamJv?=
 =?utf-8?B?WVdWK3JHNkVzNDhpWCtuM2ZqT1BoU1E0NDNSamxaMm5zbTFsUTZybHBCUjBi?=
 =?utf-8?B?V1hLejdoSCtMMXNsRURsMzA3eWJGQ05CdXRnTFFBK2NPc0xpZG5Ra1BMYWlz?=
 =?utf-8?B?ZWlLSmJlR0FHTStmNzZYNVpZR09pS3Qxek1pdVczZ1pYSjNjOHIyR0k3c2VW?=
 =?utf-8?B?bHBwd0FDYTB2Y1lVazlkbCs5WDZ4WHZybVpwQmxzM1hJc0pvb3BDa3V0UnZH?=
 =?utf-8?B?QlNVN3AvSWFkVWVpS080Sm1jbEdUWXZyc3NBUXdyenB4akljVUdhOGFCZ3NT?=
 =?utf-8?B?eHM1TVA1dnVQOTFreVN6RTUzZVl6S2FSa2diNFB3TkRLK2wzdWIzV0lTLzAx?=
 =?utf-8?B?dDVwOFhDMjJkTno2MzVqY2RrWDNpOFpMNmlEdjFLM3EwbktHVzlFTGVmWnZp?=
 =?utf-8?B?WlJVYTFKVUw3Z01GRXQyU1ZQWlc3WG1RM29tRFNIemhyVUtva2dEU2ROSkpD?=
 =?utf-8?B?M1E3Uk9CZ0pIYXRaNFBFVjZsK1NGSDJ2bCtkZ3JGZ0xjQmVpSXlZdUNEa2F3?=
 =?utf-8?B?L2J1WXhRWkF3cFh0ZUV4Q09Bb1JWTEV5akVYUHNlMVJJZmpaeXA0ZVpUZExE?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24cd399d-6e28-4e21-aca5-08dbc5b84f33
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Oct 2023 15:32:39.9516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0ek67qdyCQSEy5Ea5CQC+6zKcZJmgR2iunmMbjJctl+neI2B1g0a4As09PIiMExAxkKzmCxwBI2+GdqpHvhLFw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8364
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 09 Oct 2023 13:20:19 +0000
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
Cc: "intel-gfx@" <lists.freedesktop.orgintel-gfx@lists.freedesktop.org>
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
