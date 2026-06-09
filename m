Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id R5ncDy0RKGqZ9QIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:12:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B1116606B5
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 15:12:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hhWhQ2Q7;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D523E10E3D7;
	Tue,  9 Jun 2026 13:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A1E010E3D7;
 Tue,  9 Jun 2026 13:12:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781010730; x=1812546730;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n4nzgIYgZaiGRa+BpyWRS+V/D9UfdC5gg5DgMP6A+MM=;
 b=hhWhQ2Q7QdO7RF1ZSMVZE5MqsT1hD5ZHe0w6DttXyzm5FHwwiVWQ/fJQ
 2zU9KHvbpAh2Odn8oClfUxVQEm00shzT7uPWK6awDSqvilt8dgHQ52HSP
 LXewBrewamWlnVsk2z+gAb2+AJ7cjKhra5xqN5bvFrZxFWLnq56WJ52og
 4qBe51FHG3KWBD8sW2cFFj415Fhlsg/vFXGhQt6PMHKVeJ4Q46sXOEe/o
 4+rG1VsGtXyG5qMI+0qYwi/cI08xHxU6SupEucpAOrVqhu1fdOOapwCuu
 bD4QzVhwDFqkIMcO+17JF7II6iA1UCFfrOXawIGqwWH6gssg8YFiehP74 g==;
X-CSE-ConnectionGUID: x10moDj4T9+aD1vYMf/GzA==
X-CSE-MsgGUID: f1SYbfTzSVO19IKWZBruug==
X-IronPort-AV: E=McAfee;i="6800,10657,11811"; a="99345990"
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="99345990"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:12:09 -0700
X-CSE-ConnectionGUID: yePYIoLrTe2zDOI41gWK/w==
X-CSE-MsgGUID: WfqVGN8AQjqBOLrCBLc9Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,196,1774335600"; d="scan'208";a="249784324"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2026 06:12:10 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:12:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 9 Jun 2026 06:12:09 -0700
Received: from CH5PR02CU005.outbound.protection.outlook.com (40.107.200.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 9 Jun 2026 06:12:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HhE75bXHGPWvelrY+Si4JqlI+2p2e1Y+PgMPC4Xwbq8n+DgCdj5thZVCx0FvCM5iABbbe6akMOxeMoTvucFvuZXRfu1VCJwfHe/seXXpFdQM7O3xXUqqVMd4vgYz91QKoxXJEXaznDYlGrK3V7Z9vTqlCoWcR6eS5VmagnUchuS6MpZhCo9qpISWngAOCqR0UrZchzpU+6eRW+3MVPZ3M+PCf3K74HpE11DUYikHGO5fpbwmIBqI5nWPC6vNkgx6yOtVqeRgsatUT3mNJBAPih5yB1WfOOUAjzCfy2d7/uz9r1nKcJlveq4EHi7J7SDbU/JQfE/i0ilJM9YCJL1SFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n4nzgIYgZaiGRa+BpyWRS+V/D9UfdC5gg5DgMP6A+MM=;
 b=XME/X5s04yUsaquFfwfUWt/QANBG1RmjsPLeHOrp3FEtVust/GAbKmGSpIOQvpU20GRyknK+b7gPiepO3CGTHdtpn3O+Dj4tsq/eWyImmB6vJncq33NESfvEFPWRU1c89vduS0cOTc4SBcYtGTWsBQk10SAEp97awED0Qa4mZOH/UeLnLGo/uuGJW9vH0qGLtmSBXOxwPW6AO0MUzXhvEz5xvVJiIQLecoFUyChToLE6B1EpAzvcX+CDq+We7ydpzvxHB++OuVcjZfUijNnJniwKwXAdMzgrMJB62tQMFtECR/Gboy4QLT2rvp6rXl7SfEdzWI9wLI11udPr9whuUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM3PPF1721FD39C.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f0a) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.92.13; Tue, 9 Jun 2026
 13:12:06 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0092.011; Tue, 9 Jun 2026
 13:12:06 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Do not check display or eDP revision for DP
