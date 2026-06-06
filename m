Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id o0hBDdf2I2pM0gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 12:30:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7959B64D177
	for <lists+intel-gfx@lfdr.de>; Sat, 06 Jun 2026 12:30:46 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=dYGoEJwI;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDE4D112DC7;
	Sat,  6 Jun 2026 10:30:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 438F1112DC6;
 Sat,  6 Jun 2026 10:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780741842; x=1812277842;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JWyz1ERgNhkTUNehr0zClTVwlzUjwmOqlPZE6nIhE+A=;
 b=dYGoEJwIEZznwHt6Tp6zpdpxo1kbdP6ds8h29M5uH89J3v4a2z6FJAFS
 7HaAQ3gK2MOky4ioSiyf8ckrkPNGuFFSeC0zywIPCm0RbGUqLf5oV8RfP
 vYplBvHQd5hLTK5pxrZweQTaz5zQjeyop6hvDeKZh6G51z3phh6A2xkJb
 Fn7xmd572GzOcYuuYghVm6vGceTDRiff8WjtwMWc7lqTAvSd9IWodvFxU
 pLi7S+yjOnF0QAJnnp0MNhHHBpqZyuFptZ0V9Q3r2vPhtGph2kyT7/yMW
 C+uPB6MJsEbc5E2m2EymetYhHSVyGXH0J77o67dJbyfqhGFcfoccdza75 g==;
X-CSE-ConnectionGUID: 6m4BSlBLQpOE8ocdj4HOcQ==
X-CSE-MsgGUID: mpQHKUL4TbCbE6qWEd5jtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11808"; a="81533916"
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="81533916"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2026 03:30:42 -0700
X-CSE-ConnectionGUID: CkFfEFsSSuuN1e9ixC/FYA==
X-CSE-MsgGUID: TPn/5OusSTKZ7UR7nJ0x0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,190,1774335600"; d="scan'208";a="283153859"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2026 03:30:42 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 6 Jun 2026 03:30:41 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sat, 6 Jun 2026 03:30:41 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.68) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sat, 6 Jun 2026 03:30:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EwAjNmi90TAg1P0VsOpURr8oq6KBxbKM2ME8xqnaTMdGKrRqE4dHchl5g/s99uRKx0IVIrIco2gD3uS0MKRx6pBcfh2aAZrWQnw/vvizNIoJswREJTn+iedF2Cmh5Kto5CMpdAaBvqVcZjVE0yjqlx5CpUHQOUulX+bF+Hkcl9Mdbu+oboPOjpMZ9XSYD7IMT893sNeElBqrqR1Tqg64ASexwmPKhuer0GEAbwxWSDuLHylNsg3y0hZDRWD1AYNjuPKhtr/h4FIP9k/9vSHqg9/uBmGX3JZRdoGmyvtExU8uFZ8zA8rktYNu9aaTzGWZbC/TD9KFeHVbCGW92MSacA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfuCgd0CNBlnReQIclSiUHsSt8NDbiyln0HJ27ALF/I=;
 b=dPfgdoRJB5pZoT0MFK28EfrGnomw0O3GidxuEY1i+VS3lilA1Sly3l8FvscznyCvjBWyAk2LE7XfS3Clu9HpeCgj4pWSEaAEHzWsEzJ6ohD+xmNmGItxXNF3KKkKXGT7yJ5J5yOk+tTWmjWiMsgBeoUNTdO820yrrB1nKrqUu1VaBKNiUD4e30CI0pie7BoPu/dWq6F310i15bR1lBvvaSR1GqQaHEW6sXXcLAczY4S53uqPpOrs7/ZfMzcI9dwD6AlvjDiZcUzp2qbJbgaAtOhjEdxG/LISLJXOuHf+dXmHZCbdS0YrdkcuG8qjuLq5duTGCOeZbEjMyoBSdJW5Bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by MW4PR11MB6911.namprd11.prod.outlook.com (2603:10b6:303:22d::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.9; Sat, 6 Jun 2026
 10:30:37 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%6]) with mapi id 15.21.0092.010; Sat, 6 Jun 2026
 10:30:37 +0000
