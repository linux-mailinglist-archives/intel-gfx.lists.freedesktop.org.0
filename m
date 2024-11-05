Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 631D39BCE35
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Nov 2024 14:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAFFA10E5A0;
	Tue,  5 Nov 2024 13:42:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JkK71tgC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB49110E412;
 Tue,  5 Nov 2024 13:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730814153; x=1762350153;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=Qr+qYx7Il941kxNM6Yp3URwW1ASNfr5CGEbYf9GfXNM=;
 b=JkK71tgCy2ZUXTT31XrpJfqtoha+AHMPrl1nb7k4X2APJ7xur2gGDRxZ
 BPhliNDpHKXzaSrOOS6xg+XFHNQg1H5rasq42ZDjFiTcezcW/+ElF015V
 +hZgk5dg/gmYj5pNBz0psNcKNs4XjgPyJliotn35svqAvYRFuY2+oGPYz
 meA2EBURbYWxJxNw6xakNOK0xxUJ7KkdmsjLYi+A/GqVhYO/oGed7gqe5
 e/oLRy359EwtuQs1z5ddhx1wdKFCLbuhMCMYR42b4ryBAZDlsfMVNp75c
 wX/kKS9oUYqD0JhpN+9UPFGhBMai4vAEHVMVYWnl6EgKHEsj/HkPkL9WQ Q==;
