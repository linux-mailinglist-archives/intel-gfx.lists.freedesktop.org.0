Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bKYgLNiiH2proQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 05:43:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C064C634080
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Jun 2026 05:43:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=jMvySM7t;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5893E113C09;
	Wed,  3 Jun 2026 03:43:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DAEF113C09;
 Wed,  3 Jun 2026 03:43:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780458196; x=1811994196;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Suf+dezO5Rcq2iXw3ZqStu2c5bcjgo/03qjcEJy7aW0=;
 b=jMvySM7tyskC5buxkf68/eP89+/P1EWCgbr7aQT0XyJJq5Dk8tH3CPZf
 E2y1HhhZcmxrPCpz/10u6MYioMfTeeBL+jISJmTYME1TIchwUdsnor2z6
 WO/bakGBNViuNgtBJig7W85RY8hohIbz01ldwnSMazFNd6bkZgaydg25K
 ZreNSzafA5u1LpQzjb5LXmGhELRgzKAqFhn8ckKFzh/mzRr3WJKV+6jsG
 3uPfctRwYFa3bnlgdu5/t+3oVUygEcFnbx78ZGRp7GoWG+QPQjGyCkD43
 6v4HNbGj3rTMcvUr4SpuvraSV34FX9MEMBGdEMoMN/dg+WhfY5CZJETRw g==;
