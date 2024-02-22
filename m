Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B95A867713
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Feb 2024 14:46:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DBD710F1DD;
	Mon, 26 Feb 2024 13:46:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BhMUtrtq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 714CE10E995
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 15:52:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708617162; x=1740153162;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=7gwueMIEEo3DW5u79ieKPO+6LO6z7gqfXllVY1zO/o8=;
 b=BhMUtrtqWAL5HrRFjR+0A3vfcYVzjB+2GoQDuQHRiD4rraZD4VaWFh4k
 e9vLxO/sondh4pxcV4yM99D0KMAg1gfeFa5uJ/WCBOwDjUyyIdcy4/7zt
 SG8j9fC7uTO5+Q8V0Nj9m29O6D8VtE1rZialwNt0pwnmp4PF3e3SIvldb
 bHSyDtgLEGtJmt8fXJXzQjgftSSZnf2LeZ9Mc76b0A/zPVaqICTuKDzh4
 4gpq5B+ENhEuQ/wlzH6LYqjG4jWcJ4GiIfjVaAzWwEAtPmNBPgpHu5uzV
 egejjk1crpyCKveSkEfIniGL38A5zcW1atFxeBFhwIuQTuZe7+mdIOn9B g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="6669823"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="6669823"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 07:52:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5843363"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 07:52:41 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 07:52:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 07:52:39 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 07:52:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VXAB6Cl3H6THPCVF71anN/ae+GCjRYTDD56dA/c8sbAjbYfRP9SHsXVa/wkgjii4UIZ93R/tpTkM6PQ+FNFgdc/WI7yX2lPy75qw2rFjyr4PZG5oSBzajEze7mAzQaWhncUt9X7a3ZTvb8hyIfQiZ6tI1o1ZG3ItHiD16/Zt66gBJ6E902fUe0kHobY++W9271eX9kZogBJSEiYsuY6Y4H6Imy7EjyL3cp0sLiRoi3QpB5yHyOtJzv8TzKR0itWs9QpI8Fyq+m+bs2n9do/icFbnLfnMm0XHLdfmbGqCp+Cz7yvikleOueMPfNwATdRItD3ihtPyF6oXNKK+66mrVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7gwueMIEEo3DW5u79ieKPO+6LO6z7gqfXllVY1zO/o8=;
 b=YgIKfocY/DWH810d9wrYrFS0pgZVNr/Vsa1EXdJ4ImWXppj4G1EwBGnXGAZxvnPCSHBKsmXMA9pbCA40ga5/lDr91DrCD5fCM9S/b0LdbWSL7Xw5WalJ9COQPTKF96yP30PzpIZ1ZvDnwgH6NlkLtt5icqYX2DwHbu2ajKriov3NNsOjWn9qvuSUkN9wZ/s0jDKugTOd15SupSgFEN2BBHXLlab0RQhn2NVPfFP2ppz0dAEPokg3xaZkcvabh+T8nYa262BzqBQmV+2YiOzMcWYbJvspWMV3RYNDSeDHYLx7v3HbIYOYJUV7YQIBRvqrYar1dcyvu2CAHWUc5v6U3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by BL1PR11MB5366.namprd11.prod.outlook.com (2603:10b6:208:31c::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.21; Thu, 22 Feb
 2024 15:52:37 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 15:52:36 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
 <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>, "intel-gfx@"
 <lists.freedesktop.org intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Date: Thu, 22 Feb 2024 12:52:30 -0300
Message-ID: <170861715086.2814.18127854298394047481@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MWH0EPF00056D02.namprd21.prod.outlook.com
 (2603:10b6:30f:fff2:0:1:0:f) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|BL1PR11MB5366:EE_
X-MS-Office365-Filtering-Correlation-Id: 576e10e6-b843-45f3-acd3-08dc33be4a64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5vuQlgtXOF0Dma68OXDArUj08s1zh49jc5rZYPDNIyot3LoYVe4bXVpm41NmOV3AS/HTiNkdvoCDkXtBYvaNYS5BhCMkd52BD+aa+th8xnGV+khVC00IwK6akCqYMsTI5b55aAwwvHNk9zj0fcZZkswduva077GVxn/5maducqq9o0QIN7Ihs+PQ7DThUX+J+2MokMamEs+MOJ6ZlovSk9tCI+730h8EPzXlRuhdTLbfUXCpzHDkoqBimdG627e1LdYFU3nSAsn25AvJVenTCXBtr+ZCYIiKEkrCC5QhU5PQClRzaodXySDq1/bOMOvDtSi+Cu/EHjHKMtPLX4llFBVAClNLgo//Aeevs/9CAtwE3/P46zh8UFVGyfF9wklZoV7zAcEWIREFTJmPUKbGXW0T89J0eQuigYwCquws0JOgnJMnjPCg6CaYRuoULvZpdCQe8bI6E7aLgRWeqaGKPNNmhHl5i5+tXQuL4lgsd8EeawWo84vkMqWdYiJouwtMzynQq9704D5IEuE+7zgnOg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXV0Q3lxendleHNZQXZmZHpYaU5YSHZpYTBpeHdXV2JoV0ZvRzFHeGxIMkdk?=
 =?utf-8?B?VzJtMUd6cmd2MFZsQTB4OWhZNEQ0eHFRU2pQd2RpMXNCMXJ0ZnN0bUpXMW51?=
 =?utf-8?B?UEJPdlN6NU9pVUVORGJ5QkE0SGZjbDk1b1czc0t4Q0htaUdWVTNGR1JWVGF0?=
 =?utf-8?B?c2ZCNWVhWVJVbHlFN0IvWE5wa0oyQ2x3STlyOEVmZ050a1JxSHVyUGg5bUJ5?=
 =?utf-8?B?VWhSOXMyV29lM0o1dUxvZDhSdjkvUTk1emVqcWVDWWoraVg5VURPamNjTzU2?=
 =?utf-8?B?Y3p5RjMwdmdMWFVBQXZMT25pdWxaa3J5OGV6THhRN2VIcGFVV0YvOGowdlJn?=
 =?utf-8?B?UE5iLzUyQzFyMXI5VFdRWFFPbVNMREwyUG02WlNnWW9wcWtuRS93Y1RCMEpm?=
 =?utf-8?B?ek10ZWF0d00rTndSSDNZUFlWekFJUkxnSFJaTExrVXRRVW1GY2tVWXM2WnAw?=
 =?utf-8?B?NDAzazhraEdmQ1VVYkxxWnprZTBMeWREZjlNZVBwenU5VE5wMTdqRDFuc0VJ?=
 =?utf-8?B?dGZzcHFSa2xOVFlwNkRPVlFDeGNNaG05VjRMaW1BQUJUbHRDdm8rNk9sd0Rp?=
 =?utf-8?B?eENiZlIzV3U0TGRNQ0F0Yis3UCtRM2h5Tmc0Z2NMVi84OEU4eVh2bXJQNXFX?=
 =?utf-8?B?K0M3ajRHRVZMZUtnWHM4Unl2cFJRMThJUFVONGJXdmpBMHA1cHNkL0grbWU1?=
 =?utf-8?B?VXlMU1haUnBsd1lIU2ZxcEhIVTNqdFQ2Yno3by9hb0dMRzAvaVNCQ3lRUkxY?=
 =?utf-8?B?bFl1TFVDVS9jcUdjYjJFKzhjb0RlZWtZTE9yV1BrS0JvSEd6TFVwTHZXbUov?=
 =?utf-8?B?OG1zZlI2N1FGRDU5SmgyS0FvaWY5VXdSVlloMEJ6ck5Nc1Z6Yy8rZzd1VkpO?=
 =?utf-8?B?VThwTStNa0JzQ3RDQjBsZzg4NHUrd0FEVnk0cHQwTzRDTXg3bklhTkhoN0Jt?=
 =?utf-8?B?SHc3MkFCck9CaDBXRUJmZ2pzUTU5V1NJdXRHNzhnb2ZDdEZrdUF0UzdIUzZB?=
 =?utf-8?B?V2EzSE1JRDJUZ29XVDdlL1FSSjUwTDhNZmlNOUZwY1FvakIvUU5yV0RKN2Jy?=
 =?utf-8?B?cG5KV3J0TGlJOTBOUjRpRGpVbTF2dllkR0xlRzlmc0s3NjYvK0NaOUZiQTQ0?=
 =?utf-8?B?WHdwMktuYjZWanhRWktYQXF6dkpiR0FrdFdVdWRweWc5Zzg4VnRDdzhIaCs0?=
 =?utf-8?B?a1VQTEEvTjExRTY3dDNnTVhPL1NQVDBJREQrZ0RSS0N2REJISzFhWDU3Q1dB?=
 =?utf-8?B?RG9rRzE2d0VQSnkvU0NSQk80dFhtVWh4S2J6dFRVSEl5NFlKQlR6WkFGdzJ1?=
 =?utf-8?B?RndTNmVZNlFmYURvWmpzTGdTcWlFajl5bXhDemdabEY0SW5zL2VyK0ZnZWI2?=
 =?utf-8?B?RjFRYUV3T0R5VkVFZDVGdXBZMkRhcUkwZU1SdlVVWVcrNFVvc2pUeUpRMnZ0?=
 =?utf-8?B?ZGx1bGNKbU5yNjFtN0RiNjBVRkE0eHBXYWtNSnd1VU9pWkdTaHlMTWkyMThL?=
 =?utf-8?B?M0J5SWo1bTdreVhiRzh4S1dmM2dkRzV0Q0REdFJIWXowNTdETE0zN1l5N1Fu?=
 =?utf-8?B?ZmNoWlNJbkNuVjlMMjZLUjR0dlM4TlE2MHVRais4T25kL05HYUhhZDJqTnBT?=
 =?utf-8?B?RWZITStLR3VLa0tDLy92UG80TmhJSlBQU29XMWhXUCtXaFFET0NOR1hUYlRh?=
 =?utf-8?B?cUo4L2pvcVpKcG91cmJsWUJhUGQxNWhSRERJajF3VEZadmVlUnpnajR5MER4?=
 =?utf-8?B?L1R2RnJzUFQ2eHFZNFh3U1oyZ2tqWVRzK3J1Z25tUDBFSDJMTFNhemNXaERo?=
 =?utf-8?B?TVdzeTVuSnFwTlprRFBNZXJJd3V4K1NMaGcvd3FjOVVPamlPUlVvbE1vNWZa?=
 =?utf-8?B?KzZrcU5jdW5kamhjUEVLdkNlSmhnZWRydE1PT05BZ1JxdHdLV2U5VWZyUm1Z?=
 =?utf-8?B?YmZNdUFIK0NhNitGMi9na1ppdmYrbHhXeFlqYU5qMm5Xa00zR2dCVnJsbk8w?=
 =?utf-8?B?dndqNzVUYVRLQ3RJeHJKRmRGbW9xWXR4dGd5a0ZuTnNrUnAwUStsMWpYM2l1?=
 =?utf-8?B?d2FuUGtFdFpjSE5ONGRtdXlLekd0ZjlYQVN2WEd6d0VUakFYVXZHVWV0WDFx?=
 =?utf-8?B?NGl2aC9OYnlzSzd5TFNUTEM4dFYxeDB3TFBBK1VuUDV6Ris2elNHRnJKMmVR?=
 =?utf-8?B?T0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 576e10e6-b843-45f3-acd3-08dc33be4a64
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 15:52:36.5646 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Et12OpUeYAZp64niuoxHv1HiQnhkHYoHYvo9C4mV/M+a98lHaAKqFE3tMDaA5TQOez2Tu/KXwUaW0UQ9xpmtQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5366
X-OriginatorOrg: intel.com
X-Mailman-Approved-At: Mon, 26 Feb 2024 13:46:52 +0000
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

Hi, guys.

Quoting Govindapillai, Vinod (2024-02-22 11:39:32-03:00)
>Hi,
>
>Well.. sorry.. I didn't know Gustavo is already working on this!
>@Gustavo, pls ignore this series if you are arealdy working on this. Pleas=
e let me know

Yeah. I have a couple of local fixes to apply to those commits, but I'm
not finished yet. If you are okay with that, I can finish what I've
already started and send a fresh new series (considering that this
series has no modifications to what we already have).

--
Gustavo Sousa

>
>On Thu, 2024-02-22 at 08:02 -0600, Lucas De Marchi wrote:
>> +Gustavo as he was looking at upstreaming these patches.
>>=20
>> Were the issues with mdclk handling pointed out at latest attempt fixed?
>> =C2=A0From the changelog it doesn't seem so.
>>=20
>> https://lore.kernel.org/all/20230908224303.GX2706891@mdroper-desk1.amr.c=
orp.intel.com/
>
>Yeah.. i did not notice these comments! Lets wait for Gustavo's reply
>
>BR
>vinod
>
>>=20
>> and also worth taking a look at previous versions:
>> https://lore.kernel.org/all/?q=3Ds%3A%22Introduce+MDCLK_CDCLK+ratio+to+D=
Buf%22
>>=20
>> Lucas De Marchi
>>=20
>> On Thu, Feb 22, 2024 at 02:56:28PM +0200, Vinod Govindapillai wrote:
>> > Rest of the cdclk patches as well as the patches to enable the display=
 in LNL
>> >=20
>> > Balasubramani Vivekanandan (2):
>> > =C2=A0drm/i915/xe2lpd: Load DMC
>> > =C2=A0drm/xe/lnl: Enable the display support
>> >=20
>> > Ravi Kumar Vodapalli (1):
>> > =C2=A0drm/i915/lnl: Add programming for CDCLK change
>> >=20
>> > Stanislav Lisovskiy (3):
>> > =C2=A0drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
>> > =C2=A0drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
>> > =C2=A0drm/i915/xe2lpd: Update mbus on post plane updates
>> >=20
>> > drivers/gpu/drm/i915/display/intel_cdclk.c=C2=A0=C2=A0=C2=A0 | 74 ++++=
++++++++++++++-
>> > drivers/gpu/drm/i915/display/intel_display.c=C2=A0 |=C2=A0 5 +-
>> > drivers/gpu/drm/i915/display/intel_dmc.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0 9 ++-
>> > drivers/gpu/drm/i915/display/skl_watermark.c=C2=A0 | 35 +++++++--
>> > drivers/gpu/drm/i915/display/skl_watermark.h=C2=A0 |=C2=A0 1 +
>> > .../gpu/drm/i915/display/skl_watermark_regs.h |=C2=A0 2 +
>> > drivers/gpu/drm/xe/xe_pci.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 =
1 +
>> > 7 files changed, 118 insertions(+), 9 deletions(-)
>> >=20
>> > --=20
>> > 2.34.1
>> >=20
>