Message-ID: <b7aef825-93c4-46eb-a3a1-6675488b01a5@intel.com>
Date: Sat, 6 Jun 2026 12:30:33 +0200
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/5] drm/xe/heci: Use xe print functions in
 xe_heci_gsc.c
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
CC: <saurabhg.gupta@intel.com>, <alex.zuo@intel.com>, <raag.jadav@intel.com>
References: <20260605210534.3843211-1-jonathan.cavitt@intel.com>
 <20260605210534.3843211-3-jonathan.cavitt@intel.com>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260605210534.3843211-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR09CA0146.eurprd09.prod.outlook.com
 (2603:10a6:803:12c::30) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|MW4PR11MB6911:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d2018ac-661c-489e-715b-08dec3b6a629
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|18002099003|56012099006|4143699003|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: S74qVf3DG8oGscL/DulqC6kAxyzIqLYtPr1g99Wx31vQwAVrYHud5ilOiNtaaMdJ4rX949Z4Zhx2FZ9PF7CW5HkpEGmWd1xh9IPiwDb5+P1VoC1CVQYbgNzmXbAsAMpn/hg01Ol0TkmIpeieEOMom3pGFamariVf543+CHF4yMbBjWZDA8u6Cl+xoL9NRg1iOPpafZLDXrEvmQKAA0QyziDui6+/lrFelVpIBlKiP88MpzJc8SqnQKV0TTsdlkBHRpqnG88rj3lcV27F5Xif0enLhWHQr9SiiOndQE8Kr8TKrEBVNskmi9WwDOk4MpMOjQZpvO+S+uR67I7vr0+zhinpO3VBw1cfPCwzTl3/oMLaiddijtB9qzCMKCa34wjlWvkUGKnaq33epLHkXbqZ09RlgLocYssYiGE23jcY9I5iJ6VRykvU3bO3uzvHpC2SRyv1hC1mpdZ5URSbrtBE56+32EqKg9JmnfjvWcjY+SPI/k7MBSEcv+rravkCM9j+9X+CI0x+cBsmoq8JyUnj498yZ17xtCJsyBdwsFu80/ss7PIDmIi9ENcXC3FDSWYCTIM0ueTCiWniHVQSXUodwy+5EnxWCsGZfXzwFSx6ctteXBVsieBFnmH+TcI+aTnLDXgT+3LscpZDx08zgRlsEhtoTmSE+iT5K6YfC1HtIBuxDqAA3iahZNmhsbwsJG8F
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2xKNTZSQ2JOR1U3RzRVQWF0Q1NpRXdHNXIwQzNveXJpNmtRaDRkM0dVVXZM?=
 =?utf-8?B?V1FLOGdqOWZTVUJKQmhLblQ3WlNmNUlucGwzSWNma0k1TVZDOE5WOXlFbThP?=
 =?utf-8?B?bkF3S29tTHZhTnB1Y2lLYnhxS2NRMEt0MXN3c05MbW84Vm5JZjROSlF3Mi9F?=
 =?utf-8?B?ZVpnN0VIeE9qazFobERaYkZ6NzhycGZpQWFDUnlyR0NFa3l2bFh4NHIrYUls?=
 =?utf-8?B?eFphbGRsZ3JnajZGd3VLMXhTQ01KY01OR2hNbURiQzdGMHZKN2dQdm1RbFlr?=
 =?utf-8?B?SW5Pbk1LSEZoaDRReThyRzBLWVBEWmhscVRXclBpQUQ4VXdKOVZmV2lPVkxQ?=
 =?utf-8?B?bHV4bGNtcmVwOVRwR3pUVm0xMXoxMXdIbmRZaEN2aXhSbGpPN0FkTC9WMjJS?=
 =?utf-8?B?dGJzNW5YOVdXcm4vdkg3c25CYS9SRFIvNnRJUHdzMG1NWnhwSkhhRUdNRkxE?=
 =?utf-8?B?WWNMamxyaFFFamp5aXpIRjZuTUQyeDRKd1pmT29OVjEycUxxUC9nWGlaU1l3?=
 =?utf-8?B?QlcxTlBtVm1SZWZCUVZrRExUMktiN2tqcWh3bTRjWTdhNmExUEQ1M2JaL1A0?=
 =?utf-8?B?Vk9lZWtXT0EwSUhBdHplQ0xnckxDQmIvMXBLQVNIdVRyeUwycHEvKzJJMFda?=
 =?utf-8?B?ZXdXZE1EYmVaN04vc0xkbENXQ00ySCs4Q1VHcllOY3RXUVJRRHFFQ0tEQk40?=
 =?utf-8?B?bERmUFhlNUtZdTVPaUN4dDFyQnB5QnA2b2lvSDZ2Q0FnUkp5b0kwMzRhNjBG?=
 =?utf-8?B?UVhGN2Q4S0dpclFvSnFkQ0JhUWdZdmg2L3IxTDc4TTBWelMvblhNNDc4Mitl?=
 =?utf-8?B?c1BPNG1jUWZvWWJjRVp0TndsVWQxamxNemN3MU94clYvVEkzKytmUzZ0M1dy?=
 =?utf-8?B?U09mWjF4bWp1YTZ3eW05VlY0elI4YTZCVEhvcmJwK2MxM1haWDJzbTZLQ0VY?=
 =?utf-8?B?dWNaOXdlY2tLWGFDZjFxSElsbDRaM0hubTRmNFlvOExQY0RUVDFUc3NNOGVw?=
 =?utf-8?B?VmtoU2tQbjNCcG9MOXEzd1dJNlNCZVJsd25WaGRXbkNzWGhFblNZdWZpYVhB?=
 =?utf-8?B?TEh2bE80UDhybEZFaSthVVE0ZzcrREVFR09pYnpHNjdvNmtoZnB4c045Vk1R?=
 =?utf-8?B?ZlF0eUREVk5uVnROT0tqY2p0RnNlaW1YU3NhemNqU1h3T3hKOTJXQXF6WE1p?=
 =?utf-8?B?RmM4RTRVM1BwUm82TFVONkNvU0tYR25WK29qNVIrQlNmVm91d2Z1SFhjWnBM?=
 =?utf-8?B?bEhkTXpIWlBvUy9sR0wyRjhDNGkrU21yK0NjemdDSEtnazJvQTU3dGJBR0pU?=
 =?utf-8?B?VW5IQWUwWlozV3ZwRjVVOHR0Y3pPZy9GZVVqVEo0bWlYbVN2a0RJb3E2YXdX?=
 =?utf-8?B?ZzFkU1VwaDI2ZUFKcjhtaU9lWWdlWlo2bUt0NWREaTJCTE85SjRoMmZIOUtk?=
 =?utf-8?B?TDJmbVBCV21KQ2Y3UC84WWJ4bDdXOEJUWlZpQU5jZ2JFMzVLMnZRNC85VFVm?=
 =?utf-8?B?MFVwOHdna2FCSUFPbE1nbEhNYzZ5SzZPMWlJZVZXOWtjTWQ1Q0dvVEU1NCsr?=
 =?utf-8?B?TmVoM3ovQjRjL01rUFcxTmFzOStwb3dveTNKeFJRczBrbTRWUlRyMmc2bUdZ?=
 =?utf-8?B?elB0aFNFVDVJd1NXeXE1dmZrV3NrbkRydkh1cmVneWxGWWhzblh3aVBmMGtE?=
 =?utf-8?B?TCswSUdGUm55dEp3WlFja2d0ZzZSVG1uWm0yQlBZeFp5eUFrb21ycEkvdzJP?=
 =?utf-8?B?eTEyZHB6dDdlQmF1OXl1OGk1NFlNYnhFTjNVejVDODJQUU00MXdyZlhnaG1T?=
 =?utf-8?B?NGw3UG9WYkVRdDdNNFN0a01mTjJxSG5WUm8yNmRmaVFTN0JaMHlDNVAxcmZC?=
 =?utf-8?B?eEh3QXFPeFVuS3ltN0lzaFBuME9XUGxrcGc1Q2pGSTVKekJWaDJaY2lBWGEv?=
 =?utf-8?B?L2laMU5hUXBmS2NwWVM4YmoxZU5xVHFkWFQvMzgzZmJ6WFNQUkdRdVE5aGJh?=
 =?utf-8?B?bG1CT0F4RFVjNGdiMXpUNXFsKzdMaE9QYTc2VVRLaGhlaStWYUVpeHJSL29J?=
 =?utf-8?B?aFhtQ2ZLRVRZT1M2MjhBRHhpemJNY3EzVk5IOHlpaHcvaFZGTHhvZTFPRjJ1?=
 =?utf-8?B?T0x1aDNZTCtyUmorNHRDcHRzakh0Q2YweGx6azZOaDJ3eThnSjEvbFZSbVow?=
 =?utf-8?B?dkJiS1pQSURlZnBKdGkvNlptd1NEOHN5UFk0anErVy9kN2Jsc1ZmaEVNZWNV?=
 =?utf-8?B?cTgxRmFuYmNPcjRZbDdGQlBXTGQ2Q2daSHlKcmtHL213ZmY5RWpDV2l1a3d4?=
 =?utf-8?B?UkZ2Y0w2MVdRSE5Lam01TFpUMGQ4TXY2RTlrSmxaRklaWlNyQzhWcW92dlRS?=
 =?utf-8?Q?NvYUe7bIQeZZNXbw=3D?=
