Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Ew/pFEadTmreQgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:56:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E14729BED
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Jul 2026 20:56:05 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=n3rbPDRD;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2299A10E652;
	Wed,  8 Jul 2026 18:56:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE36010E645;
 Wed,  8 Jul 2026 18:56:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783536963; x=1815072963;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cy1t5Ek/Mb4Gpdf9xVxs4c9z0gyR1MK0DLgp1CahdwU=;
 b=n3rbPDRDj2srbDjJnN8K0GM31d/TmKiybIof/wPIh85gfTXti1YM+4BR
 WA+ml2Rgp/QaUP9T0eHqgfpjkm3pvBqcf5b5KM8tk0iOF9XcKJBUxYABp
 IVAJO+1FMNi9hLbpyqb5EGFQ0YyVAVElYoDPYNggXsma3My2+Fuc848+Y
 SmoFJNgs64JdaG5x6z6jooDE2Lg8BiCBAza37LdC+N5YWbs3wfZXgkyjK
 xRMcVzYeezjGPdhv8yr75T4lrkJ4xBS5LKP3xrX6fdmdYgbK6mdZGFAU+
 VRodt63f0qiLIEi6jKJAfHl2GStU7My47FvMxjEnk7RkKSPmGk2jqqd22 Q==;
X-CSE-ConnectionGUID: zWjqnvpkRZKKNFX1tr27Zg==
X-CSE-MsgGUID: G67a9RI6QMCYG6UfMKAn/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84328135"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="84328135"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:56:02 -0700
X-CSE-ConnectionGUID: ZbpGvPN0Souj6DrV4KJzdg==
X-CSE-MsgGUID: 1F8CY3oBTWqUtrSbxR3Cqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="257962181"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2026 11:56:01 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:56:01 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 8 Jul 2026 11:56:01 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.26) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 8 Jul 2026 11:56:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VJZ/PqA36MFKMs41XBRekZBoz6iPqlqWCU2pLiYXR8ZfPFYL5t6aznoPCwc+yELedYU3AUXBD+wUSPlOyiTUifhNt5cMgAA/wPN9m1uS1wCSuLnBP53vAJUxdwScr4VOGTAoBIO2LhL9ZKRoZ6o6uOuDa2PkCw1JVw8oVpyjmU95xmlkLP1iIGy8rk/xgxPMp7ttn+asiXnugqvInvfXb8hi2ABlETfH8rZLztwI+J6gpyG5htKOwnmrEapL4BYoyYUzuMylOlUaDLSrTva31hEcVkcCoqZ43UjWUvnfnUUsd+q3T9vKFzsLiU3lHHeEvym+q33nqx/qpSrBC/kGXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4tKQhcGyki/a3qcSmHi1PqkK9MWqGTIFYIePGVUjsI=;
 b=DaMeuWbBG3y2JAeLQibT5nIA+m8nv1g6Km2RFyNpRtayAEPz02dpKaxvVWOx62hnqN8A5KUACoYeMRWd+hbjfn5qPYBQq3sx0kRg48U4IKd9fg7i6gbywBMsmMkyN1Nh/8pK95iqciE7x/LyX3pBzftq4wNDF22OvbmTJDXhBSecQGyh1DeTGvmrxeaQX6lPOFlb6coK5fFDV05RKh3/YZLBob42Vci1UuyjRt1MJ07n82IfzE2yi0kClYrpkpXXX98pmpMWRHSbBm0nez+dZwDcmDrewt3RDzkMCkT3oRifzWJM5aZiXrFICCHKioX0sIutAn452DqwfZJeAxh0OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DM4PR11MB6479.namprd11.prod.outlook.com (2603:10b6:8:8c::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.181.8; Wed, 8 Jul 2026 18:55:57 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0181.008; Wed, 8 Jul 2026
 18:55:57 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Subject: RE: [v3 07/14] drm/i915/color: Add YCbCr limited-to-full range color
 block support
Thread-Topic: [v3 07/14] drm/i915/color: Add YCbCr limited-to-full range color
 block support
Thread-Index: AQHc/j0zVJF/cecon0Ghwcto5LO7LbZkGkNw
Date: Wed, 8 Jul 2026 18:55:56 +0000
Message-ID: <DM4PR11MB63600FE8EC331A9D224EE7E8F4FF2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260617090819.1735153-1-chaitanya.kumar.borah@intel.com>
 <20260617090819.1735153-8-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260617090819.1735153-8-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DM4PR11MB6479:EE_
x-ms-office365-filtering-correlation-id: c35c8ea7-fd98-4a61-666c-08dedd228b76
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|38070700021|18002099003|22082099003|11063799006|4143699003|56012099006;
x-microsoft-antispam-message-info: jiejgKi03doHT6fOSAlNl7bSnqBASfAZ2YZa4CF2u/Whi6QFzPiluxJyP/QB2JYJ6KentJRyOnQLInZu4JgcSO+xM8mO5TmWePHWh2T2C6mgGJBK/F2e1z8Z1ZK4bT0hKAt2isw0NExtdcSR+0jXbk1KLSt3XXKXl+ZWhdYL5HDJ/0ZrwVTXgqwcZ6W3K+lXken21gXf56ja6H4y5cfXzEEJXiUTrjEoGZzZCrgXn0QVS8DPi/xsS2gboOoYFIoXkxdBh7r3yvCoSMfZrvk/j1acmIwJvC+Xtu14/id4/885TA5HyhDDY3nHRa9FOf7MzOpXXSN6V5TnvhFY2r0Okq5h61f0PD6Sot1bZJ70Ds/SkUEYUqupOaZo2n83e3jSaf26VgMrHOAzKQheKh4v720rQMLUKEe1deMQd735dp0iuI94o+rLJOXYG10yKshXhAFWyib3xFH+eWzxMlQxft8kHPIf/ZRV1SQ8ZglKp/rX0Jdv5UZ+HserfZdRF8vlIV/cmBf/+XwOHdqucrTI082BGB8pb5x+gyi2+iM7dVrEOhqaKmqyzGICiLBVP4KLosI5tf4nItX8vCh8RbS73wiTRv17lnI9xNFG/dTpvZ92vMHCeKrppiEEhCEbpIATjX4Dzv0N+r9oHzFBey+lEckfVhKC2tQh+DZiLvZBWGhqYkVa9zyuyRKOTn7fJmOf8J1B/255zrn8e3nr4S6TFo01UkksdGmXA+bi4OKpvmE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(38070700021)(18002099003)(22082099003)(11063799006)(4143699003)(56012099006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?qSxJzcIq/NUcmG0lGPbNOSJpADGG/LIAWhXNcNjg/YmUWynaRSBPjy22AlLZ?=
 =?us-ascii?Q?h1l1nYKK2zu57zgZIY4ZK8qJGlvGPfAbq+2VXKmnNt0A/3pjl8chrhFqi/Xd?=
 =?us-ascii?Q?yVHyIuL5nGtwd7XVAtWb6FcEcvG5jhkNi0KIfJQkYZVbOZ2I1RzgA8DJcrPt?=
 =?us-ascii?Q?RF3fnPEE2/MeHF4fqphAja2d5uh61xjLEWQmV9G/xgB7rQDF5eYX5rc9RRzO?=
 =?us-ascii?Q?c1Idc6/HC2b/GQIyjb+aGFpGSRTZsvL8jfipeUGcvPYD7Kzt3bmoJ+Yw1jJS?=
 =?us-ascii?Q?VQvD/e5QgrQ7NUpkAxViZQYpQal1fNZu3uS5wyEWFawvmgDJXkI7fhJbxhmc?=
 =?us-ascii?Q?seuttfBIbLcjRxG1OwnQFML2RG+xqkEx4Ae/XuuxHnWgMkSJjtSms4wIPV8H?=
 =?us-ascii?Q?SW+QQ6URsJWB8ticgoA1VhwEk9/XzGd75Kr4jJAOjkZh1540c6Yn1opgqXbA?=
 =?us-ascii?Q?OZJtS/sxJj/rRZCMeWB1uVKLN44hIpuyxfyT4PEk2EtiQtUOUra6b8BTNvAw?=
 =?us-ascii?Q?8J0kYsKlIwNyFEMKZddNpkoya4tgatxeIAGYiifa7b7dmwGWZzWJXqYYYOkv?=
 =?us-ascii?Q?VsyJG+Nea3tlq73Gr9M4MXVRoOX6+QgfTZlGv/Gwh4evH2yF5evQJtN/lVV2?=
 =?us-ascii?Q?KyuAzcuHiEob8BaamJE92VHpaEI229fbzvYU197usFGbDGg3vdRBKa3iidEG?=
 =?us-ascii?Q?y072etbylK2/Ku0+/1PHC9IEt93JJTWgrW85OXWfcTqfu2w11Mp1Cs18Ti2o?=
 =?us-ascii?Q?TC9ZRshdrkNtriDBasPtuntqq88hR+gRT5TsXGj4AXlfBmP0O0jeFwWSm9Aa?=
 =?us-ascii?Q?+T+OpD2nhVcljIyGST08ZU/vUfznCJG32+sEcgNlgwDj3VchIKYdvD2Capqy?=
 =?us-ascii?Q?mNOdyuL2yh8TszvR6bsjKblOnTP25PJlK1Gxg1X6qPzNNEJclNGxLqfza0IH?=
 =?us-ascii?Q?SAU2WbHDy9Lvo9uOH8kuu8BwSbReRrIEU/RjicAfn5gNuTkLAxo8gFRRn5LL?=
 =?us-ascii?Q?Cce5YZCS+JLsl5z+hHqXZo0VyFUEs5m0zfPESRhrosP96GPb84bnMnlUOXYj?=
 =?us-ascii?Q?ByUK+Mwu3GBg3zvfq3XHbArkQbTMWpl15M/pJjP7oG4ekVK5S6oU34HN3DiW?=
 =?us-ascii?Q?pJ5FKl6wolPu34bwEEVRwKAnFyLfNtQlRsLjDVOYd73G6nZ1zkFeMzdZnDJo?=
 =?us-ascii?Q?Tr/EfQtVCuVuJBK5brNWTIoaPwFMtSleGQw7jb2lBcRdTW7FvWA2wuHwwsdG?=
 =?us-ascii?Q?l0mRG7pJzVh/6p/R3eNkWzpgq0qCc7RVPp7xDa44z2wWh2v0T27iAkIqQYyD?=
 =?us-ascii?Q?oUJAeYeLdX+QGOsMN9rc1YEAUgzEH77Pq6tTIKIxn0qj9hRSRhouvYyhAKPU?=
 =?us-ascii?Q?zIgjK4CIhHluaK176MWufXzyN1RbC2U/uSvTtO1mEzEBibNjBP49AvtWo+LB?=
 =?us-ascii?Q?nOca39q2Y2Fna/Hs1XaNWKXvpTqCbq3OXcSIBSSOYW7aavZHmVxTyjIXVOD8?=
 =?us-ascii?Q?dFahdgWF2PE2UYt91b89kuhx9kTTnMXvWICbiK+VOf7LGm6BYD2W4hp0PwzF?=
 =?us-ascii?Q?NPqTXobSJHBMNat3KFWBti8CRfhDtM4drwVehEFMfvCv9BTV+JiubUi9eQqM?=
 =?us-ascii?Q?e/SycqS4U8eJI4H/OqxuyHquGDh3oVyHcgeyo8UG8V5dhMc11jkGwrPHeAvf?=
 =?us-ascii?Q?9S1peNDEmSHHYNRRAec45eJjdpp0yVyPcVOhD2VO2h1L5t9o?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: eE1xj6EfIP+bcGGpQfJeYzAc5w4sWwnoYwN+6WTHaVSVqmlhpgSffKcFxhh7dYOUm3pOJfw8SZGx8gj3x29DrreT9LCO/+ErthQkPAKjfMFOv/17nKtpTSQyd+GFJ/jG3PsaySqlJLbRVq9I1FoIVkwqytREXEsvdZT53OlOIuzmI3UmLZuXd0GV0KvmCIw6JuNSxUXk4smg+ishMHF8t3b62Ky/SFjnjVBa7afFhYbwD3eH5TUU4/4IMnT91wcM5wEMnuj0nN9qJ/UMsa2+Bsb1jFB8qnG8rAUUCzaBMth4fZQ1Lp4159aHMhwICZoyNy27Xyc0DTtLCpT3hZfLaQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c35c8ea7-fd98-4a61-666c-08dedd228b76
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jul 2026 18:55:57.0557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LMyow80I9lwW96oTn8//VZXFYm6AIPTn0yyTg2ZLGE6WHAbvi5aDfbjmX5IZXstB2kuLq7CBKodNeNBannT9iw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6479
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
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A5E14729BED



> -----Original Message-----
> From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Chai=
tanya
> Kumar Borah
> Sent: Wednesday, June 17, 2026 2:38 PM
> To: dri-devel@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; int=
el-
> xe@lists.freedesktop.org
> Cc: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Subject: [v3 07/14] drm/i915/color: Add YCbCr limited-to-full range color=
 block
> support
>=20
> Add support for color block which performs YCbCr limited-to-full range ex=
pansion
> in the plane color pipeline. The color block is represented using
> DRM_COLOROP_FIXED_MATRIX colorop.
>=20
> v2:
> - s/yuv_range_correct/yuv_range_correction_disable/ to mirror
>   HW register bit naming
> - Fix inverted bypass logic: assign bypass state directly since
>   bypass=3Dtrue means HW range correction should be disabled

Changes Look Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Assisted-by: Claude:claude-opus-4.6
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_color_pipeline.c | 6 ++++++
> drivers/gpu/drm/i915/display/intel_display_limits.h | 1 +
> drivers/gpu/drm/i915/display/intel_display_types.h  | 1 +
>  drivers/gpu/drm/i915/display/intel_plane.c          | 3 +++
>  drivers/gpu/drm/i915/display/skl_universal_plane.c  | 2 ++
>  5 files changed, 13 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> index 2ef42a133a98..7d25f4fbfa9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> +++ b/drivers/gpu/drm/i915/display/intel_color_pipeline.c
> @@ -108,6 +108,12 @@ struct intel_colorop
> *intel_color_pipeline_plane_add_colorop(struct drm_plane *p
>=20
> intel_plane_supported_csc_ff,
>=20
> DRM_COLOROP_FLAG_ALLOW_BYPASS);
>  		break;
> +	case INTEL_PLANE_CB_YUV_RANGE_CORRECT:
> +		ret =3D drm_plane_colorop_fixed_matrix_init(dev, &colorop->base,
> plane,
> +							  &intel_colorop_funcs,
> +
> BIT(DRM_COLOROP_FM_YCBCR_LIMITED_FULL),
> +
> DRM_COLOROP_FLAG_ALLOW_BYPASS);
> +		break;
>  	default:
>  		drm_err(plane->dev, "Invalid colorop id [%d]", id);
>  		ret =3D -EINVAL;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.h
> b/drivers/gpu/drm/i915/display/intel_display_limits.h
> index 7ba7360c574e..9493d333a242 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_limits.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_limits.h
> @@ -172,6 +172,7 @@ enum intel_color_block {
>  	INTEL_PLANE_CB_CSC_FF,
>  	INTEL_PLANE_CB_POST_CSC_LUT,
>  	INTEL_PLANE_CB_3DLUT,
> +	INTEL_PLANE_CB_YUV_RANGE_CORRECT,
>=20
>  	INTEL_CB_MAX
>  };
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 1b5a3c84a7f3..bc85d3c88706 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -683,6 +683,7 @@ struct intel_plane_state {
>  		struct drm_property_blob *ctm, *degamma_lut, *gamma_lut,
> *lut_3d;
>  		enum drm_colorop_fixed_matrix_type csc_ff_type; /* For SDR
> plane */
>  		bool csc_ff_enable;
> +		bool yuv_range_correction_disable;
>  	} hw;
>=20
>  	struct i915_vma *ggtt_vma;
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c
> b/drivers/gpu/drm/i915/display/intel_plane.c
> index 78ee3c357d8a..e2b496bd6266 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -436,6 +436,9 @@ intel_plane_color_copy_uapi_to_hw_state(struct
> intel_atomic_state *state,
>  						!new_colorop_state->bypass;
>  					plane_state->hw.csc_ff_type =3D
>  						new_colorop_state-
> >fixed_matrix_type;
> +				} else if (intel_colorop->id =3D=3D
> INTEL_PLANE_CB_YUV_RANGE_CORRECT) {
> +					plane_state-
> >hw.yuv_range_correction_disable =3D
> +						new_colorop_state->bypass;
>  				} else {
>  					blob =3D new_colorop_state->bypass ?
>  						NULL : new_colorop_state->data;
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 0e951b36ccca..9f4bc5a61ffb 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -1296,6 +1296,8 @@ static u32 glk_plane_color_ctl_input_csc(const stru=
ct
> intel_plane_state *plane_s
>  	} else if (!icl_is_hdr_plane(display, plane->id)) {
>  		if (plane_state->hw.csc_ff_enable)
>  			ctl |=3D intel_csc_ff_type_to_csc_mode(plane_state-
> >hw.csc_ff_type);
> +		if (plane_state->hw.yuv_range_correction_disable)
> +			ctl |=3D
> PLANE_COLOR_YUV_RANGE_CORRECTION_DISABLE;
>  	}
>=20
>  	return ctl;
> --
> 2.25.1

