Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AC69D3E6F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 16:03:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B93C10E769;
	Wed, 20 Nov 2024 15:03:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DV5IDLxI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 983C310E769
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 15:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732115022; x=1763651022;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=dYUHMaArepv9a/Tj76ig2d4ekJw924UCmvSSfnTDZqc=;
 b=DV5IDLxIcdHo79QndpMYQeX/iOsrrzQdJsCDoGXF7/fp9QOaYyFvG5nM
 ZnPENDMZGjPg338p26La8kzzyzm61QpZA/od80UYglVpNDwiUKfxC+7sk
 TT99LkvSl7j4VR+ftBfjOJ1R0Otkneo8UEYgQmqm6fXw6lLpRwnLvcR7w
 vwCjROy7awPQR6pDzwqlhRt8NU/mLxwYkSTaWke6NIOi4nzqe0SuNB9vi
 t5fAAfudhtYNcug7XMr+vZh3UZ6lgIZB76zu+GsTSxp1WsrEWq9pa4mTQ
 /Lp07NTNX6f9Z2ULbvg65eF6bswDQoFl9hKppvJU9PIZ6u4EfwLTl5JWv Q==;
X-CSE-ConnectionGUID: 1u10HPDEROukuyl03fpipw==
X-CSE-MsgGUID: a7v/oKlRSIy8hfYsHWm/iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="32038719"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="32038719"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 07:03:42 -0800
X-CSE-ConnectionGUID: 5BzEBK30TzyGRy3V28+nwA==
X-CSE-MsgGUID: GFGnlHAeTqSzuMXt7ssAXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="94003939"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Nov 2024 07:03:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 20 Nov 2024 07:03:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 20 Nov 2024 07:03:40 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 20 Nov 2024 07:03:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VvISlXui7gSQ51cfKbrjRWPJfvqziYbULIZhR4jRH+LuoqvA2AZUfD24Z/3P4W6E7NDJtjYEKGvu8nivwikIzInnbAIr8gASxK38TqyyvU0KkH8o1pGy+3+bittwGuoeisqo7wP0elx3A1W4QrTifP0Fez350IhOkSuG3MlY30VXRYT/9ArU5xP4sXmu+w1JxTqGqbiqPJUxp5Izt5oy1wg8haOk1T6EIQRcsvQ2qbEpuCLXKHfxUAnsgc0IlBli+Gkzu8r2vfWD23badrZCfIwiZx/kkwVn9PCmscCIeT8G57atZEWXkrXenbEFsvMitkuZwez0nLnraMpK2kBh4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JgEeQcy5t7FghY8qwTWrY0XesU6JIyFoBzrMnsdJo7E=;
 b=qWI1WDQefS0h2/ieVvqlQwm09f1+ECmL/auh4h5RaYzew6Ol63LRBNZHVuCLBV4EdHXSdAKeBjCdy/SPT2AVnTo4wKYtYtTjFsGi5qipqy8xkBE/xSjpzISsC+p3oNgKaMtlhSxHZWL/a0JPCstZATsqocC5xMiDpNCDXBy+HLv+0EHGQniRxJSyFyEE0reXo5+FAHccBiZZgkCA8UKWGXujTjSKQYAwWn7M0AiRj4vRIqgngSlcKGC5hPVF08TtfyneRVuHCHCsidPK/tEL0yanx5H55MYTm8O1JbG3a1Fcf94lRZftoHMAzcvmFrT6/bHeJxVfm3XOBCHTq6ZR7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN6PR11MB2640.namprd11.prod.outlook.com (2603:10b6:805:56::11)
 by SJ0PR11MB7701.namprd11.prod.outlook.com (2603:10b6:a03:4e4::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.23; Wed, 20 Nov
 2024 15:03:34 +0000
Received: from SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa]) by SN6PR11MB2640.namprd11.prod.outlook.com
 ([fe80::4b8:af61:4cfe:d6fa%2]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 15:03:34 +0000
Date: Wed, 20 Nov 2024 15:03:29 +0000
From: Eugene Kobyak <eugene.kobyak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <John.C.Harrison@intel.com>
Subject: [PATCH v2] drm/i915: Fixed NULL pointer dereference in capture_engine
Message-ID: <jpbxlab2hz4gozye45lcl635zc4nrfb7rsrvgk4jlfgww2yo6g@qriixepb57au>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: ZRAP278CA0009.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:10::19) To SN6PR11MB2640.namprd11.prod.outlook.com
 (2603:10b6:805:56::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN6PR11MB2640:EE_|SJ0PR11MB7701:EE_
X-MS-Office365-Filtering-Correlation-Id: c37cd30a-e304-4cef-541a-08dd097480da
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WngraThxY3k2ZWIvSERZcjg5STNSTkZkcld5S3UyS2twY0ZTeHNnSmY3cEZm?=
 =?utf-8?B?VmRIbVdGcU9aZGNkZFpNWC9JYWQxdGZTOGk0R1VVdHZZNXpPbU9SWnNndnUw?=
 =?utf-8?B?WEpzV0VacUtFQlUrQmZ1SnhlbWJ1TzEvRXFTZXFFWkpTZENsR1oxdHRURjdW?=
 =?utf-8?B?WHZSMXFsMUJLbnpsdFJzcWJSQVlnNXl4OW1hNTNRVENjZG1JWEEzb0xTbTRz?=
 =?utf-8?B?M2RlZit5a2NGRUVxQ1hIVnBaaC92WkZqd3Q5WWt2elcycXM4ZDdkZTYrSDZp?=
 =?utf-8?B?ckp0dlY5UFgzSXNnNk5sczRZRHVPMmlTN3ZrZUJrbm5ELzYyd29RTnRVK1lv?=
 =?utf-8?B?U0JzZDdCaDRzZ0E2ZEV6djN0N0NhK2d0U1h4UG5ZWFFRMWpQWjNZOHJ6bVRY?=
 =?utf-8?B?MU1ucU5XNFIxYVZFa2ZvZlVmVW42VnFqbnNHTWRZcktoQWtuMHZpbTdKdlND?=
 =?utf-8?B?bUN6citGcWU2Vy9zcTN2bEIyQWxmRC9IUzlvTmZtVUlPdHdPNnh5YVZhUkla?=
 =?utf-8?B?MW9tSXpXeGVlWXh1MFZCdmJWWCtzRlJ0NklRRlowZm9ZVHJ2eXVpb0U2dFcw?=
 =?utf-8?B?eXh6b0hrNm9nU2UzdzkvbU9FY2lici9hUS9rRGtTSVozZXFNYUtIUXhHd2JQ?=
 =?utf-8?B?aGQ0QlN6c0R1SU1JMXFGdHVXM3VvQ3ZtYit2VnNTaGRoemx5RlI4eXM0R3or?=
 =?utf-8?B?MzJjbU5aWXV1UWV6K1NaMXZ4T0UxdkZBOVdONXd0bklueWZxVEh4dUEydk9G?=
 =?utf-8?B?K2VuMnFSSHIvN2UxSnppY0dwc2hQa0N6djRhZ2JTQVJCUnpjcXhvWjl4MVgx?=
 =?utf-8?B?Q0dsQkdSZTdWa2lnWFozQzQrYVhTUFh2TGIxTVVCNXNFalZ4SWtpRFpwRzZ2?=
 =?utf-8?B?Tmo4bW03c1NobTVYOFZXcXlCblA1WU5qQ2VacHhBTmtRc2J5bGFPQ2pUY2ZB?=
 =?utf-8?B?YVFxQmg1Z2tzUFV3WDJHOEcxcG42c1EvRUtVaDgvREVjd3YzdVB1OWVjb25G?=
 =?utf-8?B?QXJBNUhBdk1MSlhQdlZkOXkvM0x3d3ZrTjltc1Q0czZqRVpxMjEwdlIyb0Rs?=
 =?utf-8?B?VWJQcnhQeTdkRG11M3dxKzlQd2VHZVpjQjVKWWVvRjEzdEk4ck8wbEVIVUd1?=
 =?utf-8?B?RzJMN1d6Yi8zYzJvY3VvT2dDb1ppcXRUNExYSlh3YTJiOElyUjFQQTBsYk55?=
 =?utf-8?B?QmtEMWxlUWpkak9pNnM3M2RpcnFhUkcxN0J5TGc1Wit2enNsTlo0bmVadUtZ?=
 =?utf-8?B?dFp5UEYrYSt6RThmYXlubGcxNy9ZajhMTkM4Wmx1U0xhUTRrSWcveXFDRjJF?=
 =?utf-8?B?ZGEwNDFxUDlTNjJyMEJoQVdnNm51WlpXb0hqcWhWUHlvM0NGZ2QrT2U2YTB2?=
 =?utf-8?B?TFRwZWw0RDZnSVBoVmI1SUdObDBoS0IyeFRMZmJjQlhJUXFya0ZINW5XZlpT?=
 =?utf-8?B?ZEYzeGRHaHozK1pnNHIxekEvUkZpQzZIaDRNdVZ0VWhybFoyZTl4WUl3a0ti?=
 =?utf-8?B?VXhHSmtjS1JpRzdYRE9YVXZhME1JT2RReU53eGZCWXNWMVQ3bVlBb1U5a1pY?=
 =?utf-8?B?bW53Z3ZTNHZkUlZ0czJlTFFTRXkvRWd6ZTNMZjJzTDJyWkdOS3VQWHhtbkh6?=
 =?utf-8?B?Ym1mOHVHb0VlS2xRYTNzYWNPMStUNUM3TWhPWkhGQjNoTXBhVFhYdDMrMXFr?=
 =?utf-8?Q?7yZvYRn035KXZDRhqtoG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB2640.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bW5LN1BOWVVUQnBkUjZZSnV1S3NSR25yUWp1bzVoWjFkai9jbFpzMGRGYnFk?=
 =?utf-8?B?RmpHd0VLa1crSUtDNW1wczY1ZzhISzRQSURScDBDWkIwN0hnOFg3UUJ0dG1o?=
 =?utf-8?B?ZldBeG81cE5lbENZSnBoOWlYbGM2cFZyUVpXVlFsVXRDbzFsVmU5OE0vb2lh?=
 =?utf-8?B?eUZJdmora2tBWlljY01vNWw3Skc4UCtONERWZjRXNTNtSkozN09vYktZc284?=
 =?utf-8?B?QTluK0RwdUUwQm81Z1BYNHRqWTJTZ1lFMjhRbmljT3EyMGtjZE1ZUkRYa1l6?=
 =?utf-8?B?eHlHQ1lacVducFBoZ2FNSVN2Q1haUjRyVEw4YmIvSDF0TmRrb0tzR3NNUTY2?=
 =?utf-8?B?MVE1VnFzSk5SZHRjRTNod1dlNnVqZXdqNzdGb2h6OFZ1T3luY213UndBMW5p?=
 =?utf-8?B?bGJ3MFhoaDVKVmhHN25zaUdxclhBUGdyVGVJdHRwUmptb205aHZMOXF2Y3BZ?=
 =?utf-8?B?czhPTjZYemdpTEp2NjNJbjBJYlhaKzhnMXlyeEhZWXlIRmJZTmFIdE9sRnAy?=
 =?utf-8?B?dm1VSy9ETnNxakVPOWN0SGZPazNlSHBmc3VUbkJGaElnMUdFeGZhMStOcVFV?=
 =?utf-8?B?dmtPMWIvV3VQRXdaZzVRYUEzOFcyaHR0RlB6YkNoYkdtWmFlMmlQdnM0bGdD?=
 =?utf-8?B?VW0ranFtRkQ4SHYrSkYvbHA3SHVaaEV6ZFIyQVRWZ3BRRUlBc1g0ZWRBTGNV?=
 =?utf-8?B?c1pNcWwxRHFzYkVkeEx4YTZVUWMxSjYraHFlMVNYNEVhWHVUVXB4NC9mQzMz?=
 =?utf-8?B?ekdFcVlVcVpKRDRubjZlSnA4WHdWV1pScWRXTGlBeGpoK0E1T0FaS2ZqblBy?=
 =?utf-8?B?S1kwcWNKbzV4WXA0K3c0RExQQUhqQUdDOUxLSEZ6b0tBMVV2MnlKN3FOZE1T?=
 =?utf-8?B?eTF5R1UwcVZwaVZtUXYxK3l4TVN1bW9icVRpdXRTVFhYSEVJeDB6cldUNnRN?=
 =?utf-8?B?VkRFbGVMbExFRlphNDFPZ1NCRkUraVRvbUliN0dyNGRqMkFkd21qZ0dRZDBt?=
 =?utf-8?B?L1RvT3cycG80Z1VhYlNEYldtRnBjZDk4ZVNYZDN1TC9CN1hUNGJqeUZqWFR5?=
 =?utf-8?B?cyttcDJsYXJTVkxSeG12dDJjSHVrRS8raHBoZjlHWitsTkJjYWNoUk56eDk0?=
 =?utf-8?B?UlhqOVowN2o5SnhvYmtLUVdnVDVXMzd4OENkZU82QlQ2aFRQRk10VER1Mm10?=
 =?utf-8?B?R0wrU0JUR3ZzYjlRU0N5Z2k2ZUNDY1J5Z2kraUYzVTh5NExMRFFQME05bXZ2?=
 =?utf-8?B?ZjNLRHhzeXNGQU9KWFlKeC95K3F6VE8rMHpHYnJqdUtxMUw0THNMc00rK29X?=
 =?utf-8?B?bnR1RmZsTkRTaXhaWFJZMXVIYkorMVo1dktaM0owQkJHa0h4a0Q1Sk04bDgr?=
 =?utf-8?B?WHR6dUw5bFdVMWNtRndtQWFWN1JPdnZFZmQrblgwM0I1QUV0UGFTZm1oNE0w?=
 =?utf-8?B?WjFWcDBLR3RkTWFWbm1DWFpuT1hoczVYNm5yQ1RqRjZIS2N0NWRWQkx1VWIv?=
 =?utf-8?B?RTBKOUlESjRvMkFmQUNyalU5cVhtZHJjYzlXbkgwMWpvaFdCR244b1NrTlR6?=
 =?utf-8?B?d2d4SGM2enpkdVJ2RmFZRVBadTB3VVRUeExmZ2pPZkpzTHNjdmFER0JYWkRX?=
 =?utf-8?B?aHdFOTNLT3oxeXJQUDBKWTAwS2VGMGVFYTBoRERsSytxMGU4YVBxSnpMZlR1?=
 =?utf-8?B?VkVoQjB1YXFvZGFsbnFJWEFxU3I1SkxycE5UQVJKV0w1OUxnREFDM1BlWG90?=
 =?utf-8?B?Vm1sQVFQUFE4aWJYRUxRZGhzZUhTTGVzNzBJVzRJajNiUjYyb0t2WUJ0RlUw?=
 =?utf-8?B?M2F6NmVTK1NKWUllSkw1aXUyeHRLYW03RTZvWnI3OWVyNGV5aVllc1F2QWo1?=
 =?utf-8?B?WUFnVVBncnBhNm84eUs5R1AzL1lxQ3R0c1pDRWRMRk5lcmg1eWNVMEdnaHNl?=
 =?utf-8?B?MUVTQzEzdGJGYldDSDZFT29rTG1uakRPMkg4MWdCUGhBTCsrc0hpN3lrWUlJ?=
 =?utf-8?B?aTc2ZGZjRlZOdFFOdU0rNHZOVHhJZUprbTRDcmppM2lDbmxHR0M3WVBUTWhW?=
 =?utf-8?B?bE1TRmdPRldYMnM4clIwZjZrUEdpaWlOWnoycWR1c2FBeU9WRy84U2EzZERO?=
 =?utf-8?B?NDRuMFAwdUlBUzgwaDladjk3dzFzSEVtNm44UE93U2pKa0s4NDI0emZ5dHp1?=
 =?utf-8?B?akE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c37cd30a-e304-4cef-541a-08dd097480da
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2640.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 15:03:34.1848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 54LzNyBWGGdyUuM/9wES/5HZSFBPPd/ye0MRFP73YY5ptUZzW4bJFbcbhRI/MPIYUp52aaSCT2oZHHt+/GacQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB7701
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

When the intel_context structure contains NULL,
it raises a NULL pointer dereference error in drm_info().

This patch aims to resolve issue:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12309

Signed-off-by: Eugene Kobyak <eugene.kobyak@intel.com>
---
 drivers/gpu/drm/i915/i915_gpu_error.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
index 135ded17334e..acf403e4e5d6 100644
--- a/drivers/gpu/drm/i915/i915_gpu_error.c
+++ b/drivers/gpu/drm/i915/i915_gpu_error.c
@@ -1643,9 +1643,12 @@ capture_engine(struct intel_engine_cs *engine,
 		return NULL;
 
 	intel_engine_get_hung_entity(engine, &ce, &rq);
-	if (rq && !i915_request_started(rq))
+	if (rq && !i915_request_started(rq)) {
+		u16 guc_id = ce ? ce->guc_id.id : 0;
+
 		drm_info(&engine->gt->i915->drm, "Got hung context on %s with active request %lld:%lld [0x%04X] not yet started\n",
-			 engine->name, rq->fence.context, rq->fence.seqno, ce->guc_id.id);
+			 engine->name, rq->fence.context, rq->fence.seqno, guc_id);
+	}
 
 	if (rq) {
 		capture = intel_engine_coredump_add_request(ee, rq, ATOMIC_MAYFAIL);
-- 
2.34.1

