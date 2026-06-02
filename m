Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N3rJDoz4HmpCbAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 17:36:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7949062FD69
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 17:36:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GUrReKXB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CDBC110F2B3;
	Tue,  2 Jun 2026 15:36:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153F510F30A;
 Tue,  2 Jun 2026 15:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780414600; x=1811950600;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6c6WxyuYHMvEzZQhyCJLITV+1l5E3+4KiENLSRcaqOg=;
 b=GUrReKXBOXOQvMnLU7vwRkOVW1jm3QrmWtbtZP236125BCVOH48LALbp
 iBfZPzQnhiDSIeWyhGZLs6iv6OW4aUxKyYYQZu7gfcqfW5oL2wRy24FCW
 UozGbCLlkpCKgGsgraJk+bM0YJ+V1m1Scmqx6N0kteU8eroUiHEsh3Y+d
 Hg309SdgsK5a52A7YB7maeInQqctOt+rA4CjCKlxtesbFNnqcvBBE1lcE
 HGrfKaaSVE1IZyLFiy9H9xDNqU7AKFT3fLykX1+0vLbz/qAQJBuXbND/W
 y3yHtsJDi5HKz6vSJOOso2UQJJN3YzIcnDAkmKwGA2BNJwspspxHPiQFi g==;
X-CSE-ConnectionGUID: yI9HksqyTDe+Wsp+FeXcDw==
X-CSE-MsgGUID: Q2/n7q0STJqKW0RCLhT8SA==
X-IronPort-AV: E=McAfee;i="6800,10657,11805"; a="98768569"
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="98768569"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 08:36:40 -0700
X-CSE-ConnectionGUID: ztZTCWJnS0GEOP3vheZE8w==
X-CSE-MsgGUID: Tf8VdJ9YTpy7iXtzGz4E3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,183,1774335600"; d="scan'208";a="243779224"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 08:36:39 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 08:36:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 2 Jun 2026 08:36:38 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.26) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 2 Jun 2026 08:36:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FzAL0yq4qcNXMDjn/hJsZTArTFLjX+A+50Rtfy1ziBWi5MlZdUVxDBTrskFrewQVKhrVPRsWLYJ2lX/UQ798MZrGJXwFNSS5MOKVA/h4wnwEnb9fcWpJZa1dwvSYVnn39RCN1ky+gwEn+MhYZ8/GMeuyVPSLJkntkX5UGUvAUR8R/U3ctk8P+Nz6CqKYflOdXG4sAvAj4QiJlbHmoYrjq+uTiGTxGJBASAwxlVHK74d245MHkRA/QXhQz999d9nzecMSXdHdyvEcJm1t/y2lgXWA8R8RSzEz3aLcigP+vLbBKpJ7yHg5URt5YhqrPQhxbbVhDBL3dJ1A9bNuTBZEgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6c6WxyuYHMvEzZQhyCJLITV+1l5E3+4KiENLSRcaqOg=;
 b=AhHbr+vuhNgZlyIzv0Y6sC/lKDk9z9uxvU/96WdoUZUJA4BBDPOcGd0a+IweVZ5jLg0+tSP2ZNfPlfG0kvoaJfuhoq1qDIMeuf7y6MgdpTTXSVoJprK85m2DjXYzVX8ZkgEemP7KtdYEdSJ4zjr3Z0EizhMnaBPOVbV1OJWsIMDU/9z8dXgRDu5HkDxdAUCODzwbQZPkEmhZas3pnZw0uCKoEJK8u9M+mS3FDHED+CDsewuR8r5cGwQNcQ2Z/2DyxnwysmP6NWQNZZ1uKCSQSlWB7PowOFXy1vUhcjjpt/Rodo6ahNb+VnhIKXI0yy8d8KcfxEnLDQhcgMM6pslA5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB9473.namprd11.prod.outlook.com (2603:10b6:8:258::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.92.7; Tue, 2 Jun 2026 15:36:30 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::22d9:ae03:5db1:680%5]) with mapi id 15.21.0092.006; Tue, 2 Jun 2026
 15:36:29 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Samala, 
 Pranay" <pranay.samala@intel.com>
