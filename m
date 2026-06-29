Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id p/bbGBHuQWoKwQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:01:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B667A6D5C33
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 06:01:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=n0w0SQNM;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B49610E002;
	Mon, 29 Jun 2026 04:01:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98D1B10E002;
 Mon, 29 Jun 2026 04:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782705679; x=1814241679;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4xBIncYtRVT5K6EWRLigJsJQf2ANQh7zuHAcRVZqMCw=;
 b=n0w0SQNM+9qu02JnB0Gi3ydJWX8hUDOmE8HLxZ7tYdJT/i9zfOv4r+IT
 MQbzd3+pZ4o1sPKZ3g0eTua6GWIThLm4PAQXCWH0sZzmGGSVqmH7m1S+w
 eVo8lAEdmKnzFCGYtgrivTf29cdbcT/eKyzNc4teWW0YJbE2r9+EJ+2Kf
 Ubt8LZqs/5xodLGrf/E8z3bW3gu9Lin0bm+bj5RxFXsraTXBVaEbTGR5N
 k597Jvkr7UMdWDUib9aQnmb7dc7XpQmuYFikmYMwSUKpF/VQP4l6mccSR
 C2Br7yPY5XJtgEcjkj+5O0GL0qMZO2De0We9HoEgcbsGYhSDettByqCVQ w==;
X-CSE-ConnectionGUID: Ad32Xa+uRACDOAaCjs+1ew==
X-CSE-MsgGUID: 8nJq+msDTCasGALUSrxzCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11831"; a="70907611"
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="70907611"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:01:18 -0700
X-CSE-ConnectionGUID: Q5XfsJ+YRiqSLm/6Cz5GEg==
X-CSE-MsgGUID: V1Y4Hc+ZSAqciOFz4T1fPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,231,1774335600"; d="scan'208";a="289961617"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2026 21:01:18 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:01:17 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 28 Jun 2026 21:01:17 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.2) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 28 Jun 2026 21:01:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tM8Of/noecd56HCdm/FdaMHKmkvAxx7CF7jg6YeTx/1nCPYaf39KYUoHeQlJrsUuLiUfa8VAmunbjgYL7mHMNDIySnbslUpjssqQlPjByEBvN80NguvMde0K7UEqhZekhwjlTCDlVO3s5csCIdA18UHsGIHg9KLSiUqLLpM73+dj+hS3wpxEzTMBAhr8T3PuanormKwY99A4weEYFVxFZm86OWKWr43aGvQv92JvYecucpYCXkeZ5QIa2SChA74ZKNKch/i9wD5kBBBhBu4vy+OyimVLb2LLHehW+NKs9wJck9xAwtUybLLxESoUiFTgoUUDHfRNGxUQuVmc+mAuvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vjEWuazRketxFWnWi0oCFJmGThywRtCocbNYY+l2SGs=;
 b=vPVnNmSDKHHwdGZ/BLwwDV6XYq65W6TOTSOUWwqCM2Usuj6bgwVn6YH+BcDxHKWRKyXsm2SvhKSFjxCwjHBtDvdvyUe0eByP4JmzEc9+HoIKFtlVNmJNb36ruKEShs+uUk9il55ETpXUNjaiJJJWrQ/1RNPjYVFzH2kw7MAM0XF9MVxMsUoRZrpI+xYd28ZG+K2OyMM4dUmNw7T/4JsCfkqTn+xl7vCQE/+9aLnzB7O4/q9LGhBsQKHSjZZk3XQaRh0gOSO4zpIzjUN6isHbr5bPwJogj7hU06EEZ+sAJgaUr6mrv0YhCJb1eDc50067dHfnJOFBMhpy1lU/oyF9MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SA3PR11MB7554.namprd11.prod.outlook.com (2603:10b6:806:315::9)
 by SN7PR11MB6679.namprd11.prod.outlook.com (2603:10b6:806:269::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.19; Mon, 29 Jun
 2026 04:01:09 +0000
Received: from SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b]) by SA3PR11MB7554.namprd11.prod.outlook.com
 ([fe80::3ec0:2280:db82:d67b%5]) with mapi id 15.21.0159.016; Mon, 29 Jun 2026
 04:01:09 +0000
Message-ID: <7f6ad39c-6093-4501-a40d-fd638ad1dfd6@intel.com>
Date: Mon, 29 Jun 2026 09:31:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/dp: Ignore the sink's DSC max FRL rate
 without a PCON DSC encoder