X-CSE-ConnectionGUID: G0Cun3QaQyiJRWWw5ZLPtA==
X-CSE-MsgGUID: RCcVQBQsTsWWRbLku10Bpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="106705315"
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="106705315"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 20:43:15 -0700
X-CSE-ConnectionGUID: tH+Sm9l+SSydI56xOxdWyQ==
X-CSE-MsgGUID: AbpDmlreReONGwYs1QRfpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,184,1774335600"; d="scan'208";a="249029224"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 20:43:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 20:43:15 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 20:43:15 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.8) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 20:43:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=N7I3xREaSYAu3cFIU47NW4bh+AJZgAi/ZC1s/EJVdNojxUbJPnfKL26oKvN1493cBCJFJca/CYqcUYxK1drSyEOO4zdSA9wyJtu5FliwOPw+RAF0yAHIMXl+2IcwZY5adgdi2wHsEsfDadsIHP8v+2aj2pXsPN63LGxqCMUDpsZHae70DLFgUtkPDOyz/4RZ5WydCjg3EflTqbP+174+V25eke4/n7BOZueUW8twXQ1LKm7ghcJ7OosENm7ozlklUJCGwbPWqa+PTCFj6z7RC4iBzqrp5lUACksfw3OMZ6VnpnYK2/ymAq/cwWO6u6eHuy46miwJdx+PremrbsL23w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Suf+dezO5Rcq2iXw3ZqStu2c5bcjgo/03qjcEJy7aW0=;
 b=FRELg+edyrp61BFHw9aevn+jVWtWd6VbCoHFy8zKB9oQACeu6ot2taVA7yCywqLs+rcITDd7Zms2GKw/2qt082zUCuJ6OC9w8OShA6uRPdPQrbs6/JkGzrylpJbJElXSRMDhUx0lZ9pFkjqCOV6HSV4WQdTXdSqFmfHCA3VBjShCUzBh/9O7tOtlP+pldVQvK8LTzBxrUSMx6AY4tND8yqWEV4ynLIzVzEYDT5ID8+ckJCni8a//ubNRNAFNnQ0LGNH7zNdy/XJuhyrqBzxO6wPdAAH5QLscYeN6JujPdRCpOHGAWpxVRUy7Uj6xyysrNGt3U8BiVkzd5BA40+2Yzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFE26A71A1E.namprd11.prod.outlook.com
 (2603:10b6:518:1::d58) by PH0PR11MB5176.namprd11.prod.outlook.com
 (2603:10b6:510:3f::5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.7; Wed, 3 Jun 2026
 03:43:11 +0000
Received: from PH3PPFE26A71A1E.namprd11.prod.outlook.com
 ([fe80::8a7e:ce56:bf6c:4636]) by PH3PPFE26A71A1E.namprd11.prod.outlook.com
 ([fe80::8a7e:ce56:bf6c:4636%8]) with mapi id 15.21.0092.006; Wed, 3 Jun 2026
 03:43:10 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Nikula,
 Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
Thread-Topic: [PATCH v4 07/10] drm/i915: override LT's VS/PE when requested
Thread-Index: AQHc76F9NpshLxEzUE6LNRBomkU1sbYqpQSQgADiXwCAAKtxMA==
Date: Wed, 3 Jun 2026 03:43:10 +0000
Message-ID: <PH3PPFE26A71A1EEAE015E9E3E49BEB35F9E3132@PH3PPFE26A71A1E.namprd11.prod.outlook.com>
References: <20260529192859.4172376-1-michal.grzelak@intel.com>
 <20260529192859.4172376-8-michal.grzelak@intel.com>
 <IA3PR11MB89376FA72BFFB178F27810B2E3122@IA3PR11MB8937.namprd11.prod.outlook.com>
 <598de0a0-07f3-bec4-8b04-9f90bd2e9fdd@intel.com>
In-Reply-To: <598de0a0-07f3-bec4-8b04-9f90bd2e9fdd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFE26A71A1E:EE_|PH0PR11MB5176:EE_
x-ms-office365-filtering-correlation-id: 48eb5e95-2b68-4ae6-85a2-08dec1223bc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|3023799007|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: W6GFDtR6cRYmBj7mSpH9dBIBT5xfBqjrRrJGnAecmk4mgPJIPgp/sgyMJ23a+W4+D8GN/CLjCB9v+9S8A2mVUbmHetnlQWoLA/hpiMCyt7cxLfIpkgh6I3oxH2DuT+Kue/7BCdzfDNtda1Apdr4sD/sSiXP2DMMn+Ky46Mc2tA2Fri/MxGRx0GjzIzIn3qZoE/VqqvuG24xSDaTPEbRx92SA3gmORGEVIyT0gSxGMfQ8OfR2YUOE7S3oQcjQjo2hieUhH0mfb6/g1G+j1PLcdbGDs2M8+tiDSCjydAv9L++gXuuR44YJYUzuqUeKSSfArjJhx3DFkrvZIEvR/qOZwS7IAZqLdYJPMvnD+Ls4dUdu8W7qbTT1Zjjv9GohmlcmOUeiQCXpdCWL5HGnLtfHJGnfA4/XWW7FyObBzE2kG06WM5G2U4ad39Se9fMr5wPmVP8i9qWexkTucykLzkNMkjcTKY6wSzmehMHyeMIPqJ+7EdBrpGCE/DBQKjRcIeiNiBvmCjDv/sYT23ayUGaORP/74LLJJD8IS6+HN6jPHNGzhAQpyZTZdTHInB2XV6gEhdad3ytB9V4qaS+8cgNBAL4mbY8VbQae2vLpGQ5a5wbyPzVXOw9pT94an+A6JdyUKv1BMxTZ5x2rnTkTf6J4YAdMFLvu0xdNnuC4rP6t83q7pvu3WAM5y9fuN4rdRaQUAu7vHZwU66JrmzdDlrlJ6b/RAL3Llf/xePZtlADdaEsZk6lnxWTt+ReDCUjBHDka
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFE26A71A1E.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(3023799007)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YnlHV3VGaDZMWHlEOUtUZ2tzdm5CVHZPVmdsRDBXSlpLOStJbEtXM1BCa3pr?=
 =?utf-8?B?c1Jid0F4Qm5maGg1NU1vMk5SRmZNNytscjI1WSs5QWhKTVRKZGRvT1M5cUxH?=
 =?utf-8?B?cGZyYUtkZmhiRTFvS1p0cjVvRm40dUVOWGg1Z2Vaa05reG0yUWRKNXdiWGhS?=
 =?utf-8?B?NDRQTU42NDdsYlcwbHo2ZFh2OUVTQXdkQUhLWS95N2d5dklBNlo2MmR5UkpT?=
 =?utf-8?B?N2Jjem50ZndRWjZTSDV0WTd2M3Y4Ukw3cEM0K3A2K3I5RldWS21rcFEvNVoy?=
 =?utf-8?B?bm1EVWdtekUvZ2tXS2JBUHluWUp1ZTFUMXpkUU5XeUhQSmkzOXp1UVRPWDBW?=
 =?utf-8?B?c0hTTllXN1dEOUJ5VHk5ZmNDSWtQU0J3Z05hWkloRlhHTVdCRjNoeGpNK0pi?=
 =?utf-8?B?STZTNjZDWUJQSkJRL3U1MlNtSGlTNjc4UW9GUXAzUW82cStWZ1l5YUZEN1lX?=
 =?utf-8?B?SVpjRGcyNFYrcXl0R0k1Q0kyMUlJWVBOV1RaNnVZa1dISkZvTlU3RS9KZGpG?=
 =?utf-8?B?c05GWkd3dW00RHNsUmQzb3BuUEtWZVg4QXo2blp3NkNLWUJONHMyNFRncW4x?=
 =?utf-8?B?Sk5GMG5qSk9DMkxTaGVVSlpyaVV6ZFBjQTFPTkxESnMxTzJ1cDJFNEJndFZw?=
 =?utf-8?B?M21kVU9lU2VVR2tuaWMrZVAra1ZEKzBoaFI4NGJWeDYzOGYyUGdnTEJhc0gz?=
 =?utf-8?B?cU9MTVdpSmNmbjh0Mm04UVRSVkFnNWROMEFiTVFRSGtMNUJEcDd6SXFvWWJk?=
 =?utf-8?B?bDFjaW1DcWYxSitQWWRyN3hNZTlXVTBRMzZ1eTBzcEN2aGViblJkN2NCWU9U?=
 =?utf-8?B?SnBuTytMVyt2YWdVajE0bU1xeTM3YWhUOUdBL1hDZ1NmV2RwbmVFL0xKblJa?=
 =?utf-8?B?ckRTZ1NaNHFlb2NDKzVvb1o3VU1hNFhUWlFNdEh4RnZWV0hNWSt2TTZDQ3Ja?=
 =?utf-8?B?ckdnb0F0dU1nYzhWUVdPcFVNMERlRHlqQjdCbFR2Q0puUnN6a0ZBMDRhVEsv?=
 =?utf-8?B?Z3FUUEZqbDdwWjcrSTBTN08yUjliQlEyQmRuSDBMdEZ5U0FmN0RFclFtS0Jk?=
 =?utf-8?B?elBCaHB3dW15L281MWNPODd3c0tTd3h3UjZwNndiZzdRakxMdW5lTXJPamR0?=
 =?utf-8?B?TFUrT2tlWGhESWd2eVBseWJEQ25sRWRlUUZYYVJxOTdxNk9EYTFxV0REZW5m?=
 =?utf-8?B?QUdMalo4Q0hZZ0FmVHlKbGQ5ZEJCQWhVa2hpa3dhWWxVb1lqTFlMVDFDdjV4?=
 =?utf-8?B?VlRhb29FN0VyQmgrNGxkL2RyQ3FGakFIR3h4Q3ZrVmdMbG9yZ2Rkdmt6UDJO?=
 =?utf-8?B?NmRtM1FTNUhoM3E4T1FmbUNCNmdnUjd6OTBvTnd2TUlQSEJqK2lCbXNTaWpS?=
 =?utf-8?B?NmdaRlBCc2xpRW8rWnBpZzZuWFJ6RFV2aTVKbGw0aXJhZDc5SXJvbFh1VzU4?=
 =?utf-8?B?aWxvKzd6TjZPaE9WK1VsSm0rS2RKUCs5TC9aaHp3S2RuRTJhQ3NEanptL3RE?=
 =?utf-8?B?SnhJZUlzcnZkNlBEczZJQWVwdG9WUk1wcXFTTWNqLzJkUEQ2WTkxYVlXMHpY?=
 =?utf-8?B?cUpNTmRIdExPdW5RUERlT2phUThMSlJpWlB3a0ljMW1Hd1lwb1Q1UWdEQ1Mv?=
 =?utf-8?B?NXh0NS8zRzZrZjhubGdYS2RmN204ajUzblZsSTRWT1k1ZHNXY205cjUyTVZ3?=
 =?utf-8?B?RHl6bHgvMjZWN0FJS2xaSDlHSnFjL0dLU2UrT1VPS3hZVjR5dGJDN2NUaHFq?=
 =?utf-8?B?Vi80eC90Z3dTeWRPNGx3MFhmanpnSmhhNlpvSzlIWjh1N2VaK01rbEFqRDRJ?=
 =?utf-8?B?cHd1c0dpMjd1SUJSUnY0WDc5K1l5bFl2dmV4WTZWVnZWVVlwemtCVXJ5N0dx?=
 =?utf-8?B?MTRvb0ttcnJLemdMTVJnRzBxNHZjdlV4M29UNmNKb2ZSam9QRE1hdXBTZ2Rj?=
 =?utf-8?B?cGZqZFZDNWpEVWt5Mk5yYnNqSnlDQ3c3QU9OWk9UYmNnT0l2RXE3MGxOUnBY?=
 =?utf-8?B?OEp5TjJDQmV0S0liKzFEVFZBMWhZRjhRcy9vTnRRMWZIbFZIS3FPRmVWUURw?=
 =?utf-8?B?aVU3azBvOXBEWVJianN5RnIyREdiWkE3bmdvUkVmcjNrZXlXaEhnRTJtNnJE?=
 =?utf-8?B?azVBWWJGUW42RGxBVHZOMWlmS0RBcHJEbHZpSVppRjFUM1M5VUN1d1dhcTdZ?=
 =?utf-8?B?Yy9GOUdlUFJYMFpZYVVRVTJQU2lKZmhsUWNqNmZ5dkk1TnZvdGtmOFo2bGIw?=
 =?utf-8?B?UzJwZWFwZjl0bDJ6WmxPbWlGaHliZ3VKbnF3bzlhY3hFTE9Hc09NcTd0bUJK?=
 =?utf-8?B?aWllTWtLSWRzQ0pISWI4UTJLejRwRXhtemk3NDhjc0R4R2ZiY3JWdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: DDS40RdA5xs84XEiPoV2DrbV0Um9Q/bx49tmcJhEMCD4egyYaCHQMPoINOD92PIqxvMjdIl6LIQuhSIdUQIVJf0dZ5nLYL3XsBx8Mg/Sh+MAao4a1URjOA12DnTA6edgmaLkFh5y+rxZOp/ySFUDahLv+N5LPdyTt9gkjh/r508SpAfXGSlUEbhwBECuz4eQThI26nUCeBpAWBJyYnmWzNe7i8lpeDaFEtG6i/7oJSb9LfSrWmfHfwZ4brlnpw+cLAih9QwChaqWQZmqWQ55wW2jHJM1vZeUT9U9Vp9wbylG6icnqddvLqVgUet8A8bwPaNbE4S5gCaDnasoIyu5tA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFE26A71A1E.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 48eb5e95-2b68-4ae6-85a2-08dec1223bc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Jun 2026 03:43:10.8233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qHLx2i1zCV7fnHNUwQdMlqt28WLvZXD1PW9RyYF4jpMTpWcUqA2hA9y+kI3nPNIWpo9gHiP1CtFAWf7ctWT9SQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5176
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:from_mime,intel.com:email,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,PH3PPFE26A71A1E.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C064C634080

PiBTdWJqZWN0OiBSRTogW1BBVENIIHY0IDA3LzEwXSBkcm0vaTkxNTogb3ZlcnJpZGUgTFQncyBW
Uy9QRSB3aGVuIHJlcXVlc3RlZA0KPiANCj4gT24gVHVlLCAyIEp1biAyMDI2LCBLYW5kcGFsLCBT
dXJhaiB3cm90ZToNCj4gPj4gU3ViamVjdDogW1BBVENIIHY0IDA3LzEwXSBkcm0vaTkxNTogb3Zl
cnJpZGUgTFQncyBWUy9QRSB3aGVuDQo+ID4+IHJlcXVlc3RlZA0KPiA+Pg0KPiA+PiBBZGQgYWNj
ZXNzb3IgZnVuY3Rpb24gZm9yIExUIHRvIHJlYWQgcmVxdWVzdGVkIHRhYmxlIGZyb20gVkJUICM1
Ny4NCj4gPj4gUGFyc2UgdGhlIHJlcXVlc3RlZCB0YWJsZSBhbmQgdHJhbnNmb3JtIGRhdGEgaW50
byBwb3J0J3MgYnVmZmVyLg0KPiA+Pg0KPiA+PiBMVCdzIFZTL1BFLU8gdGFibGVzIGhhdmUgbGVz
cyBjb2x1bW5zIHRoYW4geGUzcGxwZF9sdF9waHlfYnVmX3RyYW5zDQo+ID4+IGNvbnRhaW5zIGZp
ZWxkcy4gV2FybiBhYm91dCBtaXNzaW5nIGZpZWxkcy4NCj4gPj4NCj4gPj4gVXNlIDZ0aCB0YWJs
ZSBpZiBlbmNvZGVyIHN1cHBvcnRzIERQIDIuMCBvciBoaWdoZXIuIE90aGVyd2lzZSB1c2UgNXRo
DQo+ID4+IHRhYmxlIGZvciBEUC4NCj4gPj4NCj4gPj4gV2FybiBpZiBlbmNvZGVyIGRvZXMgbm90
IHN1cHBvcnQgRFAuIEluIHRoYXQgY2FzZSBmYWxsYmFjayB0byB1c2luZw0KPiA+PiBkZWZhdWx0
IFZTL1BFIHRhYmxlcy4NCj4gPj4NCj4gPj4gVGhlcmUgYXJlIG5vIGNoYW5nZXMgdG8gaW50ZWxf
ZGRpX2RwX2xldmVsKCkgc2luY2Ugc2VsZWN0aW9uIG9mDQo+ID4+IGNvcnJlY3Qgcm93IG9mIGlu
dGVsX2RkaV9idWZfdHJhbnNfZW50cnkgaXMgc2FtZSBhcyB3aGVuIG5vIG92ZXJyaWRlDQo+ID4+
IHJlcXVlc3QgaGFzIGJlZW4gZG9uZS4NCj4gPj4NCj4gPj4gVGFibGVzIDEtNCBhcmUgbm90IHVz
ZWQgYXQgYWxsIGFuZCBhcmUgbW9zdCBsaWtlbHkgdG8gYmUgemVyb2VkLiA1dGgNCj4gPj4gdGFi
bGUgaXMgdXNlZCBmb3IgYW55IG1vZGUgYmVsb3cgRFAgMi4wIChleGNsdXNpdmUpLiA2dGggdGFi
bGUgaXMNCj4gPj4gdXNlZCBmb3IgYW55IG1vZGUgYWJvdmUgRFAgMi4wIChpbmNsdXNpdmUpLg0K
PiA+Pg0KPiA+PiBJbmRpY2VzIGZvciBvdGhlciB0YWJsZXMgaGF2ZSBub3QgeWV0IGJlZW4gb2Jz
ZXJ2ZWQgdG8gYmUgdXNlZCBhcyBvZiBub3cuDQo+ID4+DQo+ID4+IHYzLT52NA0KPiA+PiAtIHN0
aWNrIHRvIHNvbGVseSBjaGFuZ2luZyBWQlQgZGF0YSBpbnRvIGN1cnJlbnQgc3RydWN0dXJlcyAo
SmFuaSkNCj4gPj4gLSBtb3ZlIGl0ZXJhdG9yIGRlY2xhcmF0aW9uIHRvIGRlY2xhcmF0aW9uIGJs
b2NrIChTdXJhaikNCj4gPj4NCj4gPj4gdjItPnYzDQo+ID4+IC0gcmVtb3ZlIHVubmVjZXNzYXJ5
IGJyYWNlcyBmcm9tIGlmIGJsb2NrIChTdXJhaikNCj4gPj4gLSByZXR1cm4gLUVJTlZBTCBpbnN0
ZWFkIG9mIC0xIChTdXJhaikNCj4gPj4NCj4gPj4gU2lnbmVkLW9mZi1ieTogTWljaGHFgiBHcnpl
bGFrIDxtaWNoYWwuZ3J6ZWxha0BpbnRlbC5jb20+DQo+ID4+IC0tLQ0KPiA+PiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMgICAgIHwgMzkgKysrKysrKysrKysrKysr
KysrKw0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmggICAg
IHwgIDQgKysNCj4gPj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZfdHJhbnMu
YyAgICB8IDI0ICsrKysrKysrKysrLQ0KPiA+PiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpX2J1Zl90cmFucy5oICAgIHwgMTAgKysrKysNCj4gPj4gIDQgZmlsZXMgY2hhbmdlZCwgNzYg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+Pg0KPiA+PiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9iaW9zLmMNCj4gPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Jpb3MuYw0KPiA+PiBpbmRleCBlNDdhYzE2OTI3MWYu
LjRmMWE3ZDUxMDFjNiAxMDA2NDQNCj4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmMNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9iaW9zLmMNCj4gPj4gQEAgLTM4NjAsNiArMzg2MCw0NSBAQCBib29sIGludGVsX2Jp
b3NfZW5jb2Rlcl9zdXBwb3J0c190YnQoY29uc3QNCj4gPj4gc3RydWN0IGludGVsX2Jpb3NfZW5j
b2Rlcl9kYXRhICpkZXZkYQ0KPiA+PiAgCXJldHVybiBkZXZkYXRhLT5kaXNwbGF5LT52YnQudmVy
c2lvbiA+PSAyMDkgJiYgZGV2ZGF0YS0+Y2hpbGQudGJ0Ow0KPiA+PiB9DQo+ID4+DQo+ID4+ICtj
b25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyAqDQo+ID4+ICtpbnRlbF9iaW9zX2VuY29k
ZXJfZ2V0X2x0X3ZzcGVvKGNvbnN0IHN0cnVjdCBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YQ0KPiA+
PiAqZGV2ZGF0YSwNCj4gPj4gKwkJCQlpbnQgaWR4KQ0KPiA+PiArew0KPiA+PiArCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gZGV2ZGF0YS0+ZGlzcGxheTsNCj4gPj4gKwlzdHJ1Y3Qg
aW50ZWxfZGRpX2J1Zl90cmFucyAqdnNwZW8gPSAodm9pZCAqKSBkZXZkYXRhLT52c3BlbzsNCj4g
Pg0KPiA+IFVubmVjZXNzYXJ5IHNwYWNlIGFmdGVyIHR5cGUgY2FzdGluZw0KPiA+DQo+ID4+ICsJ
dW5pb24gaW50ZWxfZGRpX2J1Zl90cmFuc19lbnRyeSAqZW50cmllcyA9ICh2b2lkICopIGRldmRh
dGEtPnZzcGVvLQ0KPiA+Pj4gZW50cmllczsNCj4gPg0KPiA+IERpdHRvDQo+ID4NCj4gPj4gKwlj
b25zdCB1MzIgKnRhYmxlcyA9IGRpc3BsYXktPnZidC52c3Blby50YWJsZXM7DQo+ID4+ICsJaW50
IG51bV9jb2x1bW5zID0gZGlzcGxheS0+dmJ0LnZzcGVvLm51bV9jb2x1bW5zOw0KPiA+PiArCWlu
dCBudW1fcm93cyA9IGRpc3BsYXktPnZidC52c3Blby5udW1fcm93czsNCj4gPj4gKwlzaXplX3Qg
b2Zmc2V0ID0gMDsNCj4gPj4gKwlpbnQgbGV2ZWw7DQo+ID4+ICsNCj4gPj4gKwlJTlRFTF9ESVNQ
TEFZX1NUQVRFX1dBUk4oZGlzcGxheSwgaWR4IDwgX0xUX3VudXNlZDAgfHwgaWR4ID4NCj4gPj4g
TFRfRFAyWCwNCj4gPj4gKwkJCQkgIkxUIHJlcXVlc3RlZCBpbnZhbGlkIFZTL1BFLU8gdGFibGU6
ICVkXG4iLA0KPiA+PiBpZHgpOw0KPiA+DQo+ID4gTm8gbmVlZCBmb3IgYSBkaXNwbGF5IHN0YXRl
IHdhcm4gaGVyZSB0aGUgb25seSB2YWx1ZSB5b3UgY2FuIHBvc3NpYmx5DQo+ID4gZW5kIHVwIHdp
dGggaGVyZSBpcyAtRUlOVkFMICwgTFRfRFBfMTQvMnggU28ganVzdCBkbyBhIHJldHVybiBubyBu
ZWVkDQo+ID4gdG8gbG9nIGl0IGhlcmUuIExhdGVyIHRoZSBmdW5jdGlvbiBjYWxsaW5nIHRoaXMg
Y2FuIGZhbGxiYWNrIHRvIGl0cyB1c3VhbCBwYXRod2F5Lg0KPiAodGhhdCB3b3VsZCBtZWFuIElu
IHRoZSBwcmV2aW91cyBwYXRjaCB5b3Ugd2lsbCBoYXZlIHRvIGNoZWNrIHdoYXQNCj4gZ2V0X3Bo
eV92c3BlbyByZXR1cm5zIGFuZCBqdXN0IHVzZSBkZWZhdWx0IHBhdGggaWYgaXQgcmV0dXJucyBm
YWlsdXJlKSBBbHNvIEkgdGhpbmsNCj4geW91IGRvIG5vdCByZXF1aXJlIF9MVF91bnVzZWQgYXQg
YWxsLg0KPiA+DQo+ID4NCj4gPj4gKw0KPiA+PiArCWRybV9XQVJOX09OQ0UoZGlzcGxheS0+ZHJt
LCAxLA0KPiA+PiArCQkgICAgICAic2V0dGluZyB0eHN3aW5nICYgX2xldmVsIHRvIDAgb24gTFQn
cyBWUy9QRS1PIHJlcXVlc3RcbiIpOw0KPiA+DQo+ID4gV0FSTiBub3QgcmVxdWlyZWQNCj4gPiBB
bHNvIFdoeSA/IEFkZCBic3BlYyBsaW5rLg0KPiANCj4gT2YgYWxsIFdBUk5zIGZyb20gdGhlIHNl
cmllcyB0aGlzIG9uZSBpcyBhY3R1YWxseSBqdXN0aWZpZWQuIExUJ3MgVlMvUEUtTyB0YWJsZXMN
Cj4gaGF2ZSBsZXNzIGNvbHVtbnMgdGhhbiB4ZTNwbHBkX2x0X3BoeV9idWZfdHJhbnMgY29udGFp
bnMgZmllbGRzLiBUaHVzIEkgZG9uJ3QNCj4gc2VlIG11Y2ggb3RoZXIgc29sdXRpb24gdGhlbiBz
ZXQgc29tZSBzYWZlLWlzaCB2YWx1ZSBhbmQgcHJvY2VlZCwgYXBhcnQgZnJvbQ0KPiByb2xsaW5n
IGJhY2sgZnJvbSB0aGUgT3ZlcnJpZGUuDQoNCklmIHRoYXQgaXMgcmVhbGx5IHRoZSBjYXNlIHdl
IHNob3VsZG4ndCBiZSBlbmFibGluZyBpdCBvbiBMVCBQSFkgdW50aWwgd2Uga25vdyB0aGUgY29y
cmVjdCB3YXkgdG8gZmlsbCBpbiB0eHN3aW5nIGFuZCBsZXZlbCBpbmZvLg0KDQpIZXJlIGlzIHRo
ZSB0aGluZywgd2l0aCB0aGlzIGV2ZXJ5IHRpbWUgTFQgUEhZIGlzIHVzZWQgZm9yIFBFIE92ZXJy
aWRlIGl0IHdpbGwgcG9sbHV0ZSB0aGUgZG1lc2cgbG9ncyB3aXRoIGEgV0FSTg0KV2hpY2ggd2Ug
b3Vyc2VsdmVzIGhhdmUgY3JlYXRlZCAod2Ugd2FudCB0byB1c3VhbGx5IFdBUk4gb25seSB3aGVu
IHNvbWV0aGluZyB0aGF0IHdlIGFyZSBub3QgZXhwZWN0aW5nIGhhcyBoYXBwZW5lZCkuDQpUaGlz
IHNlZW1zIHRvIGJlIHNvbWV0aGluZyB3ZSBleHBlY3QgYW5kIHdlIGVuZCB1cCBjYWxsaW5nIGEg
V0FSTiBmb3IgaXQuDQoNClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsDQoJDQo+IEkgZG9uJ3QgdGhp
bmsgdGhlcmUgaXMgYW55IEJzcGVjIGZvciBpdCwgc2luY2UgdGhlDQo+IG90aGVyIGRyaXZlciBo
YXMgc2FtZSBwcm9ibGVtIGFzIHdlbGwuDQo+IA0KPiBCUiwNCj4gTWljaGHFgg0KPiANCj4gPg0K
PiA+PiArDQo+ID4+ICsJb2Zmc2V0ICs9IGlkeCAqIG51bV9yb3dzICogbnVtX2NvbHVtbnM7DQo+
ID4+ICsNCj4gPj4gKwlmb3IgKGxldmVsID0gMDsgbGV2ZWwgPCBudW1fcm93czsgbGV2ZWwrKykg
ew0KPiA+PiArCQl1MzIgbWFpbl9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0XTsNCj4gPj4gKwkJdTMy
IHByZV9jdXJzb3IgPSB0YWJsZXNbb2Zmc2V0KzFdOw0KPiA+DQo+ID4gQWRkIGJsYW5rIHNwYWNl
IGFyb3VuZCBvcGVyYXRvci4NCj4gPg0KPiA+PiArCQl1MzIgcG9zdF9jdXJzb3IgPSB0YWJsZXNb
b2Zmc2V0KzJdOw0KPiA+DQo+ID4gU2FtZSBoZXJlLg0KPiA+DQo+ID4+ICsNCj4gPj4gKwkJZW50
cmllc1tsZXZlbF0ubHQudHhzd2luZyA9IDA7DQo+ID4+ICsJCWVudHJpZXNbbGV2ZWxdLmx0LnR4
c3dpbmdfbGV2ZWwgPSAwOw0KPiA+PiArCQllbnRyaWVzW2xldmVsXS5sdC5tYWluX2N1cnNvciA9
IG1haW5fY3Vyc29yOw0KPiA+PiArCQllbnRyaWVzW2xldmVsXS5sdC5wcmVfY3Vyc29yID0gcHJl
X2N1cnNvcjsNCj4gPj4gKwkJZW50cmllc1tsZXZlbF0ubHQucG9zdF9jdXJzb3IgPSBwb3N0X2N1
cnNvcjsNCj4gPj4gKw0KPiA+PiArCQlvZmZzZXQgKz0gbnVtX2NvbHVtbnM7DQo+ID4+ICsJfQ0K
PiA+PiArDQo+ID4+ICsJdnNwZW8tPm51bV9lbnRyaWVzID0gbnVtX3Jvd3M7DQo+ID4+ICsJcmV0
dXJuIHZzcGVvOw0KPiA+PiArfQ0KPiA+PiArDQo+ID4+ICBib29sIGludGVsX2Jpb3NfZW5jb2Rl
cl9pc19kZWRpY2F0ZWRfZXh0ZXJuYWwoY29uc3Qgc3RydWN0DQo+ID4+IGludGVsX2Jpb3NfZW5j
b2Rlcl9kYXRhICpkZXZkYXRhKSAgew0KPiA+PiAgCXJldHVybiBkZXZkYXRhLT5kaXNwbGF5LT52
YnQudmVyc2lvbiA+PSAyNjQgJiYgZGlmZiAtLWdpdA0KPiA+PiBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5oDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9iaW9zLmgNCj4gPj4gaW5kZXggN2E1MGEyNzJjZDI3Li43Mzc4NjgzMmI0MDIg
MTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlv
cy5oDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYmlvcy5o
DQo+ID4+IEBAIC03Myw2ICs3MywxMCBAQCBib29sIGludGVsX2Jpb3NfZ2V0X2RzY19wYXJhbXMo
c3RydWN0DQo+ID4+IGludGVsX2VuY29kZXIgKmVuY29kZXIsICBjb25zdCBzdHJ1Y3QgaW50ZWxf
Ymlvc19lbmNvZGVyX2RhdGEgKg0KPiA+PiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YV9sb29rdXAo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksIGVudW0NCj4gPj4gcG9ydCBwb3J0KTsNCj4g
Pj4NCj4gPj4gK2NvbnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICoNCj4gPj4gK2ludGVs
X2Jpb3NfZW5jb2Rlcl9nZXRfbHRfdnNwZW8oY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rl
cl9kYXRhDQo+ID4+ICpkZXZkYXRhLA0KPiA+PiArCQkJCWludCB0YWJsZSk7DQo+ID4+ICsNCj4g
Pj4gIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3JlcXVlc3RzX3ZzcGVvKGNvbnN0IHN0cnVjdA0K
PiA+PiBpbnRlbF9iaW9zX2VuY29kZXJfZGF0YSAqZGV2ZGF0YSk7ICBib29sDQo+ID4+IGludGVs
X2Jpb3NfZW5jb2Rlcl9zdXBwb3J0c19kdmkoY29uc3Qgc3RydWN0IGludGVsX2Jpb3NfZW5jb2Rl
cl9kYXRhDQo+ID4+ICpkZXZkYXRhKTsgIGJvb2wgaW50ZWxfYmlvc19lbmNvZGVyX3N1cHBvcnRz
X2hkbWkoY29uc3Qgc3RydWN0DQo+ID4+IGludGVsX2Jpb3NfZW5jb2Rlcl9kYXRhICpkZXZkYXRh
KTsgZGlmZiAtLWdpdA0KPiA+PiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGRpX2J1Zl90cmFucy5jDQo+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kZGlfYnVmX3RyYW5zLmMNCj4gPj4gaW5kZXggZmJkNWVmYzVjYTZjLi42ODI1OGZiZmE0M2Ug
MTAwNjQ0DQo+ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRp
X2J1Zl90cmFucy5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpX2J1Zl90cmFucy5jDQo+ID4+IEBAIC0zLDYgKzMsOCBAQA0KPiA+PiAgICogQ29weXJp
Z2h0IMKpIDIwMjAgSW50ZWwgQ29ycG9yYXRpb24NCj4gPj4gICAqLw0KPiA+Pg0KPiA+PiArI2lu
Y2x1ZGUgPGRybS9kcm1fcHJpbnQuaD4NCj4gPj4gKw0KPiA+PiAgI2luY2x1ZGUgImludGVsX2N4
MF9waHkuaCINCj4gPj4gICNpbmNsdWRlICJpbnRlbF9kZGkuaCINCj4gPj4gICNpbmNsdWRlICJp
bnRlbF9kZGlfYnVmX3RyYW5zLmgiDQo+ID4+IEBAIC0xNzg0LDYgKzE3ODYsMjAgQEAgeGUzcGxw
ZF9nZXRfbHRfYnVmX3RyYW5zKHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4+ICplbmNvZGVyLA0K
PiA+PiAgCQlyZXR1cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmeGUzcGxwZF9sdF90cmFuc19kcDE0
LA0KPiA+PiBuX2VudHJpZXMpOyAgfQ0KPiA+Pg0KPiA+PiArc3RhdGljIGludA0KPiA+PiAreGUz
cGxwZF9nZXRfbHRfdnNwZW9faW5kZXgoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+
ID4+ICsJCQkgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkgew0K
PiA+PiArCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpKSB7DQo+ID4+
ICsJCWlmIChpbnRlbF9kcF9pc191aGJyKGNydGNfc3RhdGUpKQ0KPiA+PiArCQkJcmV0dXJuIExU
X0RQMlg7DQo+ID4+ICsJCWVsc2UNCj4gPj4gKwkJCXJldHVybiBMVF9EUDE0Ow0KPiA+PiArCX0N
Cj4gPj4gKw0KPiA+PiArCXJldHVybiAtRUlOVkFMOw0KPiA+PiArfQ0KPiA+PiArDQo+ID4+ICBz
dGF0aWMgaW50DQo+ID4+ICBfZ2V0X3BoeV92c3Blb19pbmRleChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPj4gIAkJICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkgQEAgLTE4MDAsNg0KPiA+PiArMTgxNiw4IEBAIHZvaWQgaW50ZWxfZGRpX2J1
Zl90cmFuc19pbml0KHN0cnVjdCBpbnRlbF9lbmNvZGVyDQo+ID4+ICsqZW5jb2RlcikNCj4gPj4N
Cj4gPj4gIAlpZiAoSEFTX0xUX1BIWShkaXNwbGF5KSkgew0KPiA+PiAgCQllbmNvZGVyLT5nZXRf
YnVmX3RyYW5zID0geGUzcGxwZF9nZXRfbHRfYnVmX3RyYW5zOw0KPiA+PiArCQllbmNvZGVyLT5n
ZXRfcGh5X3ZzcGVvX2luZGV4ID0NCj4gPj4geGUzcGxwZF9nZXRfbHRfdnNwZW9faW5kZXg7DQo+
ID4+ICsJCWVuY29kZXItPmdldF9waHlfdnNwZW8gPSBpbnRlbF9iaW9zX2VuY29kZXJfZ2V0X2x0
X3ZzcGVvOw0KPiA+PiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpIHsN
Cj4gPj4gIAkJaWYgKGludGVsX2VuY29kZXJfaXNfYzEwcGh5KGVuY29kZXIpKQ0KPiA+PiAgCQkJ
ZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyA9IG10bF9nZXRfYzEwX2J1Zl90cmFuczsNCj4gQEAgLTE4
NzgsOQ0KPiA+PiArMTg5NiwxMyBAQCBjb25zdCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucw0K
PiA+PiAqaW50ZWxfZGRpX2J1Zl90cmFuc19nZXQoc3RydWN0IGludGVsX2VuY29kZXIgKg0KPiA+
Pg0KPiA+PiAgCXRhYmxlID0gZW5jb2Rlci0+Z2V0X3BoeV92c3Blb19pbmRleChlbmNvZGVyLCBj
cnRjX3N0YXRlKTsNCj4gPj4gIAlpZiAodGFibGUgPCAwKSB7DQo+ID4+IC0JCWRybV9XQVJOX09O
Q0UoZGlzcGxheS0+ZHJtLCAxLA0KPiA+PiArCQlkcm1fV0FSTl9PTkNFKGRpc3BsYXktPmRybSwg
dGFibGUgPT0gRU9QTk9UU1VQUCwNCj4gPj4gIAkJCSAgICAgICJwbGF0Zm9ybSBkb2VzIG5vdCBz
dXBwb3J0IFZTL1BFLU8sIHNldHRpbmcNCj4gZGVmYXVsdFxuIik7DQo+ID4+DQo+ID4+ICsJCWRy
bV9XQVJOX09OQ0UoZGlzcGxheS0+ZHJtLCB0YWJsZSAhPSBFT1BOT1RTVVBQLA0KPiA+PiArCQkJ
ICAgICAgIm5vbi1EUCAoJWQpIGVuY29kZXIgYXNrcyBmb3IgVlMvUEUtTywgc2V0dGluZw0KPiA+
PiBkZWZhdWx0XG4iLA0KPiA+PiArCQkJICAgICAgY3J0Y19zdGF0ZS0+b3V0cHV0X3R5cGVzKTsN
Cj4gPj4gKw0KPiA+PiAgCQlyZXR1cm4gZW5jb2Rlci0+Z2V0X2J1Zl90cmFucyhlbmNvZGVyLCBj
cnRjX3N0YXRlLCBuX2VudHJpZXMpOw0KPiA+PiAgCX0NCj4gPj4NCj4gPj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+ID4+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmgNCj4g
Pj4gaW5kZXggOTY5ODY5N2YzOTE3Li41NjA4OTJiNGVmOGMgMTAwNjQ0DQo+ID4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+ID4+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5oDQo+
ID4+IEBAIC03NCw2ICs3NCwxNiBAQCBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFucyB7DQo+ID4+
ICAJdTggaGRtaV9kZWZhdWx0X2VudHJ5Ow0KPiA+PiAgfTsNCj4gPj4NCj4gPj4gK2VudW0gaW50
ZWxfbHRfdnNwZW8gew0KPiA+PiArCV9MVF91bnVzZWQwID0gMCwNCj4gPj4gKwlfTFRfdW51c2Vk
MSwNCj4gPj4gKwlfTFRfdW51c2VkMiwNCj4gPj4gKwlfTFRfdW51c2VkMywNCj4gPj4gKw0KPiA+
PiArCUxUX0RQMTQgPSA0LA0KPiA+PiArCUxUX0RQMlgNCj4gPj4gK307DQo+ID4NCj4gPiBKdXN0
DQo+ID4gZW51bSBpbnRlbF9sdF92c3Blb19pbmRleCB7DQo+ID4gCUxUX0RQMTQgPSA0LA0KPiA+
IAlMVF9EUDJYDQo+ID4gfTsNCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gU3VyYWogS2FuZHBhbA0K
PiA+DQo+ID4+ICsNCj4gPj4gIGJvb2wgaXNfaG9ibF9idWZfdHJhbnMoY29uc3Qgc3RydWN0IGlu
dGVsX2RkaV9idWZfdHJhbnMgKnRhYmxlKTsNCj4gPj4NCj4gPj4gIHZvaWQgaW50ZWxfZGRpX2J1
Zl90cmFuc19pbml0KHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKTsNCj4gPj4gLS0NCj4g
Pj4gMi40NS4yDQo+ID4NCj4gPg0K
