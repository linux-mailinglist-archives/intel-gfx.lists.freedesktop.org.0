Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AC211CF429F
	for <lists+intel-gfx@lfdr.de>; Mon, 05 Jan 2026 15:37:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB0710E233;
	Mon,  5 Jan 2026 14:37:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A2uKeFaI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B404C10E04E;
 Mon,  5 Jan 2026 14:37:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767623851; x=1799159851;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=NQ3EguulH6Hk7wJLuPRESLTC2iCDHeOD6Y3FcHw7TUA=;
 b=A2uKeFaIyaxZC/m2JLL7Xm7okXiCwFa95RffU0LeOoHKsqi44rJlq8to
 9G7GnwE/Dl7/j3vgO9hmbZd0rOWKxkqasB6+nJDEvx1GAtp7Lo6a/fzDT
 DfZSqI4Vr0BOO1e5PZO1zbifkf3DAGbW9HgpwDrbGtQg/VqTM1MfNUpGO
 IKcZdNwgVJIcR59Uq3hKmpYxTalZmgpd40lFP4NW6jd7VVZEksEeEtUPh
 W1h9t82CpQsbSwpHe5asZxlLmrACcliXUvcM6ddpz4Rn0TJwODjXbntpM
 w3Te2FJtiO3ILT9UWrWteE+P8k6FaVhKoIQfgQfHfR7VhkELWxotHBroj g==;
X-CSE-ConnectionGUID: YQQFYKXySYGTMiWf/qVLbw==
X-CSE-MsgGUID: 8+F9L1HpSjSorSMXDv2hHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11662"; a="68182286"
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="68182286"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:37:30 -0800
X-CSE-ConnectionGUID: oHnCrGZrSmyKmO1UcFa+zA==
X-CSE-MsgGUID: FbnGYHePTECMeBAtexRUuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,203,1763452800"; d="scan'208";a="239884530"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2026 06:37:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:37:29 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 5 Jan 2026 06:37:29 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.67) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 5 Jan 2026 06:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aw0uO3HvUSMuiVOLJVs7UVzFT5LPa4ni4gw/cK2PFH5y1CM6V7SbiTMci3Bm3UJ3kwo9y/VogYAa2HYM/cb+GtIOYkhQnROtavtv7h4ADATYF+I1WXd1OI7tE9lprhvKTPgiNJYIdL2Z4gT2lxLtkeZ42v0nAN3jom9UOLM+bWrDtqyVK+twiaYsT7lxit2wYgg2UoV5JyFdM5cTjbUy8ZN3XmNnyCVGOHcekuhLjQGCQFfr+9bdhwinnEBXu8YYrH1LMrU8LtJU8Rhb5lsr/JJMJ6hRvPgUxHm61UJvGYFgCzxjSgSS4dsKbW+71y1qZ9/Db5nlqENSVkrfy0vPLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e20MkbBUN/mJ6RfAc9WD+SdLyTin51TaMfPwqy0fIpM=;
 b=OkuOPQTSQrJ2v9syyyUjKYDVOhVA6VhGM25zAt+DXRg8MWocaAQr2cOFc1rGxOaU4q5vpYrHugY/PqsJzHLzYZesGw9NwAVF4IvxQb6jK0IHxg77YnIWip29skmedBwT1ZmboizoEjSoLk8LQzp/ifzugCQmpgaUoZorsHOO76yVgy8Y7IooT1+Y5ww6fffKGCj/6ai/SmxfPG8xCoH5w+m+hHhZXI+rpkU+qPRkQDTSL/DLZWBVAjCR/mwLarUXOqBdtFepWW9Zr6+noe1Fn4vM2/bJc5CWIiFJxA1K55NpRZOGEc8g2PwW44QSrmUWTp3/levFu8m1OrwgFhfmcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB7074.namprd11.prod.outlook.com (2603:10b6:510:20d::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Mon, 5 Jan
 2026 14:37:27 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%3]) with mapi id 15.20.9478.004; Mon, 5 Jan 2026
 14:37:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM3PPF208195D8DF5E9FF8C552BD4B63CDBE3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251230083142.70064-1-suraj.kandpal@intel.com>
 <20251230083142.70064-3-suraj.kandpal@intel.com>
 <176710816443.18661.15779385817780893127@intel.com>
 <DM3PPF208195D8DF5E9FF8C552BD4B63CDBE3BDA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Subject: RE: [PATCH 2/3] drm/i915/cx0: Move step 12 to enable clock hook
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Kahola, Mika"
 <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Date: Mon, 5 Jan 2026 11:37:22 -0300
