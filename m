Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8C/QD2Y6pWnt5wUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:21:10 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A013E1D3D16
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 08:21:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A89A510E449;
	Mon,  2 Mar 2026 07:21:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VMMcfpme";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C26910E448;
 Mon,  2 Mar 2026 07:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772436066; x=1803972066;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=FLSTnAZoZcJ6gQ9JxYYMckCTqJL4jL12jZ/SNGW8p1Y=;
 b=VMMcfpme9u+5ompNxIqSZbyGRoDeEKU23OgcEScLfHkq/6McYi7aC2Xz
 pIDwX3c5Gps1Z3WpnnuryGcXhhQfuYaBkuSQDkek1GDHlp9h2lE3uvAtD
 Ed2KIjgQrexroXduCI8MEUKD76sy+guwaox/ia09f78B1rknDVUv0e+U2
 eRUvC74DE8M0H7BTZDAyWnKpg7KosDMvvnqrMbr81qmwOVdfXEfGhYIm2
 wvVmN+zqh8Am6+doWohgEBc/LfBEhB5WASCE+oWwUYTlXkcfb8jSG1z0H
 Z0zW1aBCiQNXszcj+VSO3illHKK2EYIzY9lLUgpKmh07H9PoygXu0vcmD g==;
X-CSE-ConnectionGUID: y2kTu7XEQwiDhuyD1fXWJw==
X-CSE-MsgGUID: UeQSseJJRuGU0GxQHXeKAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="61007615"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="61007615"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:21:06 -0800
X-CSE-ConnectionGUID: qXvLq+EVQIa1uwWImYz3rw==
X-CSE-MsgGUID: aEgfxSRXQ4yUf7EGlygPPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="217467927"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2026 23:21:06 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:21:05 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 1 Mar 2026 23:21:05 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 1 Mar 2026 23:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LJ8G382ObIASR7UuK6h1z0mWlRN5W+UdA/lU+gSqlJBHUHsGYMzai8cpWlHAwWLpPp4jtNWmAydfVx7doF9+8SDKt+SHJj3sszTkXaDrLkK2SQIFRFyjVruOUHpnZG3a8++ScMNsPbug15GTy9P4ZudeBH+YOEC88kxOr2EjxbeJk/XC9wk8ZGf1OMWQpbPsuwqL5Uk7YumRU40OAnxunlEpKOfnQ5Tad/CObwPVa0m6rPfMx7GgYuTOGnSvUGXqV75i5oWNTdRkAjqfJx3yzzHbDHxoDZW3IRQEj8y/37snKXQplHnTY+GEbM9DdE9oJsPE+N5Z/JVlzlyiCCtL7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xog9VdKlMVTllI7zc/KFfZx2Fy13e7e7mCpQ7gwwdu4=;
 b=gxQZ+OX5TxQEj3+XG3uAn67xY0Prc7WV6NC0ZNVVTYbM8QD3UEBzkjiWRm/D12H7GNRK/vtfi7Y5SYSipvgo83qvy1pUHhW8A1SbuhZ0dKKKvmyP1w2ZaX/VIv9VrkSFv5LEhkiWrQ8KjEaLb3lMxWR4lurE7TZNAJzVQMWo1KBX2P0FYVyHrAmXoqc4jaP+YIi/yxCHN6tP5+l68mp35AZZk/ucRM/sXq9ZsCzzbyhqKAks+hyD1Bh6C9iCW84zJmXoenKqkz+txV5LXM1MCcTqtSmo2jf8PhLEhsl8lC/q/TCEKSQplxO3dg3mR0oPFK7CtESSmOFgSAJDHlh+Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB7403.namprd11.prod.outlook.com (2603:10b6:208:431::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 07:21:02 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 07:21:02 +0000
Message-ID: <67c075b6-ff7c-45fb-9b23-906a9ed98355@intel.com>
Date: Mon, 2 Mar 2026 12:50:55 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <46978246247b387d6d1de157d037014e7c132531.camel@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <46978246247b387d6d1de157d037014e7c132531.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0096.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::8) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA0PR11MB7403:EE_
X-MS-Office365-Filtering-Correlation-Id: 21c3688b-14bf-405c-82f5-08de782c4234
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: L7WdLJQr+JTA7ttaPeLIRd8IwT8g0DpOK9hBHIm3lQzqlJQksagIGYCrFsyMq8e7+phcdtjaQnrR7XgzYb1ss5UpiZTcwf7oKBMy6O9/pLyPLPOJnJHlMQ2+zCkvQj259jrxbZSczUHustBTSBW7fUBUvis8f6MmXHUE4kzj8HB6FMXKVnqS/hVrLQnNU0Hrj0J7Go0qqCB+iPDk3Cm8dDFn7n0/1XVoTQeOMyZTZAjaE5mD4LeQTKaQkDaPaF/Kz1wTNB66r/10H4Ki3yr5hauFd0qsNEzg4PajQBEUjkymFEBKuPpoKd5vIjM5RVXHftH1zhup8mPl3VH1yj+7LE1U9LCVpIFs3DKqy5emq1pxQQkp6McLv1hhDoTTVYMPI7T8CRSeUYX1AwP0+7B/OSpDpp8FaW5/pUiF10497/AFT8sp3VYxkWRQcyZgwD4U2QTvKxdytdek7nLe89ZL4Nn1yQJF/5nHDGPk7+5Ijn5ALv415a2NPf8DLsZ+Gx4Va40NZCkNyabrFo1Bx6lH0G6JFaK7j6t3u7UQc/rL5lo+7iNeQG1qDp8QK4bjaHfl1BdtcQhcN/d9dhYBULjttHOGz6N4GYUphPmhpFv51F1AtMG0RCrKC7kl0ga/2okWMIcl/bDQmk4VIvbnz15yLowVIFGnvoK81kaiAI3kLkIXQmNTQiBzVMPxBq3yzlBdjsCr9Lg4m0NREDNwe+j0vkHDHpCBm93g6KmBxABa2wo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ckhCQi9vdDZFeFVuZ3RXMUM5TXBnM3VZYW05OVpxRzR3UGxPOW9oRGpQL3Rh?=
 =?utf-8?B?d3BSVDhKNXRudkNxQkp2Z3lSdzRZYktjcEZRd0lMQXhlV3N1dUdWSDB1Ris4?=
 =?utf-8?B?dTJjZTFlaFVkUHVacWNGMmJ1RTAvTmxaRW1RTmVFZUg3b1U3WklRL05VZzNj?=
 =?utf-8?B?TlVMNkYva0d3VkdUY0djc0xjYklTQ1JKaU9oUXlPOFpSdjcyd1R6S0FzMktk?=
 =?utf-8?B?V05CeERGandPd2d2VjNlOGVKTnN1U21VSkZsdldkRk5TRGtvRkFwQWFBZkEz?=
 =?utf-8?B?ai84dkF1Tjh1NjRONEhsanFWUkNHckV1azgvUWFNazdkYWNkQ01sdlAxa3lt?=
 =?utf-8?B?ekU4UzRRbUl2TERySW5FdDFNd1NCOFErTTZ4SGY4Nzk4eXNHbXR1VEg0dHVJ?=
 =?utf-8?B?cC9ueUllT25OQVVRbUNFbC9MOXpGMnpoMlk3NlVNQy9yUkRrYkFOWUtXdk1v?=
 =?utf-8?B?cVQvRWxCc0ZkYW54MDU3bjgrdEVMUm80Sk5TUlIyT0N0eTRuZktsNjZFMnB4?=
 =?utf-8?B?U1ZVRUZ4aERLVFdZd1JTV05TNFc3UnZXTC9lbzN5QTJucWtFM3NBRlhPc0Fs?=
 =?utf-8?B?c0VGOXh2YUxiRHhMMzdldTNsUVpQK2ZmSmlZK3ZjQ3hYY1kwSnhnMVl4aDQw?=
 =?utf-8?B?aTFpdFkrcHZOQ3Y1NDFzZnBUYjcrd0M3aDJVSE1XZHFRRXVhbkRlR2ZkMnRU?=
 =?utf-8?B?VEVKWjNrbmsyTzRXS2V5Qnh6SHlUZXNNUG8zV2xZbTk5NFVvVndLV3RzNEEv?=
 =?utf-8?B?QWxxOEhybmJtUjVZMHAvY3BFZTdnbTFCZlF5Rmt0RnkxRkM1Qnl5YjFKLy9h?=
 =?utf-8?B?M0JZazZWS01ma2xOSjY5S01UYTNVMmNJbGpZNW5TK2J5TFA5WFh2eUZuWTMw?=
 =?utf-8?B?MDdUbnJnZ3UrSmFXN0U5bjNUblNDUkVSSTNOUXlVSmRRWStZbUhxUTJGa2xI?=
 =?utf-8?B?OHJ0RFhBLzlUUVZ2clp6VGdONzg5dVVPSXNsajNocXlEV2hqQXlUM3VYU2t5?=
 =?utf-8?B?S29PeUhFbjUwdUQyOVJDSTZIc1BEVnhkUWxoTXZNMk9NNUs3Zy9zT0lSZEk1?=
 =?utf-8?B?eXk3WXA4d2ZPb3RvdnZKYXBMT0xITXladGJTSnlCT29URlhKRWg4OVpKMWRI?=
 =?utf-8?B?elU0UmpURmFvWVhaNlNGVzlFQ3lLdEQ1Q2lXV2plaWtuRmQxeFlmaUJWZnFr?=
 =?utf-8?B?OTVvaklCTG96Q1dMRVQxZ2lMOHU5czhBeVVrb1JKUFEwdUZvd015T213UUdZ?=
 =?utf-8?B?Lyt1a1l2TkkxZllhU1M1aEIyVXZqb0I0dTBZRUw5eDJuVFFrYms0YnVPVjZO?=
 =?utf-8?B?YWs2WU04YVJhYk9WQkFFTG5WK092TG9raEwvVXNHUnVNaGZZaFpFS2E0dEpC?=
 =?utf-8?B?ZmlwWGErSXZ6NFhOV2RzZDVRTVpjR0h2V3A5Vkt1eUpFY1JIS0FkVTM2c0N4?=
 =?utf-8?B?b3RaWFQvMWZWZGFic0trWWVNbWZKSExUYURtVDFtZVFGVFFkWTZTdjNKQzVP?=
 =?utf-8?B?U0RjYmowWENENEVvelVUdlpLTjh4VjRHZW9aTVZpbXV6c21meDBJZ0FlWWxl?=
 =?utf-8?B?K29nMmVtdFphYVVUdHZvMXhIbXlyclpQRjN5N3dSMndVZnBkSGFraFlwL09Z?=
 =?utf-8?B?VHU0Z3N2a3I5SEIyRTZsVGc3V1oyS0Jvd2pPSGZSRkloM1F6M0RmVE1MbFhk?=
 =?utf-8?B?aGErT0R1elN0WCt6cVpJaUVlNHFFRE5ndVBwMUtWK0MrNEt6c2wyeEdKKzQ5?=
 =?utf-8?B?RklIRGc0YmwxRDdEbHQxR281dVdXNDBmbWpCR3BNM2ErN3RIOUgvbUxXakVi?=
 =?utf-8?B?L3pGTm9lMGRSU0tJMVJDWTVhdDB3b2kvRXRnSndUdnAza0Z0aWF0TDJSald4?=
 =?utf-8?B?cVFlbmpEVndTSk5jM0RYVWVvSERURG5IZzJNRGwxV1J5YTlXaldLbXFTcVQ1?=
 =?utf-8?B?aVdqOW51VzJhUUJ4c3FDSUV6Qy9sZERwczZXTmdKSEdXRlpIaHM0RlZnaVlV?=
 =?utf-8?B?MGx4R3hvN3IrNmNmMWpBbXdsNGJ0NDYveWNTckJ1Mmh2YXBvTDgxcldRYU5O?=
 =?utf-8?B?a09mR0xnc0V3eFJyeDZJcjVxZEVCSHl2dFpvMXB0OU5rVjRjL3RUdlYvVk9F?=
 =?utf-8?B?RHYzODR0aXNYVEt3Z0FJTnlyN01HRFYzbDdpOHAyMTBQeDJlUUtrN3RnemRl?=
 =?utf-8?B?djlnSHRnMHhaaE9uWE5QbFpGREh1TFF6RytaKzE0UGNwZU1yR2pvZk9aNFBr?=
 =?utf-8?B?aDBRRjRTSTRaV3lzdmZxUUd6TjE3aHEwTXNjbmltZnR6NzlYY3JKYmc4a3JH?=
 =?utf-8?B?N2hsUjlWYnZRU1IvVkV5ZGdKTjFEZU1zRHN5Y3o0TGtJK2pFQkU0UT09?=
