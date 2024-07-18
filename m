Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 886F5934779
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 07:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83D4310E522;
	Thu, 18 Jul 2024 05:17:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ldvJtrBU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2814710E522
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 Jul 2024 05:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721279868; x=1752815868;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tqnTw3+NU3D9UlM7D0VqcZuHEEcBNHRIE5arF8KpReM=;
 b=ldvJtrBUC2EGI8ccRpiFomI9BdULCl+K5/dvYcZrGzl94CC6q/h+6lc9
 wxFme2b5GEjELzIAOybZ0wn0xLOHylPwrDgnDZLVY6RaAadU/B+RPhjYl
 mBXIEoEbu/kg58GejaHmdPWpuvjFqltgmJnECZaxOHAzMZE41NSmGy8Jk
 FikV/3DvcZXvNjRh9k/lV5uoQN4NtmThPu7Q0N6RIj5zuCMSXqD90Xsa9
 ECJyWspfJaSuPk2eHBxzXnmK0YN7jXkRVtBYSfTLtLPEbKEJnfhu/iivj
 HvKy9yqEAWVfVqEKSAt4P/CPIuPaTRcfx/sNy977h90jZ8YVYa69RmIt5 g==;
X-CSE-ConnectionGUID: ureoCsyBRVCx293g76q+tg==
X-CSE-MsgGUID: SH5vSdIXSi2m2W7WGB+fOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="44246254"
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="44246254"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2024 22:17:48 -0700
X-CSE-ConnectionGUID: pRIW10flRFKLlH81pcDXnw==
X-CSE-MsgGUID: xKePZ2P0R7i/xNxSB7xZxA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,216,1716274800"; d="scan'208";a="55474518"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jul 2024 22:17:48 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:17:47 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 17 Jul 2024 22:17:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 17 Jul 2024 22:17:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 17 Jul 2024 22:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=C5yd4CwlnNIivAj6Z9gEkVmY8i9/p99Cgo1aAqiOePb5heGsTyr/0M/vLlLMJ/SqprS+QdlImdQhIQDP0naOv6oslooo9PmWaWRmY9r4155JG9fKRuPdI6R1eLT/VfFlNywYYTw/4X/8ax7EF3CZgFOBspv6EZ4VlAoZkKYIP7HwUCEP9TeVhDODFpG1ZSZVxYLgqNdKK4t8k+d3eEmekd6SLUC8qfY0UlH6IhI5x2zWRBg2IbT7770+YBplsnc8jRfxxPjOosyx/LyGxUNHUhbSSC2lU8v1dkCqYWHP68E+KqhahIcn0V8IUjd1Xgx/6qy2c3HLeG/zMOOHv5rfaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tqnTw3+NU3D9UlM7D0VqcZuHEEcBNHRIE5arF8KpReM=;
 b=I+gk+wkWsPmHu+CC44t1RUT0eE0eUlZBenB25V1vIB5f0gSprNMuLdEPxS9vf6jAsJzCvdvek7Fj0nUSwkz+hw9SfK1wL/iy6J45aD0YYWWxpo+HynI2NPP+Y2oxzomMesGUlXlpOfOtjoXnBXJpP/Tyf28KVFEkDPKGYk4hjkKNJkSYub84p3JQWl4bXZNqZTzg3yBUDVak/TKGunIl0j0De7q4js9t7NqIU1COrqiVpDE8GAO/5CMcyLN8zmAjReV2waqqvj0DPmiJq4JXqsa2o8qKf3jHj7bJOJbHafH6gZtZfMfl7hss9wTYnAEp7Yr5tRaBK+OMTszUkw/NFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by CY8PR11MB7945.namprd11.prod.outlook.com (2603:10b6:930:7b::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7784.16; Thu, 18 Jul
 2024 05:17:38 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::9570:169d:a0d5:527%3]) with mapi id 15.20.7784.016; Thu, 18 Jul 2024
 05:17:37 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 1/3] drm/i915/dp: Retrain SST links via a modeset commit
