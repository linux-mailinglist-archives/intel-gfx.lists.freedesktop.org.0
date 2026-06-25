Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 1yAyBLk3PWolzQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:14:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6177A6C6799
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 16:14:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=fail ("headers rsa verify failed") header.d=intel.com header.s=Intel header.b="gBYlyry/";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=fail reason="SPF not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CEA810F2CF;
	Thu, 25 Jun 2026 14:14:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7CDDF10F2CD;
 Thu, 25 Jun 2026 14:14:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782396852; x=1813932852;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WrSh/K4fjxZ4sY3VS0ERfDGAYoYik1Q9pMJJah15jUk=;
 b=gBYlyry/CYhnJECzXAj5fK6wS6RuX759RYQKbbwj32udBbFH5Yok7kDT
 ejf5J2YeyWtummZYyBy7yzCEVz4SH8kEvsW5sEDKty92TWDTETdWBPrE9
 WWmLONZbuXq9IgA816lfSScJdy+818bUYQqw9xqDhHuHT6GRYxwcU47f5
 BOJoiVq4buJkOoPl4nH3iuZEw8E5IFJxVMkxD07cQ0uHLA5l+b/ICmQI2
 G3oaPESNtlHx17FVB58aTZjVKWL61lOErwdDv9gfJ5Sf60el7ES2WSUEs
 SMqZ0TDiTZgl7DCUu1BQ1BVgJuqg5tKG5XFwm1j71RBN9lpRWu/ujql9v Q==;
