Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEXWMokOCGogXAMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 08:28:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2387D55A7BA
	for <lists+intel-gfx@lfdr.de>; Sat, 16 May 2026 08:28:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9AFF10E457;
	Sat, 16 May 2026 06:28:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbiznX8t";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8268A10E0D4;
 Sat, 16 May 2026 06:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778912901; x=1810448901;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GWlCDVbcfsrm5PTkicx5VVorVDNRTtjCrtQV5WbfvZg=;
 b=gbiznX8tcIgIBcoR3bqU4tGbZucJgJfWIY+hytPv2QO+ibLhkDeaPlgh
 JibXNDnApBC/+cvqsUseFjSpZHFV9xAxZMwz4NDw6zHtkIXlcIYKKdGI1
 7SmBFp22C9M9O7wQXzaQ2acgOJHXkrytuua/Rus5EbHqt6e9f7mZqDH7h
 OqT5PBXYICRSRlJ2WOODc5VbFBwAQpXxKa2Inid8TwcT/JjQgB06Qp81h
 Kqf45N9j/A0rzLstbQ1l0wQSjGhFBnEi92wlrAAXFW0C/T4cGUlILgcs9
 742Q0PsBDwDJ3+9BubTpbYAd+3UitmTukDP+AoYmv2jEH6TmIhj8rH31V g==;
X-CSE-ConnectionGUID: wkrX3Hm1QtulODGeSCyWQA==
X-CSE-MsgGUID: /pMfSR0aTtS7mqs3bc6vvg==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79901528"
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000"; d="scan'208";a="79901528"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 23:28:21 -0700
X-CSE-ConnectionGUID: pMJBu7DYTXGzpR/w/z/ALA==
X-CSE-MsgGUID: A1GQ9KFYSxOF7jMHWWsiAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,237,1770624000"; d="scan'208";a="243886385"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 23:27:55 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 23:27:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 15 May 2026 23:27:53 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.32) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 15 May 2026 23:27:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TqAaDimqIyqq1W+oj0NBoZJHv9a0VgZgFY+cNxkFLTsELMZSrovGSpZIa5KrYzeGwI+B58bsWuFB8yTr5FAYHZh6s/H1h8JfCvkWYeL87Aea9YgTnFBBOFrS25um9oZM7FIMY9c5A+4moAkuZWms/skQ5R7EnEeSFN65vG41V6qnu69MmBugapge+hig3npd2LeCF27IBqjlEm3AzmrCViWvEE4eZUX8GhdE9/Ca3+c/9/gHuWFm1PsUh52D6I5Zij3RoiyWaf+DT4osO4KblPU5PdJLOsHpaYS7M3cq5MyN4jXTZ6VJWrLHCjNkA/pgbgPsZVV04CdxB0Ty1ShkEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BEW0zsEhL4htO/L/ED5gaEj6UbRkznybUCSMV5uEOYo=;
 b=lGITxSzlkbquf01OJlwty+99JgkGbnwkeRkSXKhEd7dxfOyjjkxmKf2OoQeoTApdIPXL+h6sRF0rSch0+xA6Qdy41G62LdflCc0+6dxX23bRQ19q79nSiv+nRlNtT0NPZEMa5o/8eE4tw2MaBQE7pPKKkny73wBEtyQeCcQBh4VaZRTOZkeTYHPHRazKOiZKgjZCnSLRQkYsGPir7jhTEhFMATAbvZjc9Kg5yXeXwNELQr19/UJ+fABiyVzBs1my5VW9CyWR0UjvL6Be9dMexF2y+hmk/DGmxIYfP3RxrRjJmMLiGwuicTyrWD7zFWxX/z2nT8LH2tR9r69UnkUGrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV0PR11MB9816.namprd11.prod.outlook.com (2603:10b6:408:383::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.21; Sat, 16 May
 2026 06:27:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.21.0025.020; Sat, 16 May 2026
 06:27:52 +0000
Message-ID: <53329476-391f-4e73-b245-abad6f6faff7@intel.com>
Date: Sat, 16 May 2026 11:57:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] drm/i915/dp: Adaptive Sync SDP readback fixes
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
 <c914295e-fa39-41ca-8159-c134301fd234@intel.com>
 <b66d66d4ff30865acbcb090cc28892f8b5bdef8e@intel.com>
 <agcIMoavavS4yDja@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <agcIMoavavS4yDja@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0076.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV0PR11MB9816:EE_