X-Exchange-RoutingPolicyChecked: I4oQglxzJlEUV6KA0a37+3KIAxRrAfJTXwNt3K2HC7o+AnO8Ie7mXsrdKCUbH4Ljvvj9BhCp7JykHPSMRxxO6JtYTm2nzr+ki+W/srwl7hTpRI/+HpaTy3ylAXl7Qy0N3UYp4TAzq1FFx9N89mZfe43XcmIT+q6znkba/xzVDkl/Lyj9hLtkPatP7TVrmc9/PaKHJSsw01gTZ4CYvPGKcvL3DIUM1FbSRzpYgiZ3TRcHUVHCjxfIH2tw9DO5Au00KYPNIOHahmd/0X1GEXlTB7hmKCzXdpiNlnf1vrsHQAMrYXRzuivuHUbvGWbRF1DRMWS6x3ktWsmOVRjalmGE8w==
X-MS-Exchange-CrossTenant-Network-Message-Id: 21c3688b-14bf-405c-82f5-08de782c4234
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 07:21:02.1595 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lhoo8F+vWHg34Im99t+U41fqwbPCAGrOSVNELF3j6z5isUkVDgbwHGer/crBBj2gCnmDDkGaXiZ6bF1Uu1k54Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7403
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A013E1D3D16
X-Rspamd-Action: no action

