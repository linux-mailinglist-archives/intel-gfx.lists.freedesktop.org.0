Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sHGCAdiTgmnYWQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 01:33:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62108E0082
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 01:33:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A91F110E243;
	Wed,  4 Feb 2026 00:33:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qmjq6xSf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECBF110E0F0;
 Wed,  4 Feb 2026 00:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770165205; x=1801701205;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IZJwmWmWFxovycME09RcXu6w1ms0otZhkcd387OqEs4=;
 b=Qmjq6xSfXwh3LPbh0k9rx/RkXBEAzt914Vb1ZxUiEOR4zRYT5VvOSAQS
 dJXiHmmcGTSxGXcM56mamWkDIiUn4aS8M09GDBwDnnEdj5V5q/TjgWZlo
 A1wujoclgNvW+Kg/H+p/79Ba4+W0NJJmqIwV8tn4Y/j2Z1C5bnTHbQ3xn
 /UPUOvJDoGHW5gVJefZuguF53qvctZL0d9kuXDyyOBpT6KYuE61jJ8foD
 44mPRDXXm4Wj2bONdXeNBSyR2QW0T1pVARpzIrj85nNnZl9wMP1sD+I49
 g+ehSMrEFv33tIF19bjwGpSsUVaJ67x0lcEyh54/hT3BQMNGZR6ax6sbp Q==;
X-CSE-ConnectionGUID: J8pmGdFCRF6J6gSNzzKK/Q==
X-CSE-MsgGUID: e1SgQ8g3QIatLDGm0D4gug==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="70367341"
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="70367341"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 16:33:25 -0800
X-CSE-ConnectionGUID: F4L60WCJSKGawFPkZi09Yg==
X-CSE-MsgGUID: juT36H5BSOawgHqQsZa9vQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,271,1763452800"; d="scan'208";a="210101838"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 16:33:25 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 16:33:23 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 3 Feb 2026 16:33:23 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.39) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 3 Feb 2026 16:33:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WS2n84lVDzAuA4gvY+UK2CdzdgcksLy7jNp+lvdn9C3Kf+EP7aSmlEsLWxXxpUNpwE0QeJWEeVd/GH93ViuVuzOnYxGGirnw6SyCIkvSlh5b7p1aUNpmBFd0K9VUWETL33Fkh4HKRXAQI1B4TFpcIzpWi+WdoQT2BlLKr56D0Xtv93teiVKdj1KjPwMDO/jbcNEDjF0hgfMjsixWS+L1YA/gdFGVwgtks9CQSUwGR+OXQte1nCoAh92WQ+BkH5oitSduwZ1/K+V5hCN7EPlyrUj6+0VIrFfy4gmqhdmJN+MxvONh/avkQd1Pi6i2Io9dUrDlumJDpo1pm2W0Tru9OA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YaN4NjNkJcgfD56ajg5ka35YCL8KZ831p4aIc8SluiQ=;
 b=M2DEFXGuOIeJSVVpNL544t5MMVmIFPFFi+H0wU6Z/Zem7s78psua1B2AB6+xTXz3Db9W1zFFEbJD8WZwfETG45pOQ7KVCXp4N+d7Zk3GSA5fUZKVsztkhwDIBTpLsvyCZLC3A8CnMv1aKSpOIcuTY7UeHkk28l/XXcYQ/v9FlNT5wNrDnknJPCdrd/fWDT1Z+cuubKUxv+9pwZwfpkOYjbTb83f3Re+KQGC9WvKq+nWp4+2fbdRMug6Uf9vnnc/AWjIouBTy8sgWcbWth89MO8bd+nb/NqbWHF7RMCP20TA5up4bIdYDMZAf5NQECVRYAXnya2kRSwGrOJ2V69XYwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB8250.namprd11.prod.outlook.com (2603:10b6:510:1a8::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.12; Wed, 4 Feb
 2026 00:33:20 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::a0e5:e99c:ee7b:620a%5]) with mapi id 15.20.9564.016; Wed, 4 Feb 2026
 00:33:20 +0000
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: "Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: RE: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
In-Reply-To: <IA1PR11MB6266F2346F428242E7F37C50E29BA@IA1PR11MB6266.namprd11.prod.outlook.com>
References: <20260202-nvl-p-upstreaming-v1-0-653e4ff105dc@intel.com>
 <20260202-nvl-p-upstreaming-v1-5-653e4ff105dc@intel.com>
 <IA1PR11MB6266F2346F428242E7F37C50E29BA@IA1PR11MB6266.namprd11.prod.outlook.com>
Date: Tue, 3 Feb 2026 21:33:15 -0300
Message-ID: <87ikcd73g4.fsf@intel.com>
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR03CA0117.namprd03.prod.outlook.com
 (2603:10b6:a03:333::32) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB8250:EE_
