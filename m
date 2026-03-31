Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wPh8Kfpzy2k3HwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:12:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F08D364E1D
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Mar 2026 09:12:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14A2910E882;
	Tue, 31 Mar 2026 07:12:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X07tWhMB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B30910E87D;
 Tue, 31 Mar 2026 07:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774941174; x=1806477174;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=C7MyS5rzDhQWH14qH4JW1fXyl8pevpo8X4gwaZeHzdU=;
 b=X07tWhMBBCDxnxqBS5oAwCP/f1RGpUdjNWsGRBcYqkdYNfD12owBqPbl
 sFUK3hQbWIMywfO4i7VuskrPLnFi9xLImQQ/lLGeQrpQY/3oxyJNbW2AB
 LBcvwVug7xzys0H4V46Fi+46TFQp8lTuM0yFXD/ooUW6L3LRXUdG8bHLp
 rcVtHWcjjPzzWGQPKDsyhNuVQtPKnmk3+gp29WmCKNzmc26mJp6NxBxOq
 qUu48Zf3RAxB8ZRztpw09fSpC8dfNFAI2wmKrVj90HYvNenwpCvaSMWxp
 bHEQpgPJHwbzFbqtled2Cx3JzSqO4hGTYC76NESIKkjlDqWuJTYnTVnn0 w==;
X-CSE-ConnectionGUID: zktzJBPxQ76beVYsa75Mbg==
X-CSE-MsgGUID: nULwHEVXTe2VJEAQv2xG1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11744"; a="98554088"
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="98554088"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:12:54 -0700
X-CSE-ConnectionGUID: +Iv0CfrtQDGlrXH8x861jg==
X-CSE-MsgGUID: mtXlFrDtSS2iIYMA+zoyAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,151,1770624000"; d="scan'208";a="226533674"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2026 00:12:54 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:12:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 31 Mar 2026 00:12:51 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.9) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 31 Mar 2026 00:12:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hx996490f/kiJ1jjqCMzxQBs+2WLuLq0aBFfBkvV5A1QMbOw6yw2x5KjQWMsz4Jp2pNHmt8PxfvbStRJWXqHt/78mHeCgESY2EmJReTWucnYWBdpyrNbeJXYGPvOvFc++cxuyTunnbPjvbA6Qvc7PHSGVjCvOY+RcFKO7OItrlJuLHcHx1mebIzsrm5DRxtQAIslaXgfXs3M1qu/1CiuxzdgYd1kVuM1fmLn1HCcxK+OyLoLI2VmjRhMilgv/e6H2iNicPcSlxEUV0Dg5lxE1rks84A8a9NN33nxQwFmpM4Y2lgR7fuxj0dzCl+ZZVhCew110J1oXTf4MB4jazLiow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7Wp9EEZATlI7XuiWgTVQefKyOPeRfr0LyAueCYmtsto=;
 b=NcjnMzEMvofqo3rBEF2DcLBgbNOLxKM7/4ZeJNuejoOM26MAc/aMkXlq4zvWHfjyNqO6Tw6oyIGCSiF13BNw5k5+cv9uMqjQ0A8tdfqweOOvtEyY+ZZGf3ZZfxnpNgG8Xi5pIRl54ckADi9Ae9PJFqbbNvfDkXM3TlNAsHBTt0ZQPgWNcqQZ/kpEpfsdBc6sAtb14f75WFnnpqu+wlEnfZZ4Qs/umm9cEH8arrst8MiR1sqjlPZbgLESDvmla03pehvXx+6NWSxNpycaYw13+aHg0nN8nbONItofZl23OlG8leGoqIoqWhImo2x6skbgNYbs7o9A8tDBFR0ZyCPbmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 MW5PR11MB5931.namprd11.prod.outlook.com (2603:10b6:303:198::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9769.15; Tue, 31 Mar 2026 07:12:46 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::1cfb:82cd:3519:418a%6]) with mapi id 15.20.9769.014; Tue, 31 Mar 2026
 07:12:46 +0000