Message-ID: <176762384242.9480.14418194462966711746@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0095.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::10) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB7074:EE_
X-MS-Office365-Filtering-Correlation-Id: a1e0547e-5204-47b1-0777-08de4c67f255
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dGlPRTBDdk96cVZYSmtocDJTYUZwSUE0bHliQmlmZTVZVkxyOEQrRzZGaVZv?=
 =?utf-8?B?TU1EbG5GQjgwa3F0SHFDYmdrcFNWQzZTazZmb1hkcU9hb0NpYmpEWXBCWFpS?=
 =?utf-8?B?UHZVUTNKMjc2Mk5najlYMytiRGp1dk56czFJaWZ1VngzZWZONTRSdllQZkZX?=
 =?utf-8?B?c0dKakhhMDlQcm8vYzdzQzg2WWxHSXdNRXN4SDgzdDAwY2pmcFJhaW1yQ2Fu?=
 =?utf-8?B?T2FFa25PNTFPVGwwZTYrMGM0djQ3YkhLb0MycGpUZU5MTHN2amxkTWN3RDNJ?=
 =?utf-8?B?Um15WUZRUXJKcEUrd1Y0WXJwblZlQTN6RXIrRWFNcE0zS1Qxd1duTmtIQUNi?=
 =?utf-8?B?NzJHeEtzT2hOVTRBdXdFREdzVFBReUJoNkVsTm9ia1lSbUV6clRmYmIzYnFS?=
 =?utf-8?B?c3hHNC9JbWIrQUhaVFVBdmp2NHdpSXZOaFJyR1RWWnQrUXg3R1E3TGxqTkFU?=
 =?utf-8?B?cFcxZmJKd1o4dVpFaWJ5VG01MkcxNSsyWWlHOS9wc3lYZGZqdVJEMFRPN1dk?=
 =?utf-8?B?UXNQYi9ENEVhQUhLSlRqQkNWVXVQaDR0K3RWVkt3TVZMeHVpK1dIUGNnQlNi?=
 =?utf-8?B?R1Jjdm5NRmdwVkVrZFZNYzdxVWJqREEzS01XcGlLQXp6My8xbGdUcmF5V2Fv?=
 =?utf-8?B?ZCtnZ21oUjdnbW5ualdyTWpIbi8zN1Zva3dXYjhOdnJaNzA2VExZR2UzVEw5?=
 =?utf-8?B?REFxK3M2eUlia29ZaUNVZlNWWmdoeHZOdEE1RTJxU01hN2N2RW1xWDBxb1ZP?=
 =?utf-8?B?M2dMdG15UTgzYzQzeDJZWTZYUjRkL29lRjZzaUtIRVdwd2ZFRW1RQ2NPQ3F4?=
 =?utf-8?B?T3dvMHdDVk1oaU1ZaHZwSmVXVUp6aXNYWVhYMDhJS0ZXSkRqdHBrUnJvTkNP?=
 =?utf-8?B?SzE2Q3Bha1JMVzZyMW9nS2ZObFd3REZLZXhzREZ4elNzSWpQNmQrMmx3TnhO?=
 =?utf-8?B?SnIrZC9mazVVYytaSDhIRjhTb3BKaDhpeHJ2NGV5blkrYmFHRlQ1QjNiaDJZ?=
 =?utf-8?B?dy9RVGdXVzlMRlo3eU9HbnVRSThva2QvNTNZZVhmMmphOFNMaHF4c2QwWFE4?=
 =?utf-8?B?RHF2ZzNCMXlTcEw2U1NuakdOeisxcXVpZTMrbkFBUzhxTTFaMUlEb3ovdWpq?=
 =?utf-8?B?L3ppL1d1bWxSUkYrV2YrQTdWcWVTSGRyNEtHczdzOEcvTEk4NXZMc0ZBeUNv?=
 =?utf-8?B?citCQkY4NkU5UzUyTVQ3bTNSZVR4U0dpVStZOElROGIrKzk3NlE3OC9EdlJS?=
 =?utf-8?B?L2Q1KzJFOWErWXZsQ2Q2SWY0TTdKcDZienpGUTl6a091bDZSVVlaOUY3TUdm?=
 =?utf-8?B?Qm9kc2hpZ21TTUkvdWV0YUdRRTl3RE1LeGg4RWVnblRXM3dXUlM3TmV2U0Vy?=
 =?utf-8?B?OUk0QmlDZW12Vko4LzU5TXYwNHYyeHVBVUdBcWN1b2twSFlSblFHb0ZFVS85?=
 =?utf-8?B?Mnc2aUdCanZCUzJTbHR1bk5FNERBeEVNS2M4M2hlNnZoaFNsWVorbTR5TElX?=
 =?utf-8?B?VXB4VU1DVVRNb29xY05CeWZEQlhIcEZjR21hZndzMW1YandzSkg1SnRsRHhR?=
 =?utf-8?B?bitZNU1nb0c4c1dsQ2wrS0hvZkttcTNFTERaNzdiTkd6MEFwc3BaOFp3bW5Z?=
 =?utf-8?B?bVBlNmprdkNJWWhBNmlzaWRaZkplK0pTUjNmVXdnZkppSGc0M0ZEL2Q4Tm54?=
 =?utf-8?B?QkpHbnVqRTIzckwvOW1CTzdGRThwZEVzZmRSY0RteUszRjg5aVF6L0RJQkJj?=
 =?utf-8?B?Q012TW96bUJkTVNLaG1STCtGaTcyODBWczhBamRzNWpMY3dpMHRuakZtMkVa?=
 =?utf-8?B?ZUttd1BMRzF0MmJMUkFURVdmKzBQZzNaNkJiUXNjcXp2dWhUalQxWW1lWXkw?=
 =?utf-8?B?K1NwdngzQ2JJZDhERGh3anJpYjAxQWRRRmxuY1k5QXk3NWJpZHdRMFlaQkhO?=
 =?utf-8?Q?fD3Lx+zfmhMzt+uWs42wCSRx02GjsUAH?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0trekRlT1o3blh6Nnc3QXZYTkV6Zk80R2dCYWtqSTFZeDdpRUEzRzY4QmJG?=
 =?utf-8?B?WmRPQ3JnVkcrVFJicjU4SytKQmpHMEQwZEpUdHBTaU5QTC8zNlQ3bnRsZ2ZF?=
 =?utf-8?B?TUQrSmhTUlpTYnA0UWhBWUJBN0hPbm5rREVJYjZWdklNQzFFYUpYMWZyVGFp?=
 =?utf-8?B?WHhxcEtqRWRJZkRncjE2K3J6cERyWkJ5M2xkdWl4TUNxMEpQNWRlL2d4Z042?=
 =?utf-8?B?TnJQQjJzaGhwQUNVcnYvbndDTE9QczIwckMrZExJS244REpmSDQzTzFzTGwy?=
 =?utf-8?B?dHdsdFdFTEV4OE1xNU1pSXV6dHZ6TmYrZitBYmxqL1BkSlBMRTZVdHNmangw?=
 =?utf-8?B?WW1tWUYzTXVPVGxYZklXWkR2VG9IUVZxMjF3UDhZQlJrRk11Zm5CU1dUU2Qy?=
 =?utf-8?B?aEptUDNYZ3ZkeEkvMkEwK1VmalROdzROZG92eS9zajZNRU5UcVZsZkZQcFoz?=
 =?utf-8?B?YTZrQUJCVnVudkMremJwZEo5N1lFTTJSbm02ZjZoaThlZytjU0tJMlZJM0ow?=
 =?utf-8?B?MDNKWkRQZGEraUQybUdxQ01tSm5odS9qQXkzSk9aR3c0RFdiNEUxY3EwazRC?=
 =?utf-8?B?SUo5ZFA0Qm5lbVlEWjk4eWJXUm9hUzFJcGRaeW8wS3JuRzRwWnlhL1kxazJX?=
 =?utf-8?B?bXJjM202dU1raGZaK0RqY1FhdzVZNVVEb0R4djdLWGxHUXFoUStTNkpPZGs2?=
 =?utf-8?B?MkRXVWpvRWZnbi9haDg3b21qL3ZsQzE0ZzN6dDhmVTgzL0d4bFpzTXcwNnUx?=
 =?utf-8?B?T1RrNXlaMDJCMUl5bHZoVU5wSmtBcWNqS0JXd0svaytvYW4xOVREakpmYjVs?=
 =?utf-8?B?eHNVMEhDTnR5R0laUEVNVVVqVGNwRy9UNVpYcllSSzQwY2dFTVI1eDl1MG8z?=
 =?utf-8?B?YVVSUkJhdzdiRnFVT3U5UzFRZkcvU1hZeVA5SmU4eVo0enMvSXk3d0J0MDVM?=
 =?utf-8?B?ZnE0L2hBTjdBS0s1UE9LUHZva2ZiOVBBaDY0eDVPZFFsWktQYitJZEJYbmdU?=
 =?utf-8?B?dE1yNnh2QXREZUFMUkdsUUNPSVFIc0lCY2pjRmZaMy9Ia1lycTJTdHlkMVRq?=
 =?utf-8?B?aXhoaDBrbFhiMEtPcThTZWphRCtESEQrT1haNnBuWHNlV3gvVlZseUJOUHhG?=
 =?utf-8?B?dU5HLzJNaDZRZVZtNWlXR0p3alYyZ0dXZ3g3V3YwS0FNYVkrMlhnUU9HQVBy?=
 =?utf-8?B?dC9GSUNMWUFTWkFxT29jTXo4eWpmZWtKT1dsbmVNNi9xM3RlRElzOFZnMzFD?=
 =?utf-8?B?bVo2a2FNcDVLVlJSbnBRYmRqemtkRXNObjFpbmRoNXFPaTlIOXh0VEcxMWlU?=
 =?utf-8?B?TWZGS2pQSFFtSFJPZnREc3kzWGN1UlZxNDNyZFpES0xDUm5qUFlnU2dqOGd6?=
 =?utf-8?B?dHJKUVl0SVFkV0kyL0h4NytuOEdnblIwVjMvQjJxenoyWDVZOFl6K2s0Zi9M?=
 =?utf-8?B?WVk1S1ZhOU5nLzgreCtXMlZUN1Y4WU1LTENnSmpXbkNWKzRHaENPSytCL3Z2?=
 =?utf-8?B?VmZiRXhmdTJjcm43NU93OGEyQWtaamJGWUZKdUE4akZmbkJjallFNGlQSWph?=
 =?utf-8?B?MTBOdUtRV1dwWkFNSjBuaHJaVkg2NkFaeDhVUVIvNXE4dytweHN5WGozQkZW?=
 =?utf-8?B?TVg3K0NIVW5wWnMvMVIxbjNYVkI2OS9xcW9UNm9NQ0YxSkExMURENlRRUkhN?=
 =?utf-8?B?cTdTL08rRzZpemVBVlN6eis3WlhQcGFydXVpMmhRa2p3YW01NkJnSkJna2Jz?=
 =?utf-8?B?K2lISEFabTF0ZWt3TEFjYmh0dThpd0lPTzdwSnZwY3JDNEV4MVIzNkZyRWI5?=
 =?utf-8?B?OWtveUpIZmluM3llUDdzc3lLTXAwY0F5b3NtNGF3RGYzYzIxQXI5RGllajIx?=
 =?utf-8?B?MnVpckRFMC9JTkJIQ3hMdHhiWUpRSHAxblF0bUtSMmVHdlZSNC82ekRMVmtX?=
 =?utf-8?B?aVVwVWF3NTZyWU5XOE04NzZHeDJoMEl0L1pzQU4zc1N6SWp0U1hwSmZHMUUx?=
 =?utf-8?B?a2t0TWhhanlzUFFpcUl6aEhzdUo0NEl4TkxNTmhHblk5V0JJcFRlQlc1OW1X?=
 =?utf-8?B?SmJ5RUxIT0ZscUZMRTMweGVvdlZaWUJzSFlsTEZlQUttb0xOaXJrbCs4SmxK?=
 =?utf-8?B?eG15MWhFcm16UlpScmh0OXA5dEN0ZzcwUDg5NytlZkdLQWQ3VHFsYkRlWitC?=
 =?utf-8?B?YlRWa0NPV1pvdGlJVWxma1BQZ0p3V3B6cTZxSVU2VFpnbFAxUGtMdFpBT0Jv?=
 =?utf-8?B?d0c4V2NXTXhOUlRzK1lWY2lWMjk3SVZqNGdQZnp0TjVCY2taaE1NSTcxOXdW?=
 =?utf-8?B?VnRCTGRvaVQ2aHV4bTlCVlVvc2pPSFlteVNjaUVJS0h1TGVMdUJ1QT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a1e0547e-5204-47b1-0777-08de4c67f255
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2026 14:37:26.5333 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DUHUNozDvmFbBTxRBtOfsRHZvPuuAMnq9Eol5ke04U27b5H0E6mBBV0d92zVbNMuXCAx+5u2oyoZpogKaGJLHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7074
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

