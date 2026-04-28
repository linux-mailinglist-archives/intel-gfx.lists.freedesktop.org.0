Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kDTyG8ji8GmoagEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 18:39:36 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3DA0489258
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 18:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6528310ED6B;
	Tue, 28 Apr 2026 16:39:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DLvNpQk5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A0CC10E095;
 Tue, 28 Apr 2026 16:39:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777394371; x=1808930371;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=IP3We/teO5YK9D4jgSeWkg7Ge0YBAxExy8VNqhoL49U=;
 b=DLvNpQk5i7hJRvXvVgb30M+ucx8ItF87weI/VQkSXno2mAkZLzW54Rxv
 WtK39K/Tq1iS+p6TIsKiNZMZzvc5iy1HTlpV/r7ZvnlICzIihssni/0RB
 zB+PH+x4mI6PXp96PwYJhshBMKMlqRhslgGb0qfVFBJ5u9iOw5FVCqNX8
 RHDNMRFk9LHHuT9uwqp8auBEeUHAjt23SHAL6sVKKDHDxvc95t+2xWr81
 OqeccJ/BzN7U2nJnlV6aoc3/yrUJKUXOLD+OWYeRBKnr4auYLow1QVRHy
 vujmLbVTTSvwS6MgEmht7FKMQ9CqwHDJWZMswQoYLOoPWt+3MEMsYKoI4 Q==;
X-CSE-ConnectionGUID: 0GwEMUWyTQafblV+p0rO0w==
X-CSE-MsgGUID: TaRQmb+fQ2mUaE8LBDkdww==
X-IronPort-AV: E=McAfee;i="6800,10657,11770"; a="78371066"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78371066"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 09:39:31 -0700
X-CSE-ConnectionGUID: t8E3C5GjSLKOzFfvv34SEQ==
X-CSE-MsgGUID: +00o3x8HQUK5MJN6cq+z3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229421720"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 09:39:31 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 09:39:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 09:39:30 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 09:39:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NEP1ucGhpP5TRAbPgAY//yFqEScKWwR8F/o6iDl+2bT9uISDK9xGHuh+FVZhiO4Z9SwcfIeW/oE8x2G4z7qcHWqWPu6MerEsXIt6VAOzyO11EabEK0ZK5q53m+5gYErh4jWoBmyhxBLLWr4hptKQrd3GGF56cXGa4ZCFUMhha0LXhQig8h8btdV5PkfhTNTvoYZUH7p2h+ZtDduiwSk0A6Q0kZPEZxG/H50wk2xvbLUycPzU6fhXcA/CDD9BTq5v+ap+buYMQ1Y/MH+zVTXaAksi77nysWXu0lUijew/N8lkJ65u2XVF7Jgk8ZHwLzV5ImvT/DbeMCDdwBZ4s6b9nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t8/vb1wjw8b48lACe7Mya+UPAKr3zSQK3hhGtiW/wA8=;
 b=IXPVzYYXfG4dv6JJ4QyiIdejC5jI6esYsClHSWeQeSbKGKp6nC3sk/27mEM2jbGP9Fi+SwWYlZsicuhdb4+NAZxQv816MrMjwB00SVd7vQ+sMlq6AmmJnTn/kOoIjvZ8dAd8mc563pjaaRo99KDfaUVyT2HFl0sZ4eJCPXmz2AYb46vho4YuC/CZ5jKCeueb0PpDGpdfucEpWDe3qHA2VsALAIANie9rojmmT6WbypEZDR2LobwOFEa6FocSN+G2YZm406Uruh3KWRVsHRCxY+/PWgYDToI91tUOe0qz+Enrfh9ybQ+tgJxc0kTcHrUQrhUIepZdjO2oZ09Z8agS2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by PH8PR11MB8015.namprd11.prod.outlook.com (2603:10b6:510:23b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 16:39:24 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::d9c7:d2fb:680d:1ee1%6]) with mapi id 15.20.9870.016; Tue, 28 Apr 2026
 16:39:24 +0000
Message-ID: <15f3c557-602f-4fd9-a2fd-d77290e255fc@intel.com>
Date: Tue, 28 Apr 2026 22:09:15 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915/psr: Prevent DC entry during active vblank
 for Panel Replay
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20260428123951.3803703-1-dibin.moolakadan.subrahmanian@intel.com>
 <70d7c60be91c179b8d47997cd00ac5d84e824c8c.camel@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <70d7c60be91c179b8d47997cd00ac5d84e824c8c.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0001.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|PH8PR11MB8015:EE_