Thread-Topic: [PATCH 1/3] drm/i915/dp: Retrain SST links via a modeset commit
Thread-Index: AQHa1GOFQwoqb63J2UudnWZmFKHz6LH7+qdA
Date: Thu, 18 Jul 2024 05:17:36 +0000
Message-ID: <SN7PR11MB675012ABCA66DA92A82429D0E3AC2@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240712135724.660399-1-imre.deak@intel.com>
In-Reply-To: <20240712135724.660399-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|CY8PR11MB7945:EE_
x-ms-office365-filtering-correlation-id: 6b6c600c-bd21-4fd3-7898-08dca6e8f00f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?K2k5VDR5SGVOVnFzQnVPWFNUT3JObUxrVm83SFU1bDBCNWRySXZHNkErSTE1?=
 =?utf-8?B?WDVNc1IxR0FrS2ZGcTBqRGNZMVN3R01Ia01DNjNuTnlTNE1rd1Y1aWpjMCsw?=
 =?utf-8?B?eXlVNGUySG0wU0Yzb2hKZDhVdUxZcE5pdVBxWmRTZVpiOGF1Z25CcUwwZ090?=
 =?utf-8?B?N0d0c3hsTTlveC9uZlV5QVk4a3lmVW4yTHVndmZrK3J0Mlc4ZkltZzVMOEtK?=
 =?utf-8?B?S2xiUE5adzFoM3Ruc2JhWW92REdHOHNZaVBMZE9JU3JwQmhXT1dTL3NVNHcw?=
 =?utf-8?B?YnUrYmZPUzIzS3pxc2EzY3c1WnR6UHp0UklrZm9jY0dYSkw5YVBObmt5N2Y0?=
 =?utf-8?B?amNhVjArVWc5UUVrcUdKQXVmaHFhVm5YQUVuMlBFOFZHUm9JVDF1VzYwanBR?=
 =?utf-8?B?WUtXYkxEellSeVdyd3piVmRxKzVwNVlwS3hqYTNyY3N4ZTMwMS9KK2lUSTAx?=
 =?utf-8?B?WEE5cGFZbzA1VFEyVnErOTNyREVjWGN2TWIrck1WeGNLQzVmU1plOEFwbk1x?=
 =?utf-8?B?Mjl2Y0R4RkFxbkIyNkJQVG9lRndPMDJ2YnlreWRtM1AvZTQzSVRvME4xSWlZ?=
 =?utf-8?B?ZWFZYWZkUk01VkhiRmliLzR4Q3BsOStZeXRLZDhrUUtyK3dMV0RvVlRIa1ZG?=
 =?utf-8?B?UGx5czlqek9nMmwrSTF6U2djeXNHeUtFTTNQb1lxdHZ6N2Q1cE02ZXIrM3pM?=
 =?utf-8?B?RXVUOGM2VG5SNjNuOXY3Z2N6RjNDbWdNdGJ2MjlqQ3g2UzhlOW1OK0xrcFZi?=
 =?utf-8?B?ekhGbGpLZ3NIYWJIYVduUkUveUJLZWdtQk1Oamd4SDl0TXVFVm9mOGFIRzAw?=
 =?utf-8?B?VlZDL3NOV013QlF0ZzFkWmo3VFFrUkszc1N6NHJuWFRQR212MjV5LzljWFdl?=
 =?utf-8?B?bWFCWmJUbkJDQ2kzQlkvK2FpTG9XdG52bDR5alltNHAzZmtna2hQcURCRTU1?=
 =?utf-8?B?UU9ObDdoYk1yNS9WdGtVTEY1K3FOL1hjcTV2Y2w1c1l6a2kyV3ZSRXF3UUwy?=
 =?utf-8?B?MjN3WHVvSXQ0SEQ3a0tQS1FEV0xkb2YrOStSNTBHOFd4S1dUWDd3MnE1UkN2?=
 =?utf-8?B?bFNGVEZTZHR2L1FoZzZGU1p6NnQ5dFM1S1libHdwTHR3NXlDd0dROUF0TUdJ?=
 =?utf-8?B?Mm1MSnBSMmI2UVFEMXZGcmhhYU5kY2VuTHRxZzNhU25hMmVEVnJteE85ZGFW?=
 =?utf-8?B?U05la1NFM1IyaXE1VWt0aTluTm9uazQzWXJpbnhtaXNXalloejBnYXpjSXhl?=
 =?utf-8?B?Q1pRdnEyNDZvR2VmVU5Zc2NlZjJvek1Xb0RpOHM5OUJVMStSaEZET0lpTDVk?=
 =?utf-8?B?WnFxd0U3OWxGajk5T04rbzVVK2o2RUZlbkk3eWNTMkxsZW1CYmJ3enZzNEs1?=
 =?utf-8?B?M2dQNkIxNEwwb3h3N0tSQk9UZXFzNUFOSjkweTFSTDY3NUFRclNsYk11SUww?=
 =?utf-8?B?b1pRRkwvRjlBVWhKSHpERVFEc0hERzFJdnlMYUdrZGxCbnQzRk9iaUdVVDFC?=
 =?utf-8?B?QWtnNU1xN2U0NE5MR2oxeEE0RmdFem5CS3BDTkZaVHhwU2xsUkpuRDJyNUxh?=
 =?utf-8?B?S2xOUVJkNWcxZ2xHcnBLczk1d3JFeEloeXhsbFlObGJOWi9zQ2lEVnFiQ3kv?=
 =?utf-8?B?cUliNi9Mc3YyOVRDUkFmMWJhc2tldm5yOE1pRE5KcC9CcFgxWFJ5aFRvY3hm?=
 =?utf-8?B?U20yelVBNUFtR3dCd1l2RER5N1ZXNDVsc20yeTF0amNrR1l5UVpRWDFTSjMy?=
 =?utf-8?B?NzZKTkFOa3ZnQVNiTWpWQTZzTWJmUXI5azBRWXkxQkZMUHlyZjRHeUNqd1ls?=
 =?utf-8?B?M3VoRnhqbUhBWHZSOGRaQTRFUy9kMWlZRWR3SUVpeXg2VzVRcGZOckUyTjJt?=
 =?utf-8?B?RXFlUW1ybUdFN29JM2JlNFg5b1UvNFMzaFBxQVNudDBWdXc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c0ZjUVNucnZNRlVTQnpMN1dUL3J6K2UrK01KWXNRRzQ1WGVPSGMxcFo4Q1dz?=
 =?utf-8?B?bnhkRDFnMkwxNjFialBzKzZvck9KZXIyODAyVEw0czFsVUZVaS9EMnZveGVx?=
 =?utf-8?B?cHl0MTZtM3R1WGVGczVITlNZVk1VcTcrZDhzZ0RCOVlPbDdPbGZCd1ZkNlJS?=
 =?utf-8?B?YVVFQTJpaVhiMzV5WGZzVVV4SWFVanp4QWxrQm54bjNJejdEUklSNlAxSmVx?=
 =?utf-8?B?SVNHSi9XWXVteEd3Z21RbFpkczkrdmJSdVBiaFY5Nm1HcVdsYnFXOVEwazZP?=
 =?utf-8?B?ZXF2WjNOQlBRenpwRitwR3k0aHA0d0EwbGdJa3k5RnlPN2dFR1NJbm1Rb3dD?=
 =?utf-8?B?dkhoMzhtTTlUNUJuZHZ0NTVlRkxKcXo2WjdKZTA3Y2pKbTdHNWtBU1JxeU43?=
 =?utf-8?B?d1V2UXZueEtocEZTTktYdWlOMDArWVJ0UW9sdjhnTG9seVZEKzFHWE05TUsz?=
 =?utf-8?B?OWZJYUI1RFFJVHliekdtTGVCY1RScmZHcWhDUUlhWGc4ZndrMXVibWZGaEE2?=
 =?utf-8?B?UC9SWklKODRjK1FHWU1mQ3g1bzZidk1yN082Nm5NZFhBeWxkcy9lTkZXbXlz?=
 =?utf-8?B?OHFPS0FwdUFZK1NTS00vUWw3K0Y4RDJpT0IzQWI3MXFrMytVQnBrZXY4RkND?=
 =?utf-8?B?SHBKVkNXeGhMRFMwUnJ0dVdEZEN4VVc3aFRRbVcrc1N1Y3N4b2FVNlJvZ2Ev?=
 =?utf-8?B?ZzB1U1EwN0tqNGJteGR3dE9rMXIwTzZyQUVxNThzV2ovZnpkTnNHajE3VHdl?=
 =?utf-8?B?QisxZnF6bnl1dHZ5NlRxS0RWZ2RLK0Jwa3VHT01NMDFaRTM2VjlTNXJsQ2ha?=
 =?utf-8?B?Y3k1Y0dySkxzU1Q4MC8zVWVUY1ZCbDlBMyt2RktDTGZacU1tVkxjOWE2NFJi?=
 =?utf-8?B?d2hWNFEvcjl6VmU3QW0xMExoOFRtdVFXSVBNdVk2a3h5U1lBcWtwWUdXb3pk?=
 =?utf-8?B?WFAzWjVDVnlwUm5tSWRhVHZNSGVQMFdkaFRabDZNSUQrYnNHUEFENWNtUkcw?=
 =?utf-8?B?cHI3Unh2T0tHd3NBVjFPT2MzSWtUbXhBNmRyNEdqakNMOUNTWnlSKzJ2RE83?=
 =?utf-8?B?eU5JazRWaHNnUHhZd25SOWVPR3JHSXFaZFArWFRPcnJEQ1NSUVppSmRBWEJv?=
 =?utf-8?B?WkMvTHVIOW1KL2owTzlXc1BoOWJsN3dQdDc3VDI0eSt5eHRxWHJlaS9OOEJl?=
 =?utf-8?B?TXdZeENzR2pzejBRWjNocUcwYXZUeVV4V0V3SUJPWEZLdUVsVWdldVhnM3pW?=
 =?utf-8?B?dXhnMGg2dGIzRHA5eVRhTEpXUUkrUVpuZlZRQ1YySTdoUjlOS3Q2L3J1NDU3?=
 =?utf-8?B?Z2RWbzJPakQwNjFtQWZvQW5CQ1BmOWRaSU8vdU1MTTJyUTNvNWZXNXZwNVg2?=
 =?utf-8?B?ZzhxMWhBMmFGekFYUUZ5ZlIyajRYczRBOC9vY2pweFR2QXlOdko3ZG1FdnVB?=
 =?utf-8?B?KytDTUlSci9hVE9tNXBFQzMvRTdDWmRzWnRCbDZDZ0c0UU92c3NyWC8rQzMr?=
 =?utf-8?B?MXJpMzFPazBqOGRHMHlFQ21RblhlRTV0R2FnSG0vVXF1eEwybk1iK2d1dDVL?=
 =?utf-8?B?TjVTeXJvRkhUa0YvVHRIR2xxcDZqenlCOXFyUWxsZFVPTzhGS3k2YytrSzIv?=
 =?utf-8?B?VExVVmFWdFVxZ3cvZmQ0aWpsNEMwcXIxcUlCNVR1R3d5MWdSM2RSRFN4cG4r?=
 =?utf-8?B?OXdYSGg1Y25rdWppa1U0amlJQTVWcHVCRXJaa1JXYkpDd0ZBTDdRZ3M4ZTJX?=
 =?utf-8?B?a3hvSmpOVFFOL2dVTFVQdU80V2hLbWRCSHZrRVNLdlJDMllhenVMTkpIa2JV?=
 =?utf-8?B?ZzdrcGZIVTlaR1Z0eEhza0JBVkhtaGdwcGM2T0gvUzlUMWd0MGZlVHVhRHAx?=
 =?utf-8?B?Z0cvS2F1MElYNTRBWVQreUZ5V2FuWmsrb1NDbnlrTzVuaE5rOTlBODRNbW1i?=
 =?utf-8?B?dkN6ckhadFdkSEdHd2JlWDdqeUVuc2xLc2hjbG9NbTl4dlBjbFRlaDQrNXlD?=
 =?utf-8?B?MkN0Y3Q5V1BJS2EzNnQ0V051Z2tOdWpjVm5MeXp1WUQ5MERrNm1CQ0NhVnlN?=
 =?utf-8?B?TUtKQXdFK2V1N2o4ZXRDdE05SlEyMkFNUTZYZXdLbTNVTGJDTFk5T1Q0dGVK?=
 =?utf-8?Q?Y8/cc0vUKMXO+17KoVheamztE?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b6c600c-bd21-4fd3-7898-08dca6e8f00f
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Jul 2024 05:17:36.9452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SN3qR60yo/HIq2GE1sSkj1TnjNIK9u1cdDqbOLHCqsrgTpZN0ZNnaIwBjGM+nhNQfKqTf9VFAducstmXNi4ADw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7945
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlDQo+
IERlYWsNCj4gU2VudDogRnJpZGF5LCBKdWx5IDEyLCAyMDI0IDc6MjcgUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5hdXRpeWFsLCBBbmtpdCBLIDxhbmtp
dC5rLm5hdXRpeWFsQGludGVsLmNvbT47IFZpbGxlIFN5cmrDpGzDpA0KPiA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCAxLzNdIGRybS9pOTE1L2RwOiBS
ZXRyYWluIFNTVCBsaW5rcyB2aWEgYSBtb2Rlc2V0IGNvbW1pdA0KPiANCj4gSW5zdGVhZCBvZiBk
aXJlY3QgY2FsbHMgb2YgdGhlIGxpbmsgdHJhaW5pbmcgZnVuY3Rpb25zLCB1c2UgYSBtb2Rlc2V0
IGNvbW1pdA0KPiB0byByZXRyYWluIGEgRFAgbGluayBpbiBTU1QgbW9kZSwgc2ltaWxhcmx5IHRv
IGhvdyB0aGlzIGlzIGRvbmUgaW4gRFAtTVNUDQo+IG1vZGUuIE9yaWdpbmFsbHkgdGhlIGN1cnJl
bnQgd2F5IHdhcyBjaG9zZW4gcHJlc3VtZWRseSwgYmVjYXVzZSB0aGVyZQ0KPiB3YXNuJ3QgYSB3
ZWxsLWVzdGFibGlzaGVkIHdheSBpbiBwbGFjZSBmb3IgdGhlIGRyaXZlciB0byBkbyBhbiBpbnRl
cm5hbCAodnMuDQo+IHVzZXJzcGFjZS9rZXJuZWwgY2xpZW50KSBjb21taXQuIFNpbmNlIHRoZW4g
c3VjaCBpbnRlcm5hbCBjb21taXRzIGJlY2FtZSBhDQo+IGNvbW1vbiBwbGFjZSAoaW5pdGlhbC0s
IEhETUkvVEMgbGluayByZXNldCBjb21taXQpLCBzbyB0aGVyZSBpcyBubyByZWFzb24gdG8NCj4g
aGFuZGxlIHRoZSBEUC1TU1QgbGluay1yZXRyYWluaW5nIGNhc2UgZGlmZmVyZW50bHkuDQo+IA0K
PiBBdCB0aGUgZW5kIG9mIHRoZSBjdXJyZW50IHNlcXVlbmNlIHRoZSBIVyByZXBvcnRlZCBhIEZJ
Rk8gdW5kZXJydW4gLQ0KPiB3aXRob3V0IG90aGVyIGlzc3VlcyB2aXNpYmxlIHRvIHVzZXJzIC0g
YmVjYXVzZSBkdXJpbmcgcmV0cmFpbmluZyB0aGUgbGluaydzDQo+IGVuY29kZXIvcG9ydCB3YXMg
ZGlzYWJsZWQvcmUtZW5hYmxlZCB3aXRob3V0IGFsc28gZGlzYWJsaW5nL3JlLWVuYWJsaW5nDQo+
IHRoZSBjb3JyZXNwb25kaW5nIHBpcGUvdHJhbnNjb2RlciAoYXMgcmVxdWlyZWQgYnkgdGhlIHNw
ZWMpOyB0aGUNCj4gY29ycmVzcG9uZGluZyB1bmRlcnJ1biBlcnJvciBtZXNzYWdlIHdhcyBzdXBw
cmVzc2VkIGFzIGEga25vd24gaXNzdWUuDQo+IEJhc2VkIG9uIEFua2l0J3MgdGVzdCBvbiBERzIg
dGhlIHVuZGVycnVuIGVycm9yIHdhcyBzdGlsbCByZXBvcnRlZCBhcyBpdCBnb3QNCj4gZGV0ZWN0
ZWQgd2l0aCBzb21lICh2YmxhbmspIGRlbGF5IHdydC4gb3RoZXIgcGxhdGZvcm1zLiBTd2l0Y2hp
bmcgdG8gYQ0KPiBtb2Rlc2V0IGNvbW1pdCByZXNvbHZlcyB0aGVzZSB1bmRlcnJ1biByZWxhdGVk
IGlzc3Vlcy4NCj4gDQo+IENjOiBBbmtpdCBOYXV0aXlhbCA8YW5raXQuay5uYXV0aXlhbEBpbnRl
bC5jb20+DQo+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoN
CkxHVE0sDQpSZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5j
b20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwg
NjcgKysrKy0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgNTggZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IGQ0YjFiMTg0NTNkY2EuLmY4MzEyOGFjNjA3NTYgMTAw
NjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTUyNDIs
OCArNTI0Miw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfcmV0cmFpbl9saW5rKHN0cnVjdA0KPiBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLCAgew0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpk
ZXZfcHJpdiA9IHRvX2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiAgCXN0cnVjdCBpbnRlbF9k
cCAqaW50ZWxfZHAgPSBlbmNfdG9faW50ZWxfZHAoZW5jb2Rlcik7DQo+IC0Jc3RydWN0IGludGVs
X2NydGMgKmNydGM7DQo+IC0JYm9vbCBtc3Rfb3V0cHV0ID0gZmFsc2U7DQo+ICAJdTggcGlwZV9t
YXNrOw0KPiAgCWludCByZXQ7DQo+IA0KPiBAQCAtNTI3Miw2NCArNTI3MCwxNyBAQCBzdGF0aWMg
aW50IGludGVsX2RwX3JldHJhaW5fbGluayhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciwNCj4gIAkJICAgIGVuY29kZXItPmJhc2UuYmFzZS5pZCwgZW5jb2Rlci0+YmFzZS5uYW1lLA0K
PiAgCQkgICAgc3RyX3llc19ubyhpbnRlbF9kcC0+bGluay5mb3JjZV9yZXRyYWluKSk7DQo+IA0K
PiAtCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZfcHJpdi0+ZHJtLCBjcnRj
LCBwaXBlX21hc2spDQo+IHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUgPQ0KPiAtCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsN
Cj4gKwlyZXQgPSBpbnRlbF9tb2Rlc2V0X2NvbW1pdF9waXBlcyhkZXZfcHJpdiwgcGlwZV9tYXNr
LCBjdHgpOw0KPiArCWlmIChyZXQgPT0gLUVERUFETEspDQo+ICsJCXJldHVybiByZXQ7DQo+IA0K
PiAtCQlpZiAoaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQVVRfRFBf
TVNUKSkgew0KPiAtCQkJbXN0X291dHB1dCA9IHRydWU7DQo+IC0JCQlicmVhazsNCj4gLQkJfQ0K
PiArCWludGVsX2RwLT5saW5rLmZvcmNlX3JldHJhaW4gPSBmYWxzZTsNCj4gDQo+IC0JCS8qIFN1
cHByZXNzIHVuZGVycnVucyBjYXVzZWQgYnkgcmUtdHJhaW5pbmcgKi8NCj4gLQkJaW50ZWxfc2V0
X2NwdV9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwgY3J0Yy0+cGlwZSwNCj4gZmFs
c2UpOw0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BjaF9lbmNvZGVyKQ0KPiAtCQkJaW50ZWxf
c2V0X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZfcHJpdiwNCj4gLQ0KPiBpbnRlbF9j
cnRjX3BjaF90cmFuc2NvZGVyKGNydGMpLCBmYWxzZSk7DQo+IC0JfQ0KPiAtDQo+IC0JLyogVE9E
TzogdXNlIGEgbW9kZXNldCBmb3IgU1NUIGFzIHdlbGwuICovDQo+IC0JaWYgKG1zdF9vdXRwdXQp
IHsNCj4gLQkJcmV0ID0gaW50ZWxfbW9kZXNldF9jb21taXRfcGlwZXMoZGV2X3ByaXYsIHBpcGVf
bWFzaywNCj4gY3R4KTsNCj4gLQ0KPiAtCQlpZiAocmV0ICYmIHJldCAhPSAtRURFQURMSykNCj4g
LQkJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJCSAgICAiW0VOQ09ERVI6JWQ6
JXNdIGxpbmsgcmV0cmFpbmluZyBmYWlsZWQ6DQo+ICVwZVxuIiwNCj4gLQkJCQkgICAgZW5jb2Rl
ci0+YmFzZS5iYXNlLmlkLCBlbmNvZGVyLQ0KPiA+YmFzZS5uYW1lLA0KPiAtCQkJCSAgICBFUlJf
UFRSKHJldCkpOw0KPiAtDQo+IC0JCWdvdG8gb3V0Ow0KPiAtCX0NCj4gLQ0KPiAtCWZvcl9lYWNo
X2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZfcHJpdi0+ZHJtLCBjcnRjLCBwaXBlX21hc2sp
DQo+IHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0K
PiAtCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gLQ0KPiAtCQlp
bnRlbF9kcC0+bGlua190cmFpbmVkID0gZmFsc2U7DQo+IC0NCj4gLQkJaW50ZWxfZHBfY2hlY2tf
ZnJsX3RyYWluaW5nKGludGVsX2RwKTsNCj4gLQkJaW50ZWxfZHBfcGNvbl9kc2NfY29uZmlndXJl
KGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gLQkJaW50ZWxfZHBfc3RhcnRfbGlua190cmFpbihO
VUxMLCBpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IC0JCWludGVsX2RwX3N0b3BfbGlua190cmFp
bihpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+IC0JCWJyZWFrOw0KPiAtCX0NCj4gLQ0KPiAtCWZv
cl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZfcHJpdi0+ZHJtLCBjcnRjLCBwaXBl
X21hc2spDQo+IHsNCj4gLQkJY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUgPQ0KPiAtCQkJdG9faW50ZWxfY3J0Y19zdGF0ZShjcnRjLT5iYXNlLnN0YXRlKTsNCj4gLQ0K
PiAtCQkvKiBLZWVwIHVuZGVycnVuIHJlcG9ydGluZyBkaXNhYmxlZCB1bnRpbCB0aGluZ3MgYXJl
IHN0YWJsZQ0KPiAqLw0KPiAtCQlpbnRlbF9jcnRjX3dhaXRfZm9yX25leHRfdmJsYW5rKGNydGMp
Ow0KPiAtDQo+IC0JCWludGVsX3NldF9jcHVfZmlmb191bmRlcnJ1bl9yZXBvcnRpbmcoZGV2X3By
aXYsIGNydGMtPnBpcGUsDQo+IHRydWUpOw0KPiAtCQlpZiAoY3J0Y19zdGF0ZS0+aGFzX3BjaF9l
bmNvZGVyKQ0KPiAtCQkJaW50ZWxfc2V0X3BjaF9maWZvX3VuZGVycnVuX3JlcG9ydGluZyhkZXZf
cHJpdiwNCj4gLQ0KPiBpbnRlbF9jcnRjX3BjaF90cmFuc2NvZGVyKGNydGMpLCB0cnVlKTsNCj4g
LQl9DQo+IC0NCj4gLW91dDoNCj4gLQlpZiAocmV0ICE9IC1FREVBRExLKQ0KPiAtCQlpbnRlbF9k
cC0+bGluay5mb3JjZV9yZXRyYWluID0gZmFsc2U7DQo+ICsJaWYgKHJldCkNCj4gKwkJZHJtX2Ri
Z19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkgICAgIltFTkNPREVSOiVkOiVzXSBsaW5rIHJl
dHJhaW5pbmcgZmFpbGVkOiAlcGVcbiIsDQo+ICsJCQkgICAgZW5jb2Rlci0+YmFzZS5iYXNlLmlk
LCBlbmNvZGVyLT5iYXNlLm5hbWUsDQo+ICsJCQkgICAgRVJSX1BUUihyZXQpKTsNCj4gDQo+ICAJ
cmV0dXJuIHJldDsNCj4gIH0NCj4gLS0NCj4gMi40NC4yDQoNCg==