Subject: RE: [v4 0/3] More Fixes for color pipeline
Thread-Topic: [v4 0/3] More Fixes for color pipeline
Thread-Index: AQHc8aQ+NRctVgazCkqece9qg3hc+rYrZ53A
Date: Tue, 2 Jun 2026 15:36:28 +0000
Message-ID: <DM4PR11MB636008C559B7AC74A0AFD3B6F4122@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB9473:EE_
x-ms-office365-filtering-correlation-id: 340b3efd-9418-480c-3aae-08dec0bcb705
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|11063799006|56012099006|38070700021;
x-microsoft-antispam-message-info: RHDW/cbiM35o/WiIAzH4cxI/Vo2eWNatkxcz2mtQpLJQkyvDJOMc+Ic1Lt3COTDRURsMdLRDBMZh+48/FxqaptBNgD7/g0Kxpnr/dkh8l7XHIG2wrvxNCmm/1fvjFmnLS9cf+zo24P+FgWer7Tm4kqczUXAiIV18QqTrmT23rMLYsUkRMsj0kVaBsphq32nb5VEJ0cRBP27WNZj5kiuKRpFM+KCV5W6k+fEzhFqA6PHsQJsLHxc/JzNAHDMirvNrwFRio+XeIgkuA7BMcsx5j3CHGYT2HE2wicqLMnInVkifoJtkbI8NM2+b0+2EW6Z6r7Elr79GW1Z6J6kVseJ9WtKSQdgM3HiOp6vwZ0QsFzUk+rSbI3PTEBgODSD0Z+sOq405NK22xXzgRuK7tpCmHKwmiW9OWRaVQFj4auIznyYAG1FGRkpmchKhpfVsyc9+TltVsP1AEqYFb85Ws6UFEP+50F1/S2AcFDz873J7Rc8qfZSi/AAqsL8HGx/nHMmFwPxfjHDbR5fMx5K95sc+XzkGhMM/2KJrnwIH8nSqyT0rdGlFKyo7gt27vFNm4ejJM7QHX6rOnoYAvd/P0LOAuOtYaFzxPazZViwBDx4EA9HwvGDDbJcu0JBMp0XssnKt3LJCw06yCZP709hI1D5mueUrjOjSUUXUdyvcMtJBoE7gINxLICRf5abD+Td40wIJgjOpp3HNZU3jCA92kR1lPQLtJXqLNrEkUS5UnIO20NbfhgC1XJ6UY2WAhyij73z9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(11063799006)(56012099006)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b25PeE5nOEdZeFZQNDM1ODQzUmxOTXE1b3ZoYllNeVlacFFpUWNtUUx4aFFN?=
 =?utf-8?B?S21OS09DRlpYSTNScE52Z3B4aUVZYkVrS080dHdqZTZZOW5vWkhrc1dJUTgv?=
 =?utf-8?B?M1RoLzFMMnlTOEd3MVIwU3BnQUZ6UVpGU21EL2lHQ3lHalNFMlREQ3dPU2FK?=
 =?utf-8?B?aHIzZWZ3OHdZcCtUNlhvaDFoWi9zSW1zYnp0T3BBcTF1MXdwZWwyUzdndDVw?=
 =?utf-8?B?b1pUOWh2RTVYVGQvOTliN3haWmRabGU4b0pJY01KalYrdW5qYmxVWmVOczd5?=
 =?utf-8?B?cEZnTzBFb3dVSXFiQ3BpbVNoekRKbHN6TVdFa0Y0S0FIcTMzM0ZaeGJzcFBq?=
 =?utf-8?B?QW5uRkZlY1UxeFlXeG10YytQRHdhM1NnUnlpYyt0eEJ3WFREeHNZMVFMbkdL?=
 =?utf-8?B?OTlpanR5d0huNzFHY1lydEs2Z3pVYmJiMW5TUlVOL0ttd2RoRzVQMHdLMUtL?=
 =?utf-8?B?NjE0TXNnd1l3RCtER1A1WDk4b0VwcGpXdEQvTXdvTWgvTkxUeGhFQTFHNFQ5?=
 =?utf-8?B?NUppSVBOMnFsVERsSDAzN2JRNG9xQXRzSUV3QTI4cTlwUDVMSHVyZ3JlakdV?=
 =?utf-8?B?RkZKU0NubWRTSlFtd3pocUx6L204MWJrNmJRRXdneXBYdEUybHl3L2FBbHNO?=
 =?utf-8?B?cXN5TVM1SjgvdTFtdDlnanA3ZGkwTzFmRERSd0NWT3hhaCtOUDNzMnFCY0wv?=
 =?utf-8?B?RmorWkZTQlJ0Umk2YzBSREhFZ2hhcjhLd3NxZ3VRYytlaGV1RThpWWpzZlFk?=
 =?utf-8?B?S1FITEVGeS9UQkh0RE9tK1poc0VmU2tlUm9YLzBMV2IzdTlwRXA5NTBVdzVv?=
 =?utf-8?B?WWlJV0xMaVZLOW9GZUQ3a2tzSm1DUEhFOGlST0tNeUJoeWJkbEhDcmxqQ25T?=
 =?utf-8?B?eXI4V0tSalpmTWFkMkw3bW8yUXd6b2hCblplWGRuNEJWN2hyMG1pKzR5LzRv?=
 =?utf-8?B?RTVlTExOMEoxYm5Scm80RWxlWmFjQmRDaE13YU5zSWJQSFVFaWdnN2JFL1No?=
 =?utf-8?B?czZCQlhhMlRrbnErdEVPb2ZZWVRJTjRQc3N2OHA2SEZZeHFVMW5MNU9lVTVT?=
 =?utf-8?B?OEJ1czZBZDhwNngxb0podUpvN3FGY2wvUTV0TDJnL0lPd2gzUFd3SWlQVGEw?=
 =?utf-8?B?OXNmdFpkRmJ1R1MzWTJvOTFydmd5WHJjbEJOOWZoRHJBSmcyOVJmTkE0YlEr?=
 =?utf-8?B?MjJRU1NxcTN6Vlh1YWZ4TDNkZ0Zadml0M1lJd1paaThOL1pBVG1kS1pCWFNs?=
 =?utf-8?B?NW1XNEhPclZWM0hrL0ZWa2dVVDZndnN4eUtpOVl0UmxTb3FWcHd4K1huTjY4?=
 =?utf-8?B?Njd6aVRVdWV5WmxRT1pZRGN4MTU5T0JpQmRCblNENEUwUzVaMWpVc1gySTdz?=
 =?utf-8?B?SlZDUTZaRm5lcjRHRGp5TTJ2QmZCVk5JVFdGR3d6a05tOW1uaDdUUXJrTW5G?=
 =?utf-8?B?cWVtbDJERUl4VDFsT0NxTlI4R2FxcHpHU3FabFR0Ukk0cTY2U203R2N5NHdO?=
 =?utf-8?B?bVNiQjNwTWFBSDVPZHdSYlpmb2NCK1dMdW5qSVlXMGNpSTZzOHpyL21nUmxQ?=
 =?utf-8?B?cUd5aFNiOE8zM3psUnBhWjVVbDhkSUNRQk8wbVFxcnlqMmJLMjNBOURoTldq?=
 =?utf-8?B?OG50cU5wQzZMR1pxU1JBck1ZVjN2ZDR4Mm5iZ3o2YXNJOTRuK3ROQjBVTkJ4?=
 =?utf-8?B?UituS3JjK3RLNXViNVlvNEZkdHJ6NVRsODdENkFONU8wQVNuMXJjbjg3SjJk?=
 =?utf-8?B?Q1ZsOW12aDU2Z1dQVG5iK2ZJOXE2aGVOM20yQzR2UmZ5SndiaS9LTHZMWkQ2?=
 =?utf-8?B?K1BVOGRsZEpZdFo1Z1FDcCtsUEkva05xNTlZNG1pSG16M2RZVG9OeDVOYXFX?=
 =?utf-8?B?Uyt0WERwSzVxdUJ0N21aRVV6Sit6TVphWTRQOCswOTI1Qy90Z3JMMFI2VTlZ?=
 =?utf-8?B?SngvK0QzOTVUMStrd2NkSXVjbHZKUkVSK1pLQUF6dnlQMklQZHpiWG5CeEJE?=
 =?utf-8?B?Y2xzZDFHM0FJd0lkaFVuVld2aXlJZ3JaRmEyNVVNV2FjR0pMQlNsV3dBTzl3?=
 =?utf-8?B?T2FyMGZFb0xtSnArMmh5Nk5EdUFWODhnZnl0eENUWG5WM2U4ejBtU1NPLzVG?=
 =?utf-8?B?Z3ljRVhaOXErTkVRUnkxWHNiWnE3TEVvN3VVNmd1bXF4QkhTTHhLNmF2dEpO?=
 =?utf-8?B?UlNjTG5WcHc5ZXFaUjFLVFZWVktWYkwxOTQ5Skl6UmJXeTJBSThYcU1HVzc4?=
 =?utf-8?B?RzZCemk0bVNPRkVyeUpjRGpIQm9SaUFmQzE0QXJ4VWQ0YlUxQld0NG9NcHly?=
 =?utf-8?B?YUFtdG1HbjJob2VkNllRVjFxMmhMM0Ftb2Q0aDhiR3k3Y0IxRWxiQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: LZM19XC/Ftewvkvv2dV0vT78udUWBVDLPvT92uMAAy4VQfN+5Dhb29GNjAloR4OlhupczlJxJ6CllgRVO7j9Cju7UWlEqbDY0NrrPoFQcmssCiEH0I2/0b4E9X+cmreCMbJgyIn5Us1uywHOMzmDlJzH8r+2Dr58tdFA9vCsof8KgCopyR6fbzzmQ/MoL0boQbTvV+IO774dlHgJpL0CTho26+oAD/0SZKOZ0s8tpRC012fImZwLmMPPCpHF2rTaB+EuoNO1Ww3gbnwDvRRo+OGlolFxC/TNy0/3f6rWieGHCSTwXV65G6YO73d3+3bFpSC+NWdPrTgvEdO3Jw2iPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 340b3efd-9418-480c-3aae-08dec0bcb705
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jun 2026 15:36:28.9612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: z8u9KDokD6chefekxv2xh6/ltmhb4bEAW99sU2AX0r2nGajtwXKbjotKCxKksXT/oXfLqnve9K8xmhUFm91HIw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB9473
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:from_mime,intel.com:email,DM4PR11MB6360.namprd11.prod.outlook.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7949062FD69

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5
LCBKdW5lIDEsIDIwMjYgMjowMCBQTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiB2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbTsgU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+Ow0K
PiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29t
PjsgU2FtYWxhLCBQcmFuYXkNCj4gPHByYW5heS5zYW1hbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBbdjQgMC8zXSBNb3JlIEZpeGVzIGZvciBjb2xvciBwaXBlbGluZQ0KPiANCj4gdjQ6DQo+IC0g
UmVtb3ZlIGFscmVhZHkgbWVyZ2VkIHBhdGNoDQo+ICAgODZlZDJkOTZkYjE5ICgiZHJtL2k5MTUv
ZGlzcGxheTogQ29weSBjb2xvciBwaXBlbGluZSBmcm9tIHBsYW5lIGluIHRoZSBwcmltYXJ5DQo+
IGpvaW5lciBwaXBlIikNCj4gLSBkcm9wIHRoZSBleHRyYSBzcGFjZXMgYmVmb3JlID0ncyAoSmFu
aSkNCj4gDQo+IHYzOg0KPiAtIFJlLWFycmFuZ2UgcGF0Y2hlcw0KPiANCj4gdjI6DQo+IC0gTWFr
ZSBkZXBlbmRlbmN5IG9uIGF0b21pYyBzdGF0ZSBtb3JlIGV4cGxpY2l0IChWaWxsZSkNCj4gLSBo
YW5kbGUgYmxvYnMgaW4gaHcgc3RhdGUgY2xlYXINCg0KQ2hhbmdlcyBwdXNoZWQgdG8gZHJtLWlu
dGVsLW5leHQuIFRoYW5rcyBmb3IgdGhlIGNvbnRyaWJ1dGlvbiBhbmQgZml4ZXMuDQoNClJlZ2Fy
ZHMsDQpVbWEgU2hhbmthcg0KDQo+IENoYWl0YW55YSBLdW1hciBCb3JhaCAoMyk6DQo+ICAgZHJt
L2k5MTUvZGlzcGxheTogRG9u4oCZdCB1c2UgYXRvbWljIHN0YXRlIGJhY2stcG9pbnRlciB0byBk
ZXJpdmUgY29sb3INCj4gICAgIHBpcGVsaW5lDQo+ICAgZHJtL2k5MTU6IEF2b2lkIHByb2dyYW1t
aW5nIGNvbG9yIEhXIGJsb2NrcyBmb3IgTlYxMiBZIHBsYW5lcw0KPiAgIGRybS9pOTE1OiBGaXgg
Y29sb3IgYmxvYiByZWZlcmVuY2UgaGFuZGxpbmcgaW4gaW50ZWxfcGxhbmVfc3RhdGUNCj4gDQo+
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jICAgfCAgMiArLQ0K
PiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaW5pdGlhbF9wbGFuZS5jICAgIHwgIDIgKy0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGxhbmUuYyAgICB8IDcxICsr
KysrKysrKysrKysrLS0tLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cGxhbmUuaCAgICB8ICA1ICstDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDU4IGluc2VydGlvbnMoKyks
IDIyIGRlbGV0aW9ucygtKQ0KPiANCj4gLS0NCj4gMi4yNS4xDQoNCg==