X-CSE-ConnectionGUID: ZC6NaNJ5Rram6+vHADCIhA==
X-CSE-MsgGUID: 41LshA/3Q+OAILcjFdqlcA==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="87018820"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="87018820"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:14:11 -0700
X-CSE-ConnectionGUID: t1+s3mVRT9GGIOqHVz0Ewg==
X-CSE-MsgGUID: EWQ1wvN/RtCENS/oOHm1BQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="252697649"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 07:14:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:14:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 07:14:11 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 07:14:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mqm0qIKJACPen9uT2g6ui8y2f/LD1fKwTzc84jabODv8xGUh9Xbf2UGJ2ELr+JO0YZhxSRyTmFQrRxSGCWHWNUSPh+PxohWL3NnpfFHhJviIdEINVZ+wGM/49HdQA8N7s2Px7CbtgfIyqsOSAQoeAthxZwj4ALcyZzNdR2S3CONC4oXNjYGFpe8US0mwKcOSlV1IYkTqeYDmnQIOlGoWBFrlYSYOsNTg/5g0H1mTL2ygYmHU9BEVwXCsqCP/O3l5Ra3Ys1Fp/5VcExOslUp08CXV3HyG1J38UC1aKZ/uP8WIkZbh8/6SLHkl+i0OnwksMIx0LKvjmTMG8pj66+mXOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+slkSW6IM1qh5jTVLHz2jTKf5uO/KiXNOjOOyqm8fYg=;
 b=piFQBhwIzz+E9EqyWdcfhmmeM05AHr6EJ1NY4AFc+BzWv8Y8dN/ZwZ+4g0qYRXQdhK/Sde6jhcZ8j2T2jMpyW3q703t/e6YeOS0oyduYQTYaSvUWTdTnBN2huXKanpI40kKVmzd12vH8swl63aowdFyGVXTWZVVk+yk+UHuzUrp6lGjjT73hyWr4WqVCzeHDMgMtpHLhUimOGvMmwiPsoCrv8kuDZiOchEKzDYdMQ7f1PE7t34TuIPNOHbKmaPbLNSj4jg7UAy5PfsxqJJUdMn1AGFcBeLNILrpYWAdHiOmIhbgVxmDAEfPctozZpclbjLV33H8gV3wxtMtx1bXFiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA1PR11MB8374.namprd11.prod.outlook.com (2603:10b6:806:385::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Thu, 25 Jun
 2026 14:14:03 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 14:14:03 +0000
Date: Thu, 25 Jun 2026 17:13:38 +0300
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Mika
 Kahola" <mika.kahola@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH v1 29/30] drm/i915/dp_link_caps: s/lc/lce/
Message-ID: <aj03klb1L2mUYNkq@ideak-desk.lan>
References: <20260623224619.1949975-1-michal.grzelak@intel.com>
 <20260623224619.1949975-30-michal.grzelak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20260623224619.1949975-30-michal.grzelak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park, 6
 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
X-ClientProxiedBy: GV2PEPF000239F2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2b3) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA1PR11MB8374:EE_
X-MS-Office365-Filtering-Correlation-Id: aaf1f55c-bbc5-4172-e3af-08ded2c4028f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|23010399003|366016|1800799024|376014|22082099003|18002099003|3023799007|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: e+D84PhR75brlSsxc+1CwQUPy8nlT2WN6ktEcQC+3J+LCdOk3SCLtCuTJkcYJe+LCLrHt1TQEIquNkz3GBjnoIo4+vdFFux59p/YaZMyCMzvAsDWlk4yqm6ZGbGOsYzV1Yd3fYrATgn5hq41YJz2V4a+29xv9ucJ+k9bg64nJ3ISese4CpINak8c/PHKpeAo+KoVo/WrWqKdZnO/VElry+U1WA8Q9hAdI+BYacEJ52e0PjvSKoS8JsQkDHVoQQz6tzZpMOYKoSaraX+JzYDzxNHnCg1blWQGFVRYqcMeyZvsjmL0Jf0WNNTpBPNnTCS2pDrgMg4uGdt8xsXWGjJCDRxi/20NgTnzOPmlO26ycjGNS0GNbxDd3joQMjInc9ZU0DOX3365XCvWFRt1v+cuBqXVgI12tNiRNb4w9ZOvlR40k7jNfuol8kkBaph2FrWcym7bseLXV4JgQKCwKOXr8gDLuqTP/C/N6JFFNqoiTDCNP5iHolLtRc7M6J9iQCUdmE+eeY8Mh7dMF9GDxpKBAy+ufMA3p/hkCCWAZyppyS2AmFOINzvYHZjizwAdeEYivAhJZH4B4RA3kANQoPwrtxUA+EoRnu8T8xHQT6JssYgx8Sjc9BNloIPNJ+1IYw0gIOdI32tnXwWdvIezgszFwaL7ZlWsMOrc4zJZmyFHTA0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(366016)(1800799024)(376014)(22082099003)(18002099003)(3023799007)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RmVZT3NOUE84Vyt2ZzhUNTY4Y1RMalR0Z2pCekh3Mnh5QXhueTVBMFVrZEFq?=
 =?utf-8?B?SFdPbTRuN01idEc4Z1pEOFhmWFdNVjlKVit0d0FKcWpBU2ZSUEFjR2hVYUhp?=
 =?utf-8?B?OWRzN21wam4vSXdjdE1zYjN5am4vSWI2QTNGV0pIaE1ZVFBJSVpZVlYzNDdX?=
 =?utf-8?B?V1pheDROUnFNRWFKbERGSmlGNEVpemRtU3QveGVrdURZNzA5YmUvaEU2YzB2?=
 =?utf-8?B?RTlYcjk1Sm1CR3UycWx2ekFNVUpIYWd4Ym9DQjVzQWdkTmNhckJWZlF5UlpY?=
 =?utf-8?B?aUpiYm5JSHBwazM2WlF1eUxUV0FuQVV5blVyeUd0MUIvZHFFcktBSnFoMDk1?=
 =?utf-8?B?My9PUzNydFFDaVNPWjJ2WExpaWw4dlhVQi9wUENqM0hLRnQwOFVnb09HQkds?=
 =?utf-8?B?SGs1NjUwaVFXelJUbTdSbEt4MTUzc3BGLy9hS2NlVzBVcUdEZVpHQzFVS1FS?=
 =?utf-8?B?YmdrMDJnWnNOUmNnRFR6NXNIbzduVGN2TWpvRHpZUHdVOUhRcVVHUHlmY1lI?=
 =?utf-8?B?NXROVWlHNnB2ZFFrL0NnWW1uVGNVOUJKai9HcDJOc0lIMU9EdUtkcDV2bjNL?=
 =?utf-8?B?czFjdDZaQWtoNUxMNExPeWt4RDB3Z3loT056NjZmNFM2MkVPWVZoTGdnQVRx?=
 =?utf-8?B?b1pPa0ViNnhhMVhPZnVzQVRZODdLUytpbWM3QkNFVElCZjdnU1dpVURqTkkr?=
 =?utf-8?B?T0tyYnA2RDgrc3o5VWlhaHM0T1lpMHBpdjJyOXc0RHFzN0pXZjBrYmFtN2N1?=
 =?utf-8?B?bCtTYlRxdjl1R3MzKzJaenUvK0p6VGM2anpPekF1YmJPUndkeC9rZ0NQUkVo?=
 =?utf-8?B?NWp6MUt1bWlCdmRNWTJvT0wyTFB4NTJ5dHVWMTVSdXdxV0hYdWhtclExMkw2?=
 =?utf-8?B?TUJKemJFdkF6cGh5SVkwbGc0dUs1MnZTV2dVQXVPazUyM1pwbmdVcDhmLzhr?=
 =?utf-8?B?MWZNYk84anYzS2tRUkkzUmI0SnZ3N1dSS0pvZW5pYUN5TUVLYUJpdEg4TEJa?=
 =?utf-8?B?U1pPK0U5bEZYSjdUdFdSaWNMUkpyQzBGYVpqb1pNRk5maWtyY0JmVUFEaU9a?=
 =?utf-8?B?K2dIVnpYUFVIa3BGcnpjTThITWM1cTZyMzFtbkowNWpxdjNWaTB2WHNRdk5z?=
 =?utf-8?B?enpOWnRGUE5DNVJwNzg4V1RybTg5RW1CV1ZuQnlwV09qMktDK1RyZC9uTk11?=
 =?utf-8?B?ajRXejNWc2V3Zm4vYWM1eFVsT2paU2pZTWxIZlltclR0MzdObCtjZ2w4RHFp?=
 =?utf-8?B?MmY3d0FjbHVaTlVxNjlTMTFCdEU0MCtnUDRWU1VjTDlVSnk4MFdDWndBeGhk?=
 =?utf-8?B?SFR6LzJuQ2JGeGVQcndSeDdiWWdoSGt2TWFFaWwyMzBnaSt1bG05QmNVRzFC?=
 =?utf-8?B?Q0NFSFcvTVZFZmxmQnBGVXJicE4rMHZLWFIwUFZ6QXlMTkFYbEprd1RVeUFY?=
 =?utf-8?B?T1VReWZ6aUgxUEtZQ1JiNjlZSFdtWVI2eDhxS3NMMUwrZmdycmlKbGVORWZS?=
 =?utf-8?B?S1VlczNnbDB3cnNxRk9FVDJ1Sm5oTC9zU1E5ZTJaaVIvLy9xVHhDdXFzeEN2?=
 =?utf-8?B?OVZLeGgvbTFxZnJRK294eG91OVVBZm5ZODBmQ3k1OXZ3cVZQWU5EWnhvYUVi?=
 =?utf-8?B?SmY5aWtaTkNCYWhDNGNFNlJlZnJPdEw3SDc5SmlIT29tUGEzVmltdmkvUWtD?=
 =?utf-8?B?ZGorUFlQL3dPcDhWay9Nd2VLY3FPNnRPT2NDbi9uOFpvaXd2ckZqZUI3bW1k?=
 =?utf-8?B?bHg4WXFNemd0VU5Qci9JdzMvSCt5OFNNSWZCWk5mbVAzWnUvTjY2eXhRaGFh?=
 =?utf-8?B?dVMxcHJ6a0U3Mis0SHhQT2tlcGx1TWV1cUhkU2FsRFZkUFMzeEh2aEhKeEkr?=
 =?utf-8?B?WStPb2hNc2xmRlAyTEdXNDBCOGd0OGczRjBURTM1MDZSOXJsTnQwakZhUExW?=
 =?utf-8?B?MGozc3E5RmJYRXB2UEE3cDBTcHljaGJDcExQS0twSnltWmo0WlFERWJrb0pS?=
 =?utf-8?B?NEpmYXkzWjN2c0lTSHVyNy9yQTFVUmgzTjlUeDlyZkJOOUIzQkorSjc5WUFN?=
 =?utf-8?B?M1lPR3BkQzhrNWZreXdmOXBpelo5d3NIZkhyZmZzRVRlcE9BZVFhZ2IzZUZa?=
 =?utf-8?B?bkpZZ2ZkMlMyYU1xRGVUQk50Z2h6OU8rc04zUTNlc1Zvc3hDY0pqTkltWWxS?=
 =?utf-8?B?VkhFd3VyRTVRRVFWM21kaG42N3NKMEVTN0xZYnNLdDAzUW5ucVNGd0ZETE1x?=
 =?utf-8?B?Q05nbitOb2NXQzRybzBRdmVmZWlRUFlENGI2SWw2ZXdlZ1crelpWVDBEOStN?=
 =?utf-8?B?SnRFc0RuMmFFdWFTTzF3T2VPdVl4cHB5aVlHaWhpZ2EyVWFXc3hEUT09?=
