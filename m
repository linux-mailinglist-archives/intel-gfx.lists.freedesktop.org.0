Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 484BBAD44CA
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jun 2025 23:29:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5CFA10E5D5;
	Tue, 10 Jun 2025 21:29:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KGdpkWuV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA5AD10E5C6;
 Tue, 10 Jun 2025 21:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749590973; x=1781126973;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sGhaUR123Rm7Rvnwy4Ha+E+4URLHkkL7QqjVgk0AntE=;
 b=KGdpkWuVQ6YDXD75eygZjc+3H2MQWwDeVEv9zbj2ZdYT4N2b9LCRUQTM
 sQOah1RlBegw9Sga+SGK8TnPwu3WwGWHQHV2qObynaYceppaMJT6pT9Tx
 jdeA4a9g6vUl85mGiKsKECnwtB9kSUXjBbjRZoreLQRjdXFGNy2DrdaYB
 u0dDSYUSzoIbP04ddh0Q07mJUQ+STuiyR8PV3qfRGzwsIkA7FGyt64NXM
 UXdkLj21wsSvj219MhD+RRRgjz0ycRnRoVq5aBogiYeOxP+M9iaNUbBS1
 zvQzTDV9iEaw+BNY8BskRDKx94N0BJsLxbSjGCb7cVMbz1BLXEdpTiwgA g==;
X-CSE-ConnectionGUID: mVerz7b4TLerhNeiCD52vg==
X-CSE-MsgGUID: 2esRgMTLRtyyQphohXUzKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="51576158"
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="51576158"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:29:32 -0700
X-CSE-ConnectionGUID: snfGBfUYRy2aZK+6MfBLrQ==
X-CSE-MsgGUID: zL9kDJVUR4qOxPzamO5hjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,226,1744095600"; d="scan'208";a="151840988"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2025 14:29:31 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:29:30 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 10 Jun 2025 14:29:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 10 Jun 2025 14:29:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ju8lBxwC26fnhPTw/gfjWocWPvhGdC5m/6KIv1dC5xz6JDjkhwymEIGeOZZINfVo0O+NHgxD/OQgqGBciGdgHs4Lu3chHteeAzETPbLx/BHQ359Zn8GtXOU/4+bEO8PkysTdANefH8xrsRFpRhAWRERhSVN6hqSR2BpGQQUdM2qMRLTzjh3M8Cs7ggEsEVuuZy1r/dmJdGVCaBc2i8hFF2WBu7l8mH0I5z3a849ulLcaLKN2FQ9zdVj3ocS6fUhqNkieNSZulg1Lc08xndpU4ttct3Z6LUED8/As0BoK/6xnXOuOepZ9f/XW1i+oeKt6gpW4JVYA46k0Y6aGxzfGCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sGhaUR123Rm7Rvnwy4Ha+E+4URLHkkL7QqjVgk0AntE=;
 b=l/HdS4OqPbolAlOyny0h0JqmCCyKExDrnn/qBBcrVF5f0GtBPVzF9BYlR98uajpGWo++ZGJqDYtC7cxuB/3NL6kutKFHKeA+/vBhxUKRctkTT2ONUjM5YGDZQXq8HPbKO2nW3oc7Nyz7omUQZBk3KnyWnhDZy+hxtfQo6GSHLI2FOCdLIV0f9aZtkljlg7/+JbMC5srqltSMurDZzSWq4JrewQBihnqdJWq5wStqz+Ec4r32czjK9euv+7YmoVa1tGElUCQHGChQiWIVeI6TTqVJhlI01PuUEyXakHra4KUXvwshC0rKli6lUdKNVNsE1QS7sfMFzW6w0p3wog8+Cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SJ2PR11MB7517.namprd11.prod.outlook.com (2603:10b6:a03:4cb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8813.30; Tue, 10 Jun
 2025 21:28:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8835.018; Tue, 10 Jun 2025
 21:28:28 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v4 02/21] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Thread-Topic: [PATCH v4 02/21] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Thread-Index: AQHb2Uhdqi4avuXyt0+TrwCcdNaOR7P86mNg
Date: Tue, 10 Jun 2025 21:28:28 +0000
Message-ID: <DM4PR11MB63609AA49F32FA725413DB3BF46AA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250609141046.6244-1-ville.syrjala@linux.intel.com>
 <20250609141046.6244-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20250609141046.6244-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SJ2PR11MB7517:EE_