Message-ID: <af99f032-c9e2-4b03-b166-4b3025b2baed@intel.com>
Date: Tue, 31 Mar 2026 12:42:35 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/26] drm/i915/writeback: Add writeback registers
Content-Language: en-GB
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <sowmiya.s@intel.com>, <uma.shankar@intel.com>, <swati2.sharma@intel.com>, 
 <arun.r.murthy@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-4-suraj.kandpal@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260325110744.1096786-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::28) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|MW5PR11MB5931:EE_
X-MS-Office365-Filtering-Correlation-Id: dde920b3-5a19-4305-e86e-08de8ef4e7b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: iWa+d7CLHYtvAvLgz1v/Jnt2RqJvNi8VMkK1AKEj0GN1E6JFHsB2SjdrVyzRpbclCoK0lIDE3JZifhQQddr4P4wzYkgIY9CpqaSh3kLMyurhaNnxr5sHST49I331DlCqsvBw+/ZzbdG4efaD7AXy6uX7SQ9vUGbR5S1mZRHV4m4R5j6WOrQzkhIdJroRMvk1YtPf5HFwFoNNDv/h7dLr/bWAU+cIWmBPXDJoNjYnkxSS8VQ0mwjDKJycBLnk7qIrsXwi6E1oo6SZC+KJ0/r6Pc5thSxX4t6bTlz4kSnM1J3RsbfPJjVszF5gB33JMqD4d6bDo3R7AgGDeOR2MLhkEEFd6/wlvQ/Gr82mI0ZFkTdAkbvFWMTCiuZkg/okuBlGNqiG1aUpXyUpWrbJhzzrgghdzPz65mFgtLK5RwygCT8PN1r3+XsXP5GiCD18h09iE8b0HG4YhBvqbFVIufaom/0fumqIq//GJsIezVjKK+9Ckl41CtkhoHh4MrnM+qIlIdONbS7ofTuYwbpfzUe4BncXb4dZ61GxI2yPgaZ5dPNQ5xaB1J4xzpKjRPxGI+tQ2tHFL/EsDBCo3RGfLAG8OijPZjAWvZp3pbfVqMJM0EtHg4OzoM4PJr5rEJr/FEzw0UqZTMuL0zk6xTnyX9KfKTbVVxTzs7wyQINNoNjdoawb4YOwwkic2W9BR2TxWEKK1dx5psWpabJDqF1dg1gNejpBmnfhNinfjjt/sVNjEOE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N2pBUGo2QTBNSjF0Z1V2TGk2VHViN010OVJ4cWJQQ1BxakRkTXNFSnJqc2pv?=
 =?utf-8?B?V3BhUjVZcXJKaisvT3pVNnB6RXhWQWFvbU5iSDNZeFpxNG5BcUIvdUZUdGho?=
 =?utf-8?B?Qmg2dEdMak0yWndLMC9UYnRVSHNETi9CM1NvM01CVkV5RjFZNk13a1JmU2tN?=
 =?utf-8?B?STVqRStJaVQ4SHhCdHBUWk5LR2xCbnVqY2NyZE1xcDF3eHoxVzlDN2hCRGJj?=
 =?utf-8?B?bWxmblErTU9JZWZZZGt1TlFtaVZLb3V3WW5JQ0RBVTRUazNyQXJPV3lSQXcv?=
 =?utf-8?B?MlNPZFRndCtyK0o5TW5BRE1yZVZvd3BhRmJXSFhmTlVtRDRNOVl2cXdHSVNq?=
 =?utf-8?B?Z3hjamJmZGxWOGJpUVJIcmEvSDliNkdaYkI5dVNvMWUxazhvYVNyV2gyRGpV?=
 =?utf-8?B?L0Z3L01MQ3Z4UFEzWHZ2R1EyRXlxQ28vRFFXdGt0YW45Uy83RUxKOFAvdXc4?=
 =?utf-8?B?MEVKT0U3TFpPMkpvOXdsaEplZjlHc0RleGFwUzRzUkVDaitablg1anN1azJy?=
 =?utf-8?B?NTB5eE1vVzl5YksyT3p6QmFGV0VadTd4TVNXdmpDU2FIRnFHOTlNRk5Ldjdk?=
 =?utf-8?B?WFVIckVxTDVDK1RnRFJNWXczRHExckRJQmw4NDc3WG9FN21Jd2hGeTE1SXpP?=
 =?utf-8?B?Tis1ZWtkM0g4UDB6SlJDTDE2T3poOUJmczI4d2dnL1ZwZ2laYVJJa3hLOUZO?=
 =?utf-8?B?MEdITmtCdHEySWhKTHArZmF2K1JkV2dPZEROMDZBQU5NMDhuR01BdFUwakZX?=
 =?utf-8?B?bHJERWpqelhuWEpucGlNaFd5M2QvSUZOSDhJVXB5SnllTm94Z1NONjdiT0s1?=
 =?utf-8?B?ZmtmUUUrUmFkQkEweUJCTWlpUUZzSWU1M1BhcFdDUmh5YXhjNzh5MFNnQ0JY?=
 =?utf-8?B?YUpLSzZwV3hxNEw3Z2xLUDRkV2hKNlVNTjN2dC80UmNmVFhkbUlSWE9CQzE0?=
 =?utf-8?B?c3B4SkhmbDhRQWJrZURNeFdhQ2lVSEt2RmxNNkJUZTIybG9oVXoyVEV5SjZW?=
 =?utf-8?B?VHFCaGw1K1Roc1laakcxZUNTaTNybzlxL0N6U3AwOEZBanZlSWJYbDY1Qnhv?=
 =?utf-8?B?dVpvZVVxMmR4SjBhSThUNktNYUJaK3ZwQThHWS83Sm96dkZnUTIwQ0pwN1Q1?=
 =?utf-8?B?Y1BHcm9mYU9IekRiOHhNdHRWMnlTeXpyMWZJTEZxNVVDZFBOTGFaZitVZzgz?=
 =?utf-8?B?Z1BaVTd3aTQ2MHRSc0tlVUV6RWVDakh6clVQdEk4aDB1MFBwV0NQczB6VGhF?=
 =?utf-8?B?bVp2aFp3dlNINkJ3NnBWUm1UU1I2SW16K2tZb0J3WmFoZ3NiZUNuTzVzOTFq?=
 =?utf-8?B?cU5kU3Ywck1ybThJL1AySG15S2xDWGMwRnB4QmpIajh2Vmg0U3dKbi80MkVS?=
 =?utf-8?B?d1JiK3p3UnY0ZTRSYlI4WGd0cFVadU4xTUpna0VtcEswNTZQM1lFY25td3h6?=
 =?utf-8?B?MEdkcW1GVUlOYjVNNENtRGtLRUwxb2xFdzBYZ08vR3NBOGlmVzBWWnlOeWRR?=
 =?utf-8?B?cHlZeUVFQXJIRkNaY3pwejlHWnltL1hkQ2haVHE2bzlETnNOcWlCL2JGNS9V?=
 =?utf-8?B?SGV2Uzk2cVlEby9xaFlITXVQZ056VlpNQ0JQL1FGMjVONmpRMEdGdTFYNjNU?=
 =?utf-8?B?U1ZPZGs5OStwejB1Skw4TU9xbTVWNHh2V2U3SzJGakd5NUNLSzBKTHpkVUpj?=
 =?utf-8?B?WEZiWTFzbnJkeWh3K1pYUjd0dGxpditzWVVYSVluUUJVS2Z4MkZJSkZKdFk4?=
 =?utf-8?B?N1pNbDNBN1g3U0p5MzRYTHNCVWZLK0lVUU80Q21WZXBlOTFQbldrMGkyNlpZ?=
 =?utf-8?B?ckxTR3pGWWZjdkhPdDQxa1haYXkyejczQmEyOEpqUFUrZGVadDlBQXhsRlZi?=
 =?utf-8?B?RCsxYzNSN3ZEY08rOUNDKzdWQUZoS3lJTmpvK0gzUHFXd0tkd1g5b2VFS0Y5?=
 =?utf-8?B?VWQ3UUMyUHZudkxmS2NOUjkwNXA0bnFqVHNRam1xZEloeUMvVDhpNVVMMVBM?=
 =?utf-8?B?b25MOXVIUUlvNFk2UTA2QmlrWDlIdTZVeVZScFU1S2NWcHArUnk5NTgrTEZG?=
 =?utf-8?B?MTRnNVR4VTkrSE8yNDMrTG9EU3B0cWVnRWl2OHZhWUhBK3NRUXpYMFpubklM?=
 =?utf-8?B?U21MbWxMNFNlYUdDWGRyYkNzMnVyQjFHYkRsQ1ZGK3VNaHNTL1Q1cGQ4NnM1?=
 =?utf-8?B?NDVRTEF2a1VZZ3lVRXFvcnZ5RE5YTXZRdGkvTUlPUXdqeDhvbkNWVWw5Mm43?=
 =?utf-8?B?TGVFTFcxekZuaGVVWFFlQno5WlA0NUJFaTVpSFVHU1duYjVXZTNWaU8xYkFM?=
 =?utf-8?B?SFZ5ZzFSNFA4SjQyVVU0Y2gxWTFxSmhOaVBmSmJoNGhtQ1ZDTVIzTm1hNWJt?=
 =?utf-8?Q?XY/F6YstpbhW7aGg=3D?=