X-Exchange-RoutingPolicyChecked: HQijxjb0dJv7IJRf2uliMKqqswzPlcps6sLtDtnoKZG2I0LOl5ASLgbYZOhc93KGYEylpMgpaHm2MRFa8FrNexC8slmaR39zcPFTxlXnnbSI0kOJXHzpa0R5yzlD+ZynXRdntw+mqLLfhr2dilwaLbnvma6sMstoR5X9ZFQyu4s4Pa3f3+dYYJU+oUiw/F78SJjvAYYyrRVfPtMMtVG5Y+OEKE8KrncHl5XYWKTij1DE3C7RvQTZAu5WeR4uw5L0rDEG1elTVoxyfzSU/twxfiKOCZdQEbkngb2U5LRAOliWznaonUQep1p52gAXrJ4HqdUhy+oZ2sbQuEncWvRsHA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d2018ac-661c-489e-715b-08dec3b6a629
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2026 10:30:37.4179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +qimjC2rvyXIXvyBRzqb+NzwZ8E0Jew3tEzim2M8YW6IqDz8o+vlHLgxoGtq4lLpxBQbAv6eXp1hHgAJD2FcI+RaVyuu+SZOm52BgecCdFo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6911
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:mid,intel.com:dkim,intel.com:from_mime,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7959B64D177