X-MS-Office365-Filtering-Correlation-Id: 45477730-3b1d-4891-6c8e-08dea544b4b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: U63JXAUJnLVEXUHb6i5Kd6ljK4jlL08GgXNDuL9ydY+p9+F0ziwuIB1+yRcZd4mrdKPJUBxzx/bf5eH5fVYH63ByPvwqUO0/ATF+eLj8DAo+TOVB7I6DEjm8ZzcJcBY0pRz+2XeXiMWJuF5+qWwTiDasSLtdM1XMbl+2DaMDtn2/01t/rvJmt7stVBb5q5maUQBygqtgkn71mzKn9Z+D3xLYnbAWWeYqVSNgEwaqQD4RR4KE8+FD5UQeZobs+YalOKJIgXNNyYKxUNLHpOli0NrRU2ChSR0QU5JANk+1KLvvx7Jv6HJ071n2AgHQTAEZ8dMkMWMwA7iYujZP1KOUO7JT+VzdP+Rsn4O65weolsuWHqySS5Gx4+8AtAg3lMxTV6BXxQnQONHhbFmTxhC9gHmFkvTi34MosOi0Mb5KixDT8Ft8QOMyAZdroALLGmFscdMqd4Gx5uKaHnr0WRDNwOnWBT4v1yWNyKi0vhwJ4dB16tjn9tNSinxG3bZjkx7p+z3xiEk8KCo/eCFgyMEsaDkDdm3dmb++LGzHIJfI2Ir0IV0wR8uu0YhiIL/VsQ0iX4rGJal9qhrZUbdGO3ft76THTcSCDyGNRfe/IDIT5LvcZMsXyL/0SsQg+cZAmdcIYMK4OXalrp0LjSaLXKBMIOnKbjCJX0LHZEbbd6MzR3QhF43Cia5tWrAf8B19scR3YC1+NVwnDyaD9wX3yQ4F5tgLBnTSMtgUvIeFNbFQVMw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bFhRMElYbVVuT2RlTDdjRmo4N0lsUDcwOEpGdGh1VVY0ZnYvUEtNazlvYkVw?=
 =?utf-8?B?UlY0bHBpd1BtUkQ4dnFRVWViaHIreDV6QnVjeFcySWM5M3RRMFlMT2hhZUQy?=
 =?utf-8?B?YmlGR0tSYWdIRXlLbGpNVVFTZVU3UzBLRU4yWUozYk8yak9DSXZMZXpodUd4?=
 =?utf-8?B?Y055aGk5dUhRd0xCOEFvNTdTKzRiazhWL0lBYUVNMzBScjAreEtSUEZKRG9N?=
 =?utf-8?B?b3kyb0xTNUZoeEFjWjVLTlk5U0JMMXRSdGw5T2pLMDVhRnQ5bksvTFhyVHdJ?=
 =?utf-8?B?UzJNNnZieGo0L1R1YjZKTlMzZklHaUFlaVdEdmhrRFgycXZmZGFmQjUza3lQ?=
 =?utf-8?B?cFFtOXZ2dncyazQzdC93SExaa0ZNWXVpemljRjhLSXFRV0hia3pZUndoS2Nr?=
 =?utf-8?B?YUk5QndxODl0aDFkWEJsT1pZZURRRkJPK01ocThNR0NEME4zQUdZVHRqd0sx?=
 =?utf-8?B?c0ZuaHpWUitFYVdWeVZKRXhUbW5DVXRPM0lUb3hRZFVkQmN2MS8zTkJCelRU?=
 =?utf-8?B?WHhxMGswTGVWTHJQYjR2d2JpMnl3T1R4YjNtZE5sVzgvUXlxZmg1dXFGSG9z?=
 =?utf-8?B?K3VaREtNSE9Fa1ZXRU9Nc082U3I2ZklTdktJSGFjUzdETmRMcHpvc1VpNi9Z?=
 =?utf-8?B?aUlmVmttb29iejdTV0NXREtsUnRzci8ycXY1NlhReVUyNzhrMGtHWURpeTh3?=
 =?utf-8?B?N0t6anVTa0VadkMrUFVrR2p5Sjd0VUtmTWZKU01NZzlnRW51QWtWc3Zvb0dp?=
 =?utf-8?B?U3ZuMkF3NnkzZXlKQ2xBM0lqRlN5M2lOSU1Ud2Z3WEUwV2YxV3F3ZzVGTjAv?=
 =?utf-8?B?YlkyK1VKeEJyV0Y4eTBpa1lmK0Z6N3VvNGhxcVBvK0hYd3cwSUIwZ2V0dklZ?=
 =?utf-8?B?ZGRpWXg5T0hMd3N4M0I3d2JSZW5BdUlrTjVwVlZKemJ0Zy9ObjBBQUVkWTlQ?=
 =?utf-8?B?M1g3Vmt5Y1JwZWRFL1NIdHA5c25xcVJRNWFOWXlXVVFNYVB1QmxKVE9YZzB2?=
 =?utf-8?B?ZzBlNE4zdFhkU3hFSHpqd2R1K0FKS0Jwa1VpUFVuSjVYSHplbHYzWC9BbW00?=
 =?utf-8?B?SmVTUUIwbjIrRjZLalhMc1JNbDhyT1Q4aEtDL083Z2k4ekxla0t6cFVPRmdz?=
 =?utf-8?B?blZDWnBqREtEWFRNQ1h4VUdQMWxVclFjRUg5WHU1V2Y3QjBOdFZzZjdwMmt0?=
 =?utf-8?B?aDZvK1IyTFhMQThOVGxpUkJYSkt4VkIzN0F0akQ1TktPMXgvM2g1aEV1SWJD?=
 =?utf-8?B?VEZkV1RuYnU1RjE5U3NydVNTa0pRVGFDUjhjRDJKZTJwNjRtUXo2YklVN0t1?=
 =?utf-8?B?TlVsTmxoV0R3cDBJY0g3Tm1DRFJ0Wkx3RUt1VkF5WHpSOGtTbDZDODRIcTZZ?=
 =?utf-8?B?UEkxQUhKbzJvTWhQRlRqMDFKS3dHWndqTXk1L1o2OEpVWVFSZytzQzFIdDJL?=
 =?utf-8?B?UjZJMXYvZC83WHVxazBGQzFLWUxGT0tZRWNJNzhKZW9USjNjeTlMd08vVklU?=
 =?utf-8?B?aXBNSGx4Q3d3eWhHTS8vTzRPZU80bGdQYWczYlJ0eTg5RGxCd1craEdDNGJM?=
 =?utf-8?B?eXZadWwxbngxNDRlNmRNNW15eVBKTnhjOHpoYWJqNCt2blM1RE8wNUwxYk5F?=
 =?utf-8?B?Smc1QWN1aHVoK0FyY1ZpUjlVdU9PbzJKK1lxdlV3TXNLWkl3YUZNeDJ0RFJ3?=
 =?utf-8?B?QTVzWWF5OHAyY3d4Zzl6OHdZSHRxOC9IelhrREphKzYzdEhwQVJud0xOa292?=
 =?utf-8?B?YUphSUl5bnZMSlJybTczV1NOakwzRXFXRy9ZcUtFeTNSeFlIRWkzYU90blN4?=
 =?utf-8?B?VEJpa2ZOaVUzTldURkVvWWlGbUNvNlMyTjV6UXRidFF5bFZCcFEyNHJmWWl0?=
 =?utf-8?B?bkYybDk1K2hvNDYrQmtWcnU1bWtOeEFLZlRsZ3hoUTVETkIzV0ZIWEQ1QTl2?=
 =?utf-8?B?NDNRRkFubmk5VDlJZmhJL0ZNdWpXZm9PM1Z1cWppU2FDQ3N2WG9rTkFVSnVx?=
 =?utf-8?B?NUFETlltaHNzcHVyUjA4cTlMUE9UcVNPMno4NkV0eEorRm9xc3RRSVdtbWxP?=
 =?utf-8?B?QlV5WnRHbE5YS1VPTkxBMXk4Z3JpcGlYQVdFL2tvZWNDaWxINmRjSjU2U3Ew?=
 =?utf-8?B?aVZvWHdoMzN2WU1XdzRlbWZZWVRYa21mS2NIdmNNN1IzVlMzQjB1TWdWejRw?=
 =?utf-8?B?TFprVUZQU3hFSkUydXF6c01VdlhrS3RLeTBXVG4rM1dva2tFTWFzMVJxb3ly?=
 =?utf-8?B?dTQraTluTVBZS3I3U1NpVWd5bmlRVmVoTWZzZUVhNEVDY245UFVQN3JFMlFP?=
 =?utf-8?B?ODFIYStrZFFVNEs1RFhMQmJ2SDNXL0NJWGpFeUVNZlBKYThoZ1dpYVQyMzR1?=
 =?utf-8?Q?zhVxhTuXtcCvE3/hf+nu7lv4vWFpqdb/yn84O7bCNFkUv?=