To: Alexander Kaplan <alexander.kaplan@sms-medipool.de>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Imre
 Deak" <imre.deak@intel.com>, Chaitanya Kumar Borah
 <chaitanya.kumar.borah@intel.com>, Nicolas Frattaroli
 <nicolas.frattaroli@collabora.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20260610174413.5881-1-alexander.kaplan@sms-medipool.de>
 <20260610174413.5881-3-alexander.kaplan@sms-medipool.de>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20260610174413.5881-3-alexander.kaplan@sms-medipool.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::17) To SA3PR11MB7554.namprd11.prod.outlook.com
 (2603:10b6:806:315::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA3PR11MB7554:EE_|SN7PR11MB6679:EE_
X-MS-Office365-Filtering-Correlation-Id: 87bbf40d-6ba8-4396-e68d-08ded5930cf0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|23010399003|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: Sw6RafzRKjHliYHPpoM0feXPDeB3mEix135rf9OaciasbflPUqSC/CREg+YrCXQPft8XDUhU4ElAOSHnQ1SnPNP7gGYQhUx1n2sxR3alVwX5exvUxcYhb3MGx4adFnFz0DOnWxBSa8won/x7d+wmOUwtCNgXRprZGHu+Twic4j7y4xf0EYEHWKWR38wm/xntEJcqJX6SOaFhsH3D46tekZW+YWRP/Tqf+dktoAPurAeIMyoSIxYwFDJ4nxfd7LnJWXU9laFiMp1P4IeaSkt+LsJxJWIR37EqKHWpdtIfL/E5YRmNy6T2BdZtr7ntGF/clkJh/G1KbUynbXDbGEpnsDUAeJpsaZQNa5S78nUss+YetKMxjeus/20yjb0qWAO+uwdQtsD0WvC1a92xzpSUYXPhmumPo/ASYKPrWnzGL5pOpxrDe3CEyQiSDHblIrreEad4ySy83yMOj4IIQKPGXBN3VS5Zx3MznwM6s2Mt6vt4P/e41+WYiyNNEJvsLhsHliQKMcXpHylxaYlcfHOkqoQsynYtfW7Toq50UifHNhI/LEUQpxVxoM1VQeLMqJyyoMtU95D7lUSGltSPvrZMditqSYSd1M/c/QRF1o0Nk5wW+VQ9tj9ygluOx8pCaTbr4bjTKd97++pnvTm4mQNd1nQT5ArHaPSBET8sb/w4psU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA3PR11MB7554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(23010399003)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WVNqNFZkaUR6TVlLZTJaUzFhb2N1TVZaQ3JUMThGb0RTT1ROSndXSG5EaUJD?=
 =?utf-8?B?SmxSZ25VRnBZMU1yZGEyZ0tXT09YaDNZK0U0VzhZVlhNRjZjRkl6anZhRTU1?=
 =?utf-8?B?ek5DQ0VyTjJYSXFRZFBVQW1aSHR4UTBxUVpmN0w3TG1hb0tVUmxDTjQvSlRI?=
 =?utf-8?B?bHpFWkt1eTJaWmRKSHRJNTQrTVhxM1pnLzcrTG9UVGNzeFVIYWZyTG5XaWhH?=
 =?utf-8?B?aXcyOE9JU2lxM04zRy9QdTNzWDQ5c2RQY1hLSDBxVk0yQXJNSFpESEZFbGJP?=
 =?utf-8?B?Q0w4S1loKytLaWd6dTdGTTYwMlBpUjBmM3ZOaWJFaXZybWs2ZFJXNlE5dDEy?=
 =?utf-8?B?Z08yWDExdDlraGdwakdibE51MGV3M3dTR0xNcm91ZnhzUXJoVjFOSjBTR0Ix?=
 =?utf-8?B?MXlNdnNnOUVzSWhESkFCMDdMaVpqeFRLcTRKTkFzczFlb0lUVmlNZzJuWDd5?=
 =?utf-8?B?MHNNSktEQ1VrRzZ6T09yYXhHdmsyaEV5citCZUFWVWlrNWk3a2JJRXFYYndh?=
 =?utf-8?B?ajRpcUlzZXdOb3B3ZlhYMlpwRnVXdTRPVGplR1FQWVBWV0hhZE5ET3ZNbnkx?=
 =?utf-8?B?NWNwS3lLNHBaSzVqRVBIYkZDQU9WTzlRVUJBanlqN0tWbUNLaStqSzBlM3Iz?=
 =?utf-8?B?NW53eTFkMkNPMWpCcE1CVnp4MzZ1WnEyUnNSb215d0duTklYbXZsTkhPSmZH?=
 =?utf-8?B?VFNic0pjT3d0dGRVMkRNL1djc0pDSTg5b0t0SnBCWk15WDM2Wkl1UmhOM21t?=
 =?utf-8?B?VjA0YjVLMVhUUkRxbHJxSjM4a1RFYVdIZGt6enV0S0QvRU94MXVLbVdHQ0J1?=
 =?utf-8?B?OFpFMTNMQzFpSXlyNVgyLy9pSFduZzZTdXBzMWw1VU1wV3lQMkV1Ky9VU1dl?=
 =?utf-8?B?cHgrT1NCZFVBYktZMFlkR1N4QzR2NmFRbElVVEdoYlhWNi80RWlXOFNyTkZq?=
 =?utf-8?B?cFZYdkJGamU5b1NMYzUrWWVHZEJUR3AwY2M3N1BCNFdSdVFNczVJNlA4MEJO?=
 =?utf-8?B?b1EwWk82TG5yQjByRmVBNDI4UnZmV2NXMU5yeXoxcWdrMFF6bCtHYkN5cFhT?=
 =?utf-8?B?eHBoMkt4UkRteXVKZFZNUDlrYngyaXlqb0NKZktLSTc5dlRWY3dPVVBtUXFv?=
 =?utf-8?B?Y3ZsV1UyeXN6SFRWazZoZ1ROSFkva3hxTzZzMnVPZ2dCNXFQRzY4UmpYNEJD?=
 =?utf-8?B?WG55UnZ3YlBEZDhjU0MzS3djakpDbXZnMVhyUlZvWFNHb2lOeE54NUJuMjJ1?=
 =?utf-8?B?ZFBrZ2dBT0ttNms3UytFenBRK0dTQzVTSDkzN1RiSmFRTndxcDJwTm54WGN3?=
 =?utf-8?B?eXJXN2RNTG5rSHdHWlBpL3RDdHhJd0JsODZyZURyS3lKTUxxZkJYeWRSbG8w?=
 =?utf-8?B?ZEVlcEdPRzBSUkJjcTViT1VNTXgyclRWKzN6NzZVSHNRK1R5VnFkeHdNdWF1?=
 =?utf-8?B?ZXhyQkFKdEV1Y2ppd001S2toeG5zd2FnaG9qTGNUWUpBek1QcVZzNmw1RURs?=
 =?utf-8?B?RlgxNk1pWGMxV2dYWVVob2FLR3NOUDgwUDJJNkVKVWJLSzNRSXpyd3FWelBH?=
 =?utf-8?B?TDU0RHU4L0dvY3JWVUtPWWF2enFRVTN3aWRVZHZocENGYVZ3WmxOY096MDFM?=
 =?utf-8?B?UnVoQjRDZlJBcS9acm1GalBvMnZudEtGS1Z2TUNwMmd4bW9EYldsTlh0djBy?=
 =?utf-8?B?eThOL1ZQRmpJNlJ1UGdpWWdvUzR2c1d0MFYwaEFwUzl2NFRNTEFrT1hrZk1D?=
 =?utf-8?B?KzFQUkliRDE0M1VrNG8wcE1QcnBORlRhaDV3TmFrMzJ0c1pOQ1N5cC9seWlN?=
 =?utf-8?B?bjJmbEVxdVVzRzZPWXpNLzRzakNWU1RYajFFNTh2OVFkcEFyc245aGtlS2V6?=
 =?utf-8?B?KzUzdCtINFc2elg3Uy9FZTF5c0tzTndIQ0dYY0dBN3VaVzlqRU1rTVNGUmNX?=
 =?utf-8?B?T0lyTlhEd0hsYnVWc1FNYk5wVkIrWmtxWUVXbXM4YitSbU5KQmQxVWZkd2ta?=
 =?utf-8?B?RmU0Sm5PNVFiQXRVS2d3aHdPbERwbGFiSlkyV1pMSXlNTkpjZzlmc3NCZHQy?=
 =?utf-8?B?WHpoNFg1d2dOQjN4U0t4cTg2dXhpY0VWRWZqa3ROQzlWK3hMVGtTd0VxY0ta?=
 =?utf-8?B?c1ExOEpjTEFwb251K3k2VXU2Q3ZTQklKdytoY2pzWlNoQ0YzdnhKWXJTeTBR?=
 =?utf-8?B?alA1ZkRTVnhUUkVDckpFRGVFNGxMVERYTVlFVllNMW9lWEt6eFVhbnNqSG4v?=
 =?utf-8?B?TW9XUGhPTVcvdzdDbXJkWmtLZ05LZGc3b1hBdEJMMnk2eWdaVHYrVitacVFM?=
 =?utf-8?B?WnVHV1FLaXhQZlEzUUZ3N2NWbmhIbm1RVG9pM1U2RXQwZkszVXJ6bW1MekZi?=
 =?utf-8?Q?oD14wB8ntuQNRU38=3D?=
X-Exchange-RoutingPolicyChecked: EWFnOIiz39P2StOX6fNGDW5B7xBa37ZqL74DKgs4IT9eaavNDPflZUBMUGSX9HEC9+49aJZt+3dvrtfInveuuJRigjOGS5woSRv7uHFy+/qmdPlWk2+zmndpuOjHfWdRb/vworkLAHvT0Mjw1cNI4pIJMMJV+kV+hvY2IUD3vEEECdnghBuSZj+EhZ+XjU33tJPp2Rg54ORy3i9Kp/1XIImGthmNlkhlPgaIORcx0jpMMEvSkqxfD4yENCoOQmMonTE4QFdoAc4pa8RRx0vzO2cJY6yZtHyuK6W14Ixa3Bal+wrWC+d8kkPMX1UhZMHb/6YQ+mA8d/l36ccpw9xTDQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 87bbf40d-6ba8-4396-e68d-08ded5930cf0
X-MS-Exchange-CrossTenant-AuthSource: SA3PR11MB7554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2026 04:01:09.0717 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hU/rdwD923ZmfN1NQGa32LkYBT8pNtndVd9GMkj0iTh0GvWiBzVTaArSuGZrbH/h+v0hHTym3R7Nu3jbAIndxRQcSJm15r4DrZwJT+MZ2ks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6679
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,sms-medipool.de:email];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B667A6D5C33


