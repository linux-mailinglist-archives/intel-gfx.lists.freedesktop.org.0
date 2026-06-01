Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aDrLD/0/HWoNXwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC75B61B554
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:17:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D6D810E750;
	Mon,  1 Jun 2026 08:16:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kthief5C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11F6910E750;
 Mon,  1 Jun 2026 08:16:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780301817; x=1811837817;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xrhyztce2n+wOKdHA9be/oZKZ3tRKxWrgHYxJFxjRlA=;
 b=kthief5Ct2I7CmcLVt1sKUBQptVAIabVVvMy1gvkJ3tPgcnF6yQfEiUk
 oqw2/jNkMyq4ar7RWLhYfpWilPSTA6PCOGcCOeg9Lj5NhhSzantTo/Wo3
 8WK/9rlgvLhUSYrcaqR4ZQSLROFFUiiLaBAQYdH2t8ep/JbKOU3kXx7df
 1Wax6KPCGL8tVuSWWz4pjaa179afW4jrOHAzkJzBd852Ts3ArbaWTwTEc
 Q9X/BQ0Tg2pwWG1ZKrKonHTyJf/SFexqlz1AFBuVMfrJv0LAr8k40MERJ
 hFzw8IMxtR0yag3bK+7jvPnimbHyFqaHXNw2gUytWTpHxMG5sDPZChPqu g==;
X-CSE-ConnectionGUID: mlbnPu/NS+aM22/uIX+E3g==
X-CSE-MsgGUID: w778oYERQ7aemyrtdfw2Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80906619"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="80906619"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:16:57 -0700
X-CSE-ConnectionGUID: mNHYDISAQHm8ViQYXKF/PA==
X-CSE-MsgGUID: xapYbOfCTi+vVswK9AvVcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="245338087"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:16:56 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 01:16:56 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 01:16:56 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 01:16:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ngtjyOxAauBafjjSMQ7mwxuSwcU/aEUhMgVQy4eRcEI/aL7i6hEA2En6JRViYMkvHSFNCJ8luy/aqiyihGZ4mziAb+DP4sguUnxfoqgxzYt9NiWMM0RiuL/EFCAzmVgZY7lAiOpu5WhMIJuSMHpwlV5523KQ4mmC62z3NpeFE+K8Fm4P3ux+k1Tache7mkPNSzQCSc9ZxrK1JCFsxkvPbSnEQvCcZzgQVUrmGMoqzgQ332blrKh3C3sQ/G6Aao9iA0hwOCghcpOmaLYJooLS18kL2znuARPYec3fyutwrWTstvYPJxr2AdwNaBZSL9sKMmxd+hVjp2pS7eIAFJYw3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Is7QDzt6XpYoQEqFuo/x3EItIhnVK3++niiBBodDIE0=;
 b=kBiFOyTOnTD7QGD3ZDeGvmf7ULdGloeVsgC2YmBKJbciBufwICyLROdaMn1VsjBD5bzQNWIkXiq+JhRO/pvxwXNgEI9//hDPXk7O894G9dtA/svFC8rvJSlaUQ2QqI6JKX4kpHdNb3ZD3zhj1DgEv19o6inNE5OprQV4dB7XqFyF3ymlJtBBzMpeRdRarwYk0uMQQxu5h9fBpRalGrqfW4D4rBEf90YiueiLYrEZ7tkf2fTp3c7nT/zeuRYcD5TJxUURppzHFJ3I4itit1WTXGalugtGLmnYqasX9FN46OiPQzsm7GhtB/MuH7xeBKTJ0nyb1i4y+601zcB5aHsBqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB7011.namprd11.prod.outlook.com (2603:10b6:930:55::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 08:16:52 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 08:16:52 +0000
Message-ID: <4aa239a3-ab13-4334-9cd9-5d60178d9257@intel.com>
Date: Mon, 1 Jun 2026 13:46:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] drm/i915: Fix color blob reference handling in
 intel_plane_state
Content-Language: en-GB
To: Sean Paul <seanpaul@chromium.org>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <uma.shankar@intel.com>,
 <pranay.samala@intel.com>
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <20260511053213.3122314-5-chaitanya.kumar.borah@intel.com>
 <CAOw6vb+Q=WzaFpHgbBYmxvQajL=dcEO9PAmfAP0mZ7DQT4Emew@mail.gmail.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <CAOw6vb+Q=WzaFpHgbBYmxvQajL=dcEO9PAmfAP0mZ7DQT4Emew@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0192.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b6::10) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|CY8PR11MB7011:EE_