Thread-Topic: [PATCH] drm/i915/psr: Do not check display or eDP revision for DP
Thread-Index: AQHc9xOQ8EdXwIoVQEumP2N8U0JNn7Y2NOMw
Date: Tue, 9 Jun 2026 13:12:06 +0000
Message-ID: <DS4PPF69154114F11ABFC7FD70E8C5BE281EF1D2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260608065317.20845-1-jouni.hogander@intel.com>
In-Reply-To: <20260608065317.20845-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM3PPF1721FD39C:EE_
x-ms-office365-filtering-correlation-id: 9da9dadc-1457-4f6c-c3d5-08dec628b4c9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|38070700021|56012099006|11063799006;
x-microsoft-antispam-message-info: YLeZFaHQPVbA5R2Cu4hXmbTjZYKE5lDB3fFiFUyM3C7K5qHVpHRKu97MIg2aDUUEDme/9VfyB9GNjS9PuVMfkcZApLWSP+SKu9D1bPRyncFm4lJPSyD/acXEA73jb/JQ5IeHUb3ZMr+dKtHszr7b/hGm3cOe8k08GBBiM5sZn9Hm2NHhSgGHJJAnIBqMB7OiYSUh+BHMqMpfBMc0C4RODkUsno6GqgbHAgInppyNAXIv6HwNpsSpxZfQlF8BHiSgPmI57kUusXo4PpDrgf64XETBIkpfJqn+Ui3Htjdid/Yjh0+XufDCz2SVwdNCrMKGB4Lui/jrG8gCUFt2Z1GXFduRsyD2PaTiEUdvwZN9lT5p+74aec72JUfZIbtIjQJMR56Rc7ZVdtkWWCK4/H+zVoB6v0YmP4b4jdAA/FjsfYoKMOcHrPbeuCEoYLIg1wi020B/ZL2kzlC0j8djSbz1Ub/9Jbnd0tbKHauM2wMbD+UtsWrucgW25cPkBKXUvsD+kYmftAg9B2yWWntrF2UXfTIqI6qJg+EcVEwi6dXbNB+jN8PrmoSgG0wQMlfXMJJCZSEQM7RPwLxYonVrGk8oS7VyPI/HieJBMzdvXH6ow/OmuyDs9RDrMngLUaR0GHYI8uttJEFM+yQzWAORc9Ji4qmf+b1zIbvYFnuCfbplhv9MYTQXMistf5s3jtuTXLfVNwVK5MpjYA9A5+qMybyNL5U7Fad3njsBuxCa61SBdaCwK/5bnXmaFYeokeNmSGR5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(38070700021)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UVJDait0ZXl0OUY4R1FLTWpqYkdJSHByaFZjVVl1ZXFVbWVnZklqaXBNSjZZ?=
 =?utf-8?B?ZGdiWVNxRjdGQlhnbzJ2KzZXYlpwRVhWaXFWci9MNGRWVTFSVFRCV1IycTVL?=
 =?utf-8?B?UktVMnE4dnB3Nk9QV3FxdE9yd2RpczYvZ2xiMVgvYmEzK2xEM1RQdGNhK2ly?=
 =?utf-8?B?K3VvS3pQWjJYYXlwa3Z3QkJjaXpFRmFFaFNvK01KaTBraUdCNjhmY05pQjBJ?=
 =?utf-8?B?Rzc4VlNnNS9qUnU1bTdKOEV6L1U0NWx5ejMwOElzck9XSXVLRUd3ZE5vYUpG?=
 =?utf-8?B?NVY4TGwxcEtVdDFMN2N2SUdLVENPTGg3K1Y3S3krbktXUGJPSVhFNVBwYmtE?=
 =?utf-8?B?U2VCS3p0VjVseENpbHJqbFUxMUwxRUkzWUExdGRyK2NOUUZ5UUpjYjNadldX?=
 =?utf-8?B?SzJnQ283b2pLMTlTb0g1T0tldkx1MTdVOGlYZWtRTmZWaStuMUk5TndacUVi?=
 =?utf-8?B?UW52ZmZKSmVmcjh2YjljcEJtRnRyRnAwdzhoNjRrRzR1UVVhRGNaeWJzczJN?=
 =?utf-8?B?Ujk5NFBTdGZUYmlhV2RqcEJYTWoyWFlhdVhpTnZSd0t4bC82SEUyRGNkME0y?=
 =?utf-8?B?WlI1THhHSGRrR0JaV21tSGJESjgxcTJXdUVNelNHa3pCZ2E0V1pJb282Nmtz?=
 =?utf-8?B?dzBoT2NlL05uQlA4bFRJN25lbUEvVUVoVjJmbHZETXJ2U0lJYmZsWktsNW9S?=
 =?utf-8?B?Y2VLRnh5Vnp1Q1FaUjBCK1RTZGNsbm9SS2RTYzdsQzZWN1NlQnNOMVNmcEZu?=
 =?utf-8?B?MUpsZTA3dlNsaVhVdXhwVWVHdzJOVzBjc3dqTTVYT0x2R2YxWlVTWmRUdXFo?=
 =?utf-8?B?ckhiYVFkNm9OeUMza3hWanN1d0ZzWVlFdGhDMy9HZkRzc2hhT1cvS2Y3eWlu?=
 =?utf-8?B?Mm0xN0I4dnc1Q1E3eHc0K0dPTE0wSkE4Vnp5c2Vra1VsSTNxQmgxeEhmc01q?=
 =?utf-8?B?dUpjSjVJUGt1TGx0bC91WmJEdWpCUnpJM1NaWTVDdWFndlRibE1CZWt1YU1y?=
 =?utf-8?B?RUxqTmpEdzZLNGxqNmxJdDc5VXUxZmRGeGllaUZyRmRZa1gxYUh0WmZJdzRv?=
 =?utf-8?B?d0hwdHZrQzFmK2Q2ZFpWR3gwR21PMTBLR3h0N3UvN3M5RWJES3hwWmYvYUZm?=
 =?utf-8?B?a09HbE8rcW9JQlJ5NU5jY2hpQjlHTlFtRDMrdlF0amNpcWsyMTY1Wk5GdkFq?=
 =?utf-8?B?REt6TlUxd0RhRUEwNG5Na3V0aXJoSkQzWTVRQVlyL2dNdW0za05LTmNqMjdU?=
 =?utf-8?B?L1htRGg0VDZzQnpxbk1JVXRKUW9EVVEyN3lDcUNPblc0N2F6MXJkL2hNSVBW?=
 =?utf-8?B?bTRlOFRvZDV3aEZNUS9FaERyaFpQUTM1VkdtaXcyOCsyN2s3eGV6RUxCR281?=
 =?utf-8?B?eWdINCtLU0c2RGd0WWszVE5maGo2cWZJUk54SEc4VzNWZVR0cWJjOUFYaUVX?=
 =?utf-8?B?dzBQaHFwNVZYRVhuYjcwU1Qxa0FhN0I1WDI4TUNoSGltNm92ekMwVjdnTEdU?=
 =?utf-8?B?ZUhHZ0VQU0ZpZzVOV3pYMFE2T0NHMzh5SWlMYkQwcStHaUpJdDJWOEttZjgr?=
 =?utf-8?B?ejRTN0kxR1VmOVF1YWZTMk5MYmVCYmU0N1V1VE5LZXlhTzRVcXVzM3JucERx?=
 =?utf-8?B?c3VpNWNiTWNIbEJPTVVjVlRpMkQ1RU9RY3BrazFBR2g0Rmg5YmZQRFArbXpG?=
 =?utf-8?B?a2krSGNOd1ZoN1dWQ3NTVzEvdDFFRFQyMHBVSUtWdlVZRmlqcUJUM1Y2MEVV?=
 =?utf-8?B?alY1dmFEQ2dYQlV0RFFqa2t6K0xRemxMdTBMODY0NEN0bDJ1SmxMU3M3b2d0?=
 =?utf-8?B?Qzd2aGdkUnZVd1FNZXIybWJSRkdtMWV3MUN6UTFHM0JReU9ib1B3UUNnVnB4?=
 =?utf-8?B?d1BCUHkzWUc0NnF1UFlyY0RGbGJ3WWI4OVRtclBBbUFmQy9IemJhYzlyOWFU?=
 =?utf-8?B?emwraFJXUkwxY0g5YVp3SVJyU0NlQlF2OExjME5MZVNySDNGeE5tbk13VDlZ?=
 =?utf-8?B?L2pDL2tRWEIxVHA4NHAvbDhzRVZtVlg1ODBzbEwvSjJiY0JCQUFONlVWRXVU?=
 =?utf-8?B?ajh1c0VBYzdEdDdudkNOWFNub0tOSkN0TFJ0M0t6SXBaaVBydFprMmJxK0Ft?=
 =?utf-8?B?bDF4RUR1WFNkVWhyOVc5L0lzUVBwUW0wRUc1VU9FM3RsWWphTE55cUl1MmFY?=
 =?utf-8?B?WmtrbTBXaDI3M0hMVXRGY3FGMTFFNzVWQlhvdFJjcUhqRWd2RVJnUGdjNmVV?=
 =?utf-8?B?RXNJVDJUNG1rZU56RUFNK2N4Vkg1OXhCV2JSU2x6djh2YXltbUNKMExFZWtT?=
 =?utf-8?B?bTBCVWtYVlUyTUpIekFYOFJOb1ZiS3dia0R1SUxlMGtoanMwSVpZZz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: HFO2MABOnm9LGdKU9oA+yPuSFGhDihpCMdFPsz9haMxtEaGcLkFGADxDAyQkKp1v85mYuATLvevVVJDGe8re3jKrWd8U9VzI/gqUaTl+s79I4BAhezYidWNaqUeiarhXrn7dyxCZjyBM5PApbzTXu5+oAaHYVNnHIzbwOwxCkVQ7sIf8s8Y7ZwL5XOheBTeZAxAP251EdoiGAngytYmecUvWUvwDuiVBrp7b9LQuPFBIU2Km5RcH36E3HtJbGWPEDvNVkgSNeqWYNrsl91U65fdgLkfCwH8H6sfZMExIneEut7whqxplK6kGYVoQ6E4qQrW8H782qX/47jXTHNNsiw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9da9dadc-1457-4f6c-c3d5-08dec628b4c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2026 13:12:06.6953 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LR6RgeyLkV7U6pKjebqvSna07vYyZKRLF8enrdBwoMReqzQiEs8gxuMW7HSdEe2VVt5fkWSBR7IfGRaK4Jk7sQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF1721FD39C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B1116606B5

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaSBIw7ZnYW5k
ZXINCj4gU2VudDogTW9uZGF5LCA4IEp1bmUgMjAyNiA5LjUzDQo+IFRvOiBpbnRlbC1nZnhAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBb
UEFUQ0hdIGRybS9pOTE1L3BzcjogRG8gbm90IGNoZWNrIGRpc3BsYXkgb3IgZURQIHJldmlzaW9u
IGZvciBEUA0KPiANCj4gRFAgUGFuZWwgUmVwbGF5IGlzIHN1cHBvcnRlZCBvbmx5IGJ5IGRpc3Bs
YXkgdmVyc2lvbiA+PSAxNC4gU28gbm8gbmVlZCB0bw0KPiBjaGVjayBkaXNwbGF5IHZlcnNpb24g
aW4gY2FzZSBvZiBEUCB3aGVuIGNoZWNraW5nIHN1cHBvcnQgZm9yIFNEUCBvbiBwcmlvcg0KPiBz
Y2FubGluZS4gQWxzbyBjaGVja2luZyBlRFAgdmVyc2lvbiBkb2Vzbid0IG1ha2Ugc2Vuc2UgaW4g
Y2FzZSBvZiBEUC4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMgfCA1ICsrKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCsp
LCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+IGluZGV4IGQ5ZmNmNTIzMjhlYWIuLmQ5MzM0MGE5ZDlmOWUgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMTQzMSw4ICsxNDMx
LDkgQEAgc3RhdGljIGJvb2wgX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNh
dGlvbihzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAgCWlmICgoaGJsYW5rX25zIC0gcmVxX25z
KSA+IDEwMCkNCj4gIAkJcmV0dXJuIHRydWU7DQo+IA0KPiAtCS8qIE5vdCBzdXBwb3J0ZWQgPDEz
IC8gV2FfMjIwMTIyNzkxMTM6YWRsLXAgKi8NCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkg
PCAxNCB8fCBpbnRlbF9kcC0+ZWRwX2RwY2RbMF0gPCBEUF9FRFBfMTRiKQ0KPiArCS8qIE5vdCBz
dXBwb3J0ZWQgPDE0IC8gV2FfMjIwMTIyNzkxMTM6YWRsLXAgKi8NCj4gKwlpZiAoaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSAmJiAoRElTUExBWV9WRVIoZGlzcGxheSkgPCAxNCB8fA0KPiArCQkJ
CQkgIGludGVsX2RwLT5lZHBfZHBjZFswXSA8IERQX0VEUF8xNGIpKQ0KPiAgCQlyZXR1cm4gZmFs
c2U7DQo+IA0KPiAgCWNydGNfc3RhdGUtPnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSA9IHRy
dWU7DQo+IC0tDQo+IDIuNDMuMA0KDQo=