X-MS-Office365-Filtering-Correlation-Id: dac3e466-1c52-4b71-8a87-08de6384ff19
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YweIIrqOlnudwCcr3RrbEHoceYiD1hhSF2p3ZSWFOY6HfJUjov25GMf1rvzo?=
 =?us-ascii?Q?UyJOPXzF4BrnTlBBmfkZFFw2xIgvveyvmZvEqFXfrBbKqjB7FU2LerzHI/0B?=
 =?us-ascii?Q?DIUm1bhPGBw5ndPgbLmBn0yTKq/DXCsUCHyI6QqXByN4ojoLtzuq2Z+eWl/E?=
 =?us-ascii?Q?vXJBM2TkUgmcUk0qkhUBSu0055iuTwx55S3h9VyYH4h8QMuT99DQY2wlfbQA?=
 =?us-ascii?Q?mraWHHrIVZCh2vWzjGcXtkdV2C9h5MUhmCE+H1CBhJJePOG/zwvG5eU8vMqh?=
 =?us-ascii?Q?Pm1DZVxXvv1LE28oxw6mOSfDS+QjMvKUaatp0oWMY5A+B9xafCcB0P9I80MR?=
 =?us-ascii?Q?QiG87zpgF3du4zPJ9UENmnlngq8NB3KtouJsLlDuK6UT8V6CYXohgXCoL/u4?=
 =?us-ascii?Q?qUj6jNO+lncgOvS7IUhlzHQx4oS2W3FZZZJ+1zgrDdsj16tmoZmUcCZqoWdt?=
 =?us-ascii?Q?HQKAKrNizedcq2bK9gnqSkzR7mNYir8dnHAHGAnvsQEs1Y4gOv8IsS+0IgfK?=
 =?us-ascii?Q?movQIwsVKGzxZtr/Ve1Hub/qqYjltDYtJ4fqvnU/Mwcr8gARiv4IDariqAKg?=
 =?us-ascii?Q?qA/6azjjqgOaKq+DF4601wVMyhdTu36cRO+OcIbg6vTvDHXsJ6z+TQaLEmkm?=
 =?us-ascii?Q?Hlpf6MrLTfjT2qsQGihI6D5JQ4cb+8in1uKeVNx+sooW8adDh1U3DofRGRd8?=
 =?us-ascii?Q?B3nAMS8/dqmYk+YBj5OwFPtk1X+q38yE8I8iC5aw2V0W3n2C6w8mgdKs/OOZ?=
 =?us-ascii?Q?W8NULyaBYeP5C9iWt1hBloAG86AYqdF2jDzoYIkB/zUvVpGN8xHB7MNBM44R?=
 =?us-ascii?Q?DGnAVMi51JR+jqgwyBcIyLNbNP95JaA1L+BQ2cgL/G7uqRJUCwVlZQI/y00Q?=
 =?us-ascii?Q?6Klv5P/xG0bz6G5DbUOVzQCrJ4Zp2EkMQYQtRnYqu1wXtb4sMZv1vqWlIfm2?=
 =?us-ascii?Q?lUzj5Xwr3Ow6mWt4B/gloV40gX81e1KBnx4/EZmZRHPdIR5xBkx/HPX879pr?=
 =?us-ascii?Q?/NNj9LSlcSCI4jvIJwKDUACF/7ugcoCIL2FB3jgok/ruRa6ulEgfK7jEqzqD?=
 =?us-ascii?Q?frZcA4Ij8s7xMdFcvSJjVAfKLo25e72MG6DX12IdqhUvN2U9KUAzzHAOJWrF?=
 =?us-ascii?Q?2MyEGEtJQcWeQlZK4oPI61xcIXFYqRrs1P/3sSWKat/d4+RIgb0CAzBHizk5?=
 =?us-ascii?Q?QcEZphhY7Qj28C3d0qWQlqU5Iz5Psvk6q3RhNlSwEzdDrOwezTBVwwf3bP5j?=
 =?us-ascii?Q?98yppwQ4/HOU9xKYG5Lx1+tyrbQLhJwHXG+j+14dzMJPP0Y6pJQH6y59Q4Mq?=
 =?us-ascii?Q?SPtgg+CHwVFUQAZehMiR8rvU9i0iBzkuS4tm8W5AdND1l4B8pUf6x88Xr1qE?=
 =?us-ascii?Q?y2HDO6mPalVrBBzkJEy+MabGr0FYEgy/R8qa1N1JPxjWyOxrMEIr2qyLVOyH?=
 =?us-ascii?Q?P3vzux27onUaTyMC404uJsqTx0FraqV+7BC0IxbV1/oaPNgCbZ/MQ4MlrYnA?=
 =?us-ascii?Q?U2kXMSDeHZQG8nJiBBxbIlQIMX+oE+1ozXyXiTx7Wxc/Whlu52YB7YZGkanA?=
 =?us-ascii?Q?xhPchCf5Y6B5R5RjlVw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?M8gNyYKuvMn1/ZbPp5mnQ1PYvW2e0ZGFbROnNfEIPq2oBeCFmAJKm3ULrQjF?=
 =?us-ascii?Q?xeiQ68wUQ9m41XVwx3u/YkKS5lKrgycBXPQnHHfUGhIq52Odt3HbQjSYWMVR?=
 =?us-ascii?Q?huCBOdrZsCD/GqOmocI2KwRRSKl7+/x2uGVJwOOOSmRwvHyJ8Nk1kUhd1tl7?=
 =?us-ascii?Q?R00TugTGGo/VqZvKK2weECUiym/qb8TJkyB3Wxt1UVadfVrRTAZpbjR3Z4zW?=
 =?us-ascii?Q?iVRoPDIStIlU1/NABn1k1erBO+m5hNjk6PsB/PQUCK6ln4TvZpWojm3LW0E3?=
 =?us-ascii?Q?RCnnQF6feSyyrzJ+0PVotOyGm/XdqRyZ9is+XcYrHaR53rRAvxWLtYl38bXh?=
 =?us-ascii?Q?a1jDl3/K7OZ2fXSJmayPA2ue3dUwzeJiWRG4APZ/fNJK3zRMOKXQG9sBXzmr?=
 =?us-ascii?Q?CXnFP0EEYKqIyPiCS8TD8Cdk6gdumZ/pKavlbFcmgidC2ysVqoYRxEMJ8tqZ?=
 =?us-ascii?Q?l4O1abkJlRwrHVhK/QiqgxwgLBBe1peLDuFtHPnHIQ5nOc6mmJ9fqPIuQZtd?=
 =?us-ascii?Q?+nutyNMWzphXnk+8dfyrsk9SKB6/xuPdghc1FPWbCC5w7W5FllkWJ7BOxkDh?=
 =?us-ascii?Q?tfUuPpRRM0/6MXQtocvQPN/18srqX4wsgRKjGa+7rodWRpHdDBu95BOA4MeC?=
 =?us-ascii?Q?4dpPhHtXEgZ02Z4I3s/Ndzzxd+PLE2CPkQWsSUrSxS614tffTOyjSDAXznlZ?=
 =?us-ascii?Q?NWDOq5ncA843ikWH/EIB7VEPaL29OYEpy4gy2bn/E+oPIgco2C5Nnc0lviBs?=
 =?us-ascii?Q?6Aj2FITD67iDRMX2FKmWMJpwJpDJ8nzOU0ETfCdNsEs4elXFNDaoaB2dm/eP?=
 =?us-ascii?Q?HgI3kPTMYe7L41WHgCppQFyUZedRUD4elhENOi+KzZ8n/ZAXDk4IqKrxGDCs?=
 =?us-ascii?Q?vKVpPc2gcebJJbyUAgUcT5vcIiy4o/EJh1A8JbDNoHKHR5NX8GjFWXLUNJNd?=
 =?us-ascii?Q?Ah6VOXrFDMjJIui2cWSTQrUldYyTaomllQ2utEMRoL+fH57lyFabQAtliYEn?=
 =?us-ascii?Q?cfQdfbixiYRjLuFocQ1eSSTeoUaMXKTtNDq3C0d5R5y7aE8zNfPWlrivwTZu?=
 =?us-ascii?Q?tr5VD7xn2VTTaudzG1hok6VyCQWlfOsbWFlM3MJOuWv4XDVJwiyTgFYUM0EZ?=
 =?us-ascii?Q?tafCSvEPqTt+hLeEcuCaoxVHUkgl1RMEnOj/XfhdNgUZqarJXaB3PRff1QMc?=
 =?us-ascii?Q?cFM+UIsbC4zMumRpzJTdHOeKVWqSfODQVVssNFsrE60p0cu1gq+k3aNBATNX?=
 =?us-ascii?Q?Z2FL8g/Dsm5bD+Qg6kuJRUqOaHste/cmkJf0EdkZrhHnOJK/4N/eo40+35nZ?=
 =?us-ascii?Q?yS0ykAvWi/oh5aZEEs+X0FGBLasz4aaZw/X8jVkKVDwPY0Obqv4d4m44FMVE?=
 =?us-ascii?Q?MvGkSL2EONJfpkGjPC/VbrrwEs/QD0aRFdOnrrZIYz/yqc9pai750IST4LDz?=
 =?us-ascii?Q?qWG4WO8YaOHOsji1cFvLEchWNAnWBxlMowgcn9rEbcwWPz/+6GwQu2UKgfER?=
 =?us-ascii?Q?HXU26tmizuT3IPAppD+2LZQOz3JkcIwEnVcT3iClpjfYvAMe00v3Xr/H2rM3?=
 =?us-ascii?Q?wSE2Zd0vWXMwIiN/MgJoZjrpF+cKyR/x/xarETNvvvi1Io6zbxPbR2WVjlTX?=
 =?us-ascii?Q?7h30lwqp7S2Y+nJ6OmS2CjxuZ7BMRos1EegeiPltoYuXRNUICyhw/W99i5oG?=
 =?us-ascii?Q?7i403H+VCqSpE5idi4DYhDez8l08hfJyn+0xUJJCJj6Ke49ECXqYJp0eUSko?=
 =?us-ascii?Q?yVIr1nbRRA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dac3e466-1c52-4b71-8a87-08de6384ff19
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Feb 2026 00:33:20.1218 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 918GhoG0M02+xZxzSY1oQ6v3mjeIe9dEMSROxxyJxIlwdOsnBjqw9arXNuqYD1eUBvue1tjlbJ8QZgLW3z8UhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8250
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
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,lists.freedesktop.org:email];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 62108E0082
X-Rspamd-Action: no action

