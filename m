Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B06A1C205FB
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 14:53:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 331E510E983;
	Thu, 30 Oct 2025 13:53:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m6Vgmcuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 09A2D10E983;
 Thu, 30 Oct 2025 13:53:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761832396; x=1793368396;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=/d2JQXH1gLLMVz0LoHU94VNdx5hnTCScXju0Eb8ZJmQ=;
 b=m6Vgmcuum3MNv2RLJFf8euixzs2UfybSBja8hkxJy9GNWfhApYSsqI/S
 8AqRk8mlkDSqGhxwgeJSVV/3q4ZheyltK9Rzcfo7noUI7UpcFsv2nGoKA
 8Yp4ec1raqdbN6dew8C3kVHEvaOaqAOTevpLJ/nK+E/ovet78/rUjcfhU
 NdBHvJKBNHJHkzVRJaVY+VkhMIJRpNrcNd+WwTuQKx9titjMGPY/dJPs6
 z7RQ05PNtWjyV6GZlaT06e45TzTlseurEN1IXcHnAbytP3qXfiQ0JFYWd
 gTyO+b0oKmNbgMSbQpWN4ynW4bTyM1dLCO1czMOAs5hwlJmXgoDZ6SbLO g==;
X-CSE-ConnectionGUID: EfoBCRrGSYCbZmIHWLvgQg==
X-CSE-MsgGUID: v3RdWLu9Slyyv0OhXOL61Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63902526"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63902526"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:53:16 -0700
X-CSE-ConnectionGUID: RJvekb4HQxOsZcFyWvEjlA==
X-CSE-MsgGUID: Nm1aNMA6SLO4rysNNT0x+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185220822"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 06:53:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:53:15 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 30 Oct 2025 06:53:15 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 30 Oct 2025 06:53:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Pb9d74zeDNabjoonVd7u+htUrxbK2/046XuW2z3JdSPj9UfoagEf/wUiTGL/Dvrpu6aenpT32ufzXGDcUx4s8vDXj1Q4yxHZ+BYzL9WnAGn+voF8AG5gYq6eIZIyg689zwu6bBUBWuyBI6Pn4KDnYujxXD0TcIWcBNOHE6rL7Y/JV6qIsfr0cWErjcrJKOMxCkOEsYpKoujYmCMRHeTzb+HA0aEy6VXCDq4mhI9wM9Ew+BXLBqphL464HE0mpCDeJBWp9wXwKo9TvI1rn6/g+kw3lg5rhf9kCPe/ffVRaoV26nmq8kFh4dk/ema2MxT8v/c6pGUpSpSIb51Ay6juhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KhsbhFCEhsOkfV6Na4tjuszMCCWr2y51jW2eyZryiSI=;
 b=NQ9BbKwp+A9/4EO0hbqGcc9C/pOrLLFJd2+emlGCC5X1hhgzUBuyH3s2PPcn9bgmPNZc7ARrtttlzr/tHfDr04vSf04XdO4NukRxw6mbKIfcorNQrLexcyVBntAlntePAJEel7O+TxnDgGO/xbr6NfgpHX8HzzLVlHQXR6eSj2eaz4gql+ejDj/cWJcU7PxT/Id31A4uXTDkdhJZ0glZOigcFzCTmn5jIMwK3P2e/DhWLggl9QKdqxo14TmCamQjRA+0UfFBCSW9ggqtJP/lAnyZ6tm3EGpnlm8WfTv8bVwRypi+1+CfUjS+gxftrB3UCjRw0ZwuP7VmgpytGqe7zA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DM6PR11MB4754.namprd11.prod.outlook.com (2603:10b6:5:2ad::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.13; Thu, 30 Oct
 2025 13:53:12 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.9275.013; Thu, 30 Oct 2025
 13:53:12 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aQKXsx9qEMAljmiN@intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-15-10eae6d655b8@intel.com>
 <20251029220800.GF2806654@mdroper-desk1.amr.corp.intel.com>
 <aQKXsx9qEMAljmiN@intel.com>
Subject: Re: [PATCH v2 15/32] drm/i915/xe3p_lpd: Always apply level-0
 watermark adjustment
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, Matt Roper
 <matthew.d.roper@intel.com>
Date: Thu, 30 Oct 2025 10:53:08 -0300
Message-ID: <176183238821.3303.9258876692199907894@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: BYAPR01CA0054.prod.exchangelabs.com (2603:10b6:a03:94::31)
 To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DM6PR11MB4754:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d5a6f49-2cf0-4b3a-9850-08de17bbaa99
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YjZzTU90VVpUOSsrV3RhSHpwV2xTZWIyZ2JNbVEwOGRPRU9pZ09MbGV0RWI4?=
 =?utf-8?B?di9KT3dRZ0xRSGY0cFBNczdhNVl0MFZFUHJyM0ZiYkRjclRXd2pSSU02dnlR?=
 =?utf-8?B?eDVNWTZUelVlRkp4Z043eTFraWtxbGN0ZEJJMm5KUGJkV0Y3Q05HdTVvd0xF?=
 =?utf-8?B?ZkV6LzZHdXZSUlNRWjVQLy9wT01jdVp2ejhXRi83RDdORTZ0dHVpbXMzUjN6?=
 =?utf-8?B?bmhFdnlhejhnNGJTQzRZZTQ4bytIUWVNQ2h2YVlhM0pQdkt1R1MvRUw2eEd4?=
 =?utf-8?B?bXFOOXFiWnFIdStLVzYvUHR3V3RFYkVwa2xVZXJ0bHNocDF0ZmxvMVJIQSt2?=
 =?utf-8?B?K0xITnRIQ1J1YWl5MGxCeFpBcU5PQmRGb0IvbXg5ME9RU25zU3JXMzRlVGs5?=
 =?utf-8?B?MTU0TGdXZGYxdFBLVHZXYWFPR0FOQzZPR3pwZ1h0MGVPY0RTdVl6WE9GSFI5?=
 =?utf-8?B?UFZtMSszUWM5Ujk4cnhjZFYxUkZNUU9zNXAwZ0RpM1pSellxMmxjaXlhdFdS?=
 =?utf-8?B?cytFclk3Y0hDdzhaZ01rdC9LYXRkN25vaERYN0RQdUZzTWd3anFOV3FZRHdN?=
 =?utf-8?B?RGZUYjJaNzRQSWJxbCs2UmVnVi9lVThmcW9JZThLL21NZ2c5L3dWYmNsWDhO?=
 =?utf-8?B?bW85cTJKRk9UbEQ4TFY2aGZ3UDhRajROMkxlNTZGUDlVWTBCZ3Q4QmVFWkRV?=
 =?utf-8?B?blJrSWs1QWloVUEwTS9zNGJxQkptK2xtTThReUxHbXU2Yk1aSWhEZ0lpMXZZ?=
 =?utf-8?B?ZUN6b00yeTQvbjdDM2ZFMlowQkwxN2ZkZ25ZUW9EQ1dNeVJwd2ErQUZ2eEhj?=
 =?utf-8?B?U3JRc24xWE1SaGh0Sy95Y0ptNC9MOWNUenEyUForc3BhQ1pxdTcrc20wU012?=
 =?utf-8?B?ME9ZZHQrTkdVVjhrdXdQT0Z5dUdiTjRNNzhqdmY4TUxZUnhVaXI3STdrR1gy?=
 =?utf-8?B?UVdRUnY2R2RGaVNUL0JVckkybEVqb0hhZnB2ZHdYazdjRklXRTFjaEtmRGtm?=
 =?utf-8?B?MGoySWtTVVlFbFFoQVREd28raTNIaGZpLzdJTlVNZU81a2tQdjMwVkp4alBy?=
 =?utf-8?B?SFlWUk1lQVF2cGpYTUl1MFA5S0c2WWNaeEpmSUgvdHQzaDRYKzdyZFo2Mlp5?=
 =?utf-8?B?bEFMdU9WbFZ0T0tyQmVlc0JvOEFzRWZFSWM1RGFNMTBYaUFJUHhBVVR5aHI1?=
 =?utf-8?B?ZmFjVjBVdWc4ZS9nTFBSOWxHMk1mZmtOa1RpdkgycWhURVlvNkpFYW5NT3M4?=
 =?utf-8?B?Y1VMRkVhUDlFUnN3d0lwOTNvTHk3bjhVYjdJTGQ3QjNIc05Wc2U1N0xSQ1ZB?=
 =?utf-8?B?TFFhV3dqZnF3alMyOFNZbG5FaWhDMnYydTQzbUZhQmNyTFRRYTNkQXdFUkxQ?=
 =?utf-8?B?NXk2YmxsYUdVdFFVVlZSMXhLY2RBcFFBUnVyaWtuUXRPdGdRc09xOFdYbFdK?=
 =?utf-8?B?ZWZsQXhPS3l6VFp0S2FDZGFzSzl6dU1yTnhVa1MxenQ3NVI2NEV5U2N0WTFS?=
 =?utf-8?B?b05kczh3RXkxMkVkMGlLRjVRbTRZQ2N6REdiKy9CSDduS0FhT0xBVCtuWWFa?=
 =?utf-8?B?UUJQNy9kTWF5OGVpd2dWTzlLMERIN2ZZdnpONUl0aytRcWdOWWozdDNQOFBB?=
 =?utf-8?B?TFJFalprcjVZTWRxZGl0UHpjSENWY3o1L3ovU3N1RnM4UitLK3ZsZnhDMzg0?=
 =?utf-8?B?a1lpWDI2RXdNc1hMdHdSQzRJSEpXcW9ySnZHaWNWMWM2ZWVxTmU1VStrTW1C?=
 =?utf-8?B?Njk4UGt4a0tVNjNUYyt4WngzdEZ1ajFtdGFmV3ZFSkZKaGdmdDZCc1BmRVAr?=
 =?utf-8?B?eFRJTllIOHVVeW1ZMkM0OWdod0FUUkVhaVNpK29tbTRYaFFScjdyY2g1enFT?=
 =?utf-8?B?RHJ0d3ZDNW1UdEw3MnNRemN0ZTZXM2syOUh3ejA0cG50TVRMQm9xRmY5V0k0?=
 =?utf-8?Q?i+xsTNZlFmINid19aqsn/O23S7ju1/dL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlBZRE92U3h3WEFJQzdoUDc0dW55TC9pbHFndDVzTTFxa29iTGdUaTF2RzFx?=
 =?utf-8?B?THFpciszZkluNThRVngzNTVWdVdTQVJneHczVDVCRE82SE9LUG5CdVJ2WUhQ?=
 =?utf-8?B?cVp5ditpMGhlemRrZ2xJdG1rMDhaM2ZXTFZOMndJc3dzb1hIVTA1OEhreFZw?=
 =?utf-8?B?S21JTXFmR3J6TG5Tcy8wRlQrRHkxVEI2eHlBWHlWRnFoM3haRW0wS1ZIU2tv?=
 =?utf-8?B?V0NjZFZIUGJyMS9jMjVRWTJjZElLMllYWmZoK1dqMFM5K2RrejZlVEhDRWEr?=
 =?utf-8?B?Vk5neWFzRUJLYzhuMFpNVlBlS01paXlFb0FRZ2QrRjJTUFJGWmlzZEptaW1X?=
 =?utf-8?B?NEhFa2dwU0VjNVRpb1B0UU1WMDZZMUFZZWM3ck9GaHduV2VVb1ZlNVVHaEZm?=
 =?utf-8?B?Y2M4N2dCNi9rTnc2Y2Nnb3grUmN0QXdaSGlPc28vVUUrMVYrZ3RzT0hkb3BS?=
 =?utf-8?B?ajNMNnVyWnJtNzBPekRGUGEvN1JPMjk1ZysyQmxqbGVQblduTDNya2Z6TERx?=
 =?utf-8?B?dElkK0hEKzI1RkVac0ZjUEFFbENYSHFYaHhzSDBzWDYzSlpMcmplbUYzcEZP?=
 =?utf-8?B?Q0RFelNiRnN3SHBKbGhEL0RhQTNlbzZENGFsRVU5T3Zxc05NS0hPdTh5aWZ4?=
 =?utf-8?B?bE05bkNacTRCbGVvVlBWMHovdXVSVmc0aGNYNWdoRUNUcEtCNjZnSzlKNUJV?=
 =?utf-8?B?ODluQjMxTFdnWFJrcVozUmRpb2w1VlA0NmZET2orYWZaUmVEVXM0dzU4RW12?=
 =?utf-8?B?K2FtMzdFa1N3RStmZHNnRkRGeklXVlRab2VJU2FYMVlLMkx5QSsxN3VINnJB?=
 =?utf-8?B?cGdub2d6SVp0WmVDTi9SVnFPTW1sWlY0UnA5cXk4QVdHY3Fkc3p6YU9ZMHJa?=
 =?utf-8?B?UC80WGtzK0NQZkR5R1hWNzc4VXNDbHZUYlZrRFJrQ3VsTmpEV0IrYk56bGxC?=
 =?utf-8?B?bnFTWG1PQ1BXZUVoVFpNcFhOOVU2ekgwZ255RXZiNmtPRW9uQTZDbGVOZ3Zy?=
 =?utf-8?B?L2tBUVRkdnR4akJxT3VMQmZNUFVKUDNjb1M5UG9zcm14VG0wb2taMWFIN0JZ?=
 =?utf-8?B?cU1vcVdPM09PSHZMbGxORFFVeUVIbW1lWlVQdUJTaFQvVGVNa2kwbU56RGhH?=
 =?utf-8?B?UlViTjEzQklPVC80T2F3NHBBOUdmZDA5SWtjOHhWTkxqcDc3TjZERkZURzZI?=
 =?utf-8?B?NERwR1U2UEt1TnFPcXY5T1phNUxJUFdReEhqUzEvQWoxcWFxTzNJN2lvNmZa?=
 =?utf-8?B?SFhMOW5Iek1xaml4L2xrOGFSVFk0LzVGbXpNMDZTalJIM2RZUHNEMWFJRkU0?=
 =?utf-8?B?dDBxdmJ0YnRUSVdCNCtWUnErenZNSEFjMlhPbUw2NzlVRDhPSUxRMEtkNEty?=
 =?utf-8?B?bjQzcCszOEVTRnU1V20vc0VWMm1nQ2JwMkRnTnE0YXhlVmppUXVnQzJwa1gx?=
 =?utf-8?B?M3dtU0o0UldGazJManNxRDZFTThWNS9TWGZ2d2g2MUk0MG80MERlZ1lmaHdP?=
 =?utf-8?B?VFdXYTJFTWVwU01vVkFPa0hJdm9rNHdsYVpMdTBPdkFWajU0bUxOY2xxdjZs?=
 =?utf-8?B?L1gyaUcySWxiZXRqdkFpOXZxT1ZoTGFqVGViMXZEVkR3Tm1taWU4VnZFek1V?=
 =?utf-8?B?ajFzRitjN2pxbVYwR2x1ME04b05mZHFrWkxKK0pCejFhK0JxOExFVUlMYWNG?=
 =?utf-8?B?eU42djVGcmpLd016Nk0zSkNLYStIRnpNMjlrWFF1cW80NnNzQk41cU8wVXZO?=
 =?utf-8?B?LzNwWUZkZCtScUlGdkhlU3ZPc1c0TVBLMUdPcnVtVXh0cko1ZHhrUFQvc0k5?=
 =?utf-8?B?eStHMDU2d0IweU1WbVF5Vkw0dG9uK3p2MndDU2drWjEySWJOaU90bDhVZW9h?=
 =?utf-8?B?S3haUGF3V1BzVHUrbkY0cjZrTmpZRk1FUTREWTRETU1Rekhpa3dpRjRJd3Ir?=
 =?utf-8?B?OE8vNUxZbzV6VGVNS05JUWpzanpXSi93L3NWTzF6OW9EbmdSMmdZRU92OTF3?=
 =?utf-8?B?RXg2cTNyZHpZRndHUEpuRkNJcmp6YXNmdGxOZlFHYjZNNWJXYU0zSlRCc3hy?=
 =?utf-8?B?REhpNVI3ZTJnTVNKU2kvci9Ydis3Zm5TVmFHVFY1M2ZYa0hEblFzeFNQUm5w?=
 =?utf-8?B?dW1VWU9IWUFaNElWZ3ZVWVVweWFsQXdBOXVkWS9TckhuYmNpV2k0ZXJFT3Qz?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d5a6f49-2cf0-4b3a-9850-08de17bbaa99
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Oct 2025 13:53:12.3333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mOJRQPHg7648POe5z4+f8t/UzQ5iEioxk+Gxya9Us5G+JzRI9nnCni4qleg+cPq3hmpd0Dyn9sKt4rjXD8Dwyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4754
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-10-29 19:39:47-03:00)
>On Wed, Oct 29, 2025 at 03:08:00PM -0700, Matt Roper wrote:
>> On Tue, Oct 21, 2025 at 09:28:40PM -0300, Gustavo Sousa wrote:
>> > When reading memory latencies for watermark calculations, previous
>> > display releases instructed to apply an adjustment of adding a certain
>> > value (e.g. 6us) to all levels when the level 0's memory latency read
>> > from hardware was zero.
>> >=20
>> > For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
>> > add that value to the other levels.  Update adjust_wm_latency()
>> > accordingly.
>> >=20
>> > While previously the adjustment was considered a workaround by the
>> > driver, for Xe3p_LPD that is part of the formal specification.  So,
>> > let's make sure that we differentiate those two in the driver code, ev=
en
>> > if there is a bit of redundancy with "inc +=3D wm_read_latency(display=
)"
>> > appearing twice in the code.
>> >=20
>> > v2:
>> >   - Rebased after addition of prep patch "drm/i915/wm: Reorder
>> >     adjust_wm_latency() for Xe3_LPD".
>> >=20
>> > Bspec: 68986, 69126
>> > Cc: Matt Atwood <matthew.s.atwood@intel.com>
>> > Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/display/skl_watermark.c | 25 +++++++++++++++++--=
------
>> >  1 file changed, 17 insertions(+), 8 deletions(-)
>> >=20
>> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gp=
u/drm/i915/display/skl_watermark.c
>> > index 57260a2a765a..5bb6cdc4ad2c 100644
>> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> > @@ -3220,15 +3220,24 @@ adjust_wm_latency(struct intel_display *displa=
y)
>> > =20
>> >          sanitize_wm_latency(display);
>> > =20
>> > -        /*
>> > -         * WaWmMemoryReadLatency
>> > -         *
>> > -         * punit doesn't take into account the read latency so we nee=
d
>> > -         * to add proper adjustment to each valid level we retrieve
>> > -         * from the punit when level 0 response data is 0us.
>> > -         */
>> > -        if (wm[0] =3D=3D 0)
>> > +        if (DISPLAY_VER(display) >=3D 35) {
>> > +                /*
>> > +                 * Xe3p asks to ignore wm[0] read from the register a=
nd always
>> > +                 * use the adjustment that adds the read latency to a=
ll valid
>> > +                 * latency values.
>> > +                 */
>> > +                wm[0] =3D 0;
>> >                  inc +=3D wm_read_latency(display);
>> > +        } else if (wm[0] =3D=3D 0) {
>> > +                /*
>> > +                 * WaWmMemoryReadLatency
>> > +                 *
>> > +                 * punit doesn't take into account the read latency s=
o we need
>> > +                 * to add proper adjustment to each valid level we re=
trieve
>> > +                 * from the punit when level 0 response data is 0us.
>> > +                 */
>> > +                inc +=3D wm_read_latency(display);
>> > +        }
>>=20
>> Wouldn't it be simpler to just have a separate
>>=20
>>         /*
>>          * Xe3p and beyond should ignore level 0's reported latency and
>>          * always apply WaWmMemoryReadLatency logic.
>>          */
>>         if (DISPLAY_VER(display) >=3D 35)
>>                 wm[0] =3D 0;
>>=20
>> and leave the rest of the code unchanged?
>
>That, and I think just stuff it into sanitize_wm_latency() so that
>the bogus value gets nuked before we use it for anything.

Alright.  Let me do that then.

FWIW, I wanted to keep the code clearly differentiating a WA path from
what is now part of the regular spec for Xe3p (or is it still a WA?
:-P), hence trying avoiding the split (doing wm[0] =3D 0 elsewhere).

--
Gustavo Sousa

>
>>=20
>> Either way, matches the spec so
>>=20
>> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>>=20
>>=20
>> Matt
>>=20
>> > =20
>> >          /*
>> >           * WA Level-0 adjustment for 16Gb+ DIMMs: SKL+
>> >=20
>> > --=20
>> > 2.51.0
>> >=20
>>=20
>> --=20
>> Matt Roper
>> Graphics Software Engineer
>> Linux GPU Platform Enablement
>> Intel Corporation
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