X-CSE-ConnectionGUID: w/yNUSZ1RSmk3r/tkdfrfw==
X-CSE-MsgGUID: SL3Hs748TBGOpldTsl3niw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="30733584"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="30733584"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2024 05:42:33 -0800
X-CSE-ConnectionGUID: WVktgC4vSlymhxCewl7E6A==
X-CSE-MsgGUID: 2+R1IEHlQJenW99CBfBeDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,260,1725346800"; d="scan'208";a="84122718"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Nov 2024 05:42:32 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 5 Nov 2024 05:42:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 5 Nov 2024 05:42:31 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 5 Nov 2024 05:42:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sjtq685iQ1eiTFhAcUV+k4SfaqtiiU5WAm+QGvACT0KtOfPaHFwjZl/Ng4/JVue+oPy+fLStG+e0SrJxlw77NaCrpBQMM2sCXG0NnKcKgZjx7icIE01HNhRseVAblLLzjM2NFkuhidtU0b8S2oafrxvsIOOhXgRxuEmqko8YfLJWRnTXlVbAn7Ttmt+Nc2FsxR8LD6w50/SxWUn96KQy8upSc2oqDZW6zsF4bfyjJiiyA8Ne3zysRxyd+eDZ9JWQWgEzfhdwXdKNmfVPPvnR+qvGYSPlDIHTMmI7Gt9scXCjjNRxtd4wr9IGk4QZqsWK+cEtvNNaydVnNoq+h5rp5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t41yCLqomboSe9tUjCbn8h+msn1L42csAWWf0GJp8NA=;
 b=xv3q9uU7nDDHXAEY08cze4DO15vKkM+o1eC05j141Vb7DsFVNDsV5ueeUMB/w/IijlWEbQv8/aWBEaP4WP/d2mOtFNOCx50Q4N5oH0QbESnEvK08WCkNJlB6CW4UmbTxNXbbeWvwD7R2U0SY3g3ho6wCM6skW4mcOcYNVODOInVaqQv/w6JXH0bu8J5BhEi97Waq3aMKZM7RTosn2dNzSQZsfxWWOLnDYHXQyTgKTts5OAf0T4iKkn6bDv9sG+gAaZ6uyYECUtB7WZKtPd2iLu7AaqgqsTbYRPG6hfkuh4iyJJ4HUlOTis1N3yEuU2aEU1YJIsJ+IlJBUs0TmJ8WaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by DS0PR11MB7787.namprd11.prod.outlook.com (2603:10b6:8:de::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8114.30; Tue, 5 Nov
 2024 13:42:29 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8114.028; Tue, 5 Nov 2024
 13:42:28 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <39ca0bca034ed369700b2ecc1b1a411c824bd3b0.camel@coelho.fi>
References: <20241021222744.294371-1-gustavo.sousa@intel.com>
 <20241021222744.294371-9-gustavo.sousa@intel.com>
 <39ca0bca034ed369700b2ecc1b1a411c824bd3b0.camel@coelho.fi>
Subject: Re: [PATCH 08/13] drm/i915/dmc_wl: Allow simpler syntax for single
 reg in range tables
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Luca Coelho <luciano.coelho@intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
To: Luca Coelho <luca@coelho.fi>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 5 Nov 2024 10:42:23 -0300
Message-ID: <173081414310.2525.7600840303352098383@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0339.namprd04.prod.outlook.com
 (2603:10b6:303:8a::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|DS0PR11MB7787:EE_
X-MS-Office365-Filtering-Correlation-Id: 93325029-25b1-4189-1fb0-08dcfd9fb0c0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkcrYTA3WVNjRytIdzRUajhQQ2NuY3JYMHRNdFlhZmE0NkVyczFmVnVFNDZn?=
 =?utf-8?B?TGhIRHJDRGViWFNQOUpFU1Ayenk2cTB3dkxXZ2dkcFJ4VEM0bXBGWW1vY1lI?=
 =?utf-8?B?c0kyelJ2K0pQLytQYVZoMGMzZ202YXVHNzdKbERITXFQNERhMmJBZmNFYTM5?=
 =?utf-8?B?VkxOVDBCZ21EanNSUmR3VTBURndIRVExOFd1UTgvNGJPdmFDWUwxMTRidi8r?=
 =?utf-8?B?NU1qWGtnNHYzbFVGQ3d0SWFxSnVCNmM1alNVU2RlQUFWOTNqK2piZ0owWDlV?=
 =?utf-8?B?SmJHdzllY2dLeDQrTEtYaGRibnV1cGtEN2pPcEtBbEJGbjBTRDdmR2d2ZldU?=
 =?utf-8?B?QjBjNUJzc0NUOWhDdGlwNUpDblNWK3lUdXFOUXJrbCtLYjRLYjVCYWFMMmFF?=
 =?utf-8?B?NlZIYldzTmI3MUhzNDNMM1JVaDVHeHViK2pNWndJZ3VvZ05zbjVGWXVwQjg4?=
 =?utf-8?B?czVjemNHVUlzMkVvMlpNbmVVRTVPSUtXa3N1cXZheFlFd29JV1F5RmJacFhq?=
 =?utf-8?B?VFB5WVBnU3JkcC9oTlJGbXJ5TFQzZEdGRWdmTVZMQWIzbDZ4aXRFdEFIY2pz?=
 =?utf-8?B?UjM1czNtanZTOVhjamVJYlA0akpheTYyZmtnek04a09XZ2VBeHArSW1lZTFQ?=
 =?utf-8?B?UzF3cjBTNnNFSjFwVnNFMURXbkJ5RUdHY1FCMkdEOC8xa2Y3Uk8zcnJRb1Vh?=
 =?utf-8?B?ZjNrMDhlbmlweXlCSGcvbzNBb2JDMnE3UGlueXNPZFlvaGloWW40eWdmQVBx?=
 =?utf-8?B?VmgwTlN3WmtVVm5IRkpUM1ZTMkV1TXRGTVFOcStJZFFrZTRuaHB4NlZDN0RQ?=
 =?utf-8?B?Tk16K0pveVgxYWpXQVlZeSt2REJabmdhVVJqd3VWZlBOMVcxcjZVeHA0amZj?=
 =?utf-8?B?R0oxUGp5NHFPY01zMS91K3libXpQQWttNmdmS2tZTHVhaDN5b2NrMmxkR2Rj?=
 =?utf-8?B?NWVBbGF2ZTZPWmhtdk0rOFlsWGpFWHRKb3lEN1IycWRVV25RejRKbTJxaHll?=
 =?utf-8?B?Y1dZQ1YvbzZ5R3N6Y3Y3Y2VRdEYxMmNnR3pZcGxIZzFoYytDYVhwVWQ1M2J4?=
 =?utf-8?B?dUc4UVVUNUVQNTBlVjFyUDNRbithM1JKcXZPOFB1WnNyVElyQUNtUU1Qcmkz?=
 =?utf-8?B?OHd2aExCZzJLVklUMWFzT2IyeEZDTUFCUkltQmx6RlNIdU4vcTFxemh2TTY3?=
 =?utf-8?B?cFBmWk9jdFk1enQzcnd0c21saU9UZXRzV3lpemZKczlGWk15ZUNyTzFoS0dI?=
 =?utf-8?B?Y3ZyRitENWxHRmF6Rzh0UDYyS2UySTlHU0l4djRjQUczeUNOQ3daMlRydmZv?=
 =?utf-8?B?OWZ2clVxUWswWGorTURRcEMvU3RrRlN2VzYvM0xobVZpZmdNenRvKy9TalRS?=
 =?utf-8?B?MHVDY0xtZnlOMWpmYkpKRzV2VXBka0J0ZWtrOXdtaVYyVW41M3d0eGxTN0Jq?=
 =?utf-8?B?bm95Q252c1lsY1BHOG1jejJIcy9tOGhTTEJESHNyVjVoMlRaeGJZbWd4Nm1P?=
 =?utf-8?B?K2dIcEk0SmkxdmxYdFBWOWpUUXhrMVhObUFzUVZoanZUc05wR3hVbFlTZVJZ?=
 =?utf-8?B?SmsyakpDMktFTGJXUWRBcnZyOExHbHZpTDhIN0pUMVdWUWtxOGNJTDZBS2N3?=
 =?utf-8?B?ejVydzhDUWlyTGRBaHMyWG1JZjFGa0hUVEhTd0U5MXozaU9Ja2M3RG1PTVRE?=
 =?utf-8?B?M3FaT25Vb1puUFZjN3N5OEtMa1oyU1dJSXBDQUVFUHdwRWpsZTJleU15NGZ6?=
 =?utf-8?Q?t5Gmu9RiNR6zuAFMWM8Iv0I0TTJQKpbr26mWn/m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aW9HbGxkS1BVTFZLa3BxZk82Nm55cWZoc2hwd2lzaGNVeTE4Z3ZPcmZMZVVa?=
 =?utf-8?B?bmVIYjE0V1dCUVU5QVdDWTJCUFlaN1ZDVWhMcnpZVkg3RE5GdytSQVEyZnM3?=
 =?utf-8?B?eVhNVnlhQWlKQ01VREJLRkVpbXFYZU1BK0RVM3hhTXhnbVhyMEZDNTFZRDNz?=
 =?utf-8?B?NjhrVWZYV09YVXNtREdkTzlveVhmcm9pL1U5UFJnOUZLQmZZYWhudnU0bzJY?=
 =?utf-8?B?NWdYWDJyYzRsZXlYc1pMNWdEVi9MM3luZkpaSGZPK3Jxc0tndm05cjMzYjRr?=
 =?utf-8?B?M2o2akRzK0hyZ0ZXMmZVSU9qeUpwbW82TUdwWVkzTldCSU5CSFRNVHd2L3RV?=
 =?utf-8?B?WTZyMlpJWFhRYlQvalljeFVBOGFXdnRIakdBVEU0S29uTWYzRDRkUGgrNE4y?=
 =?utf-8?B?ZGl1TU1idzRtV25LR0gzUnRlMXdvWG92YnlpdFFQdWhVaFZJL3BHVGVGQ0FH?=
 =?utf-8?B?S1VGL0wySHlDYk94Um9NV2YxYldrR1RzSXlqSURSRWhkVjdaZy80d3BqWjho?=
 =?utf-8?B?Ylk2cHJCRS81MkNDMFBUOXZkREs1Ylc5dXRFTjErT2V4ZHg4ZHc0Q3ZTUHJw?=
 =?utf-8?B?ZnBjQkRSQlNRL3ZsUDdJWHRLbHJ1enhvaHVwVm40OE14SlZlZTBlQlRnbHNl?=
 =?utf-8?B?L1ZmbURTeDRQVkRjOWQrVVovRDBYRjB1L0NUTUVhcDB4TWJ2SVgvaUZ6aTVo?=
 =?utf-8?B?REthcVpUMzFEVVRod1o1bUsyYmxoaWVZUVFvYnZleVRZa2pmZ3pUcWdtZmpv?=
 =?utf-8?B?NGFKTzY4OGcwWFY5NEM4WlBTWkhtVnBDQzUxV1grWW81djdqUThVVW1wNG5Z?=
 =?utf-8?B?SlcvQTlzSXMzdnNZNlNlUFlRaUI1QzVvYUljNGFBcFErUkROWVp4WHR2UEV2?=
 =?utf-8?B?b04xRzBFbG1jOXVOK0R2eW1ZcVhQY2MwWStHNHVtb29VWkFHNDhPQ3hLMFNn?=
 =?utf-8?B?b0I1dzNyZ3FQYnh0b29iMVd5anVZdHBRR1c4Y0Zld1NzNHlSbHNKSDJuVC9r?=
 =?utf-8?B?QVFaOWtrQ2c0V3owWGtGcktKRDUxblVLNndyd2JQcUcrTWhieFovSXJZK296?=
 =?utf-8?B?TEpxTDc1dUJSK25Fb0dicFg2VGhncVZpbVpMQWlYNFlmY3l1dVpseGtHUnV4?=
 =?utf-8?B?MzVqY3BhN2NYVHNGMVloQk9CSGcwL1ZGSVVhd3E4MGhvMjNOa3E4S1BPZG1E?=
 =?utf-8?B?RzVZR2YrYVExVU9YOXJjaGpiWjVEeksyZW1IcU1KN01XK2hDN2VsSTdsTkx1?=
 =?utf-8?B?M2YzcU41OWJWUkdYd1g4YjhCem05TzRqWldHd21BcWl6WWs1a0xQR2RMVjN4?=
 =?utf-8?B?NWtYa3B5eTNYWnNjSHU1OXZhdXpzSURGSldjV2VvTkZhSnhoOHYyM2VYdHp0?=
 =?utf-8?B?WC9QNVVSa2lUK0U1RGRVWEFKTndaSEluMVVGV1g4VXFLMm5rdHhjMDhOMFZa?=
 =?utf-8?B?akRVeUpESHZHL3JsUzl5QVVweXdpRWlOOXp6eGc0ZjVSV0VwdDU5a0trVjcx?=
 =?utf-8?B?eW9OaTljYU9GTktPQzRaOEcxeUwwK29BODN3VzQ3VFZNREpOTDUyZjFDUngw?=
 =?utf-8?B?Q3h2SVEvRVFpbUZNemk1Tkx1K1ByRTlyUGk0NlA3WkRicXRQengxcldtVVJ6?=
 =?utf-8?B?Ni9nQXZxU0p6QU9VVk82ZUp2ZHJSRW5vRmxqV1V4d0NKeXBHbWNyVFB2SWlj?=
 =?utf-8?B?ZGZkNkFYcnBlaDRrdUc2Wk1saDUrWTdabmRwbTJvN2tlV0Vqd1lyL2RzSVFJ?=
 =?utf-8?B?bTR5a1hRS2tKbXVRbTZPN3EzSHlYMG1iSXh1SkY1NkdpWWZoRkhGOTY5SDYv?=
 =?utf-8?B?WHV1NVNJTGVpR1ozUjJNS3BqbHVtcnA3TUFWeUtnOG1JRklqT3B2K0JPMHY2?=
 =?utf-8?B?TFZXSk9yM01qd000cFpSK2t2QlRQdkhuc3VHOWh4NHV0cGxUSWRvRUoxLzBr?=
 =?utf-8?B?eDRYWm9Ua1pIM0FKR0J6cHRZT1lybStPNEhzMEczUHA2TENycmMrbWlUWmRj?=
 =?utf-8?B?alNwaVJwYkJHdFQ4SmZEbW5neXF5UHRpV2dhUTFWRitsVnpXd0JlcytsaDZL?=
 =?utf-8?B?ZEkyMEdWV1FjZElZN0RnRDNYR3EzYXFhOHR4OUFOb2VmenlhZURwMml6YXoz?=
 =?utf-8?B?aFJzOFlhMTk0ZjE2OTk4N09jY3NNMjlqOTFoNFBzN0FSVmtPVTQ0Y1Y4SGc0?=
 =?utf-8?B?WUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 93325029-25b1-4189-1fb0-08dcfd9fb0c0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2024 13:42:28.9369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4YaJzRgGxf62ecmB4UyIQNoylLuA4RsDtCF4LP5U9m8Z8jS7bHBc7SvJ++LHAfyEWkZQdqmq8IsM2a76VjmF1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7787
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

Quoting Luca Coelho (2024-11-01 09:58:33-03:00)
>On Mon, 2024-10-21 at 19:27 -0300, Gustavo Sousa wrote:
>> Allow simpler syntax for defining entries for single registers in range
>> tables. That makes them easier to type as well as to read, allowing one
>> to quickly tell whether a range actually refers to a single register or
>> a "true range".
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_dmc_wl.c | 118 ++++++++++----------
>>  1 file changed, 60 insertions(+), 58 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/d=
rm/i915/display/intel_dmc_wl.c
>> index 8bf2f32be859..6992ce654e75 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
>> @@ -54,82 +54,82 @@ static struct intel_dmc_wl_range lnl_wl_range[] =3D =
{
>>  };
>> =20
>>  static struct intel_dmc_wl_range xe3lpd_dc5_dc6_wl_ranges[] =3D {
>> -        { .start =3D 0x45500, .end =3D 0x45500 }, /* DC_STATE_SEL */
>> +        { .start =3D 0x45500 }, /* DC_STATE_SEL */
>>          { .start =3D 0x457a0, .end =3D 0x457b0 }, /* DC*_RESIDENCY_COUN=
TER */
>> -        { .start =3D 0x45504, .end =3D 0x45504 }, /* DC_STATE_EN */
>> +        { .start =3D 0x45504 }, /* DC_STATE_EN */
>>          { .start =3D 0x45400, .end =3D 0x4540c }, /* PWR_WELL_CTL_* */
>> -        { .start =3D 0x454f0, .end =3D 0x454f0 }, /* RETENTION_CTRL */
>> +        { .start =3D 0x454f0 }, /* RETENTION_CTRL */
>> =20
>>          /* DBUF_CTL_* */
>> -        { .start =3D 0x44300, .end =3D 0x44300 },
>> -        { .start =3D 0x44304, .end =3D 0x44304 },
>> -        { .start =3D 0x44f00, .end =3D 0x44f00 },
>> -        { .start =3D 0x44f04, .end =3D 0x44f04 },
>> -        { .start =3D 0x44fe8, .end =3D 0x44fe8 },
>> -        { .start =3D 0x45008, .end =3D 0x45008 },
>> +        { .start =3D 0x44300 },
>> +        { .start =3D 0x44304 },
>> +        { .start =3D 0x44f00 },
>> +        { .start =3D 0x44f04 },
>> +        { .start =3D 0x44fe8 },
>> +        { .start =3D 0x45008 },
>> =20
>> -        { .start =3D 0x46070, .end =3D 0x46070 }, /* CDCLK_PLL_ENABLE *=
/
>> -        { .start =3D 0x46000, .end =3D 0x46000 }, /* CDCLK_CTL */
>> -        { .start =3D 0x46008, .end =3D 0x46008 }, /* CDCLK_SQUASH_CTL *=
/
>> +        { .start =3D 0x46070 }, /* CDCLK_PLL_ENABLE */
>> +        { .start =3D 0x46000 }, /* CDCLK_CTL */
>> +        { .start =3D 0x46008 }, /* CDCLK_SQUASH_CTL */
>
>Many of these are probably actually ranges.  I'm not a HW guy, but
>these are probably blocks that need the wakelock and it just happens
>that many of those addresses are actually not used, but would need a
>wakelock if they were used?
>
>IOW, e.g. all these DBUF_CTL registers are probably in the same range
>that needs wakelocks (i.e. 0x44300-0x46fff)? Do we really need to
>define many of these individually?
>
>This is related to the previous patch as well, but I decided to comment
>it here because it becomes clearer.

Maybe my reply on the previous patch clarifies this? I.e., these
offset or offset ranges represent offsets that the DMC touches when on
specific DC states.

--
Gustavo Sousa

>
>--
>Cheers,
>Luca.