X-Exchange-RoutingPolicyChecked: c9niFZw9cKXA1++cQdryERhtVbjdn+EPqJxcgzr35xfA+2pUvOZtg24UqX925xwekPeJBdJFPTFmIEPSwj7oSis8ZV/zndHN7qNH2AQauxm5xroTm53fQxYavKw9PafuqUL1RpIkTO5EmLyusyhs20OYbgfHPZaQV5sv5QPYuYFoIUByT/MqKbggis8rt1jfd7QlAK5fEPtLsnZGO0+l2s9PVsOCCCVClIR84ipt2urGBOV5N5XpwLHSC5pdLC/lcv++T+BllmK9VQanrmQZuFPCPeeRFDj1VtaFzmhwIzM0jQ4KKlxY9ZqcNOBll2I2iBUTyYM7Eh2u9bwZ2NlB/A==
X-MS-Exchange-CrossTenant-Network-Message-Id: aaf1f55c-bbc5-4172-e3af-08ded2c4028f
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 14:14:03.3329 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/SBn5WHFo/H527cUgZGoxtCyCVE3r4ZSB4Ayj6Zfl+uBCpNh1+D/OTbRplQvyNLNkg5adkjjnE+q7xSQMVfEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8374
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_EQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:replyto,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,ideak-desk.lan:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[imre.deak@intel.com];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6177A6C6799