On 6/5/2026 11:05 PM, Jonathan Cavitt wrote:
> Update xe_heci_gsc.c to use the xe error reporting helper functions in
> xe_printk.h instead of directly calling the associated drm print
> functions from drm_print.h.  While we're here, we should update the
> error messages to print the error codes in a more friendly way.
> 
> v2:
> - Update the error messages to print the error codes in a more friendly
>   way (Wajdeczko)
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Michal Wajdeczko <Michal.Wajdeczko@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_heci_gsc.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_heci_gsc.c b/drivers/gpu/drm/xe/xe_heci_gsc.c
> index 5af8903e10af..13123990c4e2 100644
> --- a/drivers/gpu/drm/xe/xe_heci_gsc.c
> +++ b/drivers/gpu/drm/xe/xe_heci_gsc.c
> @@ -8,12 +8,11 @@
>  #include <linux/pci.h>
>  #include <linux/sizes.h>
>  
> -#include <drm/drm_print.h>
> -
>  #include "xe_device_types.h"
>  #include "xe_heci_gsc.h"
>  #include "regs/xe_gsc_regs.h"
>  #include "xe_platform_types.h"
> +#include "xe_printk.h"
>  #include "xe_survivability_mode.h"
>  
>  #define GSC_BAR_LENGTH  0x00000FFC
> @@ -112,13 +111,13 @@ static int heci_gsc_irq_setup(struct xe_device *xe)
>  
>  	heci_gsc->irq = irq_alloc_desc(0);
>  	if (heci_gsc->irq < 0) {
> -		drm_err(&xe->drm, "gsc irq error %d\n", heci_gsc->irq);
> +		xe_err(xe, "GSC: irq allocation failed (%pe)\n", ERR_PTR(heci_gsc->irq));
>  		return heci_gsc->irq;
>  	}
>  
>  	ret = heci_gsc_irq_init(heci_gsc->irq);
>  	if (ret < 0)
> -		drm_err(&xe->drm, "gsc irq init failed %d\n", ret);
> +		xe_err(xe, "GSC: irq initialization failed (%pe)\n", ERR_PTR(ret));
>  
>  	return ret;
>  }
> @@ -151,7 +150,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
>  
>  	ret = auxiliary_device_init(aux_dev);
>  	if (ret < 0) {
> -		drm_err(&xe->drm, "gsc aux init failed %d\n", ret);
> +		xe_err(xe, "gsc aux init failed %d\n", ret);

	"GSC: aux device init failed (%pe)\n"

>  		kfree(adev);
>  		return ret;
>  	}
> @@ -159,7 +158,7 @@ static int heci_gsc_add_device(struct xe_device *xe, const struct heci_gsc_def *
>  	heci_gsc->adev = adev; /* needed by the notifier */
>  	ret = auxiliary_device_add(aux_dev);
>  	if (ret < 0) {
> -		drm_err(&xe->drm, "gsc aux add failed %d\n", ret);
> +		xe_err(xe, "gsc aux add failed %d\n", ret);

	"GSC: aux device add failed (%pe)\n"

>  		heci_gsc->adev = NULL;
>  
>  		/* adev will be freed with the put_device() and .release sequence */
> @@ -190,7 +189,7 @@ int xe_heci_gsc_init(struct xe_device *xe)
>  	}
>  
>  	if (!def || !def->name) {
> -		drm_warn(&xe->drm, "HECI is not implemented!\n");
> +		xe_warn(xe, "HECI is not implemented!\n");
>  		return 0;
>  	}
>  
> @@ -215,7 +214,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  		return;
>  
>  	if (!xe->info.has_heci_gscfi) {
> -		drm_warn_once(&xe->drm, "GSC irq: not supported");
> +		xe_warn_once(xe, "GSC: unexpected irq %#x\n", iir);
>  		return;
>  	}
>  
> @@ -224,7 +223,7 @@ void xe_heci_gsc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "GSC: irq handling failed (%pe)\n", ERR_PTR(ret));
>  }
>  
>  void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
> @@ -235,7 +234,7 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  		return;
>  
>  	if (!xe->info.has_heci_cscfi) {
> -		drm_warn_once(&xe->drm, "CSC irq: not supported");
> +		xe_warn_once(xe, "CSC: unexpected irq %#x\n", iir);
>  		return;
>  	}
>  
> @@ -244,5 +243,5 @@ void xe_heci_csc_irq_handler(struct xe_device *xe, u32 iir)
>  
>  	ret = generic_handle_irq_safe(xe->heci_gsc.irq);
>  	if (ret)
> -		drm_err_ratelimited(&xe->drm, "error handling GSC irq: %d\n", ret);
> +		xe_err_ratelimited(xe, "CSC: irq handling failed (%pe)\n", ERR_PTR(ret));
>  }