X-MS-Exchange-AntiSpam-MessageData-1: L0LWGLzs+0qZMQ==
X-Exchange-RoutingPolicyChecked: J8OQEozv4i1fV1yJS1CH71WT7zlJZct1F4hr+AvcrDZhoaSoNJ2vsTIE8OxvFFyQqU4evXLpn8me0ZqeFIkaqD6MypbOYXu4/R5b+cH1UsuABE9gYJkqrRdKMK5gbL1bmXpdHeIs6fL8hlgfGnpExj2ZW0EkE38dxwJWPf/DkVZ+iSL83UiJAOufY4w7GVRhaOfs24sUp7JSxgP75FvHU3p/d/lLP0zhhPke0JjrXKzy1qNSOycJwd/eaADJazNmz2MFwzKmBLjgIot79Rn5UXqrs8XWj/gjR4s55a6njlip5nuzwKHBWAcFP9VBjXmBsLrwB9DZtWQmAPYX+GI+2w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 45477730-3b1d-4891-6c8e-08dea544b4b7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 16:39:24.3496 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zmG0+mRI+IPqie8Fh8VzO4MDqSND6odz52yPW/JJ86x/lry014qC+O1OkhHIUNtbIqypHwJRzr3AozKMEdPL9JB+iIR/RRZHFxN4nXL5DzbZh74dO2v/pHIdjUDaBKSR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8015
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
X-Rspamd-Queue-Id: A3DA0489258
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dibin.moolakadan.subrahmanian@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]


