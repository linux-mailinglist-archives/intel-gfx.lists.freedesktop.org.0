Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NpvFDj5SMmpMygUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:52:30 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC396974BF
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jun 2026 09:52:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hpaOQ6tw;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12B9010E2C9;
	Wed, 17 Jun 2026 07:52:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 993BD10E2C9;
 Wed, 17 Jun 2026 07:52:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781682748; x=1813218748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+46L0nNxJgRxr1ehx9xkMZPpq6k31TPC0kYaK2Dh2Y0=;
 b=hpaOQ6twGE3yDepoqi3hcvpTYanpbvnnWy1jJfC5Xd7Y4zFzMd/nVjsm
 n7IKhVCV0Tm1f4SCvqeW36LOXOIVJ70S8sfoZLgXUgE1Ffr0U+ISYgo0G
 t1mkU4uHttbIHgWlw1vmixl4h+DZ9UB0gnvX54ea1FGldgCqKoblYZq5n
 512ZLd8J2BACvG6fenUZt48aGc+zdzZ0FsJA1GogOg5mSeh3IMpShvx7r
 vEqMAJ7RNBKqO+kAHM8mGUq62/baagE+o8xny9eufsrHEc1PWJ7ZD9y9S
 2mCkMupbFCnofu7uFbmfvayRFFarYw/GOuxtCv5VcboZOT0YfhqVD0Jeh Q==;
X-CSE-ConnectionGUID: KqhTZGSRRV2Pg56oo9VRJw==
X-CSE-MsgGUID: 2dKyxKnfQgWRanhSQdQhBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="82347293"
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="82347293"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:52:27 -0700
X-CSE-ConnectionGUID: hEUU2S12SE2xrvt0Vs2uuw==
X-CSE-MsgGUID: MKjLNmo2Qy2LGo1V6mz+dA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,209,1774335600"; d="scan'208";a="245619439"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2026 00:52:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:52:26 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 17 Jun 2026 00:52:26 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 17 Jun 2026 00:52:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=H1O0td688QaJtawxzV0T2kW/6LWxkJJBdvCdVmjkRiUbmNDcjBVTpdMo+rS4cv/uXO/WRLbw+x+vbFP90Rn4vtGPg50l+a/zaRPksaSxL7ckooVOdYDbDI3v7W/EFBBje6wFG1Bbpsqb8d3KKEydxvNMy/5mKJQcCFbpBbBJK/g7WVs3Z/+Hto9XzgKOGW5FVyt6+s2e7gqq2YYxJoAp5LIQwGznqCCDR5x9W2W/xxX9v1sTYmZm9ffSIAYq0z6YqliJ9mcf1zOOi9/cRAkECPrWW8XJTBVBjPH1nL4KPAPNjbS3bAWtj9rY3b4IK4iALqSt9nJdNbFIPZL49GGeDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GecIUGtsDa4B1oPWscsEj4p9eoo/B/jZ3c6VltVQ548=;
 b=DM90HSGikG5cCRTDsWGgMfN7r8MCePQgA+dEw92WVWuBQJklKj7dekf6Ughb2x+DHgwuEj4Ao4/pNw6AFKqrI7LeAtGmtuacyd/yOQNps/PZpNFNsH1AIUKXbbLdFDhmNqOnIh3gCSja3COnVmRMwWt4haZ/WihHkyy3Yc0kEKDwtdw32E+TBhM3zDX3h9uGmjmlhCpWIaWI95N01UY5HSZC9orngtNkRzUjut3n4qIoAw1DiFCC2VkOZPh7+r5HA2rDPQhWlJg8/lu4pOh6txlmxl+NTCJHp1rR/YdXhjjat8j+/ZZTsvkHBdYaEtuqnBuPNNGsjV0fUMKwDjI//w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB7491.namprd11.prod.outlook.com (2603:10b6:806:349::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.113.18; Wed, 17 Jun 2026 07:52:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0113.015; Wed, 17 Jun 2026
 07:52:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>
