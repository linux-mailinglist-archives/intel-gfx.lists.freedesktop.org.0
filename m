Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77CAA85FD93
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 17:05:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E2210E9BB;
	Thu, 22 Feb 2024 16:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQEB5ap+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A7EA10E9A7
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 16:05:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708617947; x=1740153947;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=2RoK18XMNbi/f/ybJrqacQG6UC1bMv9yiE0OAmf+Ry8=;
 b=TQEB5ap+NP2zv/PSGwp6KugvrhnwB1/GnmXiwYLfD9RjQXYsB0OjdJaW
 jbUqoBdK5e+f17Qvx8VeQpdQQ3Nsu2Kirm+Q8tgpevXLxXuNfne7NhGEX
 5WT/Oy2MZXOPh40X0d6hsHRFsJ8A8hBGTvEIwjwCFKYwz60LUMbW2eZcZ
 aTzVP7nh2fOyfFFzm9w0xmYDe+Slym21rIv33YpCXUVwnTXvvvNM9GYfQ
 4FRjKVH0C2knF0kSSdpUF4fNlMk4zY7USygq/J/mSq0RJkbc3s6gUYACS
 K6B3ueAt0Ea00xxxBlvttK1C6H4HR3FuUevpUzxQ0rAc0V2fc+Fc6n/Ll g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10992"; a="14268916"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="14268916"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 08:05:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; 
   d="scan'208";a="5482077"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 08:05:06 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 08:05:06 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 08:05:06 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 08:05:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hV+MNccscNBAOovMl8I0yRpaOBSnBoXLYGfwS10Xv9sYCyK+FWm7tOsTw0SRGqgGOnKFa7aifqVF4KHeoF71TcOyLon+QVCTkDGce0EsJEWdHAZ6ILAcQMSaxkUuIF+ldKq9gKkgSMfvqc/mTLYTCwfhI7hh/LT9sNOWiOnp4Bfn/oED5pVxUUr7CtuEferfdSX51d65vYBQDmyauPK320cUYA1szuvgr5efQAJWh3BSxLHnVV/09gKXFZiRhTSGCoJYrpV1Gko45uT5BoQss95526j9JdwacXJWRMw7YCwd7iAZDGlPRWO5K95y7i5FiOva7N2QPiH3RKzioPhouQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2RoK18XMNbi/f/ybJrqacQG6UC1bMv9yiE0OAmf+Ry8=;
 b=CE/Hfksg27VX/Bgaxb4GN2J0u7B3+12NqkfaOQGty6ZecJ2bLHg5vKkARcC2SYf6Dn1rYR/YV/oeFmuIYmUUqmzePcwlZcy6e/qysN/o9PqZwvwajMxwyKIf3jpEHTYvkw3E2YzlS65pNOQpfTJnJcOBx56ftqK7JoRoOX0PUDJlVClZi14mx8pEbCEosBe1QvKvX31tWYV/T2ApVBrkzuCOg6wh8+0ng/rqjRBZBmXLclhLmi1u89svG8jSs9oK3gGM5HfNYO2IGI7StlNPMfOZ6Ra8fJsWRsTnTth16WFIu4miu6sml+X4qnR44Z42nxlvuw4RibGK2CZUhqMVkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8352.namprd11.prod.outlook.com (2603:10b6:806:377::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.39; Thu, 22 Feb
 2024 16:05:04 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::64e6:ee24:79f8:efa%4]) with mapi id 15.20.7292.036; Thu, 22 Feb 2024
 16:05:03 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
 <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Roper,
 Matthew D" <matthew.d.roper@intel.com>
Date: Thu, 22 Feb 2024 13:04:59 -0300
Message-ID: <170861789903.2814.7356806408680497622@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0157.namprd03.prod.outlook.com
 (2603:10b6:303:8d::12) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8352:EE_