x-ms-office365-filtering-correlation-id: fdb7a4ce-d777-4ed7-dd8b-08dda865bdbb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?Yko2Tml6TEtJMDRPbU84RGVEK1RLM2hQcVdnR3UxNERDVWhDY1FUb3FzS2tH?=
 =?utf-8?B?OXIyTExkUk16Tm1MWUVQa0NhR2o4dThGeWN5NXJSK1E4VmtKY3pXSDJXT3hU?=
 =?utf-8?B?WWdlNHlScWJWc3VEUVA2dTdvb1phYkQ2RExLK0htRlA0RzVCbG4wQUxjQkcv?=
 =?utf-8?B?dmE3dkdaQlJ3dTRCSzZBMlBmTUdTaG9NSkhLS29SN1pMWTRDSU5MeVZWRnFz?=
 =?utf-8?B?K2l5QWdrQ2wwK3ZKUFJ2U1FBaEdXVHB4V0xCNE56RkFjZVBHTjUyOXltQlZx?=
 =?utf-8?B?MDIxc1lFQzRyOTJ5OWV4NUhqV3llSVNCa3NJOHAvdnZNdlhTaDlIRkhIdXlM?=
 =?utf-8?B?NEExWExWR29oOFByai9pRmUrMnpnUDNlSkFTU3lvWTdIdG95VW5IN3ozSFhM?=
 =?utf-8?B?UmphTFRJTWs4ckVIaHJ3aHN0QUJFRHhHelFnUGR3N1ZNcmVoVE1PSjJrNVcv?=
 =?utf-8?B?OEtYTXVOVVFzTVFpbmdLYVhhODhTbGtGVG92YlA0ZEVKVmpOdlJmcWl5Rzhh?=
 =?utf-8?B?c1huNmFMY2ozN08rckZkWnF6YXFyeW5qelFSeEFiQ2NPaW04VHJuZXdKUTE5?=
 =?utf-8?B?Y2E1NzNwWFZ5WVZXQXRpK2lDZytXTEZ3VzBoYjYyTElIdkVmQjR1WG9VeFJV?=
 =?utf-8?B?NzIvNEtMaU13NXY2L21hSTFFZlBrOFdVV0hxYmlTelcyUFF5ZDVXbThWQ2h0?=
 =?utf-8?B?bjdFaXNFS0VMbWhaTHBTR3FvMG1ZUXFxTzlMWElCNWw2VGJQSUVmRjEvTy9q?=
 =?utf-8?B?RGFiTnBWOXplb2pXSUpoSEVxUzZxd2ExRHhpWXhxZk4veVhLS2xOMWdINHB1?=
 =?utf-8?B?cWJRdU9oQitBZlRsa3B0Mi8xS1ByL1U1MkY1ZWdFRS93dWRTS1c1Z0o2NGJM?=
 =?utf-8?B?WWo5bEZqVEUyOEg2UEFEOUJrMmM2d3JFQ0xRcmtKeTZ5TVY0bTg5blN5d0Vw?=
 =?utf-8?B?aTJCWFh3NGFOdVIrUUFUVkZYRWRvL3RzczQyK0QwdU1wMVVya3Jzc1drcGZG?=
 =?utf-8?B?SjZYRXNmb0c5V3g1c2lyMFdyU2Z1SHhZb3lRTTRsb1MyQXRGKytFMnhyM054?=
 =?utf-8?B?S2hSQUZWVFlNSkthZW1YcytxM3VQOXRiUEpub0hib01RS0dKdmZqeW1uTlc1?=
 =?utf-8?B?bDUxM0VRQlBGTld6ck5vakNDM0hJbXFHRHkrZmxRWjVmNS9qRmNWU1dSN2ZZ?=
 =?utf-8?B?ZmFYT3U1enRWelhPN2xwZHVDR2phNG9Va0JtaTZ6UWVxclVEQU5obHljMHoz?=
 =?utf-8?B?STkxYTY1bkdSd0tWL1h0Ynl1anNiVHRETjZIVkN0Tk5YdTlVSjJtTlpvNmNL?=
 =?utf-8?B?M3NNckNvczRqWDl5dTRRYjZRVDdId1pUWmQ0RCs3ZHV1b2dlbUJQc3M5MzJ2?=
 =?utf-8?B?enpFeGlsYVcyNm5CTVJCdndjYk43Y0o2cG5YbnhUbVVNckZiV3RqR09yUFF0?=
 =?utf-8?B?NzFMKzNwZHpuZXNHeDZJc0wyNTFGbWdVZ2daMVlhSm1nNE02S25zWWUwanVl?=
 =?utf-8?B?cWxIWkNIM3VJbGtPRCt1VmJXUHF4Q24wL25iOUMrQUFBUE5OSFl4KzlIdmpx?=
 =?utf-8?B?cnd5ZU5nb2g4Y2ZSWE9yTG5kRlpFZ2tRZjU5V0xYNm1ZdEhPeUVrUytlMjNl?=
 =?utf-8?B?YnlST09mRTl0Q0M4bWlSdDczbWdpZmpCak5EZk4wZU5wNmZMalUrWDZ5N2RD?=
 =?utf-8?B?WGRPYnFGbW5CSFprTGxGQkJ0MkRLd29TQk1DaHFXTlhaLzdkMmltMVFQZ0l5?=
 =?utf-8?B?bk1MelNjMG9JWTRZbzFnT0JVSUNNQkpIMUlRMkZEbDZOL1hteXBXQ0RCMXkx?=
 =?utf-8?B?dFBzSUZkTUtXL0RRSGdUblc4R2U2cy92NGdHR0g1KzUwTktrTHd6UGpOb3F3?=
 =?utf-8?B?V2VUejlzOThVNHloTXNYSEFOSTZxKzdrMnpEWjhQZHJMKzNGWTNyZTVBV3o3?=
 =?utf-8?B?UnBVelZUOGRpQmFTSGYrQ0MvR2RIOGk4OWdRSjNtc2YzVkRaS1pOT2FoNXZm?=
 =?utf-8?Q?DOcdvHxDQBnEPF6CAixSDPCErcfWpg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dDk4dy9BMVVGeWpPQTRxQ1RtaU9TdE5VZUw0WEF1V01ycEU4dkhzcW9nRFRE?=
 =?utf-8?B?eEtIakoyMzkyZE12OWxaU05rcVZqZkt2WHRLdTFlbDhRRFV0Uy8wSllJbnZY?=
 =?utf-8?B?VUxYYzFsNkxZaVFuSTdtNlhRbTYyNEZmQ29ScWtmMlJUZnRaSnBRR0JSaWQr?=
 =?utf-8?B?UUI2bEsrOTNjaWptUWRxak4vVzkxemtiMEY5cElsNUdKNFFSek1OUE5PVkVj?=
 =?utf-8?B?OWhHeDhWMUZoV3JXRVdrTG16bnduWHVWZ1BlUnBDL2xIRHF2VDdIN0g4WkZ0?=
 =?utf-8?B?d1NSY3NUSFFjVzhzazdkU3d4akRuUG5GMy9lcjR3TjMwMllJMmUybExzSW4v?=
 =?utf-8?B?U2ZQOTJrTE1zQXNrVU9yN2cyZEY2OE1XS0hnTC9Sc2xHK290WEhiT01WMlFD?=
 =?utf-8?B?NEdpUWFabjNKcXFibXU4c28rSTRTZHRpOGVrcFd0QzZNVld0WkpZS3Q0OWJh?=
 =?utf-8?B?UWdhbm5ZckJGWXJrTjFHM1ZtVFRaRlc5RlRVL3hlTjYxQ0hBT25mcU5zWm9k?=
 =?utf-8?B?VGFSMFFBUkNsVDNUVzFTcXFoMnhVRmxVSU1GNXhmY2ZGTlhJVjZpdDNhZFdE?=
 =?utf-8?B?eDkwRExlKzllY29vM3pNVUVjRURBeExmZEhnbTh1TVY0VWVKc05FSlJ4VllI?=
 =?utf-8?B?QWlvTkFCeFZxYklMTFM1Y1RhUWVrS0tSY0dvejdobk5ETHZuaTRMTmdrckth?=
 =?utf-8?B?bDR1NFdYaDZub2VTQVE1Sit4SXpmZGl4MmdVM05vUEpqbXA2OU9mZVBhamMv?=
 =?utf-8?B?bWhtckE2SDNxMzVYdHAvaENaNWlMbE0yRlA5NEFqaUtjaU16b3FSNW1YdnY0?=
 =?utf-8?B?Nko5MWE2cDgyRExHOTZsQkh2TERhdkJPWDlzdmFNWTFoZkpRRDc0ZGxnQzNP?=
 =?utf-8?B?aWx4dnRXMHR4eW5IcFZ2d1kyKzZwRXFUTkRjM2F0NHhVRVkwemtXM251UXNF?=
 =?utf-8?B?U1YzV1NzOUd1Zk5wRWlwK1FqZ1hxaG9CMlVQUHV0Q2J6ZWlYbnZkZ1VjWHJo?=
 =?utf-8?B?SHorT2hJWHFzdEgwTlBvbUlWWXRybHFvS2gwa004RlNObnJTUFJyQzF5MG54?=
 =?utf-8?B?T3QzbGdpY1RJS203VjYzUG1RUlpZL203SktQNnNUV1VVVldmeUZ2UTBUN09h?=
 =?utf-8?B?emRxY3UraE9lNmNxOG10WUphMnBOcGs2QnNCREZ6QXFsRzdDMGoyUld6bWR2?=
 =?utf-8?B?OWNMTFJ5ZEZuUmdCdkRCZGtrUm16ckpVMUc4OGQvUXgwNEJXVk13bzViZjFV?=
 =?utf-8?B?dmhOMkFPbHJkV2VhcVZBSTE4MzNCeGxYSDBuVnhuOUdsc0tIZGxEYnZ2MnU3?=
 =?utf-8?B?VHRVNjczemk4ejNkNXlEMWhlOFFneXo2ZUlXNWRacGJBdHpZQStFMTR4bXd6?=
 =?utf-8?B?eHJLMUNLR0FNNnNNcWlCbGRuYmdsSm9WcnUxN0k4aEtQa1JnbTVvVDRiOUpu?=
 =?utf-8?B?ZzEvMFF6U2tVdER5N3VnV2VvMjNqOE9mNnhoT25OTCtXajN6ZXJ6QXVmeTFk?=
 =?utf-8?B?K0tadmVEZUwzTUhFc0o2SisxaGp1a2U5dnZoQVd3RXM4QU95eFBCazdrQmxr?=
 =?utf-8?B?Zjk1N0hpTU9nNHhlM1B6MXZQdjNRR2lyaDRhSXVzdW1CTVErZ3BYcy80ZVpl?=
 =?utf-8?B?S0E4VDhUUlEvWXU4WWtudG9tN2w2VlRVSTl4Lzk4a0lRK24wSTd3NFBhSW51?=
 =?utf-8?B?U0UzWFhUTW9xUUR4WGdFWlRkU3JYeHlEb3YxaWJXL0ZUK2VzV3llU0pZVnJp?=
 =?utf-8?B?VTBFSjFBeTBmUFlPK0dDS1RUZk1lRXFQV0xtSStFTlcyQnFLTmZmTVc3SXg3?=
 =?utf-8?B?cS9ZT1FHRXM2YUVYd1NkYjgwblBybFNpMXIyRXZFdkhmelgvMmhiUEd5dUh0?=
 =?utf-8?B?ZkdKc0gyWkNvc2tDVHVBbHhKVCtTbG83WFkxR3A1aGdUT21MRGNSTmpOQm1n?=
 =?utf-8?B?Sjl0NHFIbHNBRDhpVnJnMW5FTmlablVrUEV0eHUwWFd6aFJNRmJTU3huUzht?=
 =?utf-8?B?VXBhOXh6YkpJSWp1cFBydmRsZzQwUzZ4aDA1MnQ0ZE9WUkhVdHkzb1VURnUy?=
 =?utf-8?B?UklBaG9IYVFHR3hYODgrVHk0KzNuODR4Tk5BUCs1Vis5Mlc3SlV1cHVHUFF6?=
 =?utf-8?Q?XRvDCcZdAhiCyxd/3oCxYKIJ8?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fdb7a4ce-d777-4ed7-dd8b-08dda865bdbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2025 21:28:28.4277 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ME3lJu3DB7JiejvwumcfWV0O8vQNFVOjZeReNDXlPN+P8UuqaQJHxheXxfVcgeRDnSdp7gZqBTv+sKPshqz6Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7517
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IE1vbmRheSwgSnVuZSA5LCAyMDI1IDc6NDAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjQgMDIvMjFdIGRybS9pOTE1L2RzYjogUHJv
dmlkZSBpbnRlbF9kc2JfaGVhZCgpIGFuZA0KPiBpbnRlbF9kc2Jfc2l6ZSgpDQo+IA0KPiBGcm9t
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4g
VGhlIHVwY29taW5nIGZsaXAgcXVldWUgaW1wbGVtZW50YXRpb24gd2lsbCBuZWVkIHRvIGtub3cg
dGhlIERTQiBidWZmZXIgaGVhZA0KPiBhbmQgc2l6ZS4gRXhwb3NlIHRob3NlIG91dHNpZGUgaW50
ZWxfZHNiLmMuDQoNCkxvb2tzIEdvb2QgdG8gbWUuDQpSZXZpZXdlZC1ieTogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCgkNCg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCA5ICsrKysrKystLQ0KPiBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oIHwgMiArKw0KPiAgMiBmaWxlcyBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gaW5kZXggYWJkYTA0ZDk2OWM3Li44Y2Ji
NTY5NWM2NTEgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Yw0KPiBAQCAtMjQyLDE0ICsyNDIsMTkgQEAgc3RhdGljIGJvb2wgaXNfZHNiX2J1c3koc3RydWN0
IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+IGVudW0gcGlwZSBwaXBlLA0KPiAgCXJldHVybiBp
bnRlbF9kZV9yZWFkX2Z3KGRpc3BsYXksIERTQl9DVFJMKHBpcGUsIGRzYl9pZCkpICYNCj4gRFNC
X1NUQVRVU19CVVNZOyAgfQ0KPiANCj4gLXN0YXRpYyB1bnNpZ25lZCBpbnQgaW50ZWxfZHNiX2hl
YWQoc3RydWN0IGludGVsX2RzYiAqZHNiKQ0KPiArdW5zaWduZWQgaW50IGludGVsX2RzYl9zaXpl
KHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgew0KPiArCXJldHVybiBkc2ItPmZyZWVfcG9zICogNDsN
Cj4gK30NCj4gKw0KPiArdW5zaWduZWQgaW50IGludGVsX2RzYl9oZWFkKHN0cnVjdCBpbnRlbF9k
c2IgKmRzYikNCj4gIHsNCj4gIAlyZXR1cm4gaW50ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgm
ZHNiLT5kc2JfYnVmKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2Rz
Yl90YWlsKHN0cnVjdCBpbnRlbF9kc2IgKmRzYikgIHsNCj4gLQlyZXR1cm4gaW50ZWxfZHNiX2J1
ZmZlcl9nZ3R0X29mZnNldCgmZHNiLT5kc2JfYnVmKSArIGRzYi0+ZnJlZV9wb3MgKiA0Ow0KPiAr
CXJldHVybiBpbnRlbF9kc2JfYnVmZmVyX2dndHRfb2Zmc2V0KCZkc2ItPmRzYl9idWYpICsNCj4g
K2ludGVsX2RzYl9zaXplKGRzYik7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHZvaWQgaW50ZWxfZHNi
X2luc19hbGlnbihzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBpbmRleCA2OTAwYWNkNjAzYjguLmFiNjQ4OTc0OTg2
NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oDQo+IEBA
IC0yNiw2ICsyNiw4IEBAIGVudW0gaW50ZWxfZHNiX2lkIHsNCj4gIAlJOTE1X01BWF9EU0JTLA0K
PiAgfTsNCj4gDQo+ICt1bnNpZ25lZCBpbnQgaW50ZWxfZHNiX3NpemUoc3RydWN0IGludGVsX2Rz
YiAqZHNiKTsgdW5zaWduZWQgaW50DQo+ICtpbnRlbF9kc2JfaGVhZChzdHJ1Y3QgaW50ZWxfZHNi
ICpkc2IpOw0KPiAgc3RydWN0IGludGVsX2RzYiAqaW50ZWxfZHNiX3ByZXBhcmUoc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJICAgIHN0cnVjdCBpbnRlbF9jcnRjICpj
cnRjLA0KPiAgCQkJCSAgICBlbnVtIGludGVsX2RzYl9pZCBkc2JfaWQsDQo+IC0tDQo+IDIuNDku
MA0KDQo=