X-MS-Office365-Filtering-Correlation-Id: e8926b79-e47c-4e34-e60a-08deb31441e4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|11063799003|56012099003|18002099003|4143699003|22082099003;
X-Microsoft-Antispam-Message-Info: Q2KgaAuoTFmrkY/P1a82RKG9iC+hHnY6J2NooAGk53MsiDvIwUfSjZVIsKCib0RmJrBDCt/Bkfj7UZQp8n6L5r+dHryoCoKQ3gmuKDIf5Hjt+Ybq0dqSdueJwg4/Bd8qQe4ELu1UU455+W0slT1nm4rgIsmLVi2hfaj0wzu80eCNsPFghqOkcUvUrTZFtmabbii3BelwAgPmEawrs80xPJdSMwE9UTWxdy+P+1Rqm9AJOD87LDhnic2kByFad8pspNOivtmCKl5KoeMnIgS3Fwn/bfTYguWtd4U4F9QRN1zYWMyYmDcLCIvwh3+myK0+H5PHwVNp6L/Sx4IlJ9Yr1IC67PJDiVACQG+9XTbIKi2huhhVamGX4wNOjfNRuGGAwABqjQB/8zdR6AA4RxZYYTDz5sG78N0ceidGt6q0vNgzekFymsp08TtSVsQ4ZQnJ1WIBHgVlUROGDMWvEWBSktibs2ga42FPw2yay0+hTuwIbC6hsy9MQdH0gq6M7a8rX0WIr/GJGd8PzOQXK8/R9iOcBPHjR0MRvRiiLDNwCz9fbFCU9fW0ykY2CEwkJm04y1dTd07a24kr2zPvDUNUZ+0rZ2/1ZJw9G+svSJ/qtkNhKI9mpG7Wpu9RkazKcVwO7cWPp2R5KRcn+4A//a5vig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(11063799003)(56012099003)(18002099003)(4143699003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aFd3bW8yeWp5cEhZL3Y1VFVKc3FRbXpNTTRGME5vcmxIRDIzdW81TnIvNnZR?=
 =?utf-8?B?dmpqVGRHMXVNdmFLNnV5eEZzd1Azby9DV2dzMUVjbmNYQ1ZWUzFhNjZPMzJL?=
 =?utf-8?B?TlFuSCthQi85VUtSQkgvU3d1T2FLOWdmSlZYRjdTVFFIVk5mVUxUMnFiOEdW?=
 =?utf-8?B?YWREMStVazdISFVoaDhseHpNRXQ4NXNrNUhFSmRFVVNyWDVVMW1sOEdRVmV5?=
 =?utf-8?B?bU0xTFJBWjZOM0VuSEdLZk9teFJjOXRibWVja3N0QmhzOENnbVZrMGNaR1Jh?=
 =?utf-8?B?aDRyb0hCUmFkMll4TmNDRitZVGlaRStlcUZsUGZYcEg2SVRzL3pwcC9VNjFs?=
 =?utf-8?B?TC9Ea1l3QnFmQ0VUc01mTFExZm1iTXVqMisxSEs2MEZwVVozS2x6cW05ZGVx?=
 =?utf-8?B?RHJmcVU3MDB6eXFRMFo3N3JveDVROWk5RkszYjFCUTZkbGplQTcvM0NwemFo?=
 =?utf-8?B?VzZ2dG5iSGppVnpIeHBuNGJPaklLRzdBRGRySXFIU2FqVE8zampFaytvR25j?=
 =?utf-8?B?ejlxZGw2eXdJTDRicklNRzdKMHVLWWlrK3BabVlHVHF5Vk1pekdKUEtTTmNq?=
 =?utf-8?B?NWZWei9zaDNTNm1FRTFsejFSL0ZpcGFyQjdCTCtTeGFlcWoyU3hhK3JLYlJF?=
 =?utf-8?B?TXN4eVY1NEdMTlZIbUIyZnhybHU5cHY4RHZBU2dheitRTmFmMmJlSk5UYXF2?=
 =?utf-8?B?aXEyM010SHN3OFByZ1lDK0czUTZBQnlHYzV2Y0dGd3Ayc3hDWDBISUpNN3Q3?=
 =?utf-8?B?QW9NWmx3b3pPRUV5OHVqenFHc21RQlExeVd3WWI1RjJMVjBkUVpiM1VMejRW?=
 =?utf-8?B?UE9ZN3J3bU9peVhjRDBpZ0Fqa3NsRGtkVWd1WmtyMW5JYkY5ZUpzazlDSG9p?=
 =?utf-8?B?Vm9sSzNXSDc0ZHk3OVRsTklHbmdkTmJCWjNBZFZIVHJGOGZRME9qSEJ1dW41?=
 =?utf-8?B?L2kzbVRJNGcxc2JmWXhVbncxRncrRFM1eGwzbisvTFlEd2ZzK0k3cEJOZVNX?=
 =?utf-8?B?ZmZjU0hGUDVGMVlaakZ2T3phTUVBdEN0OWoxbm5neXBraTdBQzUwVjdLb2sy?=
 =?utf-8?B?MFBtVDlFVU1xaTFENVJGdi9ldmZMa0V4Qk11RTNXd3VuQUcrM1ZFdHBLeUIy?=
 =?utf-8?B?NDhxbXF3RENOOHhTTEhwS1R0NFVTbUVUWjd6bkVaYzgvelNmTVZzb3dUekJh?=
 =?utf-8?B?MGVpVnJxZFk0TmVsTUVKQmZkVTYvY0J4SzFCMnJ6MytSajRjNFI3WEZkdlN6?=
 =?utf-8?B?aGZTY1ZzQ05RYmdpbjA2UVUzblBEb1FNQmRvUGlHSm9TeGFRNGRJMExZUmZo?=
 =?utf-8?B?L3BrSnRGU2p6bXR0Y0JFZzJaMk1adHJZTW9PeVFPcnJwejVQNGplZnpMSnBh?=
 =?utf-8?B?bW5RZCtPQUdudW0zMlJ5OWJycnBHZlRHTmxWMm1rcVBqTFJBZktqQ1g1SFlK?=
 =?utf-8?B?aFNrWm1YQkJub3dKTFRJZ2hhaXR3ak5EbnRMTkNON2J3N0RiTGxYS3I5WWxV?=
 =?utf-8?B?SGdRYndKdTFvRGUzSWtiaUV5RkxzbDhOUjVPWWJKUzBTQ0lWT2Njam5JMkZZ?=
 =?utf-8?B?TXBYb1RiWnlub2hjL1N3WFZTYTlWOW5zSTVhK1d1QWE1R1Fic0FQbGhRM0xB?=
 =?utf-8?B?WUNyckwrNThoUkEveVgyWnJMQjVsR2dKTGNxWHYrR1FRdjd2Z01TK040OVpZ?=
 =?utf-8?B?dVJ6OTRrcWYyU2xsUytibExabkpyM1N2cjZnTkZzUXMrN2RqQ2doQm0vUzVU?=
 =?utf-8?B?djg3a0p2ek9iaHlOc2t4NjZ5eFRFNVRyTHBCVGkvYXQ3cFlwL1ZodlJSU25U?=
 =?utf-8?B?NzNia1lFLzQyc3ZBdXpybUFKdld0RUh0NjBmYyt1ektmZmNPZ0tWZ3VocEFa?=
 =?utf-8?B?Z045Ry82eXdZbEMveWMxMk9NK3FLSU9JcVVrSUhSTndwbk1YWkMzTDdkOGpT?=
 =?utf-8?B?aWdzNVJXUzZYc0JGQTFkeFFTSHlsdlY0R0tqd0tMWWFwRzdZdmVuUFc3Q21a?=
 =?utf-8?B?SUZsN3h6ek9jamVoKzg4U1BtazZ1TUljNGo2VmRlZDZMamNqNUNXcHFMTE4r?=
 =?utf-8?B?OERuZE5mRGV6RHlMSmM2Y1R5ZitacnMvZXp2ejJjeVFmYjgwR09zMFpMYnRP?=
 =?utf-8?B?RHNsejk5Uko3VjJuaVZUeWZaK1ZNVTRPay9zRldrZFhnV3ZSdFVpTDZUd09p?=
 =?utf-8?B?cCtwMllrZWd3K0d4LzF0WS9qcEpNdExEbDdnSjBBUzd0MTBSREc1V2F6M3dr?=
 =?utf-8?B?RGxUYlJXNHpXTjBkTGhhUkhtV3lUL1h3VlhUKzd0SzlQa2VnWTB6QXhvVjFw?=
 =?utf-8?B?ODBKWVZSRkNqYWdPeTFKSkJyeld0S0lObVlrNktRQWg0UVNRaFRhUFE2SE1W?=
 =?utf-8?Q?Zi+P+B2QWtcqZGrU=3D?=
