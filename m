Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kodKJKe/O2qecAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:29:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDC56BDA4B
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 13:29:42 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="IoJwK7/Y";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 357EA10EEAF;
	Wed, 24 Jun 2026 11:29:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8506B10EEAD;
 Wed, 24 Jun 2026 11:29:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782300580; x=1813836580;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5iYeFVJUZ1km8jaFyHUYFeg46BYEbyskZ2bCDI740OY=;
 b=IoJwK7/YnU/kclqTfKvbj6w6hflJBpRKlBw37Uxv2nzpzLQfeLzZEiLG
 5lHqp8VpZYp7XJy/HMS7SpFFmAb3761exbj+ZlUhB2iGdU119IlxreJU1
 9eMHnJzvjjBLt9HJQyfHlJENFkOtEF1U4ID4TIL5n6YGeDZjAJkKp+c0J
 +tGsB/8afvQ5AbgeR7m+JJwtCF3V8tPJ231UdHIdRAM0xNTLItWTayAL4
 btYkzoFyy7+gaANHM7aGZ0xWXbp2qWduyLpQwPsvDD7nr86xfm324IOsd
 BrOxrXyP78LK430rt2rlhlUMFtbHgajioxDb2FbnZroC43g+4sCIKKDp4 w==;
X-CSE-ConnectionGUID: YbHoW3PXRVaduyZWWbN7MA==
X-CSE-MsgGUID: Ii1R4XtzQ1qt7nxv+dpBWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="94454011"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="94454011"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 04:29:38 -0700
X-CSE-ConnectionGUID: h0tbnNjWS7mUaUUhqLqNig==
X-CSE-MsgGUID: nstGqxU0QEmVONl2srD9YQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="248923623"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 04:29:38 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 04:29:37 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 04:29:37 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.37) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 04:29:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UlxjsAAe4bPOTv4IUzRcuC9BWhFwmEVTfw6H4ZSaSnKi9pYRL7waDw32ceibHcZvRC1+JdANCzuVDwzwoIXlFFmhyVdiYMPLKsGiAi5oUo1oOtjniXd37C3BwkOnFImNI/PN7JWTySHWBL03r52GaRsGaIK7M1paeYGVU7aZUKALPnewAJy5o+oBX6eRPa1mO7/CZaL7gkbWzgTDGrmWBosRsIjERtlQXGX+gNSaP1wk94cAdvIn/fmXrzAe5X9fXcbSu/7+I6AmxqvqOpj8fisqtyYqdEQECh3eLtUuIYY7wW/avDrCkp5IneA+xB3PghIkEzADCqEhPIxUJJQYRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5iYeFVJUZ1km8jaFyHUYFeg46BYEbyskZ2bCDI740OY=;
 b=G4GhXqHWtK+EQ3Sil2WF42jNmv1YQwB2cXEbNfJ7isdAhNEnsxRiiYa3rPYoIB0KUYK9vYbh3yY3pjvJfmt7iH9RPFn8wz5HFPabE5nBIrh+5qsRv/POnq82se5OiMnfoBt/1esmD1yAyF6c1GQ3Ygo4kNN/D8F17ca09P9uPYWhIQYkDO+J/soqhbvbDFVE1DVlqCO4ZFUMDM8NQblS2A8atM5DpRvPrQZbpPzPyj2posDVl+eCV9NyyZYHYhA+c/BcGpGCxD0NSBwomTsZ3ihFVh+Mbp/nYVanLJ4lQhR0Ckdq+hE0zXwdjRSVJ4wIe/OaGVnF9PX65s6JaYtdDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM3PPF63A6024A9.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.13; Wed, 24 Jun
 2026 11:29:34 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 11:29:34 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 20/28] drm/i915/dp_link_caps: Use max common lane count
 from link_caps
Thread-Topic: [PATCH v2 20/28] drm/i915/dp_link_caps: Use max common lane
 count from link_caps