X-Exchange-RoutingPolicyChecked: ZwYq9X9LcdEM2mAt7x6XogC6MZpLPZ9zK/JsmXlO1NDjLwDhbRjzHD9Nys6Xi+aEZn9iRmSux6zpL0pMaxY+SorIDP+ZDmIuO6zbnFH3IzDArM6K7jnzR1z4tXzjgeqQ8xVyXYJHHKHkdBjH5DBzuNkGXnoauZoMmjFZyfjY5GkC5GfCZ7I2G1m4Z7yRD02vSOyCW5jxM2ebl8mScANh+Re1T2vzBcOlGxN24xCk8qoZyiohWhT+Fz5ENsnbu1OYYTf+8wmarfP9AooLLgoXloBWPglWyGAnUEHRfKKkTcdWqUUVuGK/njWh5eLRpa0lDsWrM3Io+wqneMrJhEnUEw==
X-MS-Exchange-CrossTenant-Network-Message-Id: dde920b3-5a19-4305-e86e-08de8ef4e7b2
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Mar 2026 07:12:46.1845 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j+Nd1zg+l31wN7jw2HaSx5wTlt4d7gT/c7mFmeDc/6HBqDUAmgE7Repj65fMHhGaSAYjnAhYYBnu0nLubfFvyyOOWVbbtB/bSNaGfnGUgMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5931
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0F08D364E1D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 3/25/2026 4:37 PM, Suraj Kandpal wrote:
> Add writeback registers to its own file.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   .../drm/i915/display/intel_writeback_reg.h    | 136 ++++++++++++++++++
>   1 file changed, 136 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_writeback_reg.h
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> new file mode 100644
> index 000000000000..ffe302ef3dd9
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
> @@ -0,0 +1,136 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_WRITEBACK_REGS_H__
> +#define __INTEL_WRITEBACK_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* WD 0 and 1 */
> +#define TRANSCODER_WD0_OFFSET	0x6e000
> +#define TRANSCODER_WD1_OFFSET	0x6d800
> +
> +/* WD 0 and 1 */
> +#define PIPE_WD0_OFFSET		0x7e008
> +#define PIPE_WD1_OFFSET		0x7d008
> +
> +/* Gen12 WD */
> +#define _MMIO_WD(tc, wd0, wd1)	_MMIO_TRANS((tc) - TRANSCODER_WD_0, wd0, wd1)
> +
> +#define WD_TRANS_ENABLE		REG_BIT(31)
> +#define WD_TRANS_STATE		REG_BIT(30)
> +
> +/* WD transcoder control */
> +#define _WD_TRANS_FUNC_CTL_0	0x6e400
> +#define _WD_TRANS_FUNC_CTL_1	0x6ec00
> +#define WD_TRANS_FUNC_CTL(tc)	_MMIO_WD(tc,\
> +				_WD_TRANS_FUNC_CTL_0,\
> +				_WD_TRANS_FUNC_CTL_1)