X-Exchange-RoutingPolicyChecked: hyQrkt/DoGUN8gEdCLRXNfuIAz0xBy2GpmEIlkGZ5XcwLZmXcsqPQvP+30/g7HaoQ7nwL+E149wYI7ljEwS2OYTqnSITEZJEdjes9RiKUq3ARf+72Y+MMwZ4+KsPW09gM1Myz0HCBsdumSk7BSG6AO5E1392tcbE1fqyK0ZRNjz/IL68olCDfQQTFr9hOEV4//PpXxm2immlBYQidCnPrDbeTD5jycaYtHo4EtLw6YW2Yg25hs1Lf2r8GQzzIHNYNrdr1qc3WIM4pTJUWFQHUvK7lP7nvFtU8HdjV9+FETUrMBhSTnscqvibbA7aTuF3AJ2o/Mu3APHSnBq94aDyuA==
X-MS-Exchange-CrossTenant-Network-Message-Id: e8926b79-e47c-4e34-e60a-08deb31441e4
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2026 06:27:52.2485 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LnaHY+/51PdfEHKQYUCNz7XBFXG6eeCzoOVSGkxvrYc11LpoPJ+fvsy+cymepTOxUriKmeSLrbaute3qAix5qQpXIfcstmZkRyRBCl3tFTM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV0PR11MB9816
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
X-Rspamd-Queue-Id: 2387D55A7BA
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 5/15/2026 5:19 PM, Rodrigo Vivi wrote:
> On Fri, May 15, 2026 at 01:55:57PM +0300, Jani Nikula wrote:
>> On Thu, 14 May 2026, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com> wrote:
>>> On 5/11/2026 6:02 PM, Ankit Nautiyal wrote:
>>>> This series is a spin-off from the original series [1] addressing AS SDP
>>>> handling for Panel Replay and VRR.
>>>>
>>>> It fixes target_rr readback and improves overall Adaptive Sync SDP
>>>> readback handling.
>>>>
>>>> Split out for easier review and merging.
>>>>
>>>> [1] https://patchwork.freedesktop.org/series/164512/
>>> Hi Jani,
>>>
>>> This series is reviewed and is ready to be merged, but one of the patch
>>> in the series depends on:
>>> 59e5e15fef9c ("drm/dp: Rename and relocate AS SDP payload field masks")
>>>
>>> which was recently merged in drm-next, so it doesn’t apply cleanly on
>>> current drm-intel-next.
>>>
>>> Would it be possible to get a backmerge from drm-next into
>>> drm-intel-next to bring this in?
>> It's Rodrigo's turn this cycle. Cc'd.
> Backmerge pushed. Thanks for the heads up.

Thanks Jani and Rodrigo!


Regards,

Ankit

>
>>> In hindsight, I realize that in such cases where there is a dependency
>>> on drm patches,
>>> I should have included them in a single series and asked for ack to
>>> merge via drm-intel-next.
>> Either way is fine, you just have to plan for the delay in this route.
>>
>> BR,
>> Jani.
>>
>>
>>
>>> I'll take care of this going forward.
>>>
>>> Thanks & Regards,
>>> Ankit
>>>
>>>
>>>
>>>> Ankit Nautiyal (4):
>>>>     drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
>>>>     drm/i915/dp: Use revision field of AS SDP data structure
>>>>     drm/i915/dp: Set sdp_type in AS SDP unpack
>>>>     drm/i915/dp: Include all relevant AS SDP fields in comparison
>>>>
>>>>    drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
>>>>    drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++++-----
>>>>    2 files changed, 10 insertions(+), 6 deletions(-)
>>>>
>> -- 
>> Jani Nikula, Intel