On 28-04-2026 18:26, Hogander, Jouni wrote:
> On Tue, 2026-04-28 at 18:09 +0530, Dibin Moolakadan Subrahmanian wrote:
>> On PTL+ (display ver >= 30), hold the DMC wakelock while vblank is
>> enabled for Panel Replay. Older platforms rely on
>> intel_display_power_set_target_dc_state() for this.
>>
>> The wakelock is acquired/released at two places:
>> 1) Dynamically when vblank is enabled/disabled via
>>     intel_psr_notify_vblank_enable_disable().
>> 2) In the PSR enable/disable path.
>>
>> This handles the following ordering scenarios:
>> 1) Panel Replay is enabled before vblank enable arrives.
>> 2) Vblank enable arrives before Panel Replay is updated in
>>     intel_psr_post_plane_update().
> As discussed offline I would check if we could just take the wakelock
> when VBI is getting enabled.

Thanks for the review. As discussed offline,
I’ll rework this and post a new series which unifies the handling
by taking the DMC wakelock when VBI/vblank is enabled.

>
> BR,
> Jouni Högander
>
>> ---
>>   .../drm/i915/display/intel_display_types.h    |  2 +
>>   drivers/gpu/drm/i915/display/intel_psr.c      | 55
>> +++++++++++++++++--
>>   2 files changed, 53 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
>> b/drivers/gpu/drm/i915/display/intel_display_types.h
>> index c81916761850..f386d6dba9e5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>> @@ -1775,6 +1775,8 @@ struct intel_psr {
>>   	bool source_panel_replay_support;
>>   	bool sink_panel_replay_support;
>>   	bool panel_replay_enabled;
>> +	bool panel_replay_wakelock;
>> +	bool vblank_enabled;
>>   	u32 dc3co_exitline;
>>   	u32 dc3co_exit_delay;
>>   	struct delayed_work dc3co_work;
>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>> b/drivers/gpu/drm/i915/display/intel_psr.c
>> index 63c19958a9e3..82bc63054906 100644
>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>> @@ -2192,6 +2192,34 @@ static bool psr_interrupt_error_check(struct
>> intel_dp *intel_dp)
>>   	return true;
>>   }
>>   
>> +static void intel_panel_replay_get_wakelock_locked(struct intel_dp
>> *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>> +	if (DISPLAY_VER(display) < 30)
>> +		return;
>> +
>> +	if (intel_dp->psr.panel_replay_wakelock)
>> +		return;
>> +
>> +	intel_dmc_wl_get_noreg(display);
>> +	intel_dp->psr.panel_replay_wakelock = true;
>> +}
>> +
>> +static void intel_panel_replay_put_wakelock_locked(struct intel_dp
>> *intel_dp)
>> +{
>> +	struct intel_display *display = to_intel_display(intel_dp);
>> +
>> +	if (DISPLAY_VER(display) < 30)
>> +		return;
>> +
>> +	if (!intel_dp->psr.panel_replay_wakelock)
>> +		return;
>> +
>> +	intel_dmc_wl_put_noreg(display);
>> +	intel_dp->psr.panel_replay_wakelock = false;
>> +}
>> +
>>   static void intel_psr_enable_locked(struct intel_dp *intel_dp,
>>   				    const struct intel_crtc_state
>> *crtc_state)
>>   {
>> @@ -2224,8 +2252,11 @@ static void intel_psr_enable_locked(struct
>> intel_dp *intel_dp,
>>   	if (!psr_interrupt_error_check(intel_dp))
>>   		return;
>>   
>> -	if (intel_dp->psr.panel_replay_enabled)
>> +	if (intel_dp->psr.panel_replay_enabled) {
>> +		if (intel_dp->psr.vblank_enabled)
>> +			intel_panel_replay_get_wakelock_locked(intel
>> _dp);
>>   		drm_dbg_kms(display->drm, "Enabling Panel
>> Replay\n");
>> +	}
>>   	else
>>   		drm_dbg_kms(display->drm, "Enabling PSR%s\n",
>>   			    intel_dp->psr.sel_update_enabled ? "2" :
>> "1");
>> @@ -2344,8 +2375,10 @@ static void intel_psr_disable_locked(struct
>> intel_dp *intel_dp)
>>   	if (!intel_dp->psr.enabled)
>>   		return;
>>   
>> -	if (intel_dp->psr.panel_replay_enabled)
>> +	if (intel_dp->psr.panel_replay_enabled) {
>> +		intel_panel_replay_put_wakelock_locked(intel_dp);
>>   		drm_dbg_kms(display->drm, "Disabling Panel
>> Replay\n");
>> +	}
>>   	else
>>   		drm_dbg_kms(display->drm, "Disabling PSR%s\n",
>>   			    intel_dp->psr.sel_update_enabled ? "2" :
>> "1");
>> @@ -4143,9 +4176,24 @@ void
>> intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>   		struct intel_dp *intel_dp =
>> enc_to_intel_dp(encoder);
>>   
>>   		mutex_lock(&intel_dp->psr.lock);
>> +		intel_dp->psr.vblank_enabled = enable;
>>   		if (intel_dp->psr.panel_replay_enabled) {
>> +			/*
>> +			 * wakelock handling for panel replay
>> +			 * for older platform rely on
>> intel_display_power_set_target_dc_state().
>> +			 */
>> +			if (DISPLAY_VER(display) < 30) {
>> +				mutex_unlock(&intel_dp->psr.lock);
>> +				break;
>> +			}
>> +
>> +			if (enable)
>> +				intel_panel_replay_get_wakelock_lock
>> ed(intel_dp);
>> +			else
>> +				intel_panel_replay_put_wakelock_lock
>> ed(intel_dp);
>> +
>>   			mutex_unlock(&intel_dp->psr.lock);
>> -			break;
>> +			return;
>>   		}
>>   
>>   		if (intel_dp->psr.enabled && intel_dp-
>>> psr.pkg_c_latency_used)
>> @@ -4154,7 +4202,6 @@ void
>> intel_psr_notify_vblank_enable_disable(struct intel_display *display,
>>   		mutex_unlock(&intel_dp->psr.lock);
>>   		return;
>>   	}
>> -
>>   	/*
>>   	 * NOTE: intel_display_power_set_target_dc_state is used
>>   	 * only by PSR * code for DC3CO handling. DC3CO target