Quoting Kandpal, Suraj (2025-12-31 02:10:59-03:00)
>>=20
>> Quoting Suraj Kandpal (2025-12-30 05:31:41-03:00)
>> >Move the step to toggle powerdown sequence change for HDMI to enable
>> >clock hook where it belongs according to its sequence.
>> >Do the required changes to make that work.
>>=20
>> This should probably be a squash into the previous patch?
>
>So reason for separate patch is that this requires me changing the argumen=
t of
>clock enable which is not because of the same logical reason that changes =
are being done in patch 1,
>hence a separate patch for changes that were brought about due to another =
reason. Had this been just movement
>of step 12 then I would have squashed them.

Hm... The previous patch is introducing intel_cx0pll_enable_clock() and
says it is splitting the sequence in two, but then it ended up is
leaving step 12 behind.  If it is introducing
intel_cx0pll_enable_clock(), it could as well have done it with a
signature that allows step 12 to be done.

IMO, here we are modifying that function to "make it right".  This looks
like a good fixup candidate to me.

--
Gustavo Sousa

>
>Regards,
>Suraj Kandpal
>
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> >---
>> > drivers/gpu/drm/i915/display/intel_cx0_phy.c | 37 ++++++++++----------
>> > 1 file changed, 19 insertions(+), 18 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >index f3baba264e88..5edd293b533b 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
>> >@@ -3281,21 +3281,6 @@ static void intel_cx0pll_enable(struct
>> intel_encoder *encoder,
>> >          */
>> >         intel_de_write(display, DDI_CLK_VALFREQ(encoder->port),
>> >port_clock);
>> >
>> >-        /*
>> >-         * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>> >-         *
>> >-         * Wa_13013502646:
>> >-         * Fixes: HDMI lane to lane skew violations on C10 display PHY=
s.
>> >-         * Workaround: Toggle powerdown value by setting first to P0 a=
nd then
>> to P2, for both
>> >-         * PHY lanes.
>> >-         */
>> >-        if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
>> >-                intel_cx0_powerdown_change_sequence(encoder,
>> INTEL_CX0_BOTH_LANES,
>> >-                                                    XELPDP_P0_STATE_AC=
TIVE);
>> >-                intel_cx0_powerdown_change_sequence(encoder,
>> INTEL_CX0_BOTH_LANES,
>> >-                                                    XELPDP_P2_STATE_RE=
ADY);
>> >-        }
>> >-
>> >         intel_cx0_phy_transaction_end(encoder, wakeref);  }
>> >
>> >@@ -3379,7 +3364,8 @@ static int intel_mtl_tbt_clock_select(struct
>> intel_display *display,
>> >         }
>> > }
>> >
>> >-static void intel_cx0pll_enable_clock(struct intel_encoder *encoder)
>> >+static void intel_cx0pll_enable_clock(struct intel_encoder *encoder,
>> >+                                      const struct intel_cx0pll_state
>> >+*pll_state)
>> > {
>> >         struct intel_display *display =3D to_intel_display(encoder);
>> >         enum phy phy =3D intel_encoder_to_phy(encoder); @@ -3412,6
>> >+3398,21 @@ static void intel_cx0pll_enable_clock(struct intel_encoder
>> *encoder)
>> >          * Frequency Change. We handle this step in bxt_set_cdclk().
>> >          */
>> >
>> >+        /*
>> >+         * 12. Toggle powerdown if HDMI is enabled on C10 PHY.
>> >+         *
>> >+         * Wa_13013502646:
>> >+         * Fixes: HDMI lane to lane skew violations on C10 display PHY=
s.
>> >+         * Workaround: Toggle powerdown value by setting first to P0 a=
nd then
>> to P2, for both
>> >+         * PHY lanes.
>> >+         */
>> >+        if (!cx0pll_state_is_dp(pll_state) && pll_state->use_c10) {
>> >+                intel_cx0_powerdown_change_sequence(encoder,
>> INTEL_CX0_BOTH_LANES,
>> >+                                                    XELPDP_P0_STATE_AC=
TIVE);
>> >+                intel_cx0_powerdown_change_sequence(encoder,
>> INTEL_CX0_BOTH_LANES,
>> >+                                                    XELPDP_P2_STATE_RE=
ADY);
>> >+        }
>> >+
>> >         intel_cx0_phy_transaction_end(encoder, wakeref); }
>> >
>> >@@ -3485,7 +3486,7 @@ void intel_mtl_pll_enable_clock(struct
>> intel_encoder *encoder,
>> >         if (intel_tc_port_in_tbt_alt_mode(dig_port))
>> >                 intel_mtl_tbt_pll_enable_clock(encoder, crtc_state->po=
rt_clock);
>> >         else
>> >-                intel_cx0pll_enable_clock(encoder);
>> >+                intel_cx0pll_enable_clock(encoder,
>> >+ &crtc_state->dpll_hw_state.cx0pll);
>> > }
>> >
>> > /*
>> >@@ -3808,7 +3809,7 @@ void intel_cx0_pll_power_save_wa(struct
>> intel_display *display)
>> >                             encoder->base.base.id,
>> >encoder->base.name);
>> >
>> >                 intel_cx0pll_enable(encoder, &pll_state);
>> >-                intel_cx0pll_enable_clock(encoder);
>> >+                intel_cx0pll_enable_clock(encoder, &pll_state);
>> >                 intel_cx0pll_disable(encoder);
>> >                 intel_cx0pll_disable_clock(encoder);
>> >         }
>> >--
>> >2.34.1
>> >