s/TRANS_WD_FUNC_CTL/WD_TRANS_FUNC_CTL

> +

No blank line in between register and it's content.

> +#define TRANS_WD_FUNC_ENABLE		REG_BIT(31)
> +#define WD_TRIGGERED_CAP_MODE_ENABLE	REG_BIT(30)
> +#define START_TRIGGER_FRAME		REG_BIT(29)
> +#define STOP_TRIGGER_FRAME		REG_BIT(28)
> +#define WD_INPUT_SELECT_MASK		REG_GENMASK(14, 12)

maintain bit order.

> +#define WD_INPUT_PIPE_A			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 0)
> +#define WD_INPUT_PIPE_B			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 5)
> +#define WD_INPUT_PIPE_C			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 6)
> +#define WD_INPUT_PIPE_D			REG_FIELD_PREP(WD_INPUT_SELECT_MASK, 7)
> +#define WD_COLOR_MODE_MASK		REG_GENMASK(22, 20)
> +#define WD_CONTROL_POINTERS             REG_GENMASK(19, 18)
> +#define WD_DISABLE_POINTERS             REG_FIELD_PREP(WD_CONTROL_POINTERS, 3)
> +#define WD_PIX_FMT_YUYV			REG_FIELD_PREP(WD_COLOR_MODE_MASK, 1)
> +#define WD_PIX_FMT_XYUV8888		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 2)
> +#define WD_PIX_FMT_XBGR8888		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 3)
> +#define WD_PIX_FMT_Y410			REG_FIELD_PREP(WD_COLOR_MODE_MASK, 4)
> +#define WD_PIX_FMT_YUV422		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 5)
> +#define WD_PIX_FMT_XBGR2101010		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 6)
> +#define WD_PIX_FMT_RGB565		REG_FIELD_PREP(WD_COLOR_MODE_MASK, 7)
> +#define WD_FRAME_NUMBER_MASK		REG_GENMASK(3, 0)
> +#define WD_FRAME_NUMBER(n)		REG_FIELD_PREP(WD_FRAME_NUMBER_MASK, n)
> +