Subject: RE: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
Thread-Topic: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
Thread-Index: AQHc/ayAz2DgFkAGxkiPMD4qJQjuFbZCYOxg
Date: Wed, 17 Jun 2026 07:52:16 +0000
Message-ID: <DM4PR11MB63601F01199567D1FF73D55AF4E42@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260616162154.2630995-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260616162154.2630995-17-dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <20260616162154.2630995-17-dibin.moolakadan.subrahmanian@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB7491:EE_
x-ms-office365-filtering-correlation-id: 36fbfa61-d38a-434e-ae49-08decc4559ea
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|376014|366016|1800799024|4143699003|56012099006|11063799006|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: 8NjxlHRgJePHVZoLxqH1jjvbTQvboLkEilVyV+xXOe058wddkhgn3JfjIFe6+VybWq2zh4xLrVvAOA0G0aOxIR+XVftn+G7VQP+o+G8hLpXVp7yWylzsw4ze8pm1EBdNReaca1RSd0NpA8Ey3xP66xj+xQtLXXtA6hY3BWVI4XMrmU1e12wY2MPVLjb0jjdUjTK0b7WRtx3H/IRh+HWLd9K+LFuK5Vr94LuO/aMqhjBNj3bxPAa2YA0QMKqnkVJ+eRiifkj9VNfCP3N5ulu24uaL9iHqZ2FzwxaohNB4Y7zq4OohA6TwyYYo2MDFdtqqG1+1+UyIbxLZ9/eJY5/36+oG6ym5SVSPoJbUEhfE/I/5unq84AY/TtlzvHIA2jrrYo9dKwyykjLcoaLS/ZJjH/U8vX3jGJK870Op/Rp5RjEfJGQe4ifKcTUxLIx2dMfA6mTuaDkNYhk6tUH0mVhC/VBRoK+TfLtiMUx3SkK+XbhnFs4Q/AkQrkxN8VExM3EWuJz4cEW2m6oYYupPxM0t4o6OeSsiHWqs58p1YJthNHIKM1m7n6Do8jcqbpQx6ozGsSH3Vl0ADnCNd49lp54lu3PW6H59JmmVeLTaMHEFQW0IqXHLDykbqpTtSuqtvT5CSj88uKipmrh7Ene6rVRLd/koXwIM4x1IrNzmcFcEMMxeQIPT+vAlFzJi1t35ldVjQ6SyX3gvqLYIB8HtqzH0nhyylFMsyXlzZ1/23EGjeW8ULJC0tFxNkk/HTVmeSAjG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(376014)(366016)(1800799024)(4143699003)(56012099006)(11063799006)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?kI9DJfsf/uxsWrvd0tts8yaA4+xPSGXyQBs0my/9vRuwvp0QgI7Ux9uXuq5A?=
 =?us-ascii?Q?cZEpLdUgX4H7vi4Vc5eXdvt4x86g2+MB24BXj01Bd/Udckk7PpIkC71sTPk7?=
 =?us-ascii?Q?NotJZPPYkMnMhJaUetFoZ8gMzEz0C091WX5RnioUH05yYyEby/wA/0IYEO18?=
 =?us-ascii?Q?rXKMGBntJCvDkWzp49fV7ouLun4HKGEHIsukOx3n5hGSAAGFHTjWDE2amFqy?=
 =?us-ascii?Q?R2pf0qNnA6kr+XMgWiTC8DTU7zSuO2KoTdcMPwjgvrJ+q164dX6D65890Uww?=
 =?us-ascii?Q?c91NcIZNQ9KSzFKjJpBAlj+EFGPrN3SeQ4OJitL9cHAjDen0+xDpne2uoqRt?=
 =?us-ascii?Q?F9eNqPPyaFwTxQ8ExDNUmixl5jIfRNkrjBZUSWqVA+XawdWX9GbNgD8pshXM?=
 =?us-ascii?Q?E/lmf10qncRvjFvPqRRcsuJGiFwkvpuWogRLEfiDh+osYKWnsm5wGainDnXI?=
 =?us-ascii?Q?OTZmHovSipR4KWSJRFrTSZZn845Za37HToHtMGIdvSbgpmeP49V4Z3bYSSf9?=
 =?us-ascii?Q?mcjkUO/SXA1qNq/2nBUNs9htraqz3gdCFA46JwfsAxidtYoHgW4Rq9zFB7Ax?=
 =?us-ascii?Q?hC2qrF/fMXTY4r/R4R5EYIR1z+k7q7YOWNrzIqhe5Eq275XiuaErfDyhYO5C?=
 =?us-ascii?Q?m8y+s6PTToS5G5V1TC4IM8BiUOcPU16bJIj2IAgf8tPn6LiuU89VA18T5Sbl?=
 =?us-ascii?Q?uOJia38ooOtR6sSYDCylVVNN0ZqfLtwf2j3MRCAvk2rN8fVRDdVztZ1kMVdH?=
 =?us-ascii?Q?GxRigoMrMs8syx97N6KJeD+G33CgMeuUCBNUPpxXegJxZ0PWZcBzcQXSNiU5?=
 =?us-ascii?Q?+e//EkkVXA2zt+iYIbI/mTK1SQuOKHYAp3crfMNgqrLqRf2ZECRJyQ0ozJOE?=
 =?us-ascii?Q?CUufUN4f8rNKGMwSsEYv/IOngu1gBRVzGHmGcjYrURo58uVkZOTSSaenz+ZT?=
 =?us-ascii?Q?bzK+UDKEORp0IA/ox2U03oaybtDGR2On3HONVmpznrWVX9Ory2JqkRqtfdvc?=
 =?us-ascii?Q?c//nyqPBvIfQS6IJ5cfkzc2glFTA1BuJcTNXZDi3QtJ1yEH6/+IqceSdXY28?=
 =?us-ascii?Q?NS8X4dQGvyo2zkctJmU86ee6y6Skh/9hA/A3TgSUqhlxpKakeF2AUewSf5Hk?=
 =?us-ascii?Q?gOMlIip+h9w7PG9et4gfFDp0t/1asiMSsem4mCthS/CX/Q99ZzB0A7RCXG89?=
 =?us-ascii?Q?qKwnTsNzyO6ZGKweP17JbMxK9WL8hrL8O+5YVE6+PiSD33Ki0E6DZo8VnI0B?=
 =?us-ascii?Q?F1j98losmglTSJoRoJFltBtYu8etIrzAo32YnRcCemAkal7z7HZOAJYNO1+h?=
 =?us-ascii?Q?GbmCYHUVxiT/9N2aXBeQcme0CeFklqr2oCx7aKWr7S/a6EYpmY5A3ECY8h6K?=
 =?us-ascii?Q?vj6PLLhj3AuNg0DMaPOHluOeVXMfm6t5oXeDO3LLUEXgR/qMnhWzZdDC5k44?=
 =?us-ascii?Q?F1fEsOkK+IFHZO1Q4J0SXryGwcx8TMGRG/3H3osv7rXvFOKH9nwUGWa6jHtl?=
 =?us-ascii?Q?I2KBvAzVlu6nKoyhY70XtuNiRTEeY88GIarYMADmUnsfdPqk2YU6h+T1rsDe?=
 =?us-ascii?Q?9z/0lUznWBffyYtskisEA7V05sumbrEY3PM3n/lL17y7EqMFc3QwqFclx0W6?=
 =?us-ascii?Q?u3i5cVsFXTO1AcsFx1WHMdyJ8QjD+L0H41zAJJAjxHVS2JTi/QSmon4pspbd?=
 =?us-ascii?Q?Nl2JACkngZiGssIcZPFcz38CDwvRwrrHH0Bc1SLiXo2uKRznmX6m/qkqylpT?=
 =?us-ascii?Q?l5+NF1ke3A=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GK+U8GpqkLnVKWEb6vpQafDbEMT8Cj7H64VGMmNj+z4kCrf6kk12OZF8QutGEBeX58ISdpugLe6hqW47eg++PE0HSm946NjRvOcqB/VlIevCKUQ9oBAoJmWFJiP6wj87eYEiXx2fNz/NTfX1gMqyCD5sIIxLSFTrCzibl1LUBEflp1rws8Nif6tbzAbgHeDNE1bELIhtQGhQRM2IMw6hR3E7GCp6h1CAGe1zEluVOB8M80OL7WWwg+b615LBeXKqQigDuKpYBSI+30Ju8Mm9hu8f3Emeun1eFRD5siwWhlHiMnRt3iUoM1F/9gAwEg5/ES583I3BVlBeoB6ZduwWEQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36fbfa61-d38a-434e-ae49-08decc4559ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2026 07:52:16.6141 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8HVAA0bdAmNiYsldyGiDjhezPqWpwo1C1nmR/V096ssNmqBVVDoxVndFlAh+NvWepUUo8tXaGgjwDfKn1AECZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7491
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7EC396974BF



> -----Original Message-----
> From: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> Sent: Tuesday, June 16, 2026 9:52 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>; jani.nikula@linux.intel.com
> Subject: [PATCH v6 16/16] drm/i915/display: Enable DC3CO DC state
>=20
> Enable DC3CO mask in get_allowed_dc_mask().

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 2ee38ba1fb2c..dc3b31200353 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1121,7 +1121,9 @@ static u32 get_allowed_dc_mask(struct intel_display
> *display, int enable_dc)
>  	if (!HAS_DISPLAY(display))
>  		return 0;
>=20
> -	if (DISPLAY_VER(display) >=3D 20)
> +	if (DISPLAY_VER(display) >=3D 35)
> +		max_dc =3D 4;
> +	else if (DISPLAY_VER(display) >=3D 20)
>  		max_dc =3D 2;
>  	else if (display->platform.dg2)
>  		max_dc =3D 1;
> --
> 2.43.0