"Bhadane, Dnyaneshwar" <dnyaneshwar.bhadane@intel.com> writes:

>> -----Original Message-----
>> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Gustavo
>> Sousa
>> Sent: Tuesday, February 3, 2026 3:13 AM
>> To: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org
>> Cc: Sousa, Gustavo <gustavo.sousa@intel.com>; Roper, Matthew D
>> <matthew.d.roper@intel.com>
>> Subject: [PATCH 05/16] drm/xe/xe3p_lpg: Add MCR steering
>> 
>> From: Matt Roper <matthew.d.roper@intel.com>
>> 
>> Xe3p_LPG has nearly identical steering to Xe2 and Xe3.  The only DSS/XeCore
>> change from those IPs is an additional range from 0xDE00-0xDE7F that was
>> previously reserved, so we can simply grow one of the existing ranges in the Xe2
>> table to include it.  Similarly, the "instance0" table is also almost identical, but
>> gains one additional PSMI range and requires a separate table.
>> 
>> Bspec: 75242
>> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/xe/xe_gt_mcr.c | 18 +++++++++++++++++-
>>  1 file changed, 17 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/xe/xe_gt_mcr.c b/drivers/gpu/drm/xe/xe_gt_mcr.c
>> index 7c1fe9ac120d..b112e551fc79 100644
>> --- a/drivers/gpu/drm/xe/xe_gt_mcr.c
>> +++ b/drivers/gpu/drm/xe/xe_gt_mcr.c
>> @@ -201,7 +201,7 @@ static const struct xe_mmio_range
>> xe2lpg_dss_steering_table[] = {
>>  	{ 0x009680, 0x0096FF },         /* DSS */
>>  	{ 0x00D800, 0x00D87F },         /* SLICE */
>>  	{ 0x00DC00, 0x00DCFF },         /* SLICE */
>> -	{ 0x00DE80, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>> +	{ 0x00DE00, 0x00E8FF },         /* DSS (0xE000-0xE0FF reserved) */
>>  	{ 0x00E980, 0x00E9FF },         /* SLICE */
>>  	{ 0x013000, 0x0133FF },         /* DSS (0x13000-0x131FF), SLICE (0x13200-
>> 0x133FF) */
>>  	{},
>> @@ -280,6 +280,19 @@ static const struct xe_mmio_range
>> xe3p_xpc_instance0_steering_table[] = {
>>  	{},
>>  };
>> 
>> +static const struct xe_mmio_range xe3p_lpg_instance0_steering_table[] = {
>> +	{ 0x004000, 0x004AFF },         /* GAM, rsvd, GAMWKR */
>> +	{ 0x008700, 0x00887F },         /* NODE */
>> +	{ 0x00B000, 0x00B3FF },         /* NODE, L3BANK */
>> +	{ 0x00B500, 0x00B6FF },		/* PSMI */
> Hi,
> Could we extend the range till 0x00BEFF ?
>> +	{ 0x00C800, 0x00CFFF },         /* GAM */
>> +	{ 0x00D880, 0x00D8FF },         /* NODE */
>> +	{ 0x00DD00, 0x00DDFF },         /* MEMPIPE */
> Same as we did here extend till reserved.

We usually only include a reserved range if the range is preceeded and
followed by MCR ranges of the same steering group.

This doesn't seem to be the case here.

--
Gustavo Sousa