X-MS-Office365-Filtering-Correlation-Id: beef0cfc-8710-41f8-8176-08dc33c007ac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LH+YD+hofPP0fyxxEUF2Wj6sW0L8gNos9+4C26boqCuja895rsQQdT/fdXCRM+staoup0jMjKcMgcRb3eT3dzdnzL1zPu+wrP0esGeHK/ukpVhCQG3YdwXPoBZnsLL1I4ht6bFH3yhM3M9MmJxO4oLfQJ+5IdWZ1l6qK4OYvPzBrctu9oMCiPdAT57xei6rZA5Obc81hZebTILZOwutW2qILATIbw31wotAGs+7tedmAgQPCee9l7LFYZikRjQ00VZT6Jcn0eHces44sSXeDzkX0NLNYDMu/v0GZbzvPytPsYbO6cO1QMg6gT+aXcycSObzfJQiOIHflinSBLMb656zY821olbIBWoM2VFCE3KyYgGWYWOnMxE5G12S6xCNvEE1Z5Q/X4VoWXQvibQq43yV5VGe+EIpTipNX6y7lJhUj+LX0YTzba6NqolC45o1WUbggWmUcArOghIUAcEvvhPSNPyRHWKb09qjaSJWtUVK2LZ5hk//5dsOqASitXY9KsVEn4jd+EIeTnzCgaAJ5UQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cEpuVVdSeXl6YkFaQ0hqdVRFbTViQ0RtSG5VSS9GelJLdFp2c1V6S1dCbUFa?=
 =?utf-8?B?QXBGdW9teEx3US9sYnE4ZFQ3dkZ2aEdUU0lZaGZPSkdmRVljU3dHV1NSSUcw?=
 =?utf-8?B?VjlsU1VLbVp1S0RmS0FqNHRSWUhNY2d4OGZQQm0zN1NnMXVvZ01GR3g1MXhn?=
 =?utf-8?B?OGNibmc4WmErbzZ0bVAzeFNLMkRPc1QwOXE3WGZsWlNUaGZnZUxKQUw0MGx5?=
 =?utf-8?B?UnU4TVRuSVlCdEhESFlwZDgxM3JDYnJXRTh3MDhRMmhseHFKMkh5T3FkNGd2?=
 =?utf-8?B?NXE3QmN3ajRnRGlFZTJHcWJqdVJBL2xmSDg3VUFUWi9HcmE0TWtWZVQ1cHZJ?=
 =?utf-8?B?YzNTdnNQTXl6NHNFTEp2UTBEMHdZcU52b3BGemF4M0ViaW54Y3NLSlNsNDA4?=
 =?utf-8?B?a05NYks0YnBHQmhhZmlwUEF5OXZ5UXZUdDF5QlJ1TVVLMTVNMFA4WnVtODBM?=
 =?utf-8?B?ZlNGTHh1YWRCVmZSUWlhWWJkc1h3K0NFdEJQWE1kN281Vmcvbm9rY0VzRlVW?=
 =?utf-8?B?T2xyWUNBSXJVeFpJdit4SHhoNHlLZE5panFzU3p2cHROV1F5YjAxOUJQNHBV?=
 =?utf-8?B?UG1TNzY4cC9FeHI3UmwvMURkN0xPei9EMEJaV3YxNkM1MzJuM2I4M1hhVmVi?=
 =?utf-8?B?UVRJYks3V3JIbjl1dWlNbGd6eU9HZmk4NENFYVltRGVjbzQxb0xISXo1aENP?=
 =?utf-8?B?RXF1WHF4UWVieURwS1k3STVMbmw5MloyM1FMekVwUHpnOExLQ21wOThXWU1v?=
 =?utf-8?B?ZUJIdXNmUUI1VUlROXR1aUkwRm95Z09xeGo3ZXh1TG81U2RtQUhUQ1VkeGtv?=
 =?utf-8?B?QUZFbzJMelJWbGZ4b0FUeEVhVjNTQjBhbmJOMXRRblEydnN0WkEzczZic0U0?=
 =?utf-8?B?LzVTTllOSHBwU3NuODBvVGVTZFZ1ZGVWUEdCSC9HK3Yzc2RoQUxodDYwanpI?=
 =?utf-8?B?Q0p1dE1hRHVlcGM3aG9lckxQYzZ4eUVYVGNHT2NzM3FvaTBQUGo0cW96SzBt?=
 =?utf-8?B?dmh2R3RnN3dHdUFYV1UvdlhMN085TW4wV05YVU1XcUp5WWpyU3Vta21HR25t?=
 =?utf-8?B?eDZtdUhRNVBmYUpkWGlSQzFncXM0bVZIMHhlRFRWL2FjSS8rWnVCOVhpZTFB?=
 =?utf-8?B?Qm55cGd0ejBKY1NNK1p2WnpsclFDMU4rd3drTzJPTGpPZkg2THkrTXRoRy9h?=
 =?utf-8?B?R2Eyajc2QlNQUGFMVkdSbGZ2MFNTekNvcWFLeXh1ZlpNdU10TWw5blMrb3RI?=
 =?utf-8?B?NmlXWTkwc2E3bDdlUmVnRllLOWZ4NFUwNnh6T2txRnUzRE0rQnlxWUdtYmkr?=
 =?utf-8?B?c1BpWG1aUzVkdVg5ZFY3aHdhaDVqM2V3TjRDNW4wOHZFVzZuZmt5akREREwz?=
 =?utf-8?B?UWhnalpMWUxzaDRvU0NBS1hkKzN1d0d5S0ozRVY4R2xWb1dTbVQzL0t2RWRT?=
 =?utf-8?B?MytuVkV0akVMc2lNMk5VU2FCcFY0aHRwRnhUcjJvRUYxMzhFZzk1RXFER3VW?=
 =?utf-8?B?eFE3a3grTHlHNUhCallCZWNwSTY1M2RTWllmanNMcERvdjNXZlowNUk0eGJ5?=
 =?utf-8?B?V2pJVjMzemhxYUJ4ZjlyRkJkVTlyemNUUHV5NjNIVDdZWlhudFBXaktxMXZH?=
 =?utf-8?B?SFVvazhDZWZuYnhXR1dCN3plZjdwMlV4bld3YnRyR1FycjRQblBrVk1BVEVU?=
 =?utf-8?B?L0JsZDExbVN3RTQzS1U1QmgzTGVnbDNRbWlZTUV6N1NGWmdubU0xazl4K20v?=
 =?utf-8?B?NGVHRkpOVndnSkFIeEN1dVY0cklDTWNIVnl0Q2k2S0JQMGZKOHpYWk9uWktm?=
 =?utf-8?B?UHA2anR5UTFTR0dHUVVJNDN2RU9TYmkxT1pFVmlSUEZBWTBKQjExOEEwN1Aw?=
 =?utf-8?B?UlpkdmJSSG5uY1EvaUF2MzZrTGJ0WDlrS2p1MmJuSTh1SnR3RXAwNllWK3Bm?=
 =?utf-8?B?N1hrcFpRbWJRSUhwNnlBWjFvQ3ovaW5BWlpLMjlxV2wvTHNGQ1oyMWE4MzI5?=
 =?utf-8?B?UVVxQ05odmFGNTJsdnltQ2RUZ21WTGRqWGllMEdBR0RQYkZ1anR2bWlkbkg1?=
 =?utf-8?B?VXJvcTFIMHhSU2ZSbFBiclFCSFQwMXQ1Y1pCVXJhY2NOSkpyd3FLbGIrbzVp?=
 =?utf-8?B?bDc0eDZIYjhMaWo1Qm82Z25HWGt1L0ZWQzVIZ05LbmVtNW52cVA3cElKWTdR?=
 =?utf-8?B?WlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: beef0cfc-8710-41f8-8176-08dc33c007ac
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2024 16:05:03.7425 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Mr3l7dxVJutcscwS2jURUaZmWhzZyOVMPfb8BR2i5vzt4EDo4/xm1ejTZ86KT0UoI1fkUlgvVeEDOzYQrGGEDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8352
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

Hi, guys.

(This is a re-send, because I *think* my MUA badly formed the address to
the mailing list.)

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