Thread-Index: AQHc/c157OA2MiG9HUagqKArk076a7ZNncZw
Date: Wed, 24 Jun 2026 11:29:33 +0000
Message-ID: <DS4PPF69154114F073BCC707E6E5D6EDFF7EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-21-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-21-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM3PPF63A6024A9:EE_
x-ms-office365-filtering-correlation-id: 86e96f90-6a6f-4383-367b-08ded1e3dda4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|11063799006|56012099006|4143699003|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: cTgjXRfrBwBoDSwFZ8AeukhOLGGgFRrSiT3gW+qvrvocIfioew7V+aipCqFZPPWmgye/9fEy4vPJptUPZXVbDh6l6hEtFWoUwUey/t60k9sQH/xUoeYNUschlwpU2QZcRw79vpucxph7gj152Q2XXoMIWM1jLjyPvBaL57QMfwmpjcFCaqomQp2Zx9pp0Y/3e8hThyBViESuz5OPQC1FCWqxotUE5rShfk9UvXQp4UMq3IVfIZ1YCEbRcwFHu69gqIeUnDzfmk+3JiG7vOmqPKquAaasN3pbMYV3C3oU0qI3VXjY0xgU1aClpfmtJ7AJaETDlbrYnWbYADHJWTdlH8SjkYAKPTgDe+ZdXwdplzCLDgaTeD/u61zllkMsq05IrmzRXA6OgeuiwJVn+ANiNzjgPqkq4S6gxCVN8gi3nqNhBWf34HJkSMkMZAV1szTSJmXloVGZDZxiO1PGIEj/T+G1Z1XjkvulsJRmxcRPmznBLtEAZgrksX7KoT+75j62PZ7xotmBoIPcNQLZig5i7Use4un8KFg21iyGX3tqcE7aWWYGGuzETHkBNhwOQtecpdEDm57BOQsehGEDt5hLIbvHxFQvlQ6TYAAHlQt4tLD3fqmxxl1/goxG7xohr/nKCXX465cIENu8qvC8V3OoW5eXJC3yme6/cmJ+IqSTL2bhoeeBgmitZ6w1ZiymVcPs/3J4uagHGYXRo40V0m/QdhnJXtl0SJfoVFJolokQ3A4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(11063799006)(56012099006)(4143699003)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N1ZhTzVvZTdDSUNya0IySWVrd3k4N1VpNjZ0M2VZL2FiMDZSSERGWElORWFt?=
 =?utf-8?B?K1RNUFB6RlRLOFFLdWdSaDc3OFNtdmlyRHpwQSt1aDl4a214UFJBZzExR0Jn?=
 =?utf-8?B?NHkrUmM1YmduMkg2aVQ4dW5YVEJhUFhqMWpldm15SEVRQXN6YVRmZ2VQQldE?=
 =?utf-8?B?MUszTXcwN3RVcmZsTVcyZStIM21mMmxZZGdCZzhLcjZ0VDZHMTMrSDNKUXpk?=
 =?utf-8?B?eWVUZmI1Q3FUVkR3YjRCb1ZxQlVmcVZ0MjJma0hOYUlhdU41c2liYVh5ZjZu?=
 =?utf-8?B?TXlMOE1OcUJMR2FiRkxUMWpFTTV0Mjk4YjJRcndTQWNHSFMybWFnRjljdFFq?=
 =?utf-8?B?Y1FQUm5sVFd3a0FMN1Y3THdMQkFPUkZDQzlaMEl3RHZ2MUxIU24va0psMUtW?=
 =?utf-8?B?ZWNxMEhtR1VtMWdjLzJhY0pPY3hLMWZ1LzlnMGVubjhjV1Z0THFsd1JWM1BZ?=
 =?utf-8?B?MXFmK2d1QzI1Ni9FTGxTSWNQbVJqTTEyRnVlekZMZkNKTUtPV0NCU3hLUHIr?=
 =?utf-8?B?Y3ZLRjQxSVBKVWpkNkRZaXllU05SWTBCRzBhRFF4VERLRlNHdXlUVW5qeXpl?=
 =?utf-8?B?WUtYUnhhV1FkVkl0RnB0T2lyM2czVndXNS9lTDlNcnNZN25zYkNQdFJWWVhD?=
 =?utf-8?B?eExHWVArOVlSKzBna2tlck1DSFRxZkFrMEhVRGdHcUg5SUE4aWc1eng0Zkht?=
 =?utf-8?B?Y2NlQUR2aUNSQnkrVlVJcXJpemxRYVFiTkYya3FPM3JIQnVpUWhsTmkxVmRt?=
 =?utf-8?B?b0lUMTJCQ2R6czlNUWttb2FaK29KSlRibXBLNVdtMHZaZkRlTzIza2I2NVBV?=
 =?utf-8?B?WmJiTjUyN2JHSXVTbzVjK016SE4wQ1lPR292aHlnZ2xSM0lRVFhXK1FQOEVI?=
 =?utf-8?B?LzZPdWVNZmlrOTgyRWxwd0E4QVBva0diM055U01CLzBpWmVqYTgrcDN1VUtC?=
 =?utf-8?B?YzRoajJKQlNEZCszd296ODY3Y2RZanZPN0hnbHdWVDdvdWhrckZUaVFnMVhi?=
 =?utf-8?B?b04rU2tBYy8zbm52N1EzTFdxSVNmZTFEekVYL205dGFFM1ZHaUQ4QXlUVExu?=
 =?utf-8?B?SG0yS21HWHd3MDJsVjJlcXhpZzA1WEQrWEFDMlFHSlhjUFhJOVMxTVo3dEJJ?=
 =?utf-8?B?TDcwMm1JSE8yYmVPTHU2VVdhdWJDVVFTNVVKd2xNa1hucDdqa2VKeUxGaHlL?=
 =?utf-8?B?M0UwQ0RzTnZkU3RnampjY0Y2bThNTmJrK0VPS1VOUldPNHlDakI3bmxTb1JV?=
 =?utf-8?B?V0g5TkpMSXBxUGZPQWJBc0hiT0Z4Y2ZrQzNKOGlDVXJLcXd5MkU0bFBvVGFM?=
 =?utf-8?B?K1Foai9KODUycUZmM09Iem1OMDJxWitvcFV6SVBaWkw4anVDK1pNb0hhMERv?=
 =?utf-8?B?V2VmS0JTQlMvZzJ6Y0YwRlFKVkx0UTY5MmhlMVpjRXI0VXFnVkV2Wmc4a0dr?=
 =?utf-8?B?ZHZmeFdlYU0venNnTzhXVWRyc1ZGMVMzQ045Q2w3aWI2eWpFTWRtMGR0UEpC?=
 =?utf-8?B?V2EvN3FkaDR1UTMvM1BXR3JIdDNCQ1BIbE5NVkpHUXMwZ3RaSXVYSHN5RnRU?=
 =?utf-8?B?WDhTeHhIZERvd1dMVmExMGlLb2xyU29TR2pGTWdCQmg1S1YrSUxCUlZxR1Yw?=
 =?utf-8?B?VGZ1a013Z0N6T09USUhIVFNndmorejFvV3BZdUdjU2d4T3pJZ29CK0tNVkVQ?=
 =?utf-8?B?Q0dKYUE5U3MyTExqYkRQcG9ZY0hncTJYV3hSL2hrOC8zSXI1V3JwV3FCMVd2?=
 =?utf-8?B?NlJQYjFXazNHdG15QjJLTUtLSGdpMHRHZzRhYVFyalpiMW5HMFluU2t2OWVt?=
 =?utf-8?B?clIzM0lhWXNDOWpGRGwwUUsyeUgxQno1YUJEZCt0azRPVDMxS3N2cTl5bHZv?=
 =?utf-8?B?TkRZMVJwN0d6aXZmMmM4K2t1ekhxT3ZBVlRhcm5rVlpMb0dtWUZDa2REL0VH?=
 =?utf-8?B?V2RIR3V2VVcwMTRCcmtxWm1pVC9LMFpVMEJ4cjFzd3VhNmpwa0Y0RXdYS1Jy?=
 =?utf-8?B?UzBMZk1WNHJtR2tJQnNENTR1Y2tNVTFNYUZ4MzBrTzhhVVY4UkxUWXVQM281?=
 =?utf-8?B?enVsQmRVQmQvQ2JjeUcrVHlUdkFHSTl4SjRjTVhxYXhNYU1wUWJLRENqQ2l1?=
 =?utf-8?B?U2hzbFBIdnAyeENab3lqSWxBQzg1cVdJSklYVUFoOHNWRkhHRHpOTm5MSGNu?=
 =?utf-8?B?c0IrVG02TnpaRVVudkk3cXZTWFNBZmtzRXpCSVIyejFBRGU3VHhwS0hXRWlD?=
 =?utf-8?B?ZWJ5K0t5cm9Bd000YmlQUzlJSnhxb0xtZ3h2YlNlU2ppa1BIaUdBdlhZSnRC?=
 =?utf-8?B?T2JJVFd3OFdQbGgzN2hpQ2Y1OTNGOGtVUUYwTnR2cnpIMGJnYjBndz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: GQV4psFj2x8q1z9Fz3HdXvtiNvjJzIus/46hjcOuNdvC4c+PnoB73mcQLitWDT0Nxs8aHliuIeNb9mlPrzhGm8QzcaxohazcV14hrkX9MQcK1Iq8tJg/z3ob8is0h4buq99HJJcVoN3LzfP/FyNyafwgskr9WbUgd9zNHyxpDC9z+vCiptrK52SUBC2pBbsUluvrym5aOaXNeSvU0rggWD9ViZHpO6WANl5E2Bmk6jH0gTCnJbR4xORtutJyFZ9asiGiTlzEqMB2xKGFj52WbXGl8BIu7oO1A8kkO+xJrs+f24KNq0qSc6X75IK8Ag74ddzipwnIiHyAH1FU0D3b/Q==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86e96f90-6a6f-4383-367b-08ded1e3dda4
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 11:29:33.9144 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CJ5rtKdCSA/srWGkI3Co0DrhH/B4mOeA4E/kqSZnZqoZLRFviCfI+tENvXOU+z8uTqFbn0BEK0R021XE7CLSbg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PPF63A6024A9
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 9EDC56BDA4B

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgMTYgSnVuZSAyMDI2IDIzLjA5DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVj
dDogW1BBVENIIHYyIDIwLzI4XSBkcm0vaTkxNS9kcF9saW5rX2NhcHM6IFVzZSBtYXggY29tbW9u
IGxhbmUgY291bnQgZnJvbSBsaW5rX2NhcHMNCj4gDQo+IENvbnZlcnQgYWxsIHVzZXJzIG9mIGlu
dGVsX2RwX21heF9jb21tb25fbGFuZV9jb3VudCgpIHRvIHF1ZXJ5IHRoZQ0KPiBtYXhpbXVtIGNv
bW1vbiBsYW5lIGNvdW50IHZpYSB0aGUgbGluayBjYXBhYmlsaXR5IEFQSSwgaW4gY29tbW9uIHdp
dGgNCj4gdGhlIGxpbmsgcmF0ZSBxdWVyaWVzLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIHwgMSAtDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgICAgICB8IDkgKy0tLS0tLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmggICAgICAgICAgICB8IDEgLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYyAgfCA3ICsrKysr
Ky0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgg
IHwgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5j
ICAgICB8IDMgKystDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKyksIDEyIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheV90eXBlcy5oIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggZGQ0M2M3ZWU4ZjE0My4uMTljNjZiM2E4MTUw
OSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gQEAgLTE4MzQsNyArMTgzNCw2IEBAIHN0cnVjdCBpbnRlbF9kcCB7
DQo+ICAJYm9vbCB1c2VfcmF0ZV9zZWxlY3Q7DQo+ICAJLyogTWF4IHNpbmsgbGFuZSBjb3VudCBh
cyByZXBvcnRlZCBieSBEUF9NQVhfTEFORV9DT1VOVCAqLw0KPiAgCWludCBtYXhfc2lua19sYW5l
X2NvdW50Ow0KPiAtCWludCBtYXhfY29tbW9uX2xhbmVfY291bnQ7DQo+ICAJc3RydWN0IHsNCj4g
IAkJLyogVE9ETzogbW92ZSB0aGUgcmVzdCBvZiBsaW5rIHNwZWNpZmljIGZpZWxkcyB0byBoZXJl
ICovDQo+ICAJCWJvb2wgYWN0aXZlOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcC5jDQo+IGluZGV4IDI4NzNiMmRmMjlmODQuLjBkN2VjN2E4ODk4YzkgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gQEAgLTM1NCwxMSArMzU0LDYg
QEAgc3RhdGljIGludCBpbnRlbF9kcF9nZXRfbWF4X2NvbW1vbl9sYW5lX2NvdW50KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJcmV0dXJuIG1pbjMoc291cmNlX21heCwgc2lua19tYXgs
IGxhbmVfbWF4KTsNCj4gIH0NCj4gDQo+IC1pbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2Nv
dW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+IC17DQo+IC0JcmV0dXJuIGludGVsX2Rw
LT5tYXhfY29tbW9uX2xhbmVfY291bnQ7DQo+IC19DQo+IC0NCj4gIGludCBpbnRlbF9kcF9tYXhf
bGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCXN0cnVjdCBp
bnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcyA9IGludGVsX2RwLT5saW5rLmNhcHM7DQo+IEBA
IC03MDEsOCArNjk2LDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfZHBfc2V0X2NvbW1vbl9saW5rX3Bh
cmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWludCBjb21tb25fcmF0ZXNbRFBf
TUFYX1NVUFBPUlRFRF9SQVRFU107DQo+ICAJYm9vbCBwYXJhbXNfY2hhbmdlZCA9IGZhbHNlOw0K
PiANCj4gLQlpbnRlbF9kcC0+bWF4X2NvbW1vbl9sYW5lX2NvdW50ID0gaW50ZWxfZHBfZ2V0X21h
eF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7DQo+IC0NCj4gIAlpbnRlbF9kcF9nZXRfY29t
bW9uX3JhdGVzKGludGVsX2RwLCBjb21tb25fcmF0ZXMsICZudW1fY29tbW9uX3JhdGVzKTsNCj4g
IAlpZiAoaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShpbnRlbF9kcCwNCj4gIAkJCQkgICAgICBj
b21tb25fcmF0ZXMsIG51bV9jb21tb25fcmF0ZXMsDQo+IEBAIC0zNjEzLDcgKzM2MDYsNyBAQCB2
b2lkIGludGVsX2RwX3NldF9saW5rX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0K
PiANCj4gIHZvaWQgaW50ZWxfZHBfcmVzZXRfbGlua19wYXJhbXMoc3RydWN0IGludGVsX2RwICpp
bnRlbF9kcCkNCj4gIHsNCj4gLQlpbnRlbF9kcC0+bGluay5tYXhfbGFuZV9jb3VudCA9IGludGVs
X2RwX21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7DQo+ICsJaW50ZWxfZHAtPmxpbmsu
bWF4X2xhbmVfY291bnQgPSBpbnRlbF9kcF9saW5rX2NhcHNfbWF4X2NvbW1vbl9sYW5lX2NvdW50
KGludGVsX2RwLT5saW5rLmNhcHMpOw0KPiAgCWludGVsX2RwLT5saW5rLm1heF9yYXRlID0gaW50
ZWxfZHBfbWF4X2NvbW1vbl9yYXRlKGludGVsX2RwKTsNCj4gIAlpbnRlbF9kcC0+bGluay5tc3Rf
cHJvYmVkX2xhbmVfY291bnQgPSAwOw0KPiAgCWludGVsX2RwLT5saW5rLm1zdF9wcm9iZWRfcmF0
ZSA9IDA7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmgNCj4gaW5kZXgg
ZmRmOWJkODg4NTllNy4uZjc3NmJlYzdjNDI1NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuaA0KPiBAQCAtMTA2LDcgKzEwNiw2IEBAIGludCBpbnRlbF9kcF9t
YXhfbGlua19yYXRlKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAgaW50IGludGVsX2Rw
X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAgaW50IGludGVs
X2RwX2NvbmZpZ19yZXF1aXJlZF9yYXRlKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpj
cnRjX3N0YXRlKTsNCj4gIGludCBpbnRlbF9kcF9yYXRlX3NlbGVjdChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwLCBpbnQgcmF0ZSk7DQo+IC1pbnQgaW50ZWxfZHBfbWF4X2NvbW1vbl9sYW5lX2Nv
dW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAgaW50IGludGVsX2RwX3JhdGVfaW5k
ZXgoY29uc3QgaW50ICpyYXRlcywgaW50IGxlbiwgaW50IHJhdGUpOw0KPiAgdm9pZCBpbnRlbF9k
cF91cGRhdGVfc2lua19jYXBzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiAgdm9pZCBp
bnRlbF9kcF9yZXNldF9saW5rX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19j
YXBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5j
DQo+IGluZGV4IGJiNzI3YmNmNGRlMTguLmIyMjdjOWE1NWY2M2IgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBAQCAt
MTAyLDYgKzEwMiwxMSBAQCB2b2lkIGludGVsX2RwX2xpbmtfY2Fwc19wcmludF9jb21tb25fcmF0
ZXMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKQ0KPiAgCWRybV9kYmdfa21z
KGRpc3BsYXktPmRybSwgImNvbW1vbiByYXRlczogJXNcbiIsIHNlcV9idWZfc3RyKCZzKSk7DQo+
ICB9DQo+IA0KPiAraW50IGludGVsX2RwX2xpbmtfY2Fwc19tYXhfY29tbW9uX2xhbmVfY291bnQo
c3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKQ0KPiArew0KPiArCXJldHVybiBs
aW5rX2NhcHMtPm1heF9sYW5lX2NvdW50Ow0KPiArfQ0KPiArDQo+ICBzdGF0aWMgaW50IGZvcmNl
ZF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+ICAJc3RydWN0
IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzID0gaW50ZWxfZHAtPmxpbmsuY2FwczsNCj4g
QEAgLTExMCw3ICsxMTUsNyBAQCBzdGF0aWMgaW50IGZvcmNlZF9sYW5lX2NvdW50KHN0cnVjdCBp
bnRlbF9kcCAqaW50ZWxfZHApDQo+ICAJCXJldHVybiAwOw0KPiANCj4gIAlyZXR1cm4gY2xhbXAo
bGlua19jYXBzLT5mb3JjZWRfcGFyYW1zLmxhbmVfY291bnQsDQo+IC0JCSAgICAgMSwgaW50ZWxf
ZHBfbWF4X2NvbW1vbl9sYW5lX2NvdW50KGludGVsX2RwKSk7DQo+ICsJCSAgICAgMSwgaW50ZWxf
ZHBfbGlua19jYXBzX21heF9jb21tb25fbGFuZV9jb3VudChsaW5rX2NhcHMpKTsNCj4gIH0NCj4g
DQo+ICBzdGF0aWMgaW50IGZvcmNlZF9saW5rX3JhdGUoc3RydWN0IGludGVsX2RwICppbnRlbF9k
cCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua19jYXBzLmggYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtf
Y2Fwcy5oDQo+IGluZGV4IGUyZjUzZWIxNjdhOGUuLjkyMThjYjVkZTJjNzEgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0K
PiBAQCAtMTcsNiArMTcsNyBAQCBpbnQgaW50ZWxfZHBfY29tbW9uX3JhdGUoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCwgaW50IGluZGV4KTsNCj4gIGludCBpbnRlbF9kcF9saW5rX2NhcHNfY29t
bW9uX3JhdGVfaWR4KHN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2FwcywgaW50IHJh
dGUpOw0KPiAgaW50IGludGVsX2RwX21heF9jb21tb25fcmF0ZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKTsNCj4gIGludCBpbnRlbF9kcF9saW5rX2NhcHNfbnVtX2NvbW1vbl9yYXRlcyhzdHJ1
Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMpOw0KPiAraW50IGludGVsX2RwX2xpbmtf
Y2Fwc19tYXhfY29tbW9uX2xhbmVfY291bnQoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlu
a19jYXBzKTsNCj4gDQo+ICB2b2lkIGludGVsX2RwX2xpbmtfY2Fwc19wcmludF9jb21tb25fcmF0
ZXMoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKTsNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF90dW5uZWwuYw0KPiBpbmRleCBjODJh
ZGZjY2UwMWQwLi45ZDlkOGQwNDc0MmJjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RwX3R1bm5lbC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZHBfdHVubmVsLmMNCj4gQEAgLTU3LDggKzU3LDkgQEAgc3RhdGlj
IGludCBrYnl0ZXNfdG9fbWJpdHMoaW50IGtieXRlcykNCj4gDQo+ICBzdGF0aWMgaW50IGdldF9j
dXJyZW50X2xpbmtfYncoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIHsNCj4gKwlzdHJ1
Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMgPSBpbnRlbF9kcC0+bGluay5jYXBzOw0K
PiAgCWludCByYXRlID0gaW50ZWxfZHBfbWF4X2NvbW1vbl9yYXRlKGludGVsX2RwKTsNCj4gLQlp
bnQgbGFuZV9jb3VudCA9IGludGVsX2RwX21heF9jb21tb25fbGFuZV9jb3VudChpbnRlbF9kcCk7
DQo+ICsJaW50IGxhbmVfY291bnQgPSBpbnRlbF9kcF9saW5rX2NhcHNfbWF4X2NvbW1vbl9sYW5l
X2NvdW50KGxpbmtfY2Fwcyk7DQo+IA0KPiAgCXJldHVybiBpbnRlbF9kcF9tYXhfbGlua19kYXRh
X3JhdGUoaW50ZWxfZHAsIHJhdGUsIGxhbmVfY291bnQpOw0KPiAgfQ0KPiAtLQ0KPiAyLjQ5LjEN
Cg0K