Indent the register content macros using two extra spaces between 
#define and the macro name.

> +#define _WD_STRIDE_0			0x6e510
> +#define _WD_STRIDE_1			0x6ed10
> +#define WD_STRIDE(tc)			_MMIO_WD(tc,\
> +					_WD_STRIDE_0,\
> +					_WD_STRIDE_1)
> +#define WD_STRIDE_MASK			REG_GENMASK(15, 6)

Probably not needed.

> +
> +#define _WD_STREAMCAP_CTL0		0x6e590
> +#define _WD_STREAMCAP_CTL1		0x6ed90
> +#define WD_STREAMCAP_CTL(tc)		_MMIO_WD(tc,\
> +					_WD_STREAMCAP_CTL0,\
> +					_WD_STREAMCAP_CTL1)
> +
> +#define WD_STREAM_CAP_MODE_EN		REG_BIT(31)
> +#define WD_SLICING_STRAT_MASK		REG_GENMASK(25, 24)
> +#define WD_SLICING_STRAT_1_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 0)
> +#define WD_SLICING_STRAT_2_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 1)
> +#define WD_SLICING_STRAT_4_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 2)
> +#define WD_SLICING_STRAT_8_1		REG_FIELD_PREP(WD_SLICING_STRAT_MASK, 3)
> +#define WD_STREAM_OVERRUN_STATUS	1

