Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 708FBA104C1
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2025 11:56:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1126D10E153;
	Tue, 14 Jan 2025 10:56:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lm9Ocsrb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 14F0D10E0E3;
 Tue, 14 Jan 2025 10:56:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736852211; x=1768388211;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=cEJWcMTidSKvjHnJASA7AyYFtynZ+TMj5j0J61nKk5A=;
 b=lm9OcsrbHnvlRP7qfSbHDE0XjAPfh29gojJ+T9tXsnJ8yic6ZfjYE7Ue
 bN73pcaS7mUzzIWMKn/zlFlkPETPIOrznyXjLxvRe7gHNi9XWLPRHkML9
 KL641qNts5TWhkrB1E8F1jHhQ3rXGAHINp3o8pSXaop9gn+5++ro4JHiX
 zusrj/rFpG0HAaZ9KFV0nrs9u+bI6E+bSH1avFdI5MJaQQwu4V08zOFB7
 CWMXMDByngdBUHW77X4hZAGOiRLUQAp5emi5NYojiibZNmKKWFgD0F1to
 YidBaxuowbLdBODM5txcraDp9DQwWDSl+o4s15x816tTQGUrncOX8vTTB w==;
X-CSE-ConnectionGUID: rcNcFmEvTPCuBX/IdAbxGA==
X-CSE-MsgGUID: h1cMq43FToy6JLKLb9olxA==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="40905290"
X-IronPort-AV: E=Sophos;i="6.12,314,1728975600"; d="scan'208";a="40905290"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2025 02:56:50 -0800
X-CSE-ConnectionGUID: Jc5f6oMuSm6THB0305EwDQ==
X-CSE-MsgGUID: Fx2b4lskRCGDEhwoou/QgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105256840"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jan 2025 02:56:50 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 14 Jan 2025 02:56:49 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 14 Jan 2025 02:56:49 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 14 Jan 2025 02:56:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dtKPik9EX84/cAehe91ihHtezlflWtQ1zLLjiz5QQISdyMTZQdBObhmQlzzPnqunl4BjAT18J6Fej7oHjNi3fCUELbyacL3MZ0BHce1bRi7EDJI8/OH+Lm85rEhtQYXe2lMnY2BKUpWZWNCwBQ2DiZM8EDH6K0Hnm9SjecdtClDvxYZ+dv88sSUXu1Lxo1VoF5k1KjvoAf8G6Jf9QeLzRlGce4VZyHjTFx3u0VLK8OXmCjMTBcc2/LVtk/7NYkBrG4VvtYhgKkWxH/saU7ZMedIwFE5EXnON1P9mWY/jld3H0yR6OR6/XsbG32z7rVo/rBnnejljBuQQb0cxTlNDEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KcUbc/4hIiYRtZXdtmyJA3hF+DI3O+Jc+z1Bt3vvrs=;
 b=WXIwbv169wrqGhUUPZLm3dnpqZ2ImbliN3epbbB+aKFy1epeCGL1sFpaJ6esSmiowD3EWe36IpA8a85rZ8EGzkf36wYvdxM3PgzP1AC/5RRJsGSfViv0ZfJR1a4hz5hHnGgDESC0OFZBHX6Vx6KSWA3ut+VqHzHX7gyG5Nz3jD4yqRk/WO1icDUVIas3HcHDNJLx3M9UskKlPlLJMESQOzD6jUoRfI0cjOd9ko4oWK5pOC90N0wf+T8KebvzVdiegLgjYROonVnvUZezgcRY2zRj9GushFnV5zl+33NzldHBWIyp6cAh7Ac0dmJgNzz6Im1MUscBmx/9l3birQutIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH0PR11MB7634.namprd11.prod.outlook.com (2603:10b6:510:28d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.17; Tue, 14 Jan
 2025 10:56:45 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Tue, 14 Jan 2025
 10:56:45 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87v7uhhg8n.fsf@intel.com>
References: <20250113204306.112266-1-gustavo.sousa@intel.com>
 <20250113204306.112266-3-gustavo.sousa@intel.com> <87v7uhhg8n.fsf@intel.com>
Subject: Re: [PATCH v2 2/3] drm/i915/display: Wrap IRQ-specific uncore
 functions
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jouni =?utf-8?q?H=C3=B6gander?= <jouni.hogander@intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 14 Jan 2025 07:56:40 -0300
Message-ID: <173685220000.2823.11165630050587382291@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0158.namprd03.prod.outlook.com
 (2603:10b6:303:8d::13) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH0PR11MB7634:EE_
X-MS-Office365-Filtering-Correlation-Id: e5b2897e-5e93-4b2f-7c7c-08dd348a230f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZG9DdFc2NjFyNXpkTzJLQVMxOGI0UExqY0wrSmtjaEpZNGw5NU9uNC9sdHZJ?=
 =?utf-8?B?NWlxdlIrV0NTaUwyU0FlUUVtOWh0UysyZUVmcjBQWGFzWU9hRk82cW1TWm83?=
 =?utf-8?B?cVhCUjFwZ1pFRlh0MFMvbFV5VUZCZi9FUVd5Qi9KbkZaZkRzNDQ5Y1lvOGVT?=
 =?utf-8?B?QjE4ZzRiRUVoVldLWStjV2s4TFhJTDIzQmNPQ0hIVkthRkc3NUd4aDVaQ2NM?=
 =?utf-8?B?dHJvcHhvNkZ5NEptK1lQaElPdG9walZ2dG90b2QvN3YxdDltYnY1Zk1XUnBV?=
 =?utf-8?B?TE90Q0p0bTdmVVRrK0p1RzQxMnFPNWI2TUNlaWRSSE5tNUtPZkpCV0J3cFdQ?=
 =?utf-8?B?UDlaUk5vWUZ6QlZFRnVYMTJ1Ky9PczEyU1lqRTFwcVRvSm5LU2FZTjJLWjBU?=
 =?utf-8?B?dDB1NjNoeFg2eHhPZGlac3gwS01scThkcmFCbzVTbktGSzJldUNYeWFHNzVH?=
 =?utf-8?B?dnZUaU5ITk9aVjJGcksvZndFbWRSa253cENjd1dpeUdTZUtLK2RFL0M4dGtB?=
 =?utf-8?B?SklOdGh5OW1JQVpFVHMyTTFQa3RxSTJyTmlMaklKbU1PbmtZZE8zbkxFVjRM?=
 =?utf-8?B?VjBHVFJ4OEJKaXJtNklBaXN0ZG1rTVhneWt1bEt4M01zRy96dGN3RzhzTFdR?=
 =?utf-8?B?WEtUd0x2bjFFNmhwSDZWK1l4M1hVWVptOHJ6Qk55NnUvODF5YnZTaTFhZXQ3?=
 =?utf-8?B?TW5yeXcrc0pud2RNUWpNcVRCNkJaTlVXMjJYZzJtMjRCRXRCcUIweVlSTnpB?=
 =?utf-8?B?UEdzSjl3bTZ5MUtvUWJtOXl4d1o2cEhYK1IwNUxrYXZRcWtTME1IY3IvYlpt?=
 =?utf-8?B?N0lOc2VIbU9uaCtza0RVeHFrank3dTRyNFRkVzAxVEdyV09ZWTA0QVNMN3VY?=
 =?utf-8?B?ajFLbU8xUFR3TWdsV3V3eTBFY09xZGlUUkZxbmdTL0xrVkJLeXBJdGorUENJ?=
 =?utf-8?B?aEZzKzBZV3VvOCtKMGhKTnFlUnRaNjRWcmtscVYwMm91dUh1R2RTMVExcWFL?=
 =?utf-8?B?bVFKM3RvM2FkNlVJZ1hwM0VzeHA3dDFlaFpHdmtwcE03THV6aHpMclpkK2Fo?=
 =?utf-8?B?bEpFdExiZ1I4UUZ3NUN1K2xham5Rcm4zeXF0STdhYjBUWG1KMTdYY3YvL3Vo?=
 =?utf-8?B?aTVlZ2IrZEJERU1OSkp2Y3Z3K29hQ0l1bUpyRjc0cmVsT3d0bXY4alJCTEVT?=
 =?utf-8?B?OWZyWmVqTlAxbGxsOTUzSHlqYjBZczF4cHBtNWFWSmFXZlZUdko4T0N6LzM5?=
 =?utf-8?B?dnBTTmpPdWMxWGtvQXJPdk1vbm8wNG5ML3FLd0FVMHN1M3VONmdMcmVWQkJ2?=
 =?utf-8?B?VVQySzJtVzloa0NZMTFtbnFIWk5sNXhCZlB1c0NUMGYzMVc0VndiWVhqNzdi?=
 =?utf-8?B?bHB4TUxKMDRQK2E4TUdKODZLYzhlTzBteTFOMnlkWFhEeEZMVFB0NVl6M0d3?=
 =?utf-8?B?THBEa2pKdFZsUjR0My8ya0d3UldBaEt0VTljMldTUDZ6VWg3MmpMZzFVRjBK?=
 =?utf-8?B?K0JSeFdWNUJLUE1QQlNkS2VtU0UrMVVCSUEzaG13NXd4OStVckJSSXQ4R2lO?=
 =?utf-8?B?Q0FiSnlNWVFUWjdDMFoxNzZ1K2w2ZENhVTA4cld0eldPd2RhV2ZUODNJY3ly?=
 =?utf-8?B?VXBES3BIRzI2ZE1QTmlQa3dxRUdDRktLMVg4VHdDcXI4cldubTlab2c3YWEr?=
 =?utf-8?B?dHJMVmdYOTNRVEVDMGZRKzE4L05kUnF2Ky9lODhYM2UxeTFpL3ZyMzMvaW5V?=
 =?utf-8?B?eTF5djA4VHA1b1AzcjJHU082ZjNwbUk0NTVZaTR0SXJyZ3MrUEprNDdyTWtm?=
 =?utf-8?B?emNTemZRTk50aG5rTVhjSGpxamY5L3hGb3RoUW02VHRIQWRQSDRqTjUvemw2?=
 =?utf-8?Q?bz6QJOFymaIRZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEUwb1dmUWV0bjZtV3E5RnppWHBmTGF4ZE9GanFscjRFRUZTSVdENHJsb3Y3?=
 =?utf-8?B?U1d1OWNaaW1aeStVbUNuc1FrdE1rdzVnQkI5NlR6MUs2WjZYY1R3MmxhekJw?=
 =?utf-8?B?UjJ4Vm82WU5yUzY4UVpIZkxJbkxXdEdEWlFsd0N3QzF4RXpQTjJvUHhNcFV4?=
 =?utf-8?B?b25nOEhPRlEvdGd3NVBNVzRhRGNDRVY5NEZzbVp0U21XYmNuU0pUY25Xdjg3?=
 =?utf-8?B?aExCOVZzRTlaWFJJUm1iODZvNldJZ2tQSWV0T2lhVlJuby8yakxNVmYyM083?=
 =?utf-8?B?Nk5xT051dTZnMW9sZnViakdqaTczSjFwcENJREhLY2UwWU5Ea1NQejkxZDBR?=
 =?utf-8?B?WEllWUFzTWd4MkJaZDJXRVlaU25EV3lGKzh4ekxKNWpEZ0p4OVZEQnJVRGY5?=
 =?utf-8?B?UzdSVFhhbDFydjZYemEyblFIeXN4aWorTHl5eVhmVHgzakhxYzhrcnVwaFZE?=
 =?utf-8?B?Q3FtbVZVdVUxeHVxemFPaXJGQ2p6L3ZFaEtsNFJ0L1RsNFlxVUszd2p3SEhn?=
 =?utf-8?B?WUZIT1NuNUVJNStpc0VGK3J6Zk5sK053WFhlNHlDcEZXRys1bFdZeXF3TEZM?=
 =?utf-8?B?RGtmMTFIVWRGVUJHUTMyUUZ6NVV0cUZLa0VVN29pOFhubFRsbDBoalhPYU9O?=
 =?utf-8?B?Rkx3NFhRd2E1MTU5M2xESzZNbDZtZmhKSXlBQTNQbUs1MHA1UkNoTW5oWXp6?=
 =?utf-8?B?YXpSVTRab2h1NHEzNkhlcUlZUjdtQWRxeU00YVY5N0U0bjA1S1JDWC9NY2pl?=
 =?utf-8?B?WXpCd1cwcC9oeE14V283Umd1VlZoZG1vNy9pU3c2R0xJK0dJQ3VEZTR3ZVVX?=
 =?utf-8?B?TG9JRVJVQXBZaFJlZVJzbUhDRGIvR2wwN2R4WERVeDR2YmNtUk9HYTJQU3JV?=
 =?utf-8?B?eHhpTzhWWmZURnlFaWU4MWc3bTBvc0JFcmhUVHZzeEE4d29SSXFLNFpUSDV6?=
 =?utf-8?B?YnRGamptTTZmVWFMdnRNQUF4R1cwSVZWVmxNQ043UzQ4Ky91TUI4aDJ1YURZ?=
 =?utf-8?B?cmVhT2U3dE9DZFRvK1hGeTJwWWIveWlEZWUxR1lzVlZFRzV1THI3UW43Y2Qr?=
 =?utf-8?B?YXNJNFc0aEk2eWdnbHM0RVBXYmtJQkMrQmJVRjNyRGhCem5qQjIzOEVhQWNK?=
 =?utf-8?B?MUtBU3pIU2xPTDdFY0FDSFJTME1LSTVQRkhZNmM0NFhwaEtTOWtXeTNhbG1j?=
 =?utf-8?B?LzRFa1AxbHRYNStiK0JpQk9lR1MvakRHQWZhcnN0RjloNThmQzVGd1RsNTlM?=
 =?utf-8?B?WnpiTkhlUjIyVHJ4d3Z6N2gvZ1lSby81WHg2WTcreTZocXZ3TThaa1BTOGpY?=
 =?utf-8?B?K1FGZzBPZXlrSjNXOXdYSnZjWHNmNU12OUYvVjlWU3NLdlA4S1dDTmVZbkR6?=
 =?utf-8?B?NGdDSk1TL3IyTWtNc1lCNGU5eEFJc0VDRUVhcmRhbTFtRS9rekV4NGU4NFhO?=
 =?utf-8?B?dG1pa01EemtyZllrR2VTL05uMmhDTE56STYyK2UzWXE0SjkrNStXVjR4NDd1?=
 =?utf-8?B?d1Q2YTN4dENCeUV4S0M4NGVUUC92RW5FblRXRmF1VU94NTV0THZyQys2aFgv?=
 =?utf-8?B?NnRyTzdnczNQR3FYWVZUME1VMXhKT1FkV2hMVVJCbnVvN1VFRERpcjNzc2RG?=
 =?utf-8?B?a1FZSER3Tys4dlFvWnNwWXhDYkx2SnA4YjdVeWtPRGxBT2pvTUo1aU5pNEhV?=
 =?utf-8?B?Ky9nNWtzRHpGc3ZQRWZQQjBpdmpmWHNJbExtOVViMUZQYmxZd094SENhWEFF?=
 =?utf-8?B?Ui9CcTV2U0cxQWN2OXZLbi9Ed3Bha0pwbkx4RHFwUmRDSG5HaXJCSGdsbnVB?=
 =?utf-8?B?cmg4TllaTDBROHVEdEh6Y1Q3eWhLdm1VSGhYWURiRFBSS201ZnZ4QStXYXBx?=
 =?utf-8?B?VExtVldqMDdycis1MzVmTERpZFJsU1duZjZkSUpNMGMyOCt0VlNYcC9pakNK?=
 =?utf-8?B?TkVMQnZMN0pJbHFUMyttVklxdDM0M2Rhb2ZXRnhZTFNvZ0xTYzA4cmNlejg5?=
 =?utf-8?B?TTlXcUlWdW15M0VjK3R6eHNiUVd0NENHT0pKS2NJR2ZoMXp4UVBQd2lPdlYw?=
 =?utf-8?B?RUpOZFJXM3hMRWQvT1RONUJtL0M2ZU1RcXg3YS9KNGlmSUlLaHFBeWkvclp0?=
 =?utf-8?B?SVYweVlyaXY4eTdEVGRyNEEyQjRFTGptNk0yK2c5VHAvM0dOMk0rS0NMNWE0?=
 =?utf-8?B?dXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5b2897e-5e93-4b2f-7c7c-08dd348a230f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2025 10:56:45.7887 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kle+MkP2l7SC51e0bCjg74rehw2x6b/w6LSKOSA3YqGqFdKODRAak+FRPMUWwfy+VAWgTk2uOCkhtbgu+ZhfHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7634
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

Quoting Jani Nikula (2025-01-14 06:55:20-03:00)
>On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> The current display IRQ code calls some IRQ-specific helpers that use
>> intel_uncore_*() MMIO functions instead of the display-specific ones.
>> Wrap those helpers to ensure that the proper display-specific hooks
>> (currently only DMC wakelock handling) are called.
>>
>> v2:
>>  - Move functions to intel_display_irq.c instead of having them in
>>    intel_de.h. (Jani)
>>
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_display_irq.c  | 128 ++++++++++++------
>>  1 file changed, 83 insertions(+), 45 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/=
gpu/drm/i915/display/intel_display_irq.c
>> index 9662368a651d..d9734fcd0d45 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>> @@ -15,6 +15,7 @@
>>  #include "intel_display_irq.h"
>>  #include "intel_display_trace.h"
>>  #include "intel_display_types.h"
>> +#include "intel_dmc_wl.h"
>>  #include "intel_dp_aux.h"
>>  #include "intel_dsb.h"
>>  #include "intel_fdi_regs.h"
>> @@ -25,6 +26,46 @@
>>  #include "intel_pmdemand.h"
>>  #include "intel_psr.h"
>>  #include "intel_psr_regs.h"
>> +#include "intel_uncore.h"
>> +
>> +static void
>> +intel_display_irq_regs_init(struct intel_display *display, struct i915_=
irq_regs regs,
>> +                            u32 imr_val, u32 ier_val)
>> +{
>> +        intel_dmc_wl_get(display, regs.imr);
>> +        intel_dmc_wl_get(display, regs.ier);
>> +        intel_dmc_wl_get(display, regs.iir);
>> +
>> +        gen2_irq_init(to_intel_uncore(display->drm), regs, imr_val, ier=
_val);
>> +
>> +        intel_dmc_wl_put(display, regs.iir);
>> +        intel_dmc_wl_put(display, regs.ier);
>> +        intel_dmc_wl_put(display, regs.imr);
>> +}
>> +
>> +static void
>> +intel_display_irq_regs_reset(struct intel_display *display, struct i915=
_irq_regs regs)
>> +{
>> +        intel_dmc_wl_get(display, regs.imr);
>> +        intel_dmc_wl_get(display, regs.ier);
>> +        intel_dmc_wl_get(display, regs.iir);
>> +
>> +        gen2_irq_reset(to_intel_uncore(display->drm), regs);
>> +
>> +        intel_dmc_wl_put(display, regs.iir);
>> +        intel_dmc_wl_put(display, regs.ier);
>> +        intel_dmc_wl_put(display, regs.imr);
>> +}
>> +
>> +static void
>> +intel_display_irq_regs_assert_irr_is_zero(struct intel_display *display=
, i915_reg_t reg)
>> +{
>> +        intel_dmc_wl_get(display, reg);
>> +
>> +        gen2_assert_iir_is_zero(to_intel_uncore(display->drm), reg);
>> +
>> +        intel_dmc_wl_put(display, reg);
>> +}
>
>I think the _regs_ in the function names are all superfluous.

I originally went without it, but then we have a clash with
intel_display_irq_init(). Since these functions are dealing specifically
with IRQ regs, I decided to resolve the conflict with "_regs".

I'm open to alternatives...

--
Gustavo Sousa

>
>Other than that, seems fine.
>
>BR,
>Jani.
>
>
>> =20
>>  static void
>>  intel_handle_vblank(struct drm_i915_private *dev_priv, enum pipe pipe)
>> @@ -1498,7 +1539,6 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
>>  static void _vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> =20
>>          if (IS_CHERRYVIEW(dev_priv))
>>                  intel_de_write(display, DPINVGTT, DPINVGTT_STATUS_MASK_=
CHV);
>> @@ -1510,7 +1550,7 @@ static void _vlv_display_irq_reset(struct drm_i915=
_private *dev_priv)
>> =20
>>          i9xx_pipestat_irq_reset(dev_priv);
>> =20
>> -        gen2_irq_reset(uncore, VLV_IRQ_REGS);
>> +        intel_display_irq_regs_reset(display, VLV_IRQ_REGS);
>>          dev_priv->irq_mask =3D ~0u;
>>  }
>> =20
>> @@ -1534,8 +1574,7 @@ void i9xx_display_irq_reset(struct drm_i915_privat=
e *i915)
>> =20
>>  void vlv_display_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> -
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 pipestat_mask;
>>          u32 enable_mask;
>>          enum pipe pipe;
>> @@ -1563,13 +1602,12 @@ void vlv_display_irq_postinstall(struct drm_i915=
_private *dev_priv)
>> =20
>>          dev_priv->irq_mask =3D ~enable_mask;
>> =20
>> -        gen2_irq_init(uncore, VLV_IRQ_REGS, dev_priv->irq_mask, enable_=
mask);
>> +        intel_display_irq_regs_init(display, VLV_IRQ_REGS, dev_priv->ir=
q_mask, enable_mask);
>>  }
>> =20
>>  void gen8_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>>          enum pipe pipe;
>> =20
>>          if (!HAS_DISPLAY(dev_priv))
>> @@ -1581,16 +1619,15 @@ void gen8_display_irq_reset(struct drm_i915_priv=
ate *dev_priv)
>>          for_each_pipe(dev_priv, pipe)
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pi=
pe));
>> +                        intel_display_irq_regs_reset(display, GEN8_DE_P=
IPE_IRQ_REGS(pipe));
>> =20
>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>> +        intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>> +        intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>>  }
>> =20
>>  void gen11_display_irq_reset(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>>          enum pipe pipe;
>>          u32 trans_mask =3D BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>>                  BIT(TRANSCODER_C) | BIT(TRANSCODER_D);
>> @@ -1625,24 +1662,24 @@ void gen11_display_irq_reset(struct drm_i915_pri=
vate *dev_priv)
>>          for_each_pipe(dev_priv, pipe)
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pi=
pe));
>> +                        intel_display_irq_regs_reset(display, GEN8_DE_P=
IPE_IRQ_REGS(pipe));
>> =20
>> -        gen2_irq_reset(uncore, GEN8_DE_PORT_IRQ_REGS);
>> -        gen2_irq_reset(uncore, GEN8_DE_MISC_IRQ_REGS);
>> +        intel_display_irq_regs_reset(display, GEN8_DE_PORT_IRQ_REGS);
>> +        intel_display_irq_regs_reset(display, GEN8_DE_MISC_IRQ_REGS);
>> =20
>>          if (DISPLAY_VER(dev_priv) >=3D 14)
>> -                gen2_irq_reset(uncore, PICAINTERRUPT_IRQ_REGS);
>> +                intel_display_irq_regs_reset(display, PICAINTERRUPT_IRQ=
_REGS);
>>          else
>> -                gen2_irq_reset(uncore, GEN11_DE_HPD_IRQ_REGS);
>> +                intel_display_irq_regs_reset(display, GEN11_DE_HPD_IRQ_=
REGS);
>> =20
>>          if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>> -                gen2_irq_reset(uncore, SDE_IRQ_REGS);
>> +                intel_display_irq_regs_reset(display, SDE_IRQ_REGS);
>>  }
>> =20
>>  void gen8_irq_power_well_post_enable(struct drm_i915_private *dev_priv,
>>                                       u8 pipe_mask)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 extra_ier =3D GEN8_PIPE_VBLANK | GEN8_PIPE_FIFO_UNDERRUN |
>>                  gen8_de_pipe_flip_done_mask(dev_priv);
>>          enum pipe pipe;
>> @@ -1655,9 +1692,9 @@ void gen8_irq_power_well_post_enable(struct drm_i9=
15_private *dev_priv,
>>          }
>> =20
>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>> -                gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe),
>> -                              dev_priv->display.irq.de_irq_mask[pipe],
>> -                              ~dev_priv->display.irq.de_irq_mask[pipe] =
| extra_ier);
>> +                intel_display_irq_regs_init(display, GEN8_DE_PIPE_IRQ_R=
EGS(pipe),
>> +                                            dev_priv->display.irq.de_ir=
q_mask[pipe],
>> +                                            ~dev_priv->display.irq.de_i=
rq_mask[pipe] | extra_ier);
>> =20
>>          spin_unlock_irq(&dev_priv->irq_lock);
>>  }
>> @@ -1665,7 +1702,7 @@ void gen8_irq_power_well_post_enable(struct drm_i9=
15_private *dev_priv,
>>  void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>>                                       u8 pipe_mask)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          enum pipe pipe;
>> =20
>>          spin_lock_irq(&dev_priv->irq_lock);
>> @@ -1676,7 +1713,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>>          }
>> =20
>>          for_each_pipe_masked(dev_priv, pipe, pipe_mask)
>> -                gen2_irq_reset(uncore, GEN8_DE_PIPE_IRQ_REGS(pipe));
>> +                intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_=
REGS(pipe));
>> =20
>>          spin_unlock_irq(&dev_priv->irq_lock);
>> =20
>> @@ -1697,7 +1734,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i9=
15_private *dev_priv,
>>   */
>>  static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 mask;
>> =20
>>          if (HAS_PCH_NOP(dev_priv))
>> @@ -1710,7 +1747,7 @@ static void ibx_irq_postinstall(struct drm_i915_pr=
ivate *dev_priv)
>>          else
>>                  mask =3D SDE_GMBUS_CPT;
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xfff=
fffff);
>>  }
>> =20
>>  void valleyview_enable_display_irqs(struct drm_i915_private *dev_priv)
>> @@ -1743,7 +1780,7 @@ void valleyview_disable_display_irqs(struct drm_i9=
15_private *dev_priv)
>> =20
>>  void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>>  {
>> -        struct intel_uncore *uncore =3D &i915->uncore;
>> +        struct intel_display *display =3D &i915->display;
>>          u32 display_mask, extra_mask;
>> =20
>>          if (DISPLAY_VER(i915) >=3D 7) {
>> @@ -1767,7 +1804,7 @@ void ilk_de_irq_postinstall(struct drm_i915_privat=
e *i915)
>>          }
>> =20
>>          if (IS_HASWELL(i915)) {
>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>> +                intel_display_irq_regs_assert_irr_is_zero(display, EDP_=
PSR_IIR);
>>                  display_mask |=3D DE_EDP_PSR_INT_HSW;
>>          }
>> =20
>> @@ -1778,8 +1815,8 @@ void ilk_de_irq_postinstall(struct drm_i915_privat=
e *i915)
>> =20
>>          ibx_irq_postinstall(i915);
>> =20
>> -        gen2_irq_init(uncore, DE_IRQ_REGS, i915->irq_mask,
>> -                      display_mask | extra_mask);
>> +        intel_display_irq_regs_init(display, DE_IRQ_REGS, i915->irq_mas=
k,
>> +                                    display_mask | extra_mask);
>>  }
>> =20
>>  static void mtp_irq_postinstall(struct drm_i915_private *i915);
>> @@ -1788,7 +1825,6 @@ static void icp_irq_postinstall(struct drm_i915_pr=
ivate *i915);
>>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>>          struct intel_display *display =3D &dev_priv->display;
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> =20
>>          u32 de_pipe_masked =3D gen8_de_pipe_fault_mask(dev_priv) |
>>                  GEN8_PIPE_CDCLK_CRC_DONE;
>> @@ -1854,11 +1890,11 @@ void gen8_de_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>>                          if (!intel_display_power_is_enabled(dev_priv, d=
omain))
>>                                  continue;
>> =20
>> -                        gen2_assert_iir_is_zero(uncore,
>> -                                                TRANS_PSR_IIR(dev_priv,=
 trans));