On 6/10/2026 11:14 PM, Alexander Kaplan wrote:
> intel_dp_hdmi_sink_max_frl() limits the sink's max FRL rate by its
> DSC max FRL rate whenever the sink supports DSC 1.2.
> However, the DSC max FRL rate (HF-VSDB DSC_Max_FRL_Rate) only applies
> to compressed video transport, which requires a DSC 1.2 encoder in
> the PCON (configured via intel_dp_pcon_dsc_configure()).
> Without such an encoder the HDMI link always carries uncompressed
> video, for which the regular Max_FRL_Rate is the correct limit.
>
> Applying the DSC limit unconditionally trains the FRL link at a lower
> rate than both the PCON and the sink support.
> E.g. an LG OLED G4 (Max_FRL_Rate 48 Gbps, DSC_Max_FRL_Rate 24 Gbps)
> behind a Synaptics VMM7100 PCON (PCON max FRL bw 48 Gbps, no DSC
> encoder):
>
>    Sink max rate from EDID = 24 Gbps
>    FRL trained with : 24 Gbps
>
> while Windows/macOS train the same hardware at 40/48 Gbps.
> The too low FRL rate needlessly constrains the formats available to
> the sink.
>
> Only apply the sink's DSC max FRL rate if the PCON has a DSC 1.2
> encoder, matching the gate in intel_dp_pcon_dsc_configure().
> PCONs with a DSC encoder keep the current conservative behavior,
> since the link is trained once and compressed transport may be used
> for any subsequent mode.
> With this the setup above trains at 48 Gbps.
>
> Tested on PTL (xe) with the above PCON/sink combo.
>
> Fixes: 10fec80b48c5 ("drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Alexander Kaplan <alexander.kaplan@sms-medipool.de>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 13cfccf60490..2831b274d88a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4254,7 +4254,14 @@ static int intel_dp_hdmi_sink_max_frl(struct intel_dp *intel_dp)
>   	rate_per_lane = info->hdmi.max_frl_rate_per_lane;
>   	max_frl_rate = max_lanes * rate_per_lane;
>   
> -	if (info->hdmi.dsc_cap.v_1p2) {
> +	/*
> +	 * The sink's DSC max FRL rate only applies to compressed video
> +	 * transport, which requires a DSC 1.2 encoder in the PCON. Without
> +	 * one the HDMI link always carries uncompressed video, for which
> +	 * the regular max FRL rate is the limit.
> +	 */
> +	if (drm_dp_pcon_enc_is_dsc_1_2(intel_dp->pcon_dsc_dpcd) &&
> +	    info->hdmi.dsc_cap.v_1p2) {

Yes, this is very much needed.

This condition could be factored into a separate helper, but that can be 
a separate patch.

Patch looks good to me as it is.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>   		max_dsc_lanes = info->hdmi.dsc_cap.max_lanes;
>   		dsc_rate_per_lane = info->hdmi.dsc_cap.max_frl_rate_per_lane;
>   		if (max_dsc_lanes && dsc_rate_per_lane)