On 02-03-2026 12:14, Hogander, Jouni wrote:
> On Mon, 2026-03-02 at 09:06 +0530, Arun R Murthy wrote:
>> In ALPM init, the DPCD register ALPM_CAPABILITIES are to be read.
>> This
>> read has to happen after the DPCD init.
>>
>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>   1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 613559d11133..e60802b0b8c9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -6948,8 +6948,6 @@ static bool intel_edp_init_connector(struct
>> intel_dp *intel_dp,
>>   	 */
>>   	intel_hpd_enable_detection(encoder);
>>   
>> -	intel_alpm_init(intel_dp);
>> -
>>   	/* Cache DPCD and EDID for edp. */
>>   	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
>>   
>> @@ -6961,6 +6959,8 @@ static bool intel_edp_init_connector(struct
>> intel_dp *intel_dp,
>>   		goto out_vdd_off;
>>   	}
>>   
>> +	intel_alpm_init(intel_dp);
> This will cause problems to PSR/Panel Replay. intel_psr_init_dpcd is
> relying on ALPM dpcd init is done first.
>
> BR,
> Jouni Högander

I think this will also have to be moved down.

For eDP intel_psr_init_dpcd() is called in intel_edp_init_dpcd. So can 
we move intel_alpm_init inside intel_edp_init_dpcd() ? Just before 
calling intel_psr_init_dpcd !
Also rename intel_alpm_init() to intel_alpm_init_dpcd() ?

Thanks and Regards,
Arun R Murthy
--------------------

>> +
>>   	/*
>>   	 * VBT and straps are liars. Also check HPD as that seems
>>   	 * to be the most reliable piece of information available.