>> +                        intel_display_irq_regs_assert_irr_is_zero(displ=
ay,
>> +                                                                  TRANS=
_PSR_IIR(dev_priv, trans));
>>                  }
>>          } else {
>> -                gen2_assert_iir_is_zero(uncore, EDP_PSR_IIR);
>> +                intel_display_irq_regs_assert_irr_is_zero(display, EDP_=
PSR_IIR);
>>          }
>> =20
>>          for_each_pipe(dev_priv, pipe) {
>> @@ -1866,44 +1902,46 @@ void gen8_de_irq_postinstall(struct drm_i915_pri=
vate *dev_priv)
>> =20
>>                  if (intel_display_power_is_enabled(dev_priv,
>>                                                     POWER_DOMAIN_PIPE(pi=
pe)))
>> -                        gen2_irq_init(uncore, GEN8_DE_PIPE_IRQ_REGS(pip=
e),
>> -                                      dev_priv->display.irq.de_irq_mask=
[pipe],
>> -                                      de_pipe_enables);
>> +                        intel_display_irq_regs_init(display, GEN8_DE_PI=
PE_IRQ_REGS(pipe),
>> +                                                    dev_priv->display.i=
rq.de_irq_mask[pipe],
>> +                                                    de_pipe_enables);
>>          }
>> =20
>> -        gen2_irq_init(uncore, GEN8_DE_PORT_IRQ_REGS, ~de_port_masked, d=
e_port_enables);
>> -        gen2_irq_init(uncore, GEN8_DE_MISC_IRQ_REGS, ~de_misc_masked, d=
e_misc_masked);
>> +        intel_display_irq_regs_init(display, GEN8_DE_PORT_IRQ_REGS, ~de=
_port_masked,
>> +                                    de_port_enables);
>> +        intel_display_irq_regs_init(display, GEN8_DE_MISC_IRQ_REGS, ~de=
_misc_masked,
>> +                                    de_misc_masked);
>> =20
>>          if (IS_DISPLAY_VER(dev_priv, 11, 13)) {
>>                  u32 de_hpd_masked =3D 0;
>>                  u32 de_hpd_enables =3D GEN11_DE_TC_HOTPLUG_MASK |
>>                                       GEN11_DE_TBT_HOTPLUG_MASK;
>> =20
>> -                gen2_irq_init(uncore, GEN11_DE_HPD_IRQ_REGS, ~de_hpd_ma=
sked,
>> -                              de_hpd_enables);
>> +                intel_display_irq_regs_init(display, GEN11_DE_HPD_IRQ_R=
EGS, ~de_hpd_masked,
>> +                                            de_hpd_enables);
>>          }
>>  }
>> =20
>>  static void mtp_irq_postinstall(struct drm_i915_private *i915)
>>  {
>> -        struct intel_uncore *uncore =3D &i915->uncore;
>> +        struct intel_display *display =3D &i915->display;
>>          u32 sde_mask =3D SDE_GMBUS_ICP | SDE_PICAINTERRUPT;
>>          u32 de_hpd_mask =3D XELPDP_AUX_TC_MASK;
>>          u32 de_hpd_enables =3D de_hpd_mask | XELPDP_DP_ALT_HOTPLUG_MASK=
 |
>>                               XELPDP_TBT_HOTPLUG_MASK;
>> =20
>> -        gen2_irq_init(uncore, PICAINTERRUPT_IRQ_REGS, ~de_hpd_mask,
>> -                      de_hpd_enables);
>> +        intel_display_irq_regs_init(display, PICAINTERRUPT_IRQ_REGS, ~d=
e_hpd_mask,
>> +                                    de_hpd_enables);
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~sde_mask, 0xffffffff);
>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~sde_mask, 0=
xffffffff);
>>  }
>> =20
>>  static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>>  {
>> -        struct intel_uncore *uncore =3D &dev_priv->uncore;
>> +        struct intel_display *display =3D &dev_priv->display;
>>          u32 mask =3D SDE_GMBUS_ICP;
>> =20
>> -        gen2_irq_init(uncore, SDE_IRQ_REGS, ~mask, 0xffffffff);
>> +        intel_display_irq_regs_init(display, SDE_IRQ_REGS, ~mask, 0xfff=
fffff);
>>  }
>> =20
>>  void gen11_de_irq_postinstall(struct drm_i915_private *dev_priv)
>
>--=20
>Jani Nikula, Intel