REG_BIT(0)

> +
> +#define _WD_SURF_0			0x6e514
> +#define _WD_SURF_1			0x6ed14
> +#define WD_SURF(tc)			_MMIO_WD(tc,\
> +					_WD_SURF_0,\
> +					_WD_SURF_1)
> +
> +#define _WD_IMR_0			0x6e560
> +#define _WD_IMR_1			0x6ed60
> +#define WD_IMR(tc)			_MMIO_WD(tc,\
> +					_WD_IMR_0,\
> +					_WD_IMR_1)
> +#define WD_FRAME_COMPLETE_INT		REG_BIT(7)
> +#define WD_GTT_FAULT_INT		REG_BIT(6)
> +#define WD_VBLANK_INT			REG_BIT(5)
> +#define WD_OVERRUN_INT			REG_BIT(4)
> +#define WD_CAPTURING_INT		REG_BIT(3)
> +#define WD_WRITE_COMPLETE_INT		REG_BIT(2)
> +
> +#define _WD_IIR_0			0x6e564
> +#define _WD_IIR_1			0x6ed64
> +#define WD_IIR(tc)			_MMIO_WD(tc,\
> +					_WD_IIR_0,\
> +					_WD_IIR_1)
> +
> +#define _WD_FRAME_STATUS_0		0x6e568
> +#define _WD_FRAME_STATUS_1		0x6ed68
> +#define WD_FRAME_STATUS(tc)		_MMIO_WD(tc,\
> +					_WD_FRAME_STATUS_0,\
> +					_WD_FRAME_STATUS_1)
> +
> +#define WD_FRAME_COMPLETE		REG_BIT(31)
> +#define WD_STATE_MASK			REG_GENMASK(26, 24)
> +#define WD_STATE_IDLE			REG_FIELD_PREP(WD_STATE_MASK, 0)
> +#define WD_STATE_CAPSTART		REG_FIELD_PREP(WD_STATE_MASK, 1)
> +#define WD_STATE_FRAME_START		REG_FIELD_PREP(WD_STATE_MASK, 2)
> +#define WD_STATE_CAPACITIVE		REG_FIELD_PREP(WD_STATE_MASK, 3)
> +#define WD_STATE_TG_DONE		REG_FIELD_PREP(WD_STATE_MASK, 4)
> +#define WD_STATE_WDX_DONE		REG_FIELD_PREP(WD_STATE_MASK, 5)
> +#define WD_STATE_QUICK_CAP		REG_FIELD_PREP(WD_STATE_MASK, 6)
> +
> +#define _WD_27_M_0			0x6e524
> +#define _WD_27_M_1			0x6ed24
> +#define WD_27_M(tc)			_MMIO_WD(tc,\
> +					_WD_27_M_0,\
> +					_WD_27_M_1)
> +
> +#define _WD_27_N_0			0x6e528
> +
> +/* Address looks wrong in bspec: */
> +#define _WD_27_N_1			0x6ec28
> +#define WD_27_N(tc)			_MMIO_WD(tc,\
> +					_WD_27_N_0,\
> +					_WD_27_N_1)
> +
> +#define _WD_TAIL_CFG_0			0x6e520
> +#define _WD_TAIL_CFG_1			0x6ed20
> +
> +#define WD_TAIL_CFG(tc)			_MMIO_WD(tc,\
> +					_WD_TAIL_CFG_0,\
> +					_WD_TAIL_CFG_1)
> +
> +#endif /* __INTEL_WRITEBACK_REGS_H__ */