X-MS-Office365-Filtering-Correlation-Id: efe92277-f380-4469-1ec5-08debfb622d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|4143699003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: n6yU7qunKHGgp5piHtuonD6iJoHro/p+N50RotmoBseFR12yyDs5fEFSDSiV9OyiQjrSNJocY9p4P3AC0nZiYgpISuJSBasj5VCFbFFu4IHsqQzCbiuBP7yW7HZWTRCkPwk6MqiXiX6z1vsIaaH4XqJLmE0qTkaMUWw09AUgq69Djqi0o7hU6fUoRXi8qgZ2mcKMtmE4uj6JkqyGg/W204H1Jasvysz20AK9e6MwX/JBK4yg0UPOVOYVpOeq+dJ68zjtP7xrvJuk5a/On4yWT73FqOCWO8JIkuIlmEBTnx9Jx76koNPrpYMP7CE1gj9SM6+eaFC7T/roqcIM4FYM0bgtgLLxD/ajzCHGpNL+cj5Cou7T3T8Zn7VfzGJq7hCtAdUe2TM1fRSvbWwEitwNRZWEHn5mmebP9uXUrDYRbJ3UTxBmgNBvN0545XxnrH4sNfcsblV8laDP9usgF2+QBeGNbRcg2Q0813oH4PMehB0Lez6HRHdpscFEJGmSQb6qZB3WfoY4AXjbGkMkTdNyqNFSBLRfoodHw9LAM7fVRKgEM8fJUNtLG9Ovg9MucTVIVBYiE7MQCkiyTBLyFqrHu7OWjlPeeNLyFW4VucMUM4ot7PIePt2EC8UHMCH2wLFaSa/joS75rsMnzTMV4pnI7WeW2A5WxNqLVExCygxO15+XSvmdfUy3UvIFwHqYIiBz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(4143699003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UTZTbElFOUtNeDJtVk94eUNrMGU4Q2g3L29jajBzV1A5YUZnemxvZHA4YUxJ?=
 =?utf-8?B?YTMyMVpOTndadjBiejVnV3dZY3dtcytpNzlVK2UzVnRTcXhoOCs5Y0NCYytH?=
 =?utf-8?B?bm9mejZDTlYyY09SMVNYWndaUGZlc2hBSEpDeUczZ0pOMjJzZ200bC9CcTF4?=
 =?utf-8?B?M0hRQlJGTE5KY1JTUmlHMkExVHFCazRyR3puWDdyZ0dmRUI3ZHJ5eSsyc3JB?=
 =?utf-8?B?akFhdFMyNEhwdXd5SVROcXpRd1c0eVA3djJUUGRTN0lEQjkrUytDeGZ1ZWVM?=
 =?utf-8?B?dXFvYm9LY3hmWEJOd0U5dHpJV1JHVGtiSzFSSzg2cnVqMDZJcnJTRnVoTW9i?=
 =?utf-8?B?aFlQMFlFQnVKMjdMempRWDM5VnV3UFJSdXBZN3gzTCtPcjBZU09ySnlVMTNW?=
 =?utf-8?B?ZnpTNXhiTm5pR0NDSC9FUWhZQVFFeXh5M1FTdmhPRFRHRVVMZ2RQbGJCcXNX?=
 =?utf-8?B?NElrK2xmdTFnNGJ3UjRCMmNESkZUVEZmcUhwMG5Na0F5SXhXcWFRN0RDT3RM?=
 =?utf-8?B?VXplcy93czhmaGtvRklFWW0zWFVsRmZGQVBVSjV0RkliZmFOMkZmeWdYbnlM?=
 =?utf-8?B?Uitja2thZVhERTdRclhEaHJHNDVTQUJPOWpBa3B1Q3lkM1lqeENFVXJGTDFM?=
 =?utf-8?B?WDZLZjlKREhoNnhuVFd3aFZVSXhsdVVrWDVKTHB2SGU4VnZDVzYrb1NnQ2lW?=
 =?utf-8?B?czBMcjJwWFRHVUcrMEF3RFdrcURIY1M5OUdKUlVTbGhWUDQvOUt2NTU1MXpz?=
 =?utf-8?B?aVlxOXZ3b3dXOXR0RWRTdFJCQjZVcmtYRzUrZ3lkRGw1aHFvVGtQSlN0bU81?=
 =?utf-8?B?WmluVzJSR0VieXN2NE5UOERYSWN3YmtBM3IvempHQlczWGZJcFdKTmFSWkpq?=
 =?utf-8?B?cFZ6VkNTZVErYTZBZTBOUmp5QWhtQ1Z1Q0NaKzMxcElLZG9zcG14Nk5uMnBC?=
 =?utf-8?B?RlFoNGhvREU5TVV1aDRZdDJ4SHhxUVVCR0RzbEUxUkRzL21kbXIrZkp3Rk1J?=
 =?utf-8?B?ODBBZVFNTGVXazVCU3kyWEFCaktXQlkzbFFnVHpBN2xxWDB6dVJ0MmgyaC8v?=
 =?utf-8?B?SXNkVGFGUEh3QzluVzZaMXpGZ0Zpb2ZDbjBrMi9BZ0tibWpYRUFBUUlnU1dF?=
 =?utf-8?B?SWNyYVM5TTNGV2p4dDJqUFl2QXRETURRbXNwMjJPSXZkY1NCSzBuN3JZT3Zr?=
 =?utf-8?B?ZlJ6T2d4dkFXYS96UnpjZ0Fvcy9UQ3ZPVitZenEyeHRhb3JCOGcvR2RCSnFl?=
 =?utf-8?B?RkxSQ3lXSWk1dHdZS1VWcUNPOHlsNXpHNUx6SFVKUjlNakdNdmRoWWVWTUk2?=
 =?utf-8?B?RUZuZG9pUWR4TXFIVmROb3p2SjZzcVJBMFRFcjdVT2VCUWpvWWw3NEtOOFh0?=
 =?utf-8?B?dGdzcUNVYjl6N2FhV2lQSHRZS01zenBmUEhyUkFLZWFrbUF6dWtUamtnRmx2?=
 =?utf-8?B?dVBIUHZQRXVyNnRZTkFnejlrdzJUMVZSL3VBYkY0RXd6OTVNK21XZkpvbWZN?=
 =?utf-8?B?ZkJlVkxZT2IrZ3dua1lzVzZXVHdmMEJrNUxEcmVFS3prU0xuRy9DaWU3cG0r?=
 =?utf-8?B?MnpCdmYreTBuZ1F5b2EwVmljeDJncTNCdGdrdnc2cVpFTldHMGV3cERDc0l0?=
 =?utf-8?B?UjgyajRSb0tKbE5rNnYrSDZaLzNCWGtPUzFsQXNDSW9WcUx5RkpHREMrZTUx?=
 =?utf-8?B?dE5jQTZ6blk2cGtDenZOdEFEa3hZamFQRFd2b3p2REw3ZFlaSFJQZldkdHZN?=
 =?utf-8?B?bnJ3SjFkK2tEWXllK09wNERIOXJrVUpiVjF3cUJjeTIvUTk0dFk2bldVdG82?=
 =?utf-8?B?RTk3c2Z5WVRNVURZNXZ4TVVEWEUvMUh2YktjZ0ZZQ3pWbm0rdEZwSVFFTE04?=
 =?utf-8?B?T2FRRW8zeG9Gd0tUd3F4V0syNWRQcFV6UFVrVytsL28wRmxtY2dkaDBjUnM3?=
 =?utf-8?B?dURSUnlQTWRUT3FEVXhFYzZiU3BHRzZWN0dBYXpYYzhNNS9lb2FrZkFCQjFP?=
 =?utf-8?B?ZUkwVTR3UjEvWGZmc2VIQWl2NmwwR3AvV1FDTkZkNzlHaDd5T3VCak9NMFR5?=
 =?utf-8?B?U0VJMzFkU29KckgrOFlKOGdpbG13dlhSWnNHdHl6bjFXZ3FraVBVdFQydUxO?=
 =?utf-8?B?dHhzc2JtRDhQK0dEU1lKUU1hd0VQRUxDd0VQNldqREd4OVZhcExRSXFaUmVl?=
 =?utf-8?B?RHN3K0RRQnRhZk1QOFQyUWJ0eWtuQ1FlQWVsVmNFRDJwZ1BzaEFvUExkS2NX?=
 =?utf-8?B?MVR5MkxQcld1OHQxc0dma3JKT3dJa05Da2lremhVNGZXTWtVZHU5eVhiMTda?=
 =?utf-8?B?aTZUZ3J2dUZNdkt0RU5ZSkNsclJiZ0c2ZGlqVEV0K2RPajlLQklldlNraG1D?=
 =?utf-8?Q?7hBXqFpgjiVRZg+M=3D?=
X-Exchange-RoutingPolicyChecked: j9YjsF32nsHDKvPGUpESZPGu8vHJY1rmp7qkk8N4jjBqA88oF4ErEgMGEU9QI4XWxtyoiZ1pnofY6JcE9JoW+5AM/51N1FT9B7uJXFbBwUyPnoeMxymDHgBVvpCnTgrDuXAALuOLDC4yrdQWK8pLFOnEHAiBbUlQ/wgPfFGkXbFJ3ejW6yPWkilp08hr6dblwNB2GFS0YdM8kOpWJMJQpar2nXcWPL+g1MsUElUMhQWPm5MK0I2ANOXDAlDV2swn+qtnMkGf//kJSi5OJqMiBlH7g25bkGodtYliDxLPUVL8r2PqyX4tjj1uvSGGMqeEpq7/bmnDNs/oMWL0YHIrbQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: efe92277-f380-4469-1ec5-08debfb622d4
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 08:16:52.5457 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XV994R4qqhDVBY7bJI4XIVSTT3AOpYG+k6JkfzeTEBB1BSFeWsoyIENOTqkp4q9lC2vM1dhXPxcA4zbICliUfougbjtpX/TN0XahTImM92U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7011
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BC75B61B554
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/29/2026 4:46 AM, Sean Paul wrote:
> On Mon, May 11, 2026 at 1:56 AM Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
>>
>> Take proper references for hw color blobs (degamma_lut, gamma_lut,
>> ctm, lut_3d) in intel_plane_duplicate_state() and drop them in
>> intel_plane_destroy_state().
>>
>> v2:
>> - handle blobs in hw state clear
>>
>> Fixes: 3b7476e786c2 ("drm/i915/color: Add framework to program PRE/POST CSC LUT")
>> Fixes: a78f1b6baf4d ("drm/i915/color: Add framework to program CSC")
>> Fixes: 65db7a1f9cf7 ("drm/i915/color: Add 3D LUT to color pipeline")
> 
> These are in 6.19+, you probably want cc stable as well.
> 

Arggh, I missed it. Thank you for pointing it out. I will add it in the 
next rebase.

==
Chaitanya

> Sean
> 
>> Reviewed-by: Pranay Samala <pranay.samala@intel.com> #v1
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_plane.c | 27 ++++++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
>> index 559eef467dda..54b2c32473cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
>> @@ -145,6 +145,15 @@ intel_plane_duplicate_state(struct drm_plane *plane)
>>          if (intel_state->hw.fb)
>>                  drm_framebuffer_get(intel_state->hw.fb);
>>
>> +       if (intel_state->hw.degamma_lut)
>> +               drm_property_blob_get(intel_state->hw.degamma_lut);
>> +       if (intel_state->hw.gamma_lut)
>> +               drm_property_blob_get(intel_state->hw.gamma_lut);
>> +       if (intel_state->hw.ctm)
>> +               drm_property_blob_get(intel_state->hw.ctm);
>> +       if (intel_state->hw.lut_3d)
>> +               drm_property_blob_get(intel_state->hw.lut_3d);
>> +
>>          return &intel_state->uapi;
>>   }
>>
>> @@ -168,6 +177,16 @@ intel_plane_destroy_state(struct drm_plane *plane,
>>          __drm_atomic_helper_plane_destroy_state(&plane_state->uapi);
>>          if (plane_state->hw.fb)
>>                  drm_framebuffer_put(plane_state->hw.fb);
>> +
>> +       if (plane_state->hw.degamma_lut)
>> +               drm_property_blob_put(plane_state->hw.degamma_lut);
>> +       if (plane_state->hw.gamma_lut)
>> +               drm_property_blob_put(plane_state->hw.gamma_lut);
>> +       if (plane_state->hw.ctm)
>> +               drm_property_blob_put(plane_state->hw.ctm);
>> +       if (plane_state->hw.lut_3d)
>> +               drm_property_blob_put(plane_state->hw.lut_3d);
>> +
>>          kfree(plane_state);
>>   }
>>
>> @@ -340,6 +359,14 @@ static void intel_plane_clear_hw_state(struct intel_plane_state *plane_state)
>>   {
>>          if (plane_state->hw.fb)
>>                  drm_framebuffer_put(plane_state->hw.fb);
>> +       if (plane_state->hw.degamma_lut)
>> +               drm_property_blob_put(plane_state->hw.degamma_lut);
>> +       if (plane_state->hw.gamma_lut)
>> +               drm_property_blob_put(plane_state->hw.gamma_lut);
>> +       if (plane_state->hw.ctm)
>> +               drm_property_blob_put(plane_state->hw.ctm);
>> +       if (plane_state->hw.lut_3d)
>> +               drm_property_blob_put(plane_state->hw.lut_3d);
>>
>>          memset(&plane_state->hw, 0, sizeof(plane_state->hw));
>>   }
>> --
>> 2.25.1
>>