On Wed, Jun 24, 2026 at 12:46:18AM +0200, Michał Grzelak wrote:
> lc variable took it's name as an acronym from struct
> intel_dp_link_config. Rename the variable into lce since the struct was
> renamed into intel_dp_link_config_entry.
> 
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>

Thanks for the patch, I pushed this one to drm-intel-next.

> ---
>  .../gpu/drm/i915/display/intel_dp_link_caps.c | 50 +++++++++----------
>  1 file changed, 25 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> index 0917e7f51a26d..1c34ba6c49c35 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
> @@ -144,14 +144,14 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
>  }
>  
>  static int intel_dp_link_config_rate(struct intel_dp_link_caps *link_caps,
> -				     const struct intel_dp_link_config_entry *lc)
> +				     const struct intel_dp_link_config_entry *lce)
>  {
> -	return intel_dp_common_rate(link_caps, lc->link_rate_idx);
> +	return intel_dp_common_rate(link_caps, lce->link_rate_idx);
>  }
>  
> -static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
> +static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lce)
>  {
> -	return 1 << lc->lane_count_exp;
> +	return 1 << lce->lane_count_exp;
>  }
>  
>  static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
> @@ -236,10 +236,10 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
>  }
>  
>  static int intel_dp_link_config_bw(struct intel_dp_link_caps *link_caps,
> -				   const struct intel_dp_link_config_entry *lc)
> +				   const struct intel_dp_link_config_entry *lce)
>  {
> -	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lc),
> -					 intel_dp_link_config_lane_count(lc));
> +	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(link_caps, lce),
> +					 intel_dp_link_config_lane_count(lce));
>  }
>  
>  static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
> @@ -247,16 +247,16 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
>  	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
>  	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
>  
> -	const struct intel_dp_link_config_entry *lc_a = a;
> -	const struct intel_dp_link_config_entry *lc_b = b;
> -	int bw_a = intel_dp_link_config_bw(link_caps, lc_a);
> -	int bw_b = intel_dp_link_config_bw(link_caps, lc_b);
> +	const struct intel_dp_link_config_entry *lce_a = a;
> +	const struct intel_dp_link_config_entry *lce_b = b;
> +	int bw_a = intel_dp_link_config_bw(link_caps, lce_a);
> +	int bw_b = intel_dp_link_config_bw(link_caps, lce_b);
>  
>  	if (bw_a != bw_b)
>  		return bw_a - bw_b;
>  
> -	return intel_dp_link_config_rate(link_caps, lc_a) -
> -	       intel_dp_link_config_rate(link_caps, lc_b);
> +	return intel_dp_link_config_rate(link_caps, lce_a) -
> +	       intel_dp_link_config_rate(link_caps, lce_b);
>  }
>  
>  /* Return %true if the supported link parameters have changed. */
> @@ -265,7 +265,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  {
>  	struct intel_dp *intel_dp = link_caps->dp;
>  	struct intel_display *display = to_intel_display(intel_dp);
> -	struct intel_dp_link_config_entry *lc;
> +	struct intel_dp_link_config_entry *lce;
>  	bool link_params_changed = false;
>  	int num_common_lane_configs;
>  	int i;
> @@ -298,13 +298,13 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
>  
>  	link_caps->num_configs = num_rates * num_common_lane_configs;
>  
> -	lc = &link_caps->configs[0];
> +	lce = &link_caps->configs[0];
>  	for (i = 0; i < link_caps->num_rates; i++) {
>  		for (j = 0; j < num_common_lane_configs; j++) {
> -			lc->lane_count_exp = j;
> -			lc->link_rate_idx = i;
> +			lce->lane_count_exp = j;
> +			lce->link_rate_idx = i;
>  
> -			lc++;
> +			lce++;
>  		}
>  	}
>  
> @@ -320,15 +320,15 @@ void intel_dp_link_config_get(struct intel_dp_link_caps *link_caps,
>  			      int idx, int *link_rate, int *lane_count)
>  {
>  	struct intel_display *display = to_intel_display(link_caps->dp);
> -	const struct intel_dp_link_config_entry *lc;
> +	const struct intel_dp_link_config_entry *lce;
>  
>  	if (drm_WARN_ON(display->drm, idx < 0 || idx >= link_caps->num_configs))
>  		idx = 0;
>  
> -	lc = &link_caps->configs[idx];
> +	lce = &link_caps->configs[idx];
>  
> -	*link_rate = intel_dp_link_config_rate(link_caps, lc);
> -	*lane_count = intel_dp_link_config_lane_count(lc);
> +	*link_rate = intel_dp_link_config_rate(link_caps, lce);
> +	*lane_count = intel_dp_link_config_lane_count(lce);
>  }
>  
>  int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
> @@ -340,10 +340,10 @@ int intel_dp_link_config_index(struct intel_dp_link_caps *link_caps,
>  	int i;
>  
>  	for (i = 0; i < link_caps->num_configs; i++) {
> -		const struct intel_dp_link_config_entry *lc = &link_caps->configs[i];
> +		const struct intel_dp_link_config_entry *lce = &link_caps->configs[i];
>  
> -		if (lc->lane_count_exp == lane_count_exp &&
> -		    lc->link_rate_idx == link_rate_idx)
> +		if (lce->lane_count_exp == lane_count_exp &&
> +		    lce->link_rate_idx == link_rate_idx)
>  			return i;
>  	}
>  
> -- 
> 2.45.2
> 
